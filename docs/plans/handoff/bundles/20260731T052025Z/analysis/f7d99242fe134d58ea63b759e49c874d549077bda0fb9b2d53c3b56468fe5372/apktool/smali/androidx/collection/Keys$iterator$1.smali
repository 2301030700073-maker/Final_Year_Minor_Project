.class public final Landroidx/collection/Keys$iterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/collection/Keys$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/collection/Keys$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    invoke-direct {v0, p0, p2, v1}, Landroidx/collection/Keys$iterator$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

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
    invoke-direct {v0, p0, p2, v1}, Landroidx/collection/Keys$iterator$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

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
    invoke-direct {v0, p0, p2, v1}, Landroidx/collection/Keys$iterator$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

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
    invoke-direct {v0, p0, p2, v1}, Landroidx/collection/Keys$iterator$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

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
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/4 v12, 0x1

    .line 15
    const/16 v13, 0x8

    .line 16
    .line 17
    const-wide/16 v16, 0x80

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-ne v1, v12, :cond_0

    .line 28
    .line 29
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 30
    .line 31
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 32
    .line 33
    iget-wide v8, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 34
    .line 35
    iget v10, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 36
    .line 37
    const-wide/16 v18, 0xff

    .line 38
    .line 39
    iget v5, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 40
    .line 41
    iget-object v6, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 42
    .line 43
    const/16 v20, 0x7

    .line 44
    .line 45
    iget-object v7, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, [Ljava/lang/Object;

    .line 48
    .line 49
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    iget-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v14, Lkotlin/sequences/SequenceBuilderIterator;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_0
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object v2, v9

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_1
    const-wide/16 v18, 0xff

    .line 70
    .line 71
    const/16 v20, 0x7

    .line 72
    .line 73
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 84
    .line 85
    check-cast v8, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 86
    .line 87
    iget-object v4, v8, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    .line 88
    .line 89
    iget-object v5, v4, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v4, v4, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 92
    .line 93
    array-length v6, v4

    .line 94
    add-int/lit8 v6, v6, -0x2

    .line 95
    .line 96
    if-ltz v6, :cond_5

    .line 97
    .line 98
    move v7, v3

    .line 99
    :goto_0
    aget-wide v8, v4, v7

    .line 100
    .line 101
    not-long v14, v8

    .line 102
    shl-long v14, v14, v20

    .line 103
    .line 104
    and-long/2addr v14, v8

    .line 105
    and-long v14, v14, v21

    .line 106
    .line 107
    cmp-long v10, v14, v21

    .line 108
    .line 109
    if-eqz v10, :cond_4

    .line 110
    .line 111
    sub-int v10, v7, v6

    .line 112
    .line 113
    not-int v10, v10

    .line 114
    ushr-int/lit8 v10, v10, 0x1f

    .line 115
    .line 116
    rsub-int/lit8 v10, v10, 0x8

    .line 117
    .line 118
    move v14, v6

    .line 119
    move-object v6, v4

    .line 120
    move v4, v10

    .line 121
    move v10, v7

    .line 122
    move-object v7, v5

    .line 123
    move v5, v14

    .line 124
    move-object v14, v1

    .line 125
    move v1, v3

    .line 126
    :goto_1
    if-ge v1, v4, :cond_3

    .line 127
    .line 128
    and-long v23, v8, v18

    .line 129
    .line 130
    cmp-long v15, v23, v16

    .line 131
    .line 132
    if-gez v15, :cond_2

    .line 133
    .line 134
    shl-int/lit8 v2, v10, 0x3

    .line 135
    .line 136
    add-int/2addr v2, v1

    .line 137
    aget-object v2, v7, v2

    .line 138
    .line 139
    iput-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v7, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v6, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 144
    .line 145
    iput v5, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 146
    .line 147
    iput v10, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 148
    .line 149
    iput-wide v8, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 150
    .line 151
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 152
    .line 153
    iput v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 154
    .line 155
    iput v12, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 156
    .line 157
    invoke-virtual {v14, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 158
    .line 159
    .line 160
    move-object v2, v11

    .line 161
    goto :goto_3

    .line 162
    :cond_2
    :goto_2
    shr-long/2addr v8, v13

    .line 163
    add-int/2addr v1, v12

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    if-ne v4, v13, :cond_5

    .line 166
    .line 167
    move-object v4, v6

    .line 168
    move-object v1, v14

    .line 169
    move v6, v5

    .line 170
    move-object v5, v7

    .line 171
    move v7, v10

    .line 172
    :cond_4
    if-eq v7, v6, :cond_5

    .line 173
    .line 174
    add-int/lit8 v7, v7, 0x1

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_5
    :goto_3
    return-object v2

    .line 178
    :pswitch_0
    const-wide/16 v18, 0xff

    .line 179
    .line 180
    const/16 v20, 0x7

    .line 181
    .line 182
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 188
    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    if-ne v1, v12, :cond_6

    .line 192
    .line 193
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 194
    .line 195
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 196
    .line 197
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 198
    .line 199
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 200
    .line 201
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 202
    .line 203
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 204
    .line 205
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v10, [Ljava/lang/Object;

    .line 208
    .line 209
    iget-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v14, Lkotlin/sequences/SequenceBuilderIterator;

    .line 212
    .line 213
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_6
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    move-object v2, v9

    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 229
    .line 230
    check-cast v8, Landroidx/collection/Values;

    .line 231
    .line 232
    iget-object v4, v8, Landroidx/collection/Values;->parent:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v4, Landroidx/collection/MutableScatterMap;

    .line 235
    .line 236
    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 237
    .line 238
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 239
    .line 240
    array-length v6, v4

    .line 241
    add-int/lit8 v6, v6, -0x2

    .line 242
    .line 243
    if-ltz v6, :cond_b

    .line 244
    .line 245
    move v7, v3

    .line 246
    :goto_4
    aget-wide v8, v4, v7

    .line 247
    .line 248
    not-long v14, v8

    .line 249
    shl-long v14, v14, v20

    .line 250
    .line 251
    and-long/2addr v14, v8

    .line 252
    and-long v14, v14, v21

    .line 253
    .line 254
    cmp-long v10, v14, v21

    .line 255
    .line 256
    if-eqz v10, :cond_a

    .line 257
    .line 258
    sub-int v10, v7, v6

    .line 259
    .line 260
    not-int v10, v10

    .line 261
    ushr-int/lit8 v10, v10, 0x1f

    .line 262
    .line 263
    rsub-int/lit8 v10, v10, 0x8

    .line 264
    .line 265
    move-object v14, v1

    .line 266
    move v1, v3

    .line 267
    move-wide/from16 v25, v8

    .line 268
    .line 269
    move-object v9, v4

    .line 270
    move v8, v6

    .line 271
    move v4, v10

    .line 272
    move-object v10, v5

    .line 273
    move-wide/from16 v5, v25

    .line 274
    .line 275
    :goto_5
    if-ge v1, v4, :cond_9

    .line 276
    .line 277
    and-long v23, v5, v18

    .line 278
    .line 279
    cmp-long v15, v23, v16

    .line 280
    .line 281
    if-gez v15, :cond_8

    .line 282
    .line 283
    shl-int/lit8 v2, v7, 0x3

    .line 284
    .line 285
    add-int/2addr v2, v1

    .line 286
    aget-object v2, v10, v2

    .line 287
    .line 288
    iput-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 293
    .line 294
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 295
    .line 296
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 297
    .line 298
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 299
    .line 300
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 301
    .line 302
    iput v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 303
    .line 304
    iput v12, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 305
    .line 306
    invoke-virtual {v14, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 307
    .line 308
    .line 309
    move-object v2, v11

    .line 310
    goto :goto_7

    .line 311
    :cond_8
    :goto_6
    shr-long/2addr v5, v13

    .line 312
    add-int/2addr v1, v12

    .line 313
    goto :goto_5

    .line 314
    :cond_9
    if-ne v4, v13, :cond_b

    .line 315
    .line 316
    move v6, v8

    .line 317
    move-object v4, v9

    .line 318
    move-object v5, v10

    .line 319
    move-object v1, v14

    .line 320
    :cond_a
    if-eq v7, v6, :cond_b

    .line 321
    .line 322
    add-int/lit8 v7, v7, 0x1

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_b
    :goto_7
    return-object v2

    .line 326
    :pswitch_1
    const-wide/16 v18, 0xff

    .line 327
    .line 328
    const/16 v20, 0x7

    .line 329
    .line 330
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 336
    .line 337
    if-eqz v1, :cond_d

    .line 338
    .line 339
    if-ne v1, v12, :cond_c

    .line 340
    .line 341
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 342
    .line 343
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 344
    .line 345
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 346
    .line 347
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 348
    .line 349
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 350
    .line 351
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 352
    .line 353
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v10, Landroidx/collection/Keys;

    .line 356
    .line 357
    iget-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast v14, Lkotlin/sequences/SequenceBuilderIterator;

    .line 360
    .line 361
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_a

    .line 365
    .line 366
    :cond_c
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    move-object v2, v9

    .line 370
    goto/16 :goto_b

    .line 371
    .line 372
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 378
    .line 379
    check-cast v8, Landroidx/collection/Keys;

    .line 380
    .line 381
    iget-object v4, v8, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 382
    .line 383
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 384
    .line 385
    array-length v5, v4

    .line 386
    add-int/lit8 v5, v5, -0x2

    .line 387
    .line 388
    if-ltz v5, :cond_11

    .line 389
    .line 390
    move v6, v3

    .line 391
    :goto_8
    aget-wide v9, v4, v6

    .line 392
    .line 393
    not-long v14, v9

    .line 394
    shl-long v14, v14, v20

    .line 395
    .line 396
    and-long/2addr v14, v9

    .line 397
    and-long v14, v14, v21

    .line 398
    .line 399
    cmp-long v7, v14, v21

    .line 400
    .line 401
    if-eqz v7, :cond_10

    .line 402
    .line 403
    sub-int v7, v6, v5

    .line 404
    .line 405
    not-int v7, v7

    .line 406
    ushr-int/lit8 v7, v7, 0x1f

    .line 407
    .line 408
    rsub-int/lit8 v7, v7, 0x8

    .line 409
    .line 410
    move-object v14, v1

    .line 411
    move v1, v3

    .line 412
    move-wide/from16 v25, v9

    .line 413
    .line 414
    move-object v9, v4

    .line 415
    move v4, v7

    .line 416
    move-object v10, v8

    .line 417
    move v8, v5

    .line 418
    move v7, v6

    .line 419
    move-wide/from16 v5, v25

    .line 420
    .line 421
    :goto_9
    if-ge v1, v4, :cond_f

    .line 422
    .line 423
    and-long v23, v5, v18

    .line 424
    .line 425
    cmp-long v15, v23, v16

    .line 426
    .line 427
    if-gez v15, :cond_e

    .line 428
    .line 429
    shl-int/lit8 v2, v7, 0x3

    .line 430
    .line 431
    add-int/2addr v2, v1

    .line 432
    new-instance v13, Landroidx/collection/MapEntry;

    .line 433
    .line 434
    iget-object v15, v10, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 435
    .line 436
    iget-object v12, v15, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 437
    .line 438
    aget-object v12, v12, v2

    .line 439
    .line 440
    iget-object v15, v15, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 441
    .line 442
    aget-object v2, v15, v2

    .line 443
    .line 444
    invoke-direct {v13, v3, v12, v2}, Landroidx/collection/MapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    iput-object v14, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 448
    .line 449
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 450
    .line 451
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 452
    .line 453
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 454
    .line 455
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 456
    .line 457
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 458
    .line 459
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 460
    .line 461
    iput v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 462
    .line 463
    const/4 v12, 0x1

    .line 464
    iput v12, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 465
    .line 466
    invoke-virtual {v14, v13, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 467
    .line 468
    .line 469
    move-object v2, v11

    .line 470
    goto :goto_b

    .line 471
    :cond_e
    :goto_a
    shr-long/2addr v5, v13

    .line 472
    add-int/2addr v1, v12

    .line 473
    goto :goto_9

    .line 474
    :cond_f
    if-ne v4, v13, :cond_11

    .line 475
    .line 476
    move v6, v7

    .line 477
    move v5, v8

    .line 478
    move-object v4, v9

    .line 479
    move-object v8, v10

    .line 480
    move-object v1, v14

    .line 481
    :cond_10
    if-eq v6, v5, :cond_11

    .line 482
    .line 483
    add-int/lit8 v6, v6, 0x1

    .line 484
    .line 485
    const/4 v12, 0x1

    .line 486
    goto :goto_8

    .line 487
    :cond_11
    :goto_b
    return-object v2

    .line 488
    :pswitch_2
    const-wide/16 v18, 0xff

    .line 489
    .line 490
    const/16 v20, 0x7

    .line 491
    .line 492
    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 498
    .line 499
    if-eqz v1, :cond_14

    .line 500
    .line 501
    const/4 v12, 0x1

    .line 502
    if-ne v1, v12, :cond_13

    .line 503
    .line 504
    iget v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 505
    .line 506
    iget v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 507
    .line 508
    iget-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 509
    .line 510
    iget v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 511
    .line 512
    iget v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 513
    .line 514
    iget-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 515
    .line 516
    iget-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v10, [Ljava/lang/Object;

    .line 519
    .line 520
    iget-object v12, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v12, Lkotlin/sequences/SequenceBuilderIterator;

    .line 523
    .line 524
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    :cond_12
    const/4 v14, 0x1

    .line 528
    goto :goto_e

    .line 529
    :cond_13
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move-object v2, v9

    .line 533
    goto/16 :goto_10

    .line 534
    .line 535
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    iget-object v1, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 541
    .line 542
    check-cast v8, Landroidx/collection/Keys;

    .line 543
    .line 544
    iget-object v4, v8, Landroidx/collection/Keys;->parent:Landroidx/collection/MutableScatterMap;

    .line 545
    .line 546
    iget-object v5, v4, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 547
    .line 548
    iget-object v4, v4, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 549
    .line 550
    array-length v6, v4

    .line 551
    add-int/lit8 v6, v6, -0x2

    .line 552
    .line 553
    if-ltz v6, :cond_17

    .line 554
    .line 555
    move v7, v3

    .line 556
    :goto_c
    aget-wide v8, v4, v7

    .line 557
    .line 558
    not-long v14, v8

    .line 559
    shl-long v14, v14, v20

    .line 560
    .line 561
    and-long/2addr v14, v8

    .line 562
    and-long v14, v14, v21

    .line 563
    .line 564
    cmp-long v10, v14, v21

    .line 565
    .line 566
    if-eqz v10, :cond_16

    .line 567
    .line 568
    sub-int v10, v7, v6

    .line 569
    .line 570
    not-int v10, v10

    .line 571
    ushr-int/lit8 v10, v10, 0x1f

    .line 572
    .line 573
    rsub-int/lit8 v10, v10, 0x8

    .line 574
    .line 575
    move-object v12, v1

    .line 576
    move v1, v3

    .line 577
    move-wide/from16 v25, v8

    .line 578
    .line 579
    move-object v9, v4

    .line 580
    move v8, v6

    .line 581
    move v4, v10

    .line 582
    move-object v10, v5

    .line 583
    move-wide/from16 v5, v25

    .line 584
    .line 585
    :goto_d
    if-ge v1, v4, :cond_15

    .line 586
    .line 587
    and-long v14, v5, v18

    .line 588
    .line 589
    cmp-long v14, v14, v16

    .line 590
    .line 591
    if-gez v14, :cond_12

    .line 592
    .line 593
    shl-int/lit8 v2, v7, 0x3

    .line 594
    .line 595
    add-int/2addr v2, v1

    .line 596
    aget-object v2, v10, v2

    .line 597
    .line 598
    iput-object v12, v0, Landroidx/collection/Keys$iterator$1;->L$0:Ljava/lang/Object;

    .line 599
    .line 600
    iput-object v10, v0, Landroidx/collection/Keys$iterator$1;->L$1:Ljava/lang/Object;

    .line 601
    .line 602
    iput-object v9, v0, Landroidx/collection/Keys$iterator$1;->L$2:[J

    .line 603
    .line 604
    iput v8, v0, Landroidx/collection/Keys$iterator$1;->I$0:I

    .line 605
    .line 606
    iput v7, v0, Landroidx/collection/Keys$iterator$1;->I$1:I

    .line 607
    .line 608
    iput-wide v5, v0, Landroidx/collection/Keys$iterator$1;->J$0:J

    .line 609
    .line 610
    iput v4, v0, Landroidx/collection/Keys$iterator$1;->I$2:I

    .line 611
    .line 612
    iput v1, v0, Landroidx/collection/Keys$iterator$1;->I$3:I

    .line 613
    .line 614
    const/4 v14, 0x1

    .line 615
    iput v14, v0, Landroidx/collection/Keys$iterator$1;->label:I

    .line 616
    .line 617
    invoke-virtual {v12, v2, v0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 618
    .line 619
    .line 620
    move-object v2, v11

    .line 621
    goto :goto_10

    .line 622
    :goto_e
    shr-long/2addr v5, v13

    .line 623
    add-int/2addr v1, v14

    .line 624
    goto :goto_d

    .line 625
    :cond_15
    const/4 v14, 0x1

    .line 626
    if-ne v4, v13, :cond_17

    .line 627
    .line 628
    move v6, v8

    .line 629
    move-object v4, v9

    .line 630
    move-object v5, v10

    .line 631
    move-object v1, v12

    .line 632
    goto :goto_f

    .line 633
    :cond_16
    const/4 v14, 0x1

    .line 634
    :goto_f
    if-eq v7, v6, :cond_17

    .line 635
    .line 636
    add-int/lit8 v7, v7, 0x1

    .line 637
    .line 638
    goto :goto_c

    .line 639
    :cond_17
    :goto_10
    return-object v2

    .line 640
    nop

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
