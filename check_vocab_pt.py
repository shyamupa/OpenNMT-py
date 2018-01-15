# coding: utf-8
import torch
import sys
vocab = torch.load(sys.argv[1])
print('src',len(vocab[0][1].itos))
print('tgt',len(vocab[1][1].itos))
