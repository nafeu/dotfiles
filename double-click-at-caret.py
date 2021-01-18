import sublime
import sublime_plugin


class DoubleClickAtCaretCommand(sublime_plugin.TextCommand):
    def run(self, edit, **kwargs):
        view = self.view
        window_offset = view.window_to_layout((0,0))
        vectors = []
        for sel in view.sel():
            vector = view.text_to_layout(sel.begin())
            vectors.append((vector[0] - window_offset[0], vector[1] - window_offset[1]))
        for idx, vector in enumerate(vectors):
            view.run_command('drag_select', { 'event': { 'button': 1, 'count': 2, 'x': vector[0], 'y': vector[1] }, 'by': 'words', 'additive': idx > 0 or kwargs.get('additive', False) })
