.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $predicate$inlined:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_takeWhile$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$this_takeWhile$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$predicate$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$predicate$inlined:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->$this_takeWhile$inlined:Ljava/lang/Object;

    .line 16
    .line 17
    const-string v9, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    const/high16 v11, -0x80000000

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    const/4 v13, 0x0

    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;

    .line 34
    .line 35
    iget v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;->label:I

    .line 36
    .line 37
    and-int v5, v4, v11

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    sub-int/2addr v4, v11

    .line 42
    iput v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;->label:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;

    .line 46
    .line 47
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;->result:Ljava/lang/Object;

    .line 51
    .line 52
    iget v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;->label:I

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    if-ne v2, v12, :cond_1

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v6, v13

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 71
    .line 72
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 73
    .line 74
    check-cast v7, Ljava/lang/String;

    .line 75
    .line 76
    const/16 v2, 0x17

    .line 77
    .line 78
    invoke-direct {v0, v1, v7, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    iput v12, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$2$1;->label:I

    .line 82
    .line 83
    invoke-interface {v8, v0, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-ne v0, v10, :cond_3

    .line 88
    .line 89
    move-object v6, v10

    .line 90
    :cond_3
    :goto_1
    return-object v6

    .line 91
    :pswitch_0
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    move-object v3, v2

    .line 96
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;

    .line 97
    .line 98
    iget v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;->label:I

    .line 99
    .line 100
    and-int v5, v4, v11

    .line 101
    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    sub-int/2addr v4, v11

    .line 105
    iput v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;->label:I

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;

    .line 109
    .line 110
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    iget-object v0, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;->result:Ljava/lang/Object;

    .line 114
    .line 115
    iget v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;->label:I

    .line 116
    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    if-ne v2, v12, :cond_5

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object v6, v13

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v8, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 134
    .line 135
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 136
    .line 137
    check-cast v7, Ljava/util/List;

    .line 138
    .line 139
    const/16 v2, 0x16

    .line 140
    .line 141
    invoke-direct {v0, v1, v7, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    iput v12, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$2$1;->label:I

    .line 145
    .line 146
    invoke-virtual {v8, v0, v3}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-ne v0, v10, :cond_7

    .line 151
    .line 152
    move-object v6, v10

    .line 153
    :cond_7
    :goto_3
    return-object v6

    .line 154
    :pswitch_1
    instance-of v3, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;

    .line 155
    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    move-object v3, v2

    .line 159
    check-cast v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;

    .line 160
    .line 161
    iget v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;->label:I

    .line 162
    .line 163
    and-int v5, v4, v11

    .line 164
    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    sub-int/2addr v4, v11

    .line 168
    iput v4, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;->label:I

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    new-instance v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;

    .line 172
    .line 173
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 174
    .line 175
    .line 176
    :goto_4
    iget-object v0, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 177
    .line 178
    iget v2, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;->label:I

    .line 179
    .line 180
    if-eqz v2, :cond_a

    .line 181
    .line 182
    if-ne v2, v12, :cond_9

    .line 183
    .line 184
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_9
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    move-object v6, v13

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 197
    .line 198
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 199
    .line 200
    check-cast v7, Ljava/util/ArrayList;

    .line 201
    .line 202
    const/16 v2, 0x15

    .line 203
    .line 204
    invoke-direct {v0, v1, v7, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    iput v12, v3, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayAccounts$associateWithAuthErrorIndication$$inlined$map$1$1;->label:I

    .line 208
    .line 209
    invoke-interface {v8, v0, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-ne v0, v10, :cond_b

    .line 214
    .line 215
    move-object v6, v10

    .line 216
    :cond_b
    :goto_5
    return-object v6

    .line 217
    :pswitch_2
    instance-of v3, v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;

    .line 218
    .line 219
    if-eqz v3, :cond_c

    .line 220
    .line 221
    move-object v3, v2

    .line 222
    check-cast v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;

    .line 223
    .line 224
    iget v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;->label:I

    .line 225
    .line 226
    and-int v5, v4, v11

    .line 227
    .line 228
    if-eqz v5, :cond_c

    .line 229
    .line 230
    sub-int/2addr v4, v11

    .line 231
    iput v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;->label:I

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_c
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;

    .line 235
    .line 236
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 237
    .line 238
    .line 239
    :goto_6
    iget-object v0, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 240
    .line 241
    iget v2, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;->label:I

    .line 242
    .line 243
    if-eqz v2, :cond_e

    .line 244
    .line 245
    if-ne v2, v12, :cond_d

    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_d
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    move-object v6, v13

    .line 255
    goto :goto_7

    .line 256
    :cond_e
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    check-cast v8, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 260
    .line 261
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;

    .line 262
    .line 263
    check-cast v7, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 264
    .line 265
    invoke-direct {v0, v1, v7, v12}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;I)V

    .line 266
    .line 267
    .line 268
    iput v12, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$1;->label:I

    .line 269
    .line 270
    invoke-virtual {v8, v0, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-ne v0, v10, :cond_f

    .line 275
    .line 276
    move-object v6, v10

    .line 277
    :cond_f
    :goto_7
    return-object v6

    .line 278
    :pswitch_3
    instance-of v3, v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;

    .line 279
    .line 280
    if-eqz v3, :cond_10

    .line 281
    .line 282
    move-object v3, v2

    .line 283
    check-cast v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;

    .line 284
    .line 285
    iget v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;->label:I

    .line 286
    .line 287
    and-int v14, v4, v11

    .line 288
    .line 289
    if-eqz v14, :cond_10

    .line 290
    .line 291
    sub-int/2addr v4, v11

    .line 292
    iput v4, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;->label:I

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_10
    new-instance v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;

    .line 296
    .line 297
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 298
    .line 299
    .line 300
    :goto_8
    iget-object v0, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 301
    .line 302
    iget v2, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;->label:I

    .line 303
    .line 304
    if-eqz v2, :cond_12

    .line 305
    .line 306
    if-ne v2, v12, :cond_11

    .line 307
    .line 308
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_11
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    move-object v6, v13

    .line 316
    goto :goto_9

    .line 317
    :cond_12
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    check-cast v8, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;

    .line 321
    .line 322
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;

    .line 323
    .line 324
    check-cast v7, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 325
    .line 326
    invoke-direct {v0, v1, v7, v5}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;I)V

    .line 327
    .line 328
    .line 329
    iput v12, v3, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$1;->label:I

    .line 330
    .line 331
    invoke-virtual {v8, v0, v3}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-ne v0, v10, :cond_13

    .line 336
    .line 337
    move-object v6, v10

    .line 338
    :cond_13
    :goto_9
    return-object v6

    .line 339
    :pswitch_4
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 340
    .line 341
    if-eqz v3, :cond_14

    .line 342
    .line 343
    move-object v3, v2

    .line 344
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 345
    .line 346
    iget v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 347
    .line 348
    and-int v15, v14, v11

    .line 349
    .line 350
    if-eqz v15, :cond_14

    .line 351
    .line 352
    sub-int/2addr v14, v11

    .line 353
    iput v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 354
    .line 355
    goto :goto_a

    .line 356
    :cond_14
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;

    .line 357
    .line 358
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 359
    .line 360
    .line 361
    :goto_a
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 362
    .line 363
    iget v2, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 364
    .line 365
    if-eqz v2, :cond_17

    .line 366
    .line 367
    if-eq v2, v12, :cond_16

    .line 368
    .line 369
    if-ne v2, v4, :cond_15

    .line 370
    .line 371
    iget-wide v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 372
    .line 373
    iget v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    .line 374
    .line 375
    iget-object v11, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Throwable;

    .line 376
    .line 377
    iget-object v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 378
    .line 379
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_e

    .line 383
    .line 384
    :cond_15
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    move-object v6, v13

    .line 388
    goto/16 :goto_11

    .line 389
    .line 390
    :cond_16
    iget v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$1:I

    .line 391
    .line 392
    iget-wide v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 393
    .line 394
    iget v2, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    .line 395
    .line 396
    iget-object v9, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 397
    .line 398
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    move v11, v2

    .line 402
    move-object/from16 v18, v3

    .line 403
    .line 404
    move v3, v1

    .line 405
    move-wide v1, v14

    .line 406
    move-object v14, v9

    .line 407
    move-object/from16 v9, v18

    .line 408
    .line 409
    goto :goto_c

    .line 410
    :cond_17
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    const-wide/16 v14, 0x0

    .line 414
    .line 415
    move v0, v5

    .line 416
    :goto_b
    move-object v2, v8

    .line 417
    check-cast v2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 418
    .line 419
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 420
    .line 421
    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Throwable;

    .line 422
    .line 423
    iput v0, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    .line 424
    .line 425
    iput-wide v14, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 426
    .line 427
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$1:I

    .line 428
    .line 429
    iput v12, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 430
    .line 431
    invoke-static {v3, v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->catchImpl(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/io/Serializable;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-ne v2, v10, :cond_18

    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_18
    move v11, v0

    .line 439
    move-object v0, v2

    .line 440
    move-object v9, v3

    .line 441
    move v3, v5

    .line 442
    move-wide/from16 v18, v14

    .line 443
    .line 444
    move-object v14, v1

    .line 445
    move-wide/from16 v1, v18

    .line 446
    .line 447
    :goto_c
    check-cast v0, Ljava/lang/Throwable;

    .line 448
    .line 449
    if-eqz v0, :cond_1b

    .line 450
    .line 451
    move-object v15, v7

    .line 452
    check-cast v15, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;

    .line 453
    .line 454
    new-instance v13, Ljava/lang/Long;

    .line 455
    .line 456
    invoke-direct {v13, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 457
    .line 458
    .line 459
    iput-object v14, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 460
    .line 461
    iput-object v0, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->L$3:Ljava/lang/Throwable;

    .line 462
    .line 463
    iput v11, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$0:I

    .line 464
    .line 465
    iput-wide v1, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->J$0:J

    .line 466
    .line 467
    iput v3, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->I$1:I

    .line 468
    .line 469
    iput v4, v9, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1$1;->label:I

    .line 470
    .line 471
    invoke-virtual {v15, v14, v0, v13, v9}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    if-ne v3, v10, :cond_19

    .line 476
    .line 477
    :goto_d
    move-object v6, v10

    .line 478
    goto :goto_11

    .line 479
    :cond_19
    move/from16 v18, v11

    .line 480
    .line 481
    move-object v11, v0

    .line 482
    move-object v0, v3

    .line 483
    move-object v3, v9

    .line 484
    move/from16 v9, v18

    .line 485
    .line 486
    :goto_e
    check-cast v0, Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_1a

    .line 493
    .line 494
    const-wide/16 v16, 0x1

    .line 495
    .line 496
    add-long v1, v1, v16

    .line 497
    .line 498
    move v0, v9

    .line 499
    move-object v9, v3

    .line 500
    move v3, v12

    .line 501
    :goto_f
    move-wide/from16 v18, v1

    .line 502
    .line 503
    move-object v1, v14

    .line 504
    move-wide/from16 v14, v18

    .line 505
    .line 506
    goto :goto_10

    .line 507
    :cond_1a
    throw v11

    .line 508
    :cond_1b
    move v0, v11

    .line 509
    goto :goto_f

    .line 510
    :goto_10
    if-nez v3, :cond_1c

    .line 511
    .line 512
    :goto_11
    return-object v6

    .line 513
    :cond_1c
    move-object v3, v9

    .line 514
    const/4 v13, 0x0

    .line 515
    goto :goto_b

    .line 516
    :pswitch_5
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;

    .line 517
    .line 518
    if-eqz v3, :cond_1d

    .line 519
    .line 520
    move-object v3, v2

    .line 521
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;

    .line 522
    .line 523
    iget v13, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->label:I

    .line 524
    .line 525
    and-int v14, v13, v11

    .line 526
    .line 527
    if-eqz v14, :cond_1d

    .line 528
    .line 529
    sub-int/2addr v13, v11

    .line 530
    iput v13, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->label:I

    .line 531
    .line 532
    goto :goto_12

    .line 533
    :cond_1d
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;

    .line 534
    .line 535
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 536
    .line 537
    .line 538
    :goto_12
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 539
    .line 540
    iget v2, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->label:I

    .line 541
    .line 542
    if-eqz v2, :cond_20

    .line 543
    .line 544
    if-eq v2, v12, :cond_1f

    .line 545
    .line 546
    if-ne v2, v4, :cond_1e

    .line 547
    .line 548
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    goto :goto_15

    .line 552
    :cond_1e
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const/4 v6, 0x0

    .line 556
    goto :goto_15

    .line 557
    :cond_1f
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->I$0:I

    .line 558
    .line 559
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$3:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 560
    .line 561
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 562
    .line 563
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .line 565
    .line 566
    move-object/from16 v18, v2

    .line 567
    .line 568
    move-object v2, v1

    .line 569
    move-object/from16 v1, v18

    .line 570
    .line 571
    goto :goto_13

    .line 572
    :catchall_0
    move-exception v0

    .line 573
    goto :goto_16

    .line 574
    :cond_20
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    new-instance v2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 578
    .line 579
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-direct {v2, v1, v0}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 584
    .line 585
    .line 586
    :try_start_1
    check-cast v8, Landroidx/datastore/core/DataStoreImpl$data$1$1;

    .line 587
    .line 588
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 589
    .line 590
    iput-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$3:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 591
    .line 592
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->I$0:I

    .line 593
    .line 594
    iput v12, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->label:I

    .line 595
    .line 596
    invoke-virtual {v8, v2, v3}, Landroidx/datastore/core/DataStoreImpl$data$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 600
    if-ne v0, v10, :cond_21

    .line 601
    .line 602
    goto :goto_14

    .line 603
    :cond_21
    :goto_13
    invoke-virtual {v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    .line 604
    .line 605
    .line 606
    check-cast v7, Lkotlinx/coroutines/flow/Flow;

    .line 607
    .line 608
    const/4 v13, 0x0

    .line 609
    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$2:Lkotlinx/coroutines/flow/FlowCollector;

    .line 610
    .line 611
    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->L$3:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 612
    .line 613
    iput v5, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->I$0:I

    .line 614
    .line 615
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1;->label:I

    .line 616
    .line 617
    invoke-interface {v7, v1, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    if-ne v0, v10, :cond_22

    .line 622
    .line 623
    :goto_14
    move-object v6, v10

    .line 624
    :cond_22
    :goto_15
    return-object v6

    .line 625
    :catchall_1
    move-exception v0

    .line 626
    move-object v1, v2

    .line 627
    :goto_16
    invoke-virtual {v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :pswitch_6
    instance-of v3, v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;

    .line 632
    .line 633
    if-eqz v3, :cond_23

    .line 634
    .line 635
    move-object v3, v2

    .line 636
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;

    .line 637
    .line 638
    iget v4, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;->label:I

    .line 639
    .line 640
    and-int v5, v4, v11

    .line 641
    .line 642
    if-eqz v5, :cond_23

    .line 643
    .line 644
    sub-int/2addr v4, v11

    .line 645
    iput v4, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;->label:I

    .line 646
    .line 647
    goto :goto_17

    .line 648
    :cond_23
    new-instance v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;

    .line 649
    .line 650
    invoke-direct {v3, v0, v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 651
    .line 652
    .line 653
    :goto_17
    iget-object v0, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 654
    .line 655
    iget v2, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;->label:I

    .line 656
    .line 657
    if-eqz v2, :cond_25

    .line 658
    .line 659
    if-ne v2, v12, :cond_24

    .line 660
    .line 661
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    goto :goto_18

    .line 665
    :cond_24
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    move-object v6, v13

    .line 669
    goto :goto_18

    .line 670
    :cond_25
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    .line 674
    .line 675
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 676
    .line 677
    check-cast v7, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 678
    .line 679
    const/16 v2, 0xc

    .line 680
    .line 681
    invoke-direct {v0, v1, v7, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;I)V

    .line 682
    .line 683
    .line 684
    iput v12, v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$special$$inlined$map$1$1;->label:I

    .line 685
    .line 686
    invoke-interface {v8, v0, v3}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    if-ne v0, v10, :cond_26

    .line 691
    .line 692
    move-object v6, v10

    .line 693
    :cond_26
    :goto_18
    return-object v6

    .line 694
    :pswitch_7
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 695
    .line 696
    if-eqz v3, :cond_27

    .line 697
    .line 698
    move-object v3, v2

    .line 699
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 700
    .line 701
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 702
    .line 703
    and-int v5, v4, v11

    .line 704
    .line 705
    if-eqz v5, :cond_27

    .line 706
    .line 707
    sub-int/2addr v4, v11

    .line 708
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 709
    .line 710
    goto :goto_19

    .line 711
    :cond_27
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;

    .line 712
    .line 713
    invoke-direct {v3, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 714
    .line 715
    .line 716
    :goto_19
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 717
    .line 718
    iget v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 719
    .line 720
    if-eqz v2, :cond_29

    .line 721
    .line 722
    if-ne v2, v12, :cond_28

    .line 723
    .line 724
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$5:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 725
    .line 726
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_2 .. :try_end_2} :catch_0

    .line 727
    .line 728
    .line 729
    goto :goto_1b

    .line 730
    :catch_0
    move-exception v0

    .line 731
    goto :goto_1a

    .line 732
    :cond_28
    invoke-static {v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    move-object v6, v13

    .line 736
    goto :goto_1b

    .line 737
    :cond_29
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 738
    .line 739
    .line 740
    check-cast v8, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;

    .line 741
    .line 742
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 743
    .line 744
    check-cast v7, Landroidx/compose/runtime/Recomposer$join$2;

    .line 745
    .line 746
    const/16 v0, 0xe

    .line 747
    .line 748
    invoke-direct {v2, v0, v7, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    :try_start_3
    iput-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->L$5:Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 752
    .line 753
    iput v12, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1$1;->label:I

    .line 754
    .line 755
    invoke-virtual {v8, v2, v3}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v0
    :try_end_3
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_3 .. :try_end_3} :catch_1

    .line 759
    if-ne v0, v10, :cond_2a

    .line 760
    .line 761
    move-object v6, v10

    .line 762
    goto :goto_1b

    .line 763
    :catch_1
    move-exception v0

    .line 764
    move-object v1, v2

    .line 765
    :goto_1a
    iget-object v2, v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->owner:Lkotlinx/coroutines/flow/FlowCollector;

    .line 766
    .line 767
    if-ne v2, v1, :cond_2b

    .line 768
    .line 769
    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 774
    .line 775
    .line 776
    :cond_2a
    :goto_1b
    return-object v6

    .line 777
    :cond_2b
    throw v0

    .line 778
    nop

    .line 779
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
