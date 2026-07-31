.class public final Landroidx/collection/Keys$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public J$0:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:[J

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/collection/Keys$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/collection/Keys$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/Keys$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/collection/Keys$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/collection/Keys$iterator$1;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/Keys$iterator$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Landroidx/collection/Keys$iterator$1;

    .line 20
    .line 21
    check-cast p0, Landroidx/collection/Values;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/Keys$iterator$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1
    new-instance v0, Landroidx/collection/Keys$iterator$1;

    .line 31
    .line 32
    check-cast p0, Landroidx/collection/Keys;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/Keys$iterator$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_2
    new-instance v0, Landroidx/collection/Keys$iterator$1;

    .line 42
    .line 43
    check-cast p0, Landroidx/collection/Keys;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1, p0, p2}, Landroidx/collection/Keys$iterator$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/Keys$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Keys$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/collection/Keys$iterator$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/collection/Keys$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Keys$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/collection/Keys$iterator$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/collection/Keys$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Keys$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/collection/Keys$iterator$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/collection/Keys$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/collection/Keys$iterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/collection/Keys$iterator$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/collection/Keys$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/collection/Keys$iterator$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const-string v10, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v11, 0x1

    .line 13
    const/16 v12, 0x8

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    const-wide/16 v16, 0x80

    .line 21
    .line 22
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    if-ne v3, v11, :cond_0

    .line 27
    .line 28
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 29
    .line 30
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 31
    .line 32
    iget-wide v8, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 33
    .line 34
    iget v10, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 35
    .line 36
    const-wide/16 v18, 0xff

    .line 37
    .line 38
    iget v5, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 39
    .line 40
    iget-object v6, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 41
    .line 42
    const/16 v20, 0x7

    .line 43
    .line 44
    iget-object v7, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v7, [Ljava/lang/Object;

    .line 47
    .line 48
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    iget-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v13, Lkotlin/sequences/SequenceBuilderIterator;

    .line 56
    .line 57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_0
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v2, v9

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_1
    const-wide/16 v18, 0xff

    .line 69
    .line 70
    const/16 v20, 0x7

    .line 71
    .line 72
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lkotlin/sequences/SequenceBuilderIterator;

    .line 83
    .line 84
    check-cast v8, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 85
    .line 86
    iget-object v4, v8, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    .line 87
    .line 88
    iget-object v5, v4, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v4, v4, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 91
    .line 92
    array-length v6, v4

    .line 93
    add-int/lit8 v6, v6, -0x2

    .line 94
    .line 95
    if-ltz v6, :cond_5

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    :goto_0
    aget-wide v8, v4, v7

    .line 99
    .line 100
    not-long v13, v8

    .line 101
    shl-long v13, v13, v20

    .line 102
    .line 103
    and-long/2addr v13, v8

    .line 104
    and-long v13, v13, v21

    .line 105
    .line 106
    cmp-long v10, v13, v21

    .line 107
    .line 108
    if-eqz v10, :cond_4

    .line 109
    .line 110
    sub-int v10, v7, v6

    .line 111
    .line 112
    not-int v10, v10

    .line 113
    ushr-int/lit8 v10, v10, 0x1f

    .line 114
    .line 115
    rsub-int/lit8 v10, v10, 0x8

    .line 116
    .line 117
    move v13, v6

    .line 118
    move-object v6, v4

    .line 119
    move v4, v10

    .line 120
    move v10, v7

    .line 121
    move-object v7, v5

    .line 122
    move v5, v13

    .line 123
    move-object v13, v3

    .line 124
    const/4 v3, 0x0

    .line 125
    :goto_1
    if-ge v3, v4, :cond_3

    .line 126
    .line 127
    and-long v23, v8, v18

    .line 128
    .line 129
    cmp-long v14, v23, v16

    .line 130
    .line 131
    if-gez v14, :cond_2

    .line 132
    .line 133
    shl-int/lit8 v14, v10, 0x3

    .line 134
    .line 135
    add-int/2addr v14, v3

    .line 136
    aget-object v14, v7, v14

    .line 137
    .line 138
    iput-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v7, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object v6, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 143
    .line 144
    iput v5, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 145
    .line 146
    iput v10, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 147
    .line 148
    iput-wide v8, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 149
    .line 150
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 151
    .line 152
    iput v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 153
    .line 154
    iput v11, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 155
    .line 156
    invoke-virtual {v13, v14, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    if-ne v14, v1, :cond_2

    .line 161
    .line 162
    move-object v2, v1

    .line 163
    goto :goto_3

    .line 164
    :cond_2
    :goto_2
    shr-long/2addr v8, v12

    .line 165
    add-int/2addr v3, v11

    .line 166
    goto :goto_1

    .line 167
    :cond_3
    if-ne v4, v12, :cond_5

    .line 168
    .line 169
    move-object v4, v6

    .line 170
    move-object v3, v13

    .line 171
    move v6, v5

    .line 172
    move-object v5, v7

    .line 173
    move v7, v10

    .line 174
    :cond_4
    if-eq v7, v6, :cond_5

    .line 175
    .line 176
    add-int/lit8 v7, v7, 0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_5
    :goto_3
    return-object v2

    .line 180
    :pswitch_0
    const-wide/16 v16, 0x80

    .line 181
    .line 182
    const-wide/16 v18, 0xff

    .line 183
    .line 184
    const/16 v20, 0x7

    .line 185
    .line 186
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 192
    .line 193
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 194
    .line 195
    if-eqz v3, :cond_7

    .line 196
    .line 197
    if-ne v3, v11, :cond_6

    .line 198
    .line 199
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 200
    .line 201
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 202
    .line 203
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 204
    .line 205
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 206
    .line 207
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 208
    .line 209
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 210
    .line 211
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v10, [Ljava/lang/Object;

    .line 214
    .line 215
    iget-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v13, Lkotlin/sequences/SequenceBuilderIterator;

    .line 218
    .line 219
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_6
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v2, v9

    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v3, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v3, Lkotlin/sequences/SequenceBuilderIterator;

    .line 235
    .line 236
    check-cast v8, Landroidx/collection/Values;

    .line 237
    .line 238
    iget-object v4, v8, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v4, Landroidx/collection/MutableScatterMap;

    .line 241
    .line 242
    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 243
    .line 244
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 245
    .line 246
    array-length v6, v4

    .line 247
    add-int/lit8 v6, v6, -0x2

    .line 248
    .line 249
    if-ltz v6, :cond_b

    .line 250
    .line 251
    const/4 v7, 0x0

    .line 252
    :goto_4
    aget-wide v8, v4, v7

    .line 253
    .line 254
    not-long v13, v8

    .line 255
    shl-long v13, v13, v20

    .line 256
    .line 257
    and-long/2addr v13, v8

    .line 258
    and-long v13, v13, v21

    .line 259
    .line 260
    cmp-long v10, v13, v21

    .line 261
    .line 262
    if-eqz v10, :cond_a

    .line 263
    .line 264
    sub-int v10, v7, v6

    .line 265
    .line 266
    not-int v10, v10

    .line 267
    ushr-int/lit8 v10, v10, 0x1f

    .line 268
    .line 269
    rsub-int/lit8 v10, v10, 0x8

    .line 270
    .line 271
    move-object v13, v3

    .line 272
    const/4 v3, 0x0

    .line 273
    move-wide/from16 v25, v8

    .line 274
    .line 275
    move-object v9, v4

    .line 276
    move v8, v6

    .line 277
    move v4, v10

    .line 278
    move-object v10, v5

    .line 279
    move-wide/from16 v5, v25

    .line 280
    .line 281
    :goto_5
    if-ge v3, v4, :cond_9

    .line 282
    .line 283
    and-long v23, v5, v18

    .line 284
    .line 285
    cmp-long v14, v23, v16

    .line 286
    .line 287
    if-gez v14, :cond_8

    .line 288
    .line 289
    shl-int/lit8 v14, v7, 0x3

    .line 290
    .line 291
    add-int/2addr v14, v3

    .line 292
    aget-object v14, v10, v14

    .line 293
    .line 294
    iput-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 299
    .line 300
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 301
    .line 302
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 303
    .line 304
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 305
    .line 306
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 307
    .line 308
    iput v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 309
    .line 310
    iput v11, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 311
    .line 312
    invoke-virtual {v13, v14, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 313
    .line 314
    .line 315
    move-result-object v14

    .line 316
    if-ne v14, v1, :cond_8

    .line 317
    .line 318
    move-object v2, v1

    .line 319
    goto :goto_7

    .line 320
    :cond_8
    :goto_6
    shr-long/2addr v5, v12

    .line 321
    add-int/2addr v3, v11

    .line 322
    goto :goto_5

    .line 323
    :cond_9
    if-ne v4, v12, :cond_b

    .line 324
    .line 325
    move v6, v8

    .line 326
    move-object v4, v9

    .line 327
    move-object v5, v10

    .line 328
    move-object v3, v13

    .line 329
    :cond_a
    if-eq v7, v6, :cond_b

    .line 330
    .line 331
    add-int/lit8 v7, v7, 0x1

    .line 332
    .line 333
    goto :goto_4

    .line 334
    :cond_b
    :goto_7
    return-object v2

    .line 335
    :pswitch_1
    const-wide/16 v16, 0x80

    .line 336
    .line 337
    const-wide/16 v18, 0xff

    .line 338
    .line 339
    const/16 v20, 0x7

    .line 340
    .line 341
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 347
    .line 348
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 349
    .line 350
    if-eqz v3, :cond_d

    .line 351
    .line 352
    if-ne v3, v11, :cond_c

    .line 353
    .line 354
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 355
    .line 356
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 357
    .line 358
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 359
    .line 360
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 361
    .line 362
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 363
    .line 364
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 365
    .line 366
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v10, Landroidx/collection/Keys;

    .line 369
    .line 370
    iget-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v13, Lkotlin/sequences/SequenceBuilderIterator;

    .line 373
    .line 374
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :cond_c
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    move-object v2, v9

    .line 383
    goto/16 :goto_c

    .line 384
    .line 385
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    iget-object v3, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v3, Lkotlin/sequences/SequenceBuilderIterator;

    .line 391
    .line 392
    check-cast v8, Landroidx/collection/Keys;

    .line 393
    .line 394
    iget-object v4, v8, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 395
    .line 396
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 397
    .line 398
    array-length v5, v4

    .line 399
    add-int/lit8 v5, v5, -0x2

    .line 400
    .line 401
    if-ltz v5, :cond_12

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    :goto_8
    aget-wide v9, v4, v6

    .line 405
    .line 406
    not-long v13, v9

    .line 407
    shl-long v13, v13, v20

    .line 408
    .line 409
    and-long/2addr v13, v9

    .line 410
    and-long v13, v13, v21

    .line 411
    .line 412
    cmp-long v7, v13, v21

    .line 413
    .line 414
    if-eqz v7, :cond_11

    .line 415
    .line 416
    sub-int v7, v6, v5

    .line 417
    .line 418
    not-int v7, v7

    .line 419
    ushr-int/lit8 v7, v7, 0x1f

    .line 420
    .line 421
    rsub-int/lit8 v7, v7, 0x8

    .line 422
    .line 423
    move-object v13, v3

    .line 424
    const/4 v3, 0x0

    .line 425
    move-wide/from16 v25, v9

    .line 426
    .line 427
    move-object v9, v4

    .line 428
    move v4, v7

    .line 429
    move-object v10, v8

    .line 430
    move v8, v5

    .line 431
    move v7, v6

    .line 432
    move-wide/from16 v5, v25

    .line 433
    .line 434
    :goto_9
    if-ge v3, v4, :cond_10

    .line 435
    .line 436
    and-long v23, v5, v18

    .line 437
    .line 438
    cmp-long v14, v23, v16

    .line 439
    .line 440
    if-gez v14, :cond_e

    .line 441
    .line 442
    shl-int/lit8 v14, v7, 0x3

    .line 443
    .line 444
    add-int/2addr v14, v3

    .line 445
    move/from16 v23, v12

    .line 446
    .line 447
    new-instance v12, Landroidx/collection/MapEntry;

    .line 448
    .line 449
    iget-object v11, v10, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 450
    .line 451
    iget-object v15, v11, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 452
    .line 453
    aget-object v15, v15, v14

    .line 454
    .line 455
    iget-object v11, v11, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 456
    .line 457
    aget-object v11, v11, v14

    .line 458
    .line 459
    const/4 v14, 0x0

    .line 460
    invoke-direct {v12, v14, v15, v11}, Landroidx/collection/MapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    iput-object v13, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 464
    .line 465
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 466
    .line 467
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 468
    .line 469
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 470
    .line 471
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 472
    .line 473
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 474
    .line 475
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 476
    .line 477
    iput v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 478
    .line 479
    const/4 v11, 0x1

    .line 480
    iput v11, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 481
    .line 482
    invoke-virtual {v13, v12, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 483
    .line 484
    .line 485
    move-result-object v12

    .line 486
    if-ne v12, v1, :cond_f

    .line 487
    .line 488
    move-object v2, v1

    .line 489
    goto :goto_c

    .line 490
    :cond_e
    :goto_a
    move/from16 v23, v12

    .line 491
    .line 492
    const/4 v14, 0x0

    .line 493
    :cond_f
    shr-long v5, v5, v23

    .line 494
    .line 495
    add-int/2addr v3, v11

    .line 496
    move/from16 v12, v23

    .line 497
    .line 498
    goto :goto_9

    .line 499
    :cond_10
    move v3, v12

    .line 500
    const/4 v14, 0x0

    .line 501
    if-ne v4, v3, :cond_12

    .line 502
    .line 503
    move v6, v7

    .line 504
    move v5, v8

    .line 505
    move-object v4, v9

    .line 506
    move-object v8, v10

    .line 507
    move-object v3, v13

    .line 508
    goto :goto_b

    .line 509
    :cond_11
    const/4 v14, 0x0

    .line 510
    :goto_b
    if-eq v6, v5, :cond_12

    .line 511
    .line 512
    add-int/lit8 v6, v6, 0x1

    .line 513
    .line 514
    const/4 v11, 0x1

    .line 515
    const/16 v12, 0x8

    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_12
    :goto_c
    return-object v2

    .line 519
    :pswitch_2
    const/4 v14, 0x0

    .line 520
    const-wide/16 v16, 0x80

    .line 521
    .line 522
    const-wide/16 v18, 0xff

    .line 523
    .line 524
    const/16 v20, 0x7

    .line 525
    .line 526
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 532
    .line 533
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 534
    .line 535
    if-eqz v3, :cond_14

    .line 536
    .line 537
    const/4 v11, 0x1

    .line 538
    if-ne v3, v11, :cond_13

    .line 539
    .line 540
    iget v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 541
    .line 542
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 543
    .line 544
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 545
    .line 546
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 547
    .line 548
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 549
    .line 550
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 551
    .line 552
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v10, [Ljava/lang/Object;

    .line 555
    .line 556
    iget-object v11, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 557
    .line 558
    check-cast v11, Lkotlin/sequences/SequenceBuilderIterator;

    .line 559
    .line 560
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_10

    .line 564
    .line 565
    :cond_13
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    move-object v2, v9

    .line 569
    goto/16 :goto_13

    .line 570
    .line 571
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    iget-object v3, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v3, Lkotlin/sequences/SequenceBuilderIterator;

    .line 577
    .line 578
    check-cast v8, Landroidx/collection/Keys;

    .line 579
    .line 580
    iget-object v4, v8, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 581
    .line 582
    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 583
    .line 584
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 585
    .line 586
    array-length v6, v4

    .line 587
    add-int/lit8 v6, v6, -0x2

    .line 588
    .line 589
    if-ltz v6, :cond_19

    .line 590
    .line 591
    move v7, v14

    .line 592
    :goto_d
    aget-wide v8, v4, v7

    .line 593
    .line 594
    not-long v10, v8

    .line 595
    shl-long v10, v10, v20

    .line 596
    .line 597
    and-long/2addr v10, v8

    .line 598
    and-long v10, v10, v21

    .line 599
    .line 600
    cmp-long v10, v10, v21

    .line 601
    .line 602
    if-eqz v10, :cond_18

    .line 603
    .line 604
    sub-int v10, v7, v6

    .line 605
    .line 606
    not-int v10, v10

    .line 607
    ushr-int/lit8 v10, v10, 0x1f

    .line 608
    .line 609
    const/16 v23, 0x8

    .line 610
    .line 611
    rsub-int/lit8 v12, v10, 0x8

    .line 612
    .line 613
    move-object v11, v3

    .line 614
    move-object v10, v5

    .line 615
    move v3, v14

    .line 616
    move-wide/from16 v25, v8

    .line 617
    .line 618
    move-object v9, v4

    .line 619
    move v8, v6

    .line 620
    move-wide/from16 v5, v25

    .line 621
    .line 622
    move v4, v12

    .line 623
    :goto_e
    if-ge v3, v4, :cond_17

    .line 624
    .line 625
    and-long v12, v5, v18

    .line 626
    .line 627
    cmp-long v12, v12, v16

    .line 628
    .line 629
    if-gez v12, :cond_16

    .line 630
    .line 631
    shl-int/lit8 v12, v7, 0x3

    .line 632
    .line 633
    add-int/2addr v12, v3

    .line 634
    aget-object v12, v10, v12

    .line 635
    .line 636
    iput-object v11, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 637
    .line 638
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 639
    .line 640
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 641
    .line 642
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 643
    .line 644
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 645
    .line 646
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 647
    .line 648
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 649
    .line 650
    iput v3, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 651
    .line 652
    const/4 v13, 0x1

    .line 653
    iput v13, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 654
    .line 655
    invoke-virtual {v11, v12, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 656
    .line 657
    .line 658
    move-result-object v12

    .line 659
    if-ne v12, v1, :cond_15

    .line 660
    .line 661
    move-object v2, v1

    .line 662
    goto :goto_13

    .line 663
    :cond_15
    :goto_f
    const/16 v12, 0x8

    .line 664
    .line 665
    goto :goto_11

    .line 666
    :cond_16
    :goto_10
    const/4 v13, 0x1

    .line 667
    goto :goto_f

    .line 668
    :goto_11
    shr-long/2addr v5, v12

    .line 669
    add-int/2addr v3, v13

    .line 670
    goto :goto_e

    .line 671
    :cond_17
    const/16 v12, 0x8

    .line 672
    .line 673
    const/4 v13, 0x1

    .line 674
    if-ne v4, v12, :cond_19

    .line 675
    .line 676
    move v6, v8

    .line 677
    move-object v4, v9

    .line 678
    move-object v5, v10

    .line 679
    move-object v3, v11

    .line 680
    goto :goto_12

    .line 681
    :cond_18
    const/16 v12, 0x8

    .line 682
    .line 683
    const/4 v13, 0x1

    .line 684
    :goto_12
    if-eq v7, v6, :cond_19

    .line 685
    .line 686
    add-int/lit8 v7, v7, 0x1

    .line 687
    .line 688
    goto :goto_d

    .line 689
    :cond_19
    :goto_13
    return-object v2

    .line 690
    nop

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
