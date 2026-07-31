.class public final Lkotlinx/coroutines/flow/SafeFlow;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final block:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/flow/SafeFlow;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/SafeFlow;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/high16 v5, -0x80000000

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    iget-object v9, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move-object v0, p2

    .line 27
    check-cast v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;

    .line 28
    .line 29
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;->label:I

    .line 30
    .line 31
    and-int v2, v1, v5

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    sub-int/2addr v1, v5

    .line 36
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;->label:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;

    .line 40
    .line 41
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 45
    .line 46
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;->label:I

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    if-ne p2, v6, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object v7, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast v9, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 65
    .line 66
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 67
    .line 68
    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 69
    .line 70
    .line 71
    iput v6, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$1;->label:I

    .line 72
    .line 73
    invoke-virtual {v9, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-object v7, v10

    .line 77
    :goto_1
    return-object v7

    .line 78
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    move-object v0, p2

    .line 83
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;

    .line 84
    .line 85
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;->label:I

    .line 86
    .line 87
    and-int v2, v1, v5

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    sub-int/2addr v1, v5

    .line 92
    iput v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;->label:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;

    .line 96
    .line 97
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 101
    .line 102
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;->label:I

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    if-ne p2, v6, :cond_4

    .line 107
    .line 108
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_5
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    check-cast v9, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 120
    .line 121
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 122
    .line 123
    const/16 p2, 0xd

    .line 124
    .line 125
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 126
    .line 127
    .line 128
    iput v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$1;->label:I

    .line 129
    .line 130
    invoke-virtual {v9, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-ne p0, v10, :cond_6

    .line 135
    .line 136
    move-object v7, v10

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    :goto_3
    move-object v7, v8

    .line 139
    :goto_4
    return-object v7

    .line 140
    :pswitch_1
    instance-of v0, p2, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    move-object v0, p2

    .line 145
    check-cast v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;

    .line 146
    .line 147
    iget v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;->label:I

    .line 148
    .line 149
    and-int v2, v1, v5

    .line 150
    .line 151
    if-eqz v2, :cond_7

    .line 152
    .line 153
    sub-int/2addr v1, v5

    .line 154
    iput v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;->label:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;

    .line 158
    .line 159
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    .line 160
    .line 161
    .line 162
    :goto_5
    iget-object p0, v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;->result:Ljava/lang/Object;

    .line 163
    .line 164
    iget p2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;->label:I

    .line 165
    .line 166
    if-eqz p2, :cond_9

    .line 167
    .line 168
    if-eq p2, v6, :cond_8

    .line 169
    .line 170
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_8
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    throw p0

    .line 179
    :cond_9
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 183
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    check-cast v9, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    .line 188
    .line 189
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 190
    .line 191
    invoke-direct {p2, v3, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iput v6, v0, Lkotlinx/coroutines/flow/StartedLazily$command$$inlined$unsafeFlow$1$1;->label:I

    .line 195
    .line 196
    invoke-virtual {v9, p2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-object v7, v10

    .line 200
    :goto_6
    return-object v7

    .line 201
    :pswitch_2
    check-cast v9, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 202
    .line 203
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 204
    .line 205
    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    if-ne p0, v10, :cond_a

    .line 213
    .line 214
    move-object v8, p0

    .line 215
    :cond_a
    return-object v8

    .line 216
    :pswitch_3
    check-cast v9, Ljava/io/Serializable;

    .line 217
    .line 218
    invoke-interface {p1, v9, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    if-ne p0, v10, :cond_b

    .line 223
    .line 224
    move-object v8, p0

    .line 225
    :cond_b
    return-object v8

    .line 226
    :pswitch_4
    instance-of v0, p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;

    .line 227
    .line 228
    if-eqz v0, :cond_c

    .line 229
    .line 230
    move-object v0, p2

    .line 231
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;

    .line 232
    .line 233
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;->label:I

    .line 234
    .line 235
    and-int v2, v1, v5

    .line 236
    .line 237
    if-eqz v2, :cond_c

    .line 238
    .line 239
    sub-int/2addr v1, v5

    .line 240
    iput v1, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;->label:I

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_c
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;

    .line 244
    .line 245
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    .line 246
    .line 247
    .line 248
    :goto_7
    iget-object p0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 249
    .line 250
    iget p2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;->label:I

    .line 251
    .line 252
    if-eqz p2, :cond_e

    .line 253
    .line 254
    if-ne p2, v6, :cond_d

    .line 255
    .line 256
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    check-cast v9, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;

    .line 268
    .line 269
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 270
    .line 271
    const/16 p2, 0x8

    .line 272
    .line 273
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 274
    .line 275
    .line 276
    iput v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$1;->label:I

    .line 277
    .line 278
    invoke-virtual {v9, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    if-ne p0, v10, :cond_f

    .line 283
    .line 284
    move-object v7, v10

    .line 285
    goto :goto_9

    .line 286
    :cond_f
    :goto_8
    move-object v7, v8

    .line 287
    :goto_9
    return-object v7

    .line 288
    :pswitch_5
    check-cast v9, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 289
    .line 290
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 291
    .line 292
    const/4 v0, 0x4

    .line 293
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    if-ne p0, v10, :cond_10

    .line 301
    .line 302
    move-object v8, p0

    .line 303
    :cond_10
    return-object v8

    .line 304
    :pswitch_6
    check-cast v9, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 305
    .line 306
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 307
    .line 308
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v9, p0, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    if-ne p0, v10, :cond_11

    .line 316
    .line 317
    move-object v8, p0

    .line 318
    :cond_11
    return-object v8

    .line 319
    :pswitch_7
    check-cast v9, [Lkotlinx/coroutines/flow/Flow;

    .line 320
    .line 321
    new-instance p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;

    .line 322
    .line 323
    invoke-direct {p0, v9, v2}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;I)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;

    .line 327
    .line 328
    invoke-direct {v0, v1, v7}, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$3;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 329
    .line 330
    .line 331
    invoke-static {p2, p0, v0, p1, v9}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    if-ne p0, v10, :cond_12

    .line 336
    .line 337
    move-object v8, p0

    .line 338
    :cond_12
    return-object v8

    .line 339
    :pswitch_8
    check-cast v9, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    .line 340
    .line 341
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 342
    .line 343
    const/4 v0, 0x2

    .line 344
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v9, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    if-ne p0, v10, :cond_13

    .line 352
    .line 353
    move-object v8, p0

    .line 354
    :cond_13
    return-object v8

    .line 355
    :pswitch_9
    instance-of v0, p2, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 356
    .line 357
    if-eqz v0, :cond_14

    .line 358
    .line 359
    move-object v0, p2

    .line 360
    check-cast v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 361
    .line 362
    iget v1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 363
    .line 364
    and-int v2, v1, v5

    .line 365
    .line 366
    if-eqz v2, :cond_14

    .line 367
    .line 368
    sub-int/2addr v1, v5

    .line 369
    iput v1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 370
    .line 371
    goto :goto_a

    .line 372
    :cond_14
    new-instance v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;

    .line 373
    .line 374
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;-><init>(Lkotlinx/coroutines/flow/SafeFlow;Lkotlin/coroutines/Continuation;)V

    .line 375
    .line 376
    .line 377
    :goto_a
    iget-object p0, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->result:Ljava/lang/Object;

    .line 378
    .line 379
    iget p2, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 380
    .line 381
    if-eqz p2, :cond_16

    .line 382
    .line 383
    if-ne p2, v6, :cond_15

    .line 384
    .line 385
    iget-object p1, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$1:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 386
    .line 387
    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .line 389
    .line 390
    goto :goto_c

    .line 391
    :catchall_0
    move-exception p0

    .line 392
    goto :goto_f

    .line 393
    :cond_15
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_16
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    new-instance p0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 401
    .line 402
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 407
    .line 408
    .line 409
    :try_start_1
    iput-object p0, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->L$1:Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 410
    .line 411
    iput v6, v0, Lkotlinx/coroutines/flow/AbstractFlow$collect$1;->label:I

    .line 412
    .line 413
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 414
    .line 415
    invoke-interface {v9, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    if-ne p1, v10, :cond_17

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_17
    move-object p1, v8

    .line 423
    :goto_b
    if-ne p1, v10, :cond_18

    .line 424
    .line 425
    move-object v7, v10

    .line 426
    goto :goto_d

    .line 427
    :cond_18
    move-object p1, p0

    .line 428
    :goto_c
    invoke-virtual {p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    .line 429
    .line 430
    .line 431
    move-object v7, v8

    .line 432
    :goto_d
    return-object v7

    .line 433
    :goto_e
    move-object v11, p1

    .line 434
    move-object p1, p0

    .line 435
    move-object p0, v11

    .line 436
    goto :goto_f

    .line 437
    :catchall_1
    move-exception p1

    .line 438
    goto :goto_e

    .line 439
    :goto_f
    invoke-virtual {p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->releaseIntercepted()V

    .line 440
    .line 441
    .line 442
    throw p0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
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
