import sublime
import sublime_plugin
import subprocess
import json

class PromptCodestralCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # Get the text of the current line(s)
        selected_text = self.get_selected_text()

        if not selected_text:
            sublime.status_message("No text selected on the current line(s)")
            return

        # Show a message indicating that the plugin is processing
        sublime.status_message("Processing Ollama prompt...")

        # Prepare the HTTP request payload
        payload = {
            "model": "codestral",
            "prompt": selected_text,
            "stream": False
        }

        # Make the HTTP POST request using curl
        response = self.make_http_request(payload)

        # Parse the JSON response and extract the value of the "response" key
        extracted_value = self.extract_response_value(response)

        # Insert the extracted value into the view
        self.insert_response(edit, extracted_value)

    def get_selected_text(self):
        selected_text = ""

        for region in self.view.sel():
            # Check if the region is empty (single cursor)
            if region.empty():
                line_region = self.view.line(region)
                selected_text += self.view.substr(line_region) + "\n"
            else:
                # Handle multi-selection by getting text from each selected region
                selected_text += self.view.substr(region) + "\n"

        return selected_text.strip()

    def make_http_request(self, payload):
        try:
            # Prepare the curl command
            curl_command = [
                "curl",
                "-X", "POST",
                "-H", "Content-Type: application/json",
                "-d", sublime.encode_value(payload),
                "http://localhost:11434/api/generate"
            ]

            # Run the curl command and capture the response
            result = subprocess.run(curl_command, capture_output=True, text=True)

            # Check the return code
            if result.returncode != 0:
                raise subprocess.CalledProcessError(result.returncode, result.args, result.stdout)

            return result.stdout
        except subprocess.CalledProcessError as e:
            sublime.error_message(f"HTTP request failed: {e}")
            return None

    def extract_response_value(self, response):
        try:
            # Parse the JSON response
            json_response = json.loads(response)

            # Extract the value of the "response" key
            extracted_value = json_response.get("response", "")
            return extracted_value
        except json.JSONDecodeError as e:
            sublime.error_message(f"Failed to parse JSON response: {e}")
            return None

    def insert_response(self, edit, response):
        if response is not None:
            # Insert 2 new lines plus the response text
            self.view.run_command("insert", {"characters": "\n\n" + response})
            sublime.status_message("Ollama prompt completed!")
        else:
            # Show an error message if the response is None
            sublime.status_message("Error processing Ollama prompt!")
