import sublime
import sublime_plugin
import os

class CreateStylesModuleCommand(sublime_plugin.TextCommand):
    FILE_NAME = "styles.module.scss"

    def run(self, edit):
        # Get the current folder and create the full file path
        folder = os.path.dirname(self.view.file_name())
        file_path = os.path.join(folder, self.FILE_NAME)

        # Check if the file already exists
        if os.path.exists(file_path):
            sublime.message_dialog("File already exists! Opening existing file.")
        else:
            # Create the new file
            with open(file_path, 'w') as new_file:
                new_file.write("")

        # Open the file (existing or newly created)
        self.view.window().open_file(file_path)
