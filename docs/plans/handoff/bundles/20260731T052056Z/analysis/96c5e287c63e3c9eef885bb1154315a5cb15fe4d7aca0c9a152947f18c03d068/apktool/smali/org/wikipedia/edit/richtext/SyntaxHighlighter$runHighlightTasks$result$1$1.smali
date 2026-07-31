.class public final Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $firstVisibleIndex:I

.field public final synthetic $r8$classId:I

.field public final synthetic $textToHighlight:Ljava/lang/String;

.field public final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$firstVisibleIndex:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$textToHighlight:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$textToHighlight:Ljava/lang/String;

    iput p3, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$firstVisibleIndex:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$textToHighlight:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$firstVisibleIndex:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;

    .line 13
    .line 14
    invoke-direct {p1, p0, v1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;

    .line 19
    .line 20
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$textToHighlight:Ljava/lang/String;

    .line 8
    .line 9
    iget v5, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->$firstVisibleIndex:I

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$result$1$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v4, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 24
    .line 25
    const-string v6, ""

    .line 26
    .line 27
    sget-object v7, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCHES:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 28
    .line 29
    invoke-direct {v4, v6, v6, v7}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 30
    .line 31
    .line 32
    iget-object v6, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositions:Ljava/util/List;

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 37
    .line 38
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v8, :cond_2

    .line 57
    .line 58
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    move-object v9, v8

    .line 63
    check-cast v9, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-lt v9, v5, :cond_1

    .line 70
    .line 71
    add-int v10, v5, v1

    .line 72
    .line 73
    if-ge v9, v10, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    const/16 v5, 0xa

    .line 82
    .line 83
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    add-int/lit8 v7, v3, 0x1

    .line 105
    .line 106
    if-ltz v3, :cond_4

    .line 107
    .line 108
    check-cast v6, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    iget v8, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositionIndex:I

    .line 115
    .line 116
    if-ne v3, v8, :cond_3

    .line 117
    .line 118
    sget-object v3, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCH_SELECTED:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    sget-object v3, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SEARCH_MATCHES:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 122
    .line 123
    :goto_2
    iget-object v8, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 124
    .line 125
    invoke-virtual {v3, v8, v6, v4}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {v3, v6}, Lorg/wikipedia/edit/richtext/SpanExtents;->setStart(I)V

    .line 130
    .line 131
    .line 132
    iget v8, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryLength:I

    .line 133
    .line 134
    add-int/2addr v6, v8

    .line 135
    invoke-interface {v3, v6}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move v3, v7

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 144
    .line 145
    .line 146
    throw v2

    .line 147
    :cond_5
    return-object v1

    .line 148
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    .line 152
    .line 153
    new-instance v6, Ljava/util/Stack;

    .line 154
    .line 155
    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v7, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    move v8, v3

    .line 175
    :goto_3
    array-length v9, v4

    .line 176
    const/4 v10, 0x1

    .line 177
    if-ge v8, v9, :cond_11

    .line 178
    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_c

    .line 188
    .line 189
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    check-cast v11, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 194
    .line 195
    iget-object v12, v11, Lorg/wikipedia/edit/richtext/SyntaxRule;->endChars:[C

    .line 196
    .line 197
    array-length v13, v12

    .line 198
    add-int/2addr v13, v8

    .line 199
    array-length v14, v4

    .line 200
    if-le v13, v14, :cond_6

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    array-length v13, v12

    .line 204
    move v14, v3

    .line 205
    :goto_5
    if-ge v14, v13, :cond_9

    .line 206
    .line 207
    add-int v15, v8, v14

    .line 208
    .line 209
    aget-char v15, v4, v15

    .line 210
    .line 211
    aget-char v2, v12, v14

    .line 212
    .line 213
    if-eq v15, v2, :cond_8

    .line 214
    .line 215
    :cond_7
    const/4 v2, 0x0

    .line 216
    goto :goto_4

    .line 217
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    goto :goto_5

    .line 221
    :cond_9
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-eqz v13, :cond_b

    .line 230
    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    move-object v14, v13

    .line 236
    check-cast v14, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 237
    .line 238
    invoke-interface {v14}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v14

    .line 246
    if-eqz v14, :cond_a

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_b
    const/4 v13, 0x0

    .line 250
    :goto_6
    check-cast v13, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 251
    .line 252
    if-eqz v13, :cond_7

    .line 253
    .line 254
    invoke-virtual {v6, v13}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    array-length v2, v12

    .line 258
    add-int/2addr v2, v8

    .line 259
    invoke-interface {v13, v2}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    array-length v2, v12

    .line 266
    sub-int/2addr v2, v10

    .line 267
    add-int/2addr v8, v2

    .line 268
    move v2, v10

    .line 269
    goto :goto_7

    .line 270
    :cond_c
    move v2, v3

    .line 271
    :goto_7
    if-nez v2, :cond_10

    .line 272
    .line 273
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-eqz v9, :cond_10

    .line 282
    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    check-cast v9, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 288
    .line 289
    iget-object v11, v9, Lorg/wikipedia/edit/richtext/SyntaxRule;->startChars:[C

    .line 290
    .line 291
    array-length v12, v11

    .line 292
    add-int/2addr v12, v8

    .line 293
    array-length v13, v4

    .line 294
    if-le v12, v13, :cond_d

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_d
    array-length v12, v11

    .line 298
    move v13, v3

    .line 299
    :goto_9
    if-ge v13, v12, :cond_f

    .line 300
    .line 301
    add-int v14, v8, v13

    .line 302
    .line 303
    aget-char v14, v4, v14

    .line 304
    .line 305
    aget-char v15, v11, v13

    .line 306
    .line 307
    if-eq v14, v15, :cond_e

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_f
    iget-object v2, v9, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 314
    .line 315
    iget-object v12, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 316
    .line 317
    invoke-virtual {v2, v12, v8, v9}, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    array-length v2, v11

    .line 325
    sub-int/2addr v2, v10

    .line 326
    add-int/2addr v8, v2

    .line 327
    :cond_10
    add-int/2addr v8, v10

    .line 328
    const/4 v2, 0x0

    .line 329
    goto/16 :goto_3

    .line 330
    .line 331
    :cond_11
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_12

    .line 340
    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 346
    .line 347
    invoke-interface {v1}, Lorg/wikipedia/edit/richtext/SpanExtents;->getStart()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    add-int/2addr v2, v5

    .line 352
    invoke-interface {v1, v2}, Lorg/wikipedia/edit/richtext/SpanExtents;->setStart(I)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v1}, Lorg/wikipedia/edit/richtext/SpanExtents;->getEnd()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    add-int/2addr v2, v5

    .line 360
    invoke-interface {v1, v2}, Lorg/wikipedia/edit/richtext/SpanExtents;->setEnd(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-le v0, v10, :cond_13

    .line 369
    .line 370
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 371
    .line 372
    const/16 v1, 0x16

    .line 373
    .line 374
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 375
    .line 376
    .line 377
    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 378
    .line 379
    .line 380
    :cond_13
    return-object v7

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
