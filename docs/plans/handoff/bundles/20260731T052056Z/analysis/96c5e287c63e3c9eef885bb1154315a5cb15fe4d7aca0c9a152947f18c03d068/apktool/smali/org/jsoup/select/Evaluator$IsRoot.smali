.class public final Lorg/jsoup/select/Evaluator$IsRoot;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static loggedError:Z = false


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
    .locals 8

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
    const-class p0, Lorg/jsoup/nodes/TextNode;

    .line 20
    .line 21
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Element;->filterNodes(Ljava/lang/Class;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 40
    .line 41
    new-instance v3, Lorg/jsoup/nodes/PseudoTextElement;

    .line 42
    .line 43
    iget-object v4, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 44
    .line 45
    iget-object v5, v4, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v6, Lorg/jsoup/parser/TagSet;

    .line 50
    .line 51
    sget-object v7, Lorg/jsoup/parser/TagSet;->HtmlTagSet:Lorg/jsoup/parser/TagSet;

    .line 52
    .line 53
    invoke-direct {v6, v7, v0}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v5, v0, v4, v2}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-direct {v3, v4, v5, v6}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Node;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    :goto_1
    return v1

    .line 79
    :pswitch_1
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 80
    .line 81
    if-eqz p0, :cond_7

    .line 82
    .line 83
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    move p1, v1

    .line 93
    :goto_2
    if-eqz p0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 96
    .line 97
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 100
    .line 101
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    :cond_4
    if-le p1, v2, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto :goto_2

    .line 119
    :cond_6
    :goto_3
    if-ne p1, v2, :cond_7

    .line 120
    .line 121
    move v1, v2

    .line 122
    :cond_7
    :goto_4
    return v1

    .line 123
    :pswitch_2
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 124
    .line 125
    if-eqz p0, :cond_b

    .line 126
    .line 127
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 128
    .line 129
    if-nez p1, :cond_b

    .line 130
    .line 131
    if-nez p0, :cond_8

    .line 132
    .line 133
    new-instance p0, Lorg/jsoup/select/Elements;

    .line 134
    .line 135
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_8
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
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 185
    .line 186
    if-eqz p0, :cond_e

    .line 187
    .line 188
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 189
    .line 190
    if-nez p1, :cond_e

    .line 191
    .line 192
    iget-object p1, p0, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    sub-int/2addr p1, v2

    .line 199
    :goto_7
    if-ltz p1, :cond_d

    .line 200
    .line 201
    iget-object v3, p0, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 202
    .line 203
    invoke-virtual {v3, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    check-cast v3, Lorg/jsoup/nodes/Node;

    .line 208
    .line 209
    instance-of v4, v3, Lorg/jsoup/nodes/Element;

    .line 210
    .line 211
    if-eqz v4, :cond_c

    .line 212
    .line 213
    move-object v0, v3

    .line 214
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_d
    :goto_8
    if-ne p2, v0, :cond_e

    .line 221
    .line 222
    move v1, v2

    .line 223
    :cond_e
    return v1

    .line 224
    :pswitch_4
    iget-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 225
    .line 226
    if-eqz p0, :cond_f

    .line 227
    .line 228
    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    .line 229
    .line 230
    if-nez p1, :cond_f

    .line 231
    .line 232
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    if-ne p2, p0, :cond_f

    .line 237
    .line 238
    move v1, v2

    .line 239
    :cond_f
    return v1

    .line 240
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    :goto_9
    if-eqz p0, :cond_12

    .line 245
    .line 246
    instance-of p1, p0, Lorg/jsoup/nodes/TextNode;

    .line 247
    .line 248
    if-eqz p1, :cond_10

    .line 249
    .line 250
    move-object p1, p0

    .line 251
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 252
    .line 253
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_11

    .line 262
    .line 263
    goto :goto_a

    .line 264
    :cond_10
    instance-of p1, p0, Lorg/jsoup/nodes/Comment;

    .line 265
    .line 266
    if-nez p1, :cond_11

    .line 267
    .line 268
    instance-of p1, p0, Lorg/jsoup/nodes/DocumentType;

    .line 269
    .line 270
    if-nez p1, :cond_11

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_11
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    goto :goto_9

    .line 278
    :cond_12
    move v1, v2

    .line 279
    :goto_a
    return v1

    .line 280
    :pswitch_6
    return v2

    .line 281
    :pswitch_7
    instance-of p0, p1, Lorg/jsoup/nodes/Document;

    .line 282
    .line 283
    if-eqz p0, :cond_13

    .line 284
    .line 285
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    :cond_13
    if-ne p2, p1, :cond_14

    .line 290
    .line 291
    move v1, v2

    .line 292
    :cond_14
    return v1

    .line 293
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
    const-string p0, ">"

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
