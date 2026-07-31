.class public final Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public errors:Lcom/fsck/k9/mail/FetchProfile;

.field public settings:Lorg/jsoup/parser/ParseSettings;

.field public treeBuilder:Lorg/jsoup/parser/HtmlTreeBuilder;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 5
    .line 6
    sget-object p1, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 9
    .line 10
    new-instance p1, Lcom/fsck/k9/mail/FetchProfile;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->clone()Lorg/jsoup/parser/Parser;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Lorg/jsoup/parser/Parser;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/Parser;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 17
    .line 18
    new-instance v1, Lcom/fsck/k9/mail/FetchProfile;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/jsoup/parser/Parser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lorg/jsoup/parser/Parser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 30
    .line 31
    new-instance v1, Lorg/jsoup/parser/ParseSettings;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 34
    .line 35
    iget-boolean v2, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 36
    .line 37
    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    .line 38
    .line 39
    invoke-direct {v1, v2, p0}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 43
    .line 44
    return-object v0
.end method

.method public final parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/StringReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p3, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->initialiseParse(Ljava/io/StringReader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 12
    .line 13
    iput-object p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    iput-boolean p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->fragmentParsing:Z

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    if-eqz p2, :cond_c

    .line 20
    .line 21
    iget-object v0, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    const-string v2, "http://www.w3.org/1999/xhtml"

    .line 28
    .line 29
    iget-object v3, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v0, v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->tagFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->baseUri:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 42
    .line 43
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 50
    .line 51
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget v2, v2, Lorg/jsoup/nodes/Document;->quirksMode:I

    .line 56
    .line 57
    iput v2, v1, Lorg/jsoup/nodes/Document;->quirksMode:I

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, -0x1

    .line 67
    sparse-switch v1, :sswitch_data_0

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_0
    const-string v1, "noembed"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_1
    const/16 v2, 0x9

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :sswitch_1
    const-string v1, "plaintext"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_2
    const/16 v2, 0x8

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :sswitch_2
    const-string v1, "noframes"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const/4 v2, 0x7

    .line 110
    goto :goto_0

    .line 111
    :sswitch_3
    const-string v1, "title"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    const/4 v2, 0x6

    .line 121
    goto :goto_0

    .line 122
    :sswitch_4
    const-string v1, "style"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    const/4 v2, 0x5

    .line 132
    goto :goto_0

    .line 133
    :sswitch_5
    const-string/jumbo v1, "xmp"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_6
    const/4 v2, 0x4

    .line 144
    goto :goto_0

    .line 145
    :sswitch_6
    const-string v1, "script"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_7

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    const/4 v2, 0x3

    .line 155
    goto :goto_0

    .line 156
    :sswitch_7
    const-string v1, "textarea"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_8
    const/4 v2, 0x2

    .line 166
    goto :goto_0

    .line 167
    :sswitch_8
    const-string v1, "iframe"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_9

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_9
    move v2, p0

    .line 177
    goto :goto_0

    .line 178
    :sswitch_9
    const-string v1, "template"

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_a

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_a
    move v2, p3

    .line 188
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 189
    .line 190
    .line 191
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 192
    .line 193
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :pswitch_0
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 200
    .line 201
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState$7;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_1
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 208
    .line 209
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState$6;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :pswitch_2
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 216
    .line 217
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState$3;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :pswitch_3
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 224
    .line 225
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState$5;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :pswitch_4
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 232
    .line 233
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushTemplateMode(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 241
    .line 242
    .line 243
    :goto_1
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 244
    .line 245
    iget-object v1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 251
    .line 252
    iget-object v1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->stack:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->resetInsertionMode()Z

    .line 258
    .line 259
    .line 260
    :goto_2
    if-eqz p2, :cond_c

    .line 261
    .line 262
    instance-of v0, p2, Lorg/jsoup/nodes/FormElement;

    .line 263
    .line 264
    if-eqz v0, :cond_b

    .line 265
    .line 266
    check-cast p2, Lorg/jsoup/nodes/FormElement;

    .line 267
    .line 268
    iput-object p2, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_b
    iget-object p2, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 272
    .line 273
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->runParser()V

    .line 277
    .line 278
    .line 279
    iget-object p2, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 280
    .line 281
    if-eqz p2, :cond_12

    .line 282
    .line 283
    iget-object v0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 284
    .line 285
    if-nez v0, :cond_d

    .line 286
    .line 287
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_d
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    sub-int/2addr v2, p0

    .line 301
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :cond_e
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_f

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 319
    .line 320
    if-eq v2, p2, :cond_e

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_f
    move-object p2, v1

    .line 327
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_11

    .line 332
    .line 333
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 339
    .line 340
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-ltz v1, :cond_10

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_10
    move p0, p3

    .line 348
    :goto_6
    const-string v2, "Insert position out of bounds."

    .line 349
    .line 350
    invoke-static {v2, p0}, Lorg/jsoup/helper/Validate;->isTrue(Ljava/lang/String;Z)V

    .line 351
    .line 352
    .line 353
    new-instance p0, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    .line 357
    .line 358
    new-array p2, p3, [Lorg/jsoup/nodes/Node;

    .line 359
    .line 360
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    check-cast p0, [Lorg/jsoup/nodes/Node;

    .line 365
    .line 366
    invoke-virtual {v0, v1, p0}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 367
    .line 368
    .line 369
    :cond_11
    iget-object p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->contextElement:Lorg/jsoup/nodes/Element;

    .line 370
    .line 371
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    return-object p0

    .line 376
    :cond_12
    iget-object p0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 377
    .line 378
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_9
        -0x47007d5c -> :sswitch_8
        -0x3bcc48c6 -> :sswitch_7
        -0x361a2f35 -> :sswitch_6
        0x1d01b -> :sswitch_5
        0x68b1db1 -> :sswitch_4
        0x6942258 -> :sswitch_3
        0x47177da7 -> :sswitch_2
        0x759d29f7 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
