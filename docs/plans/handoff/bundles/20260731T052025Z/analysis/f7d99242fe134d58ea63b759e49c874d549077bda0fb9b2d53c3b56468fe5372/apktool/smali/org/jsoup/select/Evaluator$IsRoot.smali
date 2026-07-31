.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/select/Evaluator$IsRoot;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cost()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/Evaluator$IsRoot;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/jsoup/select/Evaluator;->cost()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :sswitch_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :sswitch_1
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :sswitch_2
    const/16 p0, 0xa

    .line 16
    .line 17
    return p0

    .line 18
    :sswitch_3
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 5

    .line 1
    iget p0, p0, Lorg/jsoup/select/Evaluator$IsRoot;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1

    .line 13
    :pswitch_0
    instance-of p0, p2, Lorg/jsoup/nodes/PseudoTextElement;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->textNodes()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 38
    .line 39
    new-instance v0, Lorg/jsoup/nodes/PseudoTextElement;

    .line 40
    .line 41
    iget-object v2, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 42
    .line 43
    iget-object v3, v2, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v2, v2, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 48
    .line 49
    invoke-static {v3, v2, v4}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-direct {v0, v2, v3, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Element;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    return v1

    .line 72
    :pswitch_1
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 73
    .line 74
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 75
    .line 76
    if-eqz p0, :cond_7

    .line 77
    .line 78
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    move p1, v1

    .line 88
    :goto_2
    if-eqz p0, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 91
    .line 92
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 95
    .line 96
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    add-int/lit8 p1, p1, 0x1

    .line 105
    .line 106
    :cond_4
    if-le p1, v2, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    goto :goto_2

    .line 114
    :cond_6
    :goto_3
    if-ne p1, v2, :cond_7

    .line 115
    .line 116
    move v1, v2

    .line 117
    :cond_7
    :goto_4
    return v1

    .line 118
    :pswitch_2
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 119
    .line 120
    move-object p1, p0

    .line 121
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 122
    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    instance-of p1, p1, Lorg/jsoup/nodes/Document;

    .line 126
    .line 127
    if-nez p1, :cond_b

    .line 128
    .line 129
    if-nez p0, :cond_8

    .line 130
    .line 131
    new-instance p0, Lorg/jsoup/select/Elements;

    .line 132
    .line 133
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    new-instance p1, Lorg/jsoup/select/Elements;

    .line 144
    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    sub-int/2addr v0, v2

    .line 150
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    :cond_9
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 168
    .line 169
    if-eq v0, p2, :cond_9

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_a
    move-object p0, p1

    .line 176
    :goto_6
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-eqz p0, :cond_b

    .line 181
    .line 182
    move v1, v2

    .line 183
    :cond_b
    return v1

    .line 184
    :pswitch_3
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 185
    .line 186
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 187
    .line 188
    if-eqz p0, :cond_f

    .line 189
    .line 190
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 191
    .line 192
    if-nez p1, :cond_f

    .line 193
    .line 194
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_c

    .line 199
    .line 200
    move-object p0, v0

    .line 201
    goto :goto_7

    .line 202
    :cond_c
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    sub-int/2addr p1, v2

    .line 207
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Lorg/jsoup/nodes/Node;

    .line 212
    .line 213
    :goto_7
    if-eqz p0, :cond_e

    .line 214
    .line 215
    instance-of p1, p0, Lorg/jsoup/nodes/Element;

    .line 216
    .line 217
    if-eqz p1, :cond_d

    .line 218
    .line 219
    move-object v0, p0

    .line 220
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 221
    .line 222
    goto :goto_8

    .line 223
    :cond_d
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    goto :goto_7

    .line 228
    :cond_e
    :goto_8
    if-ne p2, v0, :cond_f

    .line 229
    .line 230
    move v1, v2

    .line 231
    :cond_f
    return v1

    .line 232
    :pswitch_4
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 233
    .line 234
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 235
    .line 236
    if-eqz p0, :cond_10

    .line 237
    .line 238
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 239
    .line 240
    if-nez p1, :cond_10

    .line 241
    .line 242
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    if-ne p2, p0, :cond_10

    .line 247
    .line 248
    move v1, v2

    .line 249
    :cond_10
    return v1

    .line 250
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_11

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_11
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    move-object v0, p0

    .line 266
    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 267
    .line 268
    :goto_9
    if-eqz v0, :cond_14

    .line 269
    .line 270
    instance-of p0, v0, Lorg/jsoup/nodes/TextNode;

    .line 271
    .line 272
    if-eqz p0, :cond_12

    .line 273
    .line 274
    move-object p0, v0

    .line 275
    check-cast p0, Lorg/jsoup/nodes/TextNode;

    .line 276
    .line 277
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-nez p0, :cond_13

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_12
    instance-of p0, v0, Lorg/jsoup/nodes/Comment;

    .line 289
    .line 290
    if-nez p0, :cond_13

    .line 291
    .line 292
    instance-of p0, v0, Lorg/jsoup/nodes/DocumentType;

    .line 293
    .line 294
    if-nez p0, :cond_13

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_13
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_9

    .line 302
    :cond_14
    move v1, v2

    .line 303
    :goto_a
    return v1

    .line 304
    :pswitch_6
    return v2

    .line 305
    :pswitch_7
    instance-of p0, p1, Lorg/jsoup/nodes/Document;

    .line 306
    .line 307
    if-eqz p0, :cond_15

    .line 308
    .line 309
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    :cond_15
    if-ne p2, p1, :cond_16

    .line 314
    .line 315
    move v1, v2

    .line 316
    :cond_16
    return v1

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/select/Evaluator$IsRoot;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, ""

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, ":matchText"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, ":only-of-type"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, ":only-child"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    const-string p0, ":last-child"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    const-string p0, ":first-child"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    const-string p0, ":empty"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    const-string p0, "*"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    const-string p0, ":root"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
