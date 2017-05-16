def save_sentences_to_file(sentences, file_name):
    text = ""
    for sentence in sentences:
        for w in sentence:
            text += w
            text += " "
        text += "\n"
    file = open(file_name, 'w')
    file.write(text)
    file.close()
