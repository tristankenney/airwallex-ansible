from HTMLParser import HTMLParser
import re

class HTMLToString(HTMLParser):
    parsedContent = ''
    def handle_data(self, data):
      opening_tag = self.get_starttag_text()
      # Skip <style> and <script> tags
      if opening_tag and re.search("^\<(style|script)", opening_tag) is None:
        self.parsedContent += data;

    def parse(self, data):
      self.parsedContent = ''
      self.feed(data) 
      self.close() 
      return self.parsedContent

def word_frequencies(text, number=1, **kw):
    parser = HTMLToString()
    parsed_text = parser.parse(text)
    chunked_text = parsed_text.split()
    word_count = {word: chunked_text.count(word) for word in chunked_text}
    word_count = sorted(word_count.items(), key=lambda item: item[1], reverse=True)
    return dict(word_count[0:number])

class FilterModule(object):

    def filters(self):
        filters = {
            'word_frequencies': word_frequencies,
        }

        return filters