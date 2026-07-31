.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$24;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ForeignContent"

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    iget v0, p1, Lorg/jsoup/parser/Token;->type:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_14

    .line 9
    .line 10
    if-eq v0, v1, :cond_f

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v2, :cond_5

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v0, v2, :cond_4

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x6

    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget p0, p1, Lorg/jsoup/parser/Token;->type:I

    .line 28
    .line 29
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->stringValueOf$4(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Unexpected state: "

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 44
    .line 45
    iget-object v0, p1, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_3
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v3, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 73
    .line 74
    return v1

    .line 75
    :cond_4
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_5
    move-object v0, p1

    .line 82
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 83
    .line 84
    iget-object v2, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 85
    .line 86
    const-string v4, "br"

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_e

    .line 93
    .line 94
    iget-object v2, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "p"

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_6
    iget-object v2, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 107
    .line 108
    const-string v4, "script"

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_8

    .line 115
    .line 116
    iget-object v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_7

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_8

    .line 130
    .line 131
    iget-object v2, v2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 132
    .line 133
    iget-object v5, v2, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    iget-object v2, v2, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 142
    .line 143
    const-string v4, "http://www.w3.org/2000/svg"

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 152
    .line 153
    .line 154
    return v1

    .line 155
    :cond_8
    :goto_0
    iget-object v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-nez v4, :cond_d

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    sub-int/2addr v3, v1

    .line 168
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 173
    .line 174
    iget-object v5, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-nez v5, :cond_9

    .line 181
    .line 182
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 183
    .line 184
    .line 185
    :cond_9
    if-eqz v3, :cond_c

    .line 186
    .line 187
    iget-object p0, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v4, p0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_b

    .line 194
    .line 195
    iget-object p0, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 196
    .line 197
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 198
    .line 199
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    sub-int/2addr p1, v1

    .line 206
    :goto_1
    if-ltz p1, :cond_c

    .line 207
    .line 208
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    add-int/lit8 p1, p1, -0x1

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_b
    add-int/lit8 v3, v3, -0x1

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    move-object v4, p0

    .line 229
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 230
    .line 231
    iget-object p0, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 232
    .line 233
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 234
    .line 235
    const-string v5, "http://www.w3.org/1999/xhtml"

    .line 236
    .line 237
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-eqz p0, :cond_9

    .line 242
    .line 243
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 244
    .line 245
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    return p0

    .line 250
    :cond_c
    :goto_2
    return v1

    .line 251
    :cond_d
    const-string p0, "Stack unexpectedly empty"

    .line 252
    .line 253
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return v3

    .line 257
    :cond_e
    :goto_3
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 258
    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    return p0

    .line 264
    :cond_f
    move-object p0, p1

    .line 265
    check-cast p0, Lorg/jsoup/parser/Token$StartTag;

    .line 266
    .line 267
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 268
    .line 269
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_10

    .line 276
    .line 277
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 278
    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    return p0

    .line 284
    :cond_10
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 285
    .line 286
    const-string v2, "font"

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_13

    .line 293
    .line 294
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 295
    .line 296
    const/4 v2, -0x1

    .line 297
    if-eqz v0, :cond_11

    .line 298
    .line 299
    const-string v3, "color"

    .line 300
    .line 301
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eq v0, v2, :cond_11

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_11
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 309
    .line 310
    if-eqz v0, :cond_12

    .line 311
    .line 312
    const-string v3, "face"

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eq v0, v2, :cond_12

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_12
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 322
    .line 323
    if-eqz v0, :cond_13

    .line 324
    .line 325
    const-string v3, "size"

    .line 326
    .line 327
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eq v0, v2, :cond_13

    .line 332
    .line 333
    :goto_4
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 334
    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 336
    .line 337
    .line 338
    move-result p0

    .line 339
    return p0

    .line 340
    :cond_13
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 345
    .line 346
    iget-object p1, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return v1

    .line 352
    :cond_14
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 353
    .line 354
    .line 355
    return v1
.end method
