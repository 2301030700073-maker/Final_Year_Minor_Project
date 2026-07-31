.class public final Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final AttributeEvals:[Ljava/lang/String;

.field public static final Combinators:[C

.field public static final NthOffset:Ljava/util/regex/Pattern;

.field public static final NthStepOffset:Ljava/util/regex/Pattern;


# instance fields
.field public final evals:Ljava/util/ArrayList;

.field public final query:Ljava/lang/String;

.field public final tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 8
    .line 9
    const-string v5, "*="

    .line 10
    .line 11
    const-string/jumbo v6, "~="

    .line 12
    .line 13
    .line 14
    const-string v1, "="

    .line 15
    .line 16
    const-string v2, "!="

    .line 17
    .line 18
    const-string v3, "^="

    .line 19
    .line 20
    const-string v4, "$="

    .line 21
    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    const-string v0, "([+-])?(\\d+)"

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 2
        0x2cs
        0x3es
        0x2bs
        0x7es
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 26
    .line 27
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 1

    .line 102
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    throw v0
.end method


# virtual methods
.method public final combinator(C)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    if-nez v4, :cond_6

    .line 18
    .line 19
    sget-object v4, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v3, "("

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x28

    .line 50
    .line 51
    const/16 v4, 0x29

    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, ")"

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v3, "["

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v3, 0x5b

    .line 78
    .line 79
    const/16 v4, 0x5d

    .line 80
    .line 81
    invoke-virtual {v0, v3, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "]"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v3, "\\"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    move v3, v5

    .line 131
    goto :goto_0

    .line 132
    :cond_6
    :goto_2
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    const/16 v3, 0x2c

    .line 147
    .line 148
    if-ne v1, v5, :cond_9

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lorg/jsoup/select/Evaluator;

    .line 155
    .line 156
    instance-of v4, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 157
    .line 158
    if-eqz v4, :cond_8

    .line 159
    .line 160
    if-eq p1, v3, :cond_8

    .line 161
    .line 162
    move-object v4, v1

    .line 163
    check-cast v4, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 164
    .line 165
    iget v6, v4, Lorg/jsoup/select/CombiningEvaluator;->num:I

    .line 166
    .line 167
    if-lez v6, :cond_7

    .line 168
    .line 169
    iget-object v4, v4, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 170
    .line 171
    sub-int/2addr v6, v5

    .line 172
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lorg/jsoup/select/Evaluator;

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const/4 v4, 0x0

    .line 180
    :goto_3
    move-object v6, v4

    .line 181
    move-object v4, v1

    .line 182
    move-object v1, v6

    .line 183
    move v6, v5

    .line 184
    goto :goto_5

    .line 185
    :cond_8
    :goto_4
    move-object v4, v1

    .line 186
    move v6, v2

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 195
    .line 196
    .line 197
    const/16 v7, 0x20

    .line 198
    .line 199
    const/4 v8, 0x2

    .line 200
    if-eq p1, v7, :cond_10

    .line 201
    .line 202
    const/16 v7, 0x3e

    .line 203
    .line 204
    if-eq p1, v7, :cond_e

    .line 205
    .line 206
    const/16 v7, 0x7e

    .line 207
    .line 208
    if-eq p1, v7, :cond_d

    .line 209
    .line 210
    const/16 v7, 0x2b

    .line 211
    .line 212
    if-eq p1, v7, :cond_c

    .line 213
    .line 214
    if-ne p1, v3, :cond_b

    .line 215
    .line 216
    instance-of p1, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 217
    .line 218
    if-eqz p1, :cond_a

    .line 219
    .line 220
    check-cast v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_a
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 224
    .line 225
    invoke-direct {p1}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v2, p1, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 234
    .line 235
    .line 236
    move-object v1, p1

    .line 237
    :goto_6
    iget-object p1, v1, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 243
    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_b
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 247
    .line 248
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    new-array v0, v5, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object p1, v0, v2

    .line 255
    .line 256
    const-string p1, "Unknown combinator \'%s\'"

    .line 257
    .line 258
    invoke-direct {p0, p1, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    throw p0

    .line 262
    :cond_c
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 263
    .line 264
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    .line 265
    .line 266
    invoke-direct {v3, v1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 267
    .line 268
    .line 269
    new-array v1, v8, [Lorg/jsoup/select/Evaluator;

    .line 270
    .line 271
    aput-object v3, v1, v2

    .line 272
    .line 273
    aput-object v0, v1, v5

    .line 274
    .line 275
    invoke-direct {p1, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 276
    .line 277
    .line 278
    :goto_7
    move-object v1, p1

    .line 279
    goto :goto_9

    .line 280
    :cond_d
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 281
    .line 282
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    .line 283
    .line 284
    invoke-direct {v3, v1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 285
    .line 286
    .line 287
    new-array v1, v8, [Lorg/jsoup/select/Evaluator;

    .line 288
    .line 289
    aput-object v3, v1, v2

    .line 290
    .line 291
    aput-object v0, v1, v5

    .line 292
    .line 293
    invoke-direct {p1, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_e
    instance-of p1, v1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 298
    .line 299
    if-eqz p1, :cond_f

    .line 300
    .line 301
    check-cast v1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_f
    new-instance p1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 305
    .line 306
    invoke-direct {p1, v1}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 307
    .line 308
    .line 309
    move-object v1, p1

    .line 310
    :goto_8
    iget-object p1, v1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    iget p1, v1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 316
    .line 317
    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    add-int/2addr v0, p1

    .line 322
    iput v0, v1, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_10
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 326
    .line 327
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 328
    .line 329
    invoke-direct {v3, v1, v5}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 330
    .line 331
    .line 332
    new-array v1, v8, [Lorg/jsoup/select/Evaluator;

    .line 333
    .line 334
    aput-object v3, v1, v2

    .line 335
    .line 336
    aput-object v0, v1, v5

    .line 337
    .line 338
    invoke-direct {p1, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :goto_9
    if-eqz v6, :cond_11

    .line 343
    .line 344
    move-object p1, v4

    .line 345
    check-cast p1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 346
    .line 347
    iget-object v0, p1, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 348
    .line 349
    iget v2, p1, Lorg/jsoup/select/CombiningEvaluator;->num:I

    .line 350
    .line 351
    sub-int/2addr v2, v5

    .line 352
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 356
    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_11
    move-object v4, v1

    .line 360
    :goto_a
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public final consumeEvaluator()Lorg/jsoup/select/Evaluator;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "#"

    .line 4
    .line 5
    iget-object v2, v0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v3, 0x0

    .line 12
    sget-object v4, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 24
    .line 25
    invoke-direct {v1, v3, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    const-string v1, "."

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v5, 0x3

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v1, v5, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/16 v6, 0xb

    .line 60
    .line 61
    const/16 v7, 0xa

    .line 62
    .line 63
    const/16 v8, 0x9

    .line 64
    .line 65
    const/4 v9, 0x2

    .line 66
    const-string v10, ":"

    .line 67
    .line 68
    const-string v11, "*|"

    .line 69
    .line 70
    const/4 v12, 0x1

    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    iget-object v1, v2, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 74
    .line 75
    iget v13, v2, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 76
    .line 77
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    :goto_0
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lorg/jsoup/internal/Functions;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 118
    .line 119
    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    .line 120
    .line 121
    invoke-direct {v2, v8, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    new-instance v4, Lorg/jsoup/select/Evaluator$Id;

    .line 125
    .line 126
    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v4, v7, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    new-array v0, v9, [Lorg/jsoup/select/Evaluator;

    .line 134
    .line 135
    aput-object v2, v0, v3

    .line 136
    .line 137
    aput-object v4, v0, v12

    .line 138
    .line 139
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {v1}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    .line 144
    .line 145
    .line 146
    iget v2, v1, Lorg/jsoup/select/CombiningEvaluator;->num:I

    .line 147
    .line 148
    iget-object v3, v1, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 149
    .line 150
    if-le v2, v12, :cond_3

    .line 151
    .line 152
    new-instance v2, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 153
    .line 154
    invoke-direct {v2, v0}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 165
    .line 166
    .line 167
    return-object v1

    .line 168
    :cond_4
    const-string/jumbo v1, "|*"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    sub-int/2addr v1, v9

    .line 182
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 191
    .line 192
    invoke-direct {v1, v6, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    return-object v1

    .line 196
    :cond_5
    const-string/jumbo v1, "|"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    :cond_6
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 210
    .line 211
    invoke-direct {v1, v8, v0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    return-object v1

    .line 215
    :cond_7
    const-string v1, "["

    .line 216
    .line 217
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    const/4 v11, 0x6

    .line 222
    const/4 v13, 0x4

    .line 223
    const-string v14, "*"

    .line 224
    .line 225
    iget-object v15, v0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v1, :cond_14

    .line 228
    .line 229
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    .line 230
    .line 231
    const/16 v1, 0x5b

    .line 232
    .line 233
    const/16 v4, 0x5d

    .line 234
    .line 235
    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget v1, v0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 243
    .line 244
    :goto_2
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_a

    .line 249
    .line 250
    move v2, v3

    .line 251
    :goto_3
    if-ge v2, v11, :cond_9

    .line 252
    .line 253
    sget-object v4, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 254
    .line 255
    aget-object v4, v4, v2

    .line 256
    .line 257
    invoke-virtual {v0, v4}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_8

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_9
    iget v2, v0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 268
    .line 269
    add-int/2addr v2, v12

    .line 270
    iput v2, v0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_a
    :goto_4
    iget-object v2, v0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 274
    .line 275
    iget v4, v0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 276
    .line 277
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eqz v2, :cond_d

    .line 292
    .line 293
    const-string v0, "^"

    .line 294
    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_b

    .line 300
    .line 301
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 302
    .line 303
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-direct {v0, v1, v9}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    return-object v0

    .line 311
    :cond_b
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_c

    .line 316
    .line 317
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 318
    .line 319
    const-string v1, ""

    .line 320
    .line 321
    invoke-direct {v0, v1, v9}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    return-object v0

    .line 325
    :cond_c
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 326
    .line 327
    invoke-direct {v0, v12, v1, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 328
    .line 329
    .line 330
    return-object v0

    .line 331
    :cond_d
    const-string v2, "="

    .line 332
    .line 333
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_e

    .line 338
    .line 339
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 340
    .line 341
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-direct {v2, v3, v1, v0, v12}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 346
    .line 347
    .line 348
    return-object v2

    .line 349
    :cond_e
    const-string v2, "!="

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-eqz v2, :cond_f

    .line 356
    .line 357
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 358
    .line 359
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-direct {v2, v5, v1, v0, v12}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    return-object v2

    .line 367
    :cond_f
    const-string v2, "^="

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_10

    .line 374
    .line 375
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 376
    .line 377
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-direct {v2, v13, v1, v0, v3}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    return-object v2

    .line 385
    :cond_10
    const-string v2, "$="

    .line 386
    .line 387
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_11

    .line 392
    .line 393
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 394
    .line 395
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-direct {v2, v9, v1, v0, v3}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 400
    .line 401
    .line 402
    return-object v2

    .line 403
    :cond_11
    const-string v2, "*="

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_12

    .line 410
    .line 411
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 412
    .line 413
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-direct {v2, v12, v1, v0, v12}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 418
    .line 419
    .line 420
    return-object v2

    .line 421
    :cond_12
    const-string/jumbo v2, "~="

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_13

    .line 429
    .line 430
    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    .line 431
    .line 432
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-direct {v2, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 441
    .line 442
    .line 443
    return-object v2

    .line 444
    :cond_13
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 445
    .line 446
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    new-array v2, v9, [Ljava/lang/Object;

    .line 451
    .line 452
    aput-object v15, v2, v3

    .line 453
    .line 454
    aput-object v0, v2, v12

    .line 455
    .line 456
    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    .line 457
    .line 458
    invoke-direct {v1, v0, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    throw v1

    .line 462
    :cond_14
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_15

    .line 467
    .line 468
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 469
    .line 470
    invoke-direct {v0, v12}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    :cond_15
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    const-string v10, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 479
    .line 480
    if-eqz v1, :cond_32

    .line 481
    .line 482
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    const/4 v14, 0x7

    .line 491
    const/4 v6, 0x5

    .line 492
    const/16 v16, -0x1

    .line 493
    .line 494
    sparse-switch v4, :sswitch_data_0

    .line 495
    .line 496
    .line 497
    goto/16 :goto_6

    .line 498
    .line 499
    :sswitch_0
    const-string v4, "last-of-type"

    .line 500
    .line 501
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-nez v1, :cond_16

    .line 506
    .line 507
    goto/16 :goto_6

    .line 508
    .line 509
    :cond_16
    const/16 v1, 0x1b

    .line 510
    .line 511
    goto/16 :goto_5

    .line 512
    .line 513
    :sswitch_1
    const-string v4, "containsWholeText"

    .line 514
    .line 515
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-nez v1, :cond_17

    .line 520
    .line 521
    goto/16 :goto_6

    .line 522
    .line 523
    :cond_17
    const/16 v1, 0x1a

    .line 524
    .line 525
    goto/16 :goto_5

    .line 526
    .line 527
    :sswitch_2
    const-string v4, "matchesOwn"

    .line 528
    .line 529
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    if-nez v1, :cond_18

    .line 534
    .line 535
    goto/16 :goto_6

    .line 536
    .line 537
    :cond_18
    const/16 v1, 0x19

    .line 538
    .line 539
    goto/16 :goto_5

    .line 540
    .line 541
    :sswitch_3
    const-string v4, "only-of-type"

    .line 542
    .line 543
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-nez v1, :cond_19

    .line 548
    .line 549
    goto/16 :goto_6

    .line 550
    .line 551
    :cond_19
    const/16 v1, 0x18

    .line 552
    .line 553
    goto/16 :goto_5

    .line 554
    .line 555
    :sswitch_4
    const-string v4, "first-of-type"

    .line 556
    .line 557
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-nez v1, :cond_1a

    .line 562
    .line 563
    goto/16 :goto_6

    .line 564
    .line 565
    :cond_1a
    const/16 v1, 0x17

    .line 566
    .line 567
    goto/16 :goto_5

    .line 568
    .line 569
    :sswitch_5
    const-string v4, "matchesWholeOwnText"

    .line 570
    .line 571
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    if-nez v1, :cond_1b

    .line 576
    .line 577
    goto/16 :goto_6

    .line 578
    .line 579
    :cond_1b
    const/16 v1, 0x16

    .line 580
    .line 581
    goto/16 :goto_5

    .line 582
    .line 583
    :sswitch_6
    const-string v4, "matches"

    .line 584
    .line 585
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-nez v1, :cond_1c

    .line 590
    .line 591
    goto/16 :goto_6

    .line 592
    .line 593
    :cond_1c
    const/16 v1, 0x15

    .line 594
    .line 595
    goto/16 :goto_5

    .line 596
    .line 597
    :sswitch_7
    const-string v4, "last-child"

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-nez v1, :cond_1d

    .line 604
    .line 605
    goto/16 :goto_6

    .line 606
    .line 607
    :cond_1d
    const/16 v1, 0x14

    .line 608
    .line 609
    goto/16 :goto_5

    .line 610
    .line 611
    :sswitch_8
    const-string v4, "matchText"

    .line 612
    .line 613
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-nez v1, :cond_1e

    .line 618
    .line 619
    goto/16 :goto_6

    .line 620
    .line 621
    :cond_1e
    const/16 v1, 0x13

    .line 622
    .line 623
    goto/16 :goto_5

    .line 624
    .line 625
    :sswitch_9
    const-string v4, "containsOwn"

    .line 626
    .line 627
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v1

    .line 631
    if-nez v1, :cond_1f

    .line 632
    .line 633
    goto/16 :goto_6

    .line 634
    .line 635
    :cond_1f
    const/16 v1, 0x12

    .line 636
    .line 637
    goto/16 :goto_5

    .line 638
    .line 639
    :sswitch_a
    const-string v4, "empty"

    .line 640
    .line 641
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-nez v1, :cond_20

    .line 646
    .line 647
    goto/16 :goto_6

    .line 648
    .line 649
    :cond_20
    const/16 v1, 0x11

    .line 650
    .line 651
    goto/16 :goto_5

    .line 652
    .line 653
    :sswitch_b
    const-string v4, "root"

    .line 654
    .line 655
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-nez v1, :cond_21

    .line 660
    .line 661
    goto/16 :goto_6

    .line 662
    .line 663
    :cond_21
    const/16 v1, 0x10

    .line 664
    .line 665
    goto/16 :goto_5

    .line 666
    .line 667
    :sswitch_c
    const-string v4, "not"

    .line 668
    .line 669
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_22

    .line 674
    .line 675
    goto/16 :goto_6

    .line 676
    .line 677
    :cond_22
    const/16 v1, 0xf

    .line 678
    .line 679
    goto :goto_5

    .line 680
    :sswitch_d
    const-string v4, "has"

    .line 681
    .line 682
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    if-nez v1, :cond_23

    .line 687
    .line 688
    goto/16 :goto_6

    .line 689
    .line 690
    :cond_23
    const/16 v1, 0xe

    .line 691
    .line 692
    goto :goto_5

    .line 693
    :sswitch_e
    const-string v4, "lt"

    .line 694
    .line 695
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    if-nez v1, :cond_24

    .line 700
    .line 701
    goto/16 :goto_6

    .line 702
    .line 703
    :cond_24
    const/16 v1, 0xd

    .line 704
    .line 705
    goto :goto_5

    .line 706
    :sswitch_f
    const-string v4, "is"

    .line 707
    .line 708
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    if-nez v1, :cond_25

    .line 713
    .line 714
    goto/16 :goto_6

    .line 715
    .line 716
    :cond_25
    const/16 v1, 0xc

    .line 717
    .line 718
    goto :goto_5

    .line 719
    :sswitch_10
    const-string v4, "gt"

    .line 720
    .line 721
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_26

    .line 726
    .line 727
    goto/16 :goto_6

    .line 728
    .line 729
    :cond_26
    const/16 v16, 0xb

    .line 730
    .line 731
    goto/16 :goto_6

    .line 732
    .line 733
    :sswitch_11
    const-string v4, "eq"

    .line 734
    .line 735
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-nez v1, :cond_27

    .line 740
    .line 741
    goto/16 :goto_6

    .line 742
    .line 743
    :cond_27
    move/from16 v16, v7

    .line 744
    .line 745
    goto/16 :goto_6

    .line 746
    .line 747
    :sswitch_12
    const-string v4, "containsWholeOwnText"

    .line 748
    .line 749
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-nez v1, :cond_28

    .line 754
    .line 755
    goto/16 :goto_6

    .line 756
    .line 757
    :cond_28
    move/from16 v16, v8

    .line 758
    .line 759
    goto/16 :goto_6

    .line 760
    .line 761
    :sswitch_13
    const-string v4, "contains"

    .line 762
    .line 763
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-nez v1, :cond_29

    .line 768
    .line 769
    goto/16 :goto_6

    .line 770
    .line 771
    :cond_29
    const/16 v1, 0x8

    .line 772
    .line 773
    :goto_5
    move/from16 v16, v1

    .line 774
    .line 775
    goto/16 :goto_6

    .line 776
    .line 777
    :sswitch_14
    const-string v4, "nth-last-of-type"

    .line 778
    .line 779
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    if-nez v1, :cond_2a

    .line 784
    .line 785
    goto/16 :goto_6

    .line 786
    .line 787
    :cond_2a
    move/from16 v16, v14

    .line 788
    .line 789
    goto :goto_6

    .line 790
    :sswitch_15
    const-string v4, "nth-of-type"

    .line 791
    .line 792
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v1

    .line 796
    if-nez v1, :cond_2b

    .line 797
    .line 798
    goto :goto_6

    .line 799
    :cond_2b
    move/from16 v16, v11

    .line 800
    .line 801
    goto :goto_6

    .line 802
    :sswitch_16
    const-string v4, "only-child"

    .line 803
    .line 804
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    if-nez v1, :cond_2c

    .line 809
    .line 810
    goto :goto_6

    .line 811
    :cond_2c
    move/from16 v16, v6

    .line 812
    .line 813
    goto :goto_6

    .line 814
    :sswitch_17
    const-string v4, "nth-last-child"

    .line 815
    .line 816
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-nez v1, :cond_2d

    .line 821
    .line 822
    goto :goto_6

    .line 823
    :cond_2d
    move/from16 v16, v13

    .line 824
    .line 825
    goto :goto_6

    .line 826
    :sswitch_18
    const-string v4, "nth-child"

    .line 827
    .line 828
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    if-nez v1, :cond_2e

    .line 833
    .line 834
    goto :goto_6

    .line 835
    :cond_2e
    move/from16 v16, v5

    .line 836
    .line 837
    goto :goto_6

    .line 838
    :sswitch_19
    const-string v4, "matchesWholeText"

    .line 839
    .line 840
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    if-nez v1, :cond_2f

    .line 845
    .line 846
    goto :goto_6

    .line 847
    :cond_2f
    move/from16 v16, v9

    .line 848
    .line 849
    goto :goto_6

    .line 850
    :sswitch_1a
    const-string v4, "first-child"

    .line 851
    .line 852
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    if-nez v1, :cond_30

    .line 857
    .line 858
    goto :goto_6

    .line 859
    :cond_30
    move/from16 v16, v12

    .line 860
    .line 861
    goto :goto_6

    .line 862
    :sswitch_1b
    const-string v4, "containsData"

    .line 863
    .line 864
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-nez v1, :cond_31

    .line 869
    .line 870
    goto :goto_6

    .line 871
    :cond_31
    move/from16 v16, v3

    .line 872
    .line 873
    :goto_6
    packed-switch v16, :pswitch_data_0

    .line 874
    .line 875
    .line 876
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 877
    .line 878
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    new-array v2, v9, [Ljava/lang/Object;

    .line 883
    .line 884
    aput-object v15, v2, v3

    .line 885
    .line 886
    aput-object v1, v2, v12

    .line 887
    .line 888
    invoke-direct {v0, v10, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    throw v0

    .line 892
    :pswitch_0
    new-instance v0, Lorg/jsoup/select/Evaluator$IsLastOfType;

    .line 893
    .line 894
    invoke-direct {v0, v3, v12, v9}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 895
    .line 896
    .line 897
    return-object v0

    .line 898
    :pswitch_1
    invoke-virtual {v0, v3}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    return-object v0

    .line 903
    :pswitch_2
    invoke-virtual {v0, v12}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    return-object v0

    .line 908
    :pswitch_3
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 909
    .line 910
    invoke-direct {v0, v11}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 911
    .line 912
    .line 913
    return-object v0

    .line 914
    :pswitch_4
    new-instance v0, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    .line 915
    .line 916
    invoke-direct {v0, v3, v12, v5}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 917
    .line 918
    .line 919
    return-object v0

    .line 920
    :pswitch_5
    invoke-virtual {v0, v12}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    return-object v0

    .line 925
    :pswitch_6
    invoke-virtual {v0, v3}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    return-object v0

    .line 930
    :pswitch_7
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 931
    .line 932
    invoke-direct {v0, v13}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 933
    .line 934
    .line 935
    return-object v0

    .line 936
    :pswitch_8
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 937
    .line 938
    invoke-direct {v0, v14}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 939
    .line 940
    .line 941
    return-object v0

    .line 942
    :pswitch_9
    invoke-virtual {v0, v12}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    return-object v0

    .line 947
    :pswitch_a
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 948
    .line 949
    invoke-direct {v0, v9}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 950
    .line 951
    .line 952
    return-object v0

    .line 953
    :pswitch_b
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 954
    .line 955
    invoke-direct {v0, v3}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 956
    .line 957
    .line 958
    return-object v0

    .line 959
    :pswitch_c
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    const-string v1, ":not(selector) subselect must not be empty"

    .line 964
    .line 965
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 969
    .line 970
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-direct {v1, v0, v9}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 975
    .line 976
    .line 977
    return-object v1

    .line 978
    :pswitch_d
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    const-string v1, ":has(selector) sub-select must not be empty"

    .line 983
    .line 984
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Has;

    .line 988
    .line 989
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-direct {v1, v0}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 994
    .line 995
    .line 996
    return-object v1

    .line 997
    :pswitch_e
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 998
    .line 999
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 1000
    .line 1001
    .line 1002
    move-result v0

    .line 1003
    invoke-direct {v1, v0, v9}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 1004
    .line 1005
    .line 1006
    return-object v1

    .line 1007
    :pswitch_f
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    const-string v1, ":is(selector) sub-select must not be empty"

    .line 1012
    .line 1013
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 1017
    .line 1018
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-direct {v1, v0, v3}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 1023
    .line 1024
    .line 1025
    return-object v1

    .line 1026
    :pswitch_10
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 1027
    .line 1028
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 1029
    .line 1030
    .line 1031
    move-result v0

    .line 1032
    invoke-direct {v1, v0, v12}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 1033
    .line 1034
    .line 1035
    return-object v1

    .line 1036
    :pswitch_11
    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 1037
    .line 1038
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    invoke-direct {v1, v0, v3}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 1043
    .line 1044
    .line 1045
    return-object v1

    .line 1046
    :pswitch_12
    invoke-virtual {v0, v12}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v0

    .line 1050
    return-object v0

    .line 1051
    :pswitch_13
    invoke-virtual {v0, v3}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    return-object v0

    .line 1056
    :pswitch_14
    invoke-virtual {v0, v12, v12}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    return-object v0

    .line 1061
    :pswitch_15
    invoke-virtual {v0, v3, v12}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    return-object v0

    .line 1066
    :pswitch_16
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 1067
    .line 1068
    invoke-direct {v0, v6}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 1069
    .line 1070
    .line 1071
    return-object v0

    .line 1072
    :pswitch_17
    invoke-virtual {v0, v12, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    return-object v0

    .line 1077
    :pswitch_18
    invoke-virtual {v0, v3, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    return-object v0

    .line 1082
    :pswitch_19
    invoke-virtual {v0, v3}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v0

    .line 1086
    return-object v0

    .line 1087
    :pswitch_1a
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 1088
    .line 1089
    invoke-direct {v0, v5}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 1090
    .line 1091
    .line 1092
    return-object v0

    .line 1093
    :pswitch_1b
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    const-string v1, ":containsData(text) query must not be empty"

    .line 1102
    .line 1103
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 1107
    .line 1108
    invoke-direct {v1, v0, v13}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 1109
    .line 1110
    .line 1111
    return-object v1

    .line 1112
    :cond_32
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 1113
    .line 1114
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v1

    .line 1118
    new-array v2, v9, [Ljava/lang/Object;

    .line 1119
    .line 1120
    aput-object v15, v2, v3

    .line 1121
    .line 1122
    aput-object v1, v2, v12

    .line 1123
    .line 1124
    invoke-direct {v0, v10, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    .line 1126
    .line 1127
    throw v0

    .line 1128
    nop

    .line 1129
    :sswitch_data_0
    .sparse-switch
        -0x7fa84d97 -> :sswitch_1b
        -0x7f5fe841 -> :sswitch_1a
        -0x73a0d86f -> :sswitch_19
        -0x6899dd0f -> :sswitch_18
        -0x6123fd90 -> :sswitch_17
        -0x38814845 -> :sswitch_16
        -0x357f41fb -> :sswitch_15
        -0x3403463c -> :sswitch_14
        -0x21d289e1 -> :sswitch_13
        -0x34d8c25 -> :sswitch_12
        0xcac -> :sswitch_11
        0xced -> :sswitch_10
        0xd2a -> :sswitch_f
        0xd88 -> :sswitch_e
        0x1929a -> :sswitch_d
        0x1aad3 -> :sswitch_c
        0x3580e2 -> :sswitch_b
        0x5c2854d -> :sswitch_a
        0xc6618e7 -> :sswitch_9
        0x24992892 -> :sswitch_8
        0x31d1d325 -> :sswitch_7
        0x321e8933 -> :sswitch_6
        0x4adb88ef -> :sswitch_5
        0x4d10b753 -> :sswitch_4
        0x56c7484f -> :sswitch_3
        0x6f813d53 -> :sswitch_2
        0x780e0425 -> :sswitch_1
        0x78c13139 -> :sswitch_0
    .end sparse-switch

    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final consumeIndex()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move v2, v0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x1

    .line 43
    :cond_3
    :goto_1
    const-string v1, "Index must be numeric"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->isTrue(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method

.method public final consumeParens()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final contains(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":contains"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 35
    .line 36
    const/4 v0, 0x6

    .line 37
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public final containsWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":containsWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-direct {p1, v1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-direct {p1, v1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public final cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/jsoup/internal/Functions;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "odd"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    :goto_0
    move p0, v4

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const-string v0, "even"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, ""

    .line 46
    .line 47
    const-string v7, "^\\+"

    .line 48
    .line 49
    if-eqz v5, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string p0, "-"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    const/4 p0, -0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move p0, v3

    .line 85
    :goto_1
    const/4 v5, 0x4

    .line 86
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v0, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    sget-object v0, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move p0, v2

    .line 132
    :goto_2
    if-eqz p2, :cond_7

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 137
    .line 138
    invoke-direct {p1, p0, v0, v4}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_6
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 143
    .line 144
    invoke-direct {p1, p0, v0, v1}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_7
    if-eqz p1, :cond_8

    .line 149
    .line 150
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 151
    .line 152
    invoke-direct {p1, p0, v0, v3}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_8
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 157
    .line 158
    invoke-direct {p1, p0, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_9
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 163
    .line 164
    new-array p2, v3, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object p0, p2, v2

    .line 167
    .line 168
    const-string p0, "Could not parse nth-index \'%s\': unexpected format"

    .line 169
    .line 170
    invoke-direct {p1, p0, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method public final matches(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matches"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;I)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public final matchesWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matchesWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;I)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public final parse()Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    invoke-direct {v2, v4}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0, v2}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeEvaluator()Lorg/jsoup/select/Evaluator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {p0, v2}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-eqz v2, :cond_2

    .line 66
    .line 67
    const/16 v2, 0x20

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeEvaluator()Lorg/jsoup/select/Evaluator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    const/4 v0, 0x1

    .line 86
    if-ne p0, v0, :cond_4

    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/jsoup/select/Evaluator;

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_4
    new-instance p0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 97
    .line 98
    invoke-direct {p0, v3}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
