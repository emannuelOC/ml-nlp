/*:
 # Representing words as vectors
 
 Representing a word computationally is not an obvious task. 
 The concept of a word itself is not a simple one, consequently,
 when we try to represent it in a way that a computer can 
 process it, we usually are going to miss some nuances.
 
 ## Discrete representations
 
 One possibility for representing words is a one-hot vector.
 A word is represented as a vector that has zeros in all positions
 except for one. So, for example, the vector for "cat" could
 be somewhat like [0, 0, 0, 0, 0, 1, 0, 0, 0] -- obviously with
 way many dimensions than this one.
 
 The problem with this type of representation is the fact that 
 it doesn't represent word similarity in any way. We would
 want the vectors of the words "pen" and "pencil" to show
 some similarity, however, in a one-hot representation, the 
 dot product of the vectors of those two words would be zero.
 
 ## Distributed representation
 
 The idea behind vector representations of words is that
 the similarity between two words can be shown in the 
 representation itself. So the dot product of two similar
 words would be greater than the dot product of the vectors
 of two words that are less similar.
 
 The concept of meaning that is explored in such models is 
 the concept that _"you shall know a word by the company it
 keeps"_ (J. R. Firth, 1957). That is, the context in which
 a word appears determines the meaning (or the representation)
 for that word.
 
 We will present two such models: word2vec and GloVe. In both
 of them a word is represented by a n-dimentional vector of real
 numbers and the similarity between them can be retrieved by
 the distance between those vectors.
 
 # word2vec
 
 word2vec (Mikolov 2013) is a model that represents words as vectors
 by predicting between a word and its context. So the idea is that
 we should maximize the probability of a word occuring in the context
 of a given center word by repeatedly updating the vectors for each
 word in the model.
 
 So basicly it's an optimization problem where we have a function
 J(θ) and we have to minimize it.
 
 Our function J is the negative log likelihood:
 
 */

//#-hidden-code

let fileLoader = FileLoader()
let corpus = fileLoader.loadFile(name: "fairy_tales")
let T = corpus?.count ?? 0 // the size of the corpus
let m = 5 // the size of the window in both sides
let vocabulary = Array(Set(corpus ?? []))
let dimensions = 10

// `theta` will be the vectors for each word
// its first half has the vectors for the words when they are
// in the center and the second half, the vectors for the 
// words when they are in the context.
var theta = [[Double]]()
for _ in 0..<vocabulary.count*2 {
    theta.append(random(dimensions))
}

//func J(theta: [[Double]]) -> Double {
//    return (-1.0/T) *
//}


//#-end-hidden-code

/*:
 
 J(θ) = (-1/T) 𝚺_(t=1 to T) 𝚺_(from -m <= j <= m, j != 0) log(P(w[t+j] | w[w]))
 
 And P(o | c) is given by:
 
 P(o|c) = (exp(u[o] ᵀ v[c]))/(𝚺_(from w=1 to v) exp(u[w] ᵀ v[c]))
 
 # GloVe
 
 
 */
