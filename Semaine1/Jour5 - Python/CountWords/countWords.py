def counting_words(text):
    count_word = 0
    count_word_filtered = 0
    
    # Insert your code here
    text_split = text.split()
    count_word = len(text_split)
    for i in range(0, len(text_split)):
        if len(text_split[i]) > 2:
            count_word_filtered += 1
    return count_word, count_word_filtered
   
print(counting_words("Si tu travailles avec un marteau-piqueur pendant un tremblement de terre, désynchronise-toi, sinon tu travailles pour rien"))
print("Note : Le premier chiffre ci-dessus correspond à count_word et le second à count_word_filtered")