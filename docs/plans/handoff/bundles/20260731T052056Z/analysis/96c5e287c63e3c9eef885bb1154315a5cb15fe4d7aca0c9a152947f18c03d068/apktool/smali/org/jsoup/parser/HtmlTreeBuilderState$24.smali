.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$24;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


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
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "script"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object p0, p1, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 23
    .line 24
    const-string p1, "Unexpected state: "

    .line 25
    .line 26
    invoke-static {p1, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return v1

    .line 30
    :pswitch_0
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 31
    .line 32
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    .line 39
    .line 40
    .line 41
    return v3

    .line 42
    :cond_0
    invoke-virtual {p2, p1, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 46
    .line 47
    return v3

    .line 48
    :pswitch_1
    move-object v0, p1

    .line 49
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 50
    .line 51
    iget-object v4, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 52
    .line 53
    const-string v5, "br"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_8

    .line 60
    .line 61
    iget-object v4, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 62
    .line 63
    const-string v5, "p"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_1
    iget-object v4, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    iget-object v4, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    iget-object v4, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 97
    .line 98
    iget-object v5, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    iget-object v2, v4, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 107
    .line 108
    const-string v4, "http://www.w3.org/2000/svg"

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    :cond_3
    :goto_0
    iget-object v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_7

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    sub-int/2addr v1, v3

    .line 133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 138
    .line 139
    iget-object v5, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-nez v5, :cond_4

    .line 146
    .line 147
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    if-eqz v1, :cond_e

    .line 151
    .line 152
    iget-object p0, v0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v4, p0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_6

    .line 159
    .line 160
    iget-object p0, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 161
    .line 162
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 163
    .line 164
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    sub-int/2addr p1, v3

    .line 171
    :goto_1
    if-ltz p1, :cond_e

    .line 172
    .line 173
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    goto/16 :goto_4

    .line 184
    .line 185
    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    move-object v4, p0

    .line 195
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 196
    .line 197
    iget-object p0, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 198
    .line 199
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 200
    .line 201
    const-string v5, "http://www.w3.org/1999/xhtml"

    .line 202
    .line 203
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    if-eqz p0, :cond_4

    .line 208
    .line 209
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 210
    .line 211
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    return p0

    .line 216
    :cond_7
    const-string p0, "Stack unexpectedly empty"

    .line 217
    .line 218
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return v1

    .line 222
    :cond_8
    :goto_2
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 223
    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    return p0

    .line 229
    :pswitch_2
    move-object p0, p1

    .line 230
    check-cast p0, Lorg/jsoup/parser/Token$StartTag;

    .line 231
    .line 232
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 233
    .line 234
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_9

    .line 241
    .line 242
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 243
    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    return p0

    .line 249
    :cond_9
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 250
    .line 251
    const-string v1, "font"

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_c

    .line 258
    .line 259
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 260
    .line 261
    const/4 v1, -0x1

    .line 262
    if-eqz v0, :cond_a

    .line 263
    .line 264
    const-string v4, "color"

    .line 265
    .line 266
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eq v0, v1, :cond_a

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_a
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 274
    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    const-string v4, "face"

    .line 278
    .line 279
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eq v0, v1, :cond_b

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_b
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 287
    .line 288
    if-eqz v0, :cond_c

    .line 289
    .line 290
    const-string v4, "size"

    .line 291
    .line 292
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eq v0, v1, :cond_c

    .line 297
    .line 298
    :goto_3
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 299
    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 301
    .line 302
    .line 303
    move-result p0

    .line 304
    return p0

    .line 305
    :cond_c
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 310
    .line 311
    iget-object p1, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Lokhttp3/FormBody$Builder;

    .line 317
    .line 318
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v4, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 325
    .line 326
    iget-object v5, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 327
    .line 328
    iget-boolean v4, v4, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 329
    .line 330
    invoke-virtual {v5, v0, v1, p1, v4}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    if-eqz p1, :cond_e

    .line 339
    .line 340
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    iget-object p2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 347
    .line 348
    if-eqz p0, :cond_d

    .line 349
    .line 350
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 351
    .line 352
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 353
    .line 354
    .line 355
    return v3

    .line 356
    :cond_d
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 357
    .line 358
    .line 359
    :cond_e
    :goto_4
    :pswitch_3
    return v3

    .line 360
    :pswitch_4
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 361
    .line 362
    .line 363
    return v3

    .line 364
    :pswitch_5
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 365
    .line 366
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    .line 367
    .line 368
    .line 369
    return v3

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
