.class public final Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final namespacesStack:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->namespacesStack:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final defaultMaxDepth()I
    .locals 0

    .line 1
    const p0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final defaultNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    .line 2
    .line 3
    return-object p0
.end method

.method public final defaultSettings()Lorg/jsoup/parser/ParseSettings;
    .locals 0

    .line 1
    sget-object p0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public final defaultTagSet()Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 1
    new-instance p0, Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;Ljava/util/ArrayList;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final initialiseParse(Ljava/io/Reader;Lorg/jsoup/parser/Parser;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Lorg/jsoup/parser/Parser;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    iput p2, p1, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:I

    .line 10
    .line 11
    sget-object p2, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 12
    .line 13
    iput-object p2, p1, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p1, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    .line 17
    .line 18
    iget-object p0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->namespacesStack:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p2, "xml"

    .line 29
    .line 30
    .line 31
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string p2, ""

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final newInstance()Lorg/jsoup/parser/TreeBuilder;
    .locals 0

    .line 1
    new-instance p0, Lorg/jsoup/parser/XmlTreeBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final pop()Lorg/jsoup/nodes/Element;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/XmlTreeBuilder;->namespacesStack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final process(Lorg/jsoup/parser/Token;)Z
    .locals 13

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->currentToken:Lorg/jsoup/parser/Token;

    .line 2
    .line 3
    iget v0, p1, Lorg/jsoup/parser/Token;->type:I

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x100

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget p0, p1, Lorg/jsoup/parser/Token;->type:I

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/tools/r8/RecordTag;->stringValueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "Unexpected token type: "

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lorg/jsoup/helper/ValidationException;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :pswitch_0
    check-cast p1, Lorg/jsoup/parser/Token$XmlDecl;

    .line 36
    .line 37
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    .line 38
    .line 39
    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-boolean v3, p1, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    .line 46
    .line 47
    invoke-direct {v0, v1, v3}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :pswitch_1
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 72
    .line 73
    iget-object v0, p1, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 74
    .line 75
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    instance-of p1, p1, Lorg/jsoup/parser/Token$CData;

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    new-instance p1, Lorg/jsoup/nodes/CDataNode;

    .line 84
    .line 85
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    new-instance p1, Lorg/jsoup/nodes/DataNode;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance p1, Lorg/jsoup/nodes/TextNode;

    .line 108
    .line 109
    invoke-direct {p1, v0}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 117
    .line 118
    .line 119
    return v2

    .line 120
    :pswitch_2
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 121
    .line 122
    new-instance v0, Lorg/jsoup/nodes/Comment;

    .line 123
    .line 124
    iget-object p1, p1, Lorg/jsoup/parser/Token$Comment;->data:Lorg/jsoup/parser/TokenData;

    .line 125
    .line 126
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v0, p1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :pswitch_3
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 142
    .line 143
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 144
    .line 145
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    .line 146
    .line 147
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget-boolean v0, v0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 159
    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    invoke-static {p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    add-int/lit8 v5, v0, -0x1

    .line 173
    .line 174
    if-lt v5, v3, :cond_4

    .line 175
    .line 176
    add-int/lit16 v1, v0, -0x101

    .line 177
    .line 178
    :cond_4
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    sub-int/2addr v0, v2

    .line 185
    :goto_1
    if-lt v0, v1, :cond_6

    .line 186
    .line 187
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 194
    .line 195
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-eqz v5, :cond_5

    .line 204
    .line 205
    move-object v4, v3

    .line 206
    goto :goto_2

    .line 207
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_6
    :goto_2
    if-nez v4, :cond_7

    .line 211
    .line 212
    goto/16 :goto_a

    .line 213
    .line 214
    :cond_7
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    sub-int/2addr p1, v2

    .line 221
    :goto_3
    if-ltz p1, :cond_16

    .line 222
    .line 223
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-ne v0, v4, :cond_8

    .line 228
    .line 229
    goto/16 :goto_a

    .line 230
    .line 231
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :pswitch_4
    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    .line 235
    .line 236
    new-instance v0, Ljava/util/HashMap;

    .line 237
    .line 238
    iget-object v3, p0, Lorg/jsoup/parser/XmlTreeBuilder;->namespacesStack:Ljava/util/ArrayDeque;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Ljava/util/Map;

    .line 245
    .line 246
    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object v3, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 253
    .line 254
    const-string v5, ""

    .line 255
    .line 256
    const/16 v6, 0x3a

    .line 257
    .line 258
    if-eqz v3, :cond_10

    .line 259
    .line 260
    iget-object v7, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 261
    .line 262
    invoke-virtual {v7, v3}, Lorg/jsoup/parser/ParseSettings;->normalizeAttributes(Lorg/jsoup/nodes/Attributes;)V

    .line 263
    .line 264
    .line 265
    iget-object v7, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 266
    .line 267
    invoke-virtual {v3, v7}, Lorg/jsoup/nodes/Attributes;->deduplicate(Lorg/jsoup/parser/ParseSettings;)I

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    new-instance v7, Lorg/jsoup/nodes/Attributes$1;

    .line 274
    .line 275
    invoke-direct {v7, v3}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 276
    .line 277
    .line 278
    :cond_9
    :goto_4
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    const-string/jumbo v9, "xmlns"

    .line 283
    .line 284
    .line 285
    if-eqz v8, :cond_b

    .line 286
    .line 287
    invoke-virtual {v7}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    check-cast v8, Lorg/jsoup/nodes/Attribute;

    .line 292
    .line 293
    iget-object v10, v8, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v8, v8, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static {v8}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    if-eqz v9, :cond_a

    .line 306
    .line 307
    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_a
    const-string/jumbo v9, "xmlns:"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    if-eqz v9, :cond_9

    .line 319
    .line 320
    const/4 v9, 0x6

    .line 321
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_b
    new-instance v7, Ljava/util/HashMap;

    .line 330
    .line 331
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 332
    .line 333
    .line 334
    new-instance v8, Lorg/jsoup/nodes/Attributes$1;

    .line 335
    .line 336
    invoke-direct {v8, v3}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 337
    .line 338
    .line 339
    :cond_c
    :goto_5
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    if-eqz v10, :cond_f

    .line 344
    .line 345
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    check-cast v10, Lorg/jsoup/nodes/Attribute;

    .line 350
    .line 351
    iget-object v10, v10, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(I)I

    .line 354
    .line 355
    .line 356
    move-result v11

    .line 357
    const/4 v12, -0x1

    .line 358
    if-ne v11, v12, :cond_d

    .line 359
    .line 360
    move-object v10, v5

    .line 361
    goto :goto_6

    .line 362
    :cond_d
    invoke-virtual {v10, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    if-nez v11, :cond_c

    .line 371
    .line 372
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-eqz v11, :cond_e

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_e
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v11

    .line 383
    check-cast v11, Ljava/lang/String;

    .line 384
    .line 385
    if-eqz v11, :cond_c

    .line 386
    .line 387
    const-string v12, "jsoup.xmlns-"

    .line 388
    .line 389
    invoke-virtual {v12, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :cond_f
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    if-eqz v8, :cond_10

    .line 410
    .line 411
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    check-cast v8, Ljava/util/Map$Entry;

    .line 416
    .line 417
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    check-cast v9, Ljava/lang/String;

    .line 422
    .line 423
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    invoke-virtual {v3, v8, v9}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_10
    iget-object v7, p0, Lorg/jsoup/parser/TreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 432
    .line 433
    iget v7, v7, Lorg/jsoup/parser/Parser;->maxDepth:I

    .line 434
    .line 435
    const v8, 0x7fffffff

    .line 436
    .line 437
    .line 438
    if-ne v7, v8, :cond_11

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_11
    :goto_8
    iget-object v8, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-lt v8, v7, :cond_12

    .line 448
    .line 449
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 450
    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_12
    :goto_9
    iget-object v7, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Lorg/jsoup/parser/TokenData;

    .line 454
    .line 455
    invoke-virtual {v7}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    check-cast v5, Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    if-lez v6, :cond_13

    .line 470
    .line 471
    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    if-eqz v6, :cond_13

    .line 480
    .line 481
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    move-object v5, v0

    .line 486
    check-cast v5, Ljava/lang/String;

    .line 487
    .line 488
    :cond_13
    iget-object v0, p1, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 489
    .line 490
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 491
    .line 492
    iget-object v6, p0, Lorg/jsoup/parser/TreeBuilder;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 493
    .line 494
    iget-boolean v1, v1, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 495
    .line 496
    invoke-virtual {v6, v7, v0, v5, v1}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    new-instance v1, Lorg/jsoup/nodes/Element;

    .line 501
    .line 502
    invoke-direct {v1, v0, v4, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 510
    .line 511
    .line 512
    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 518
    .line 519
    if-eqz p1, :cond_14

    .line 520
    .line 521
    iget p1, v0, Lorg/jsoup/parser/Tag;->options:I

    .line 522
    .line 523
    or-int/lit8 p1, p1, 0x20

    .line 524
    .line 525
    iput p1, v0, Lorg/jsoup/parser/Tag;->options:I

    .line 526
    .line 527
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 528
    .line 529
    .line 530
    return v2

    .line 531
    :cond_14
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isEmpty()Z

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    if-eqz p1, :cond_15

    .line 536
    .line 537
    invoke-virtual {p0}, Lorg/jsoup/parser/XmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 538
    .line 539
    .line 540
    return v2

    .line 541
    :cond_15
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    if-eqz p1, :cond_16

    .line 546
    .line 547
    iget-object p0, p0, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 548
    .line 549
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 550
    .line 551
    .line 552
    :cond_16
    :goto_a
    :pswitch_5
    return v2

    .line 553
    :pswitch_6
    check-cast p1, Lorg/jsoup/parser/Token$Doctype;

    .line 554
    .line 555
    new-instance v0, Lorg/jsoup/nodes/DocumentType;

    .line 556
    .line 557
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 558
    .line 559
    iget-object v3, p1, Lorg/jsoup/parser/Token$Doctype;->name:Lorg/jsoup/parser/TokenData;

    .line 560
    .line 561
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    iget-boolean v1, v1, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 573
    .line 574
    if-nez v1, :cond_17

    .line 575
    .line 576
    invoke-static {v3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    :cond_17
    iget-object v1, p1, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lorg/jsoup/parser/TokenData;

    .line 581
    .line 582
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    iget-object v4, p1, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lorg/jsoup/parser/TokenData;

    .line 587
    .line 588
    invoke-virtual {v4}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-direct {v0, v3, v1, v4}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    iget-object v1, p1, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 596
    .line 597
    if-eqz v1, :cond_18

    .line 598
    .line 599
    const-string v3, "pubSysKey"

    .line 600
    .line 601
    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    :cond_18
    iget-boolean v1, p1, Lorg/jsoup/parser/Token$Doctype;->sawInternalSubset:Z

    .line 605
    .line 606
    if-eqz v1, :cond_19

    .line 607
    .line 608
    iget-object p1, p1, Lorg/jsoup/parser/Token$Doctype;->internalSubset:Lorg/jsoup/parser/TokenData;

    .line 609
    .line 610
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object p1

    .line 614
    invoke-virtual {v0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    sget-object v3, Lorg/jsoup/nodes/DocumentType;->InternalSubsetKey:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v1, v3, p1}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    :cond_19
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 624
    .line 625
    .line 626
    move-result-object p0

    .line 627
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 628
    .line 629
    .line 630
    return v2

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
