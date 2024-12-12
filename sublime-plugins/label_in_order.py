import sublime
import sublime_plugin

class LabelInOrderCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        sublime.active_window().show_quick_panel(["Alphabetic", "AlphabeticUppercase", "Numeric"], lambda index: self.on_select(index, edit))

    def on_select(self, index, edit):
        if index == -1:
            return  # User pressed Esc or clicked outside the panel
        elif index == 0: # Alphabetic
            self.view.run_command("label_in_order_alphabetic")
        elif index == 1: # Alphabetic Uppercase
            self.view.run_command("label_in_order_alphabetic_uppercase")
        elif index == 2: # Numeric
            self.view.run_command("label_in_order_numeric")

class LabelInOrderAlphabeticCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # Get all selected regions (carets)
        regions = list(self.view.sel())

        # Create a new edit object for each modification operation
        for i, region in enumerate(regions):
            label = chr(ord('a') + i)
            self.view.insert(edit, region.end() + i, label)

class LabelInOrderAlphabeticUppercaseCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # Get all selected regions (carets)
        regions = list(self.view.sel())

        # Create a new edit object for each modification operation
        for i, region in enumerate(regions):
            label = chr(ord('a') + i).upper()
            self.view.insert(edit, region.end() + i, label)

class LabelInOrderNumericCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        # Get all selected regions (carets)
        regions = list(self.view.sel())

        # Create a new edit object for each modification operation
        for i, region in enumerate(regions):
            label = str(i + 1)
            self.view.insert(edit, region.end() + i, label)
