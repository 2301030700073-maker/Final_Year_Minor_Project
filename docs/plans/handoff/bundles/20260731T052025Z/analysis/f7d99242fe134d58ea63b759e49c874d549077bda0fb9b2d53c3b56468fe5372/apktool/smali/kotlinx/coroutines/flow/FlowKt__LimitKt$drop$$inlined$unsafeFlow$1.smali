.class public final Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_drop$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->$this_drop$inlined:Lkotlinx/coroutines/flow/Flow;

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
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    const/high16 v3, -0x80000000

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    iget-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;->$this_drop$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 12
    .line 13
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;

    .line 24
    .line 25
    iget v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;->label:I

    .line 26
    .line 27
    and-int v9, v8, v3

    .line 28
    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    sub-int/2addr v8, v3

    .line 32
    iput v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;->label:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;

    .line 36
    .line 37
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 41
    .line 42
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;->label:I

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    if-ne p2, v4, :cond_1

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 60
    .line 61
    const/16 p2, 0x12

    .line 62
    .line 63
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 64
    .line 65
    .line 66
    iput v4, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$1;->label:I

    .line 67
    .line 68
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-ne p0, v7, :cond_3

    .line 73
    .line 74
    move-object v1, v7

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    :goto_1
    move-object v1, v5

    .line 77
    :goto_2
    return-object v1

    .line 78
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    move-object v0, p2

    .line 83
    check-cast v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;

    .line 84
    .line 85
    iget v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;->label:I

    .line 86
    .line 87
    and-int v9, v8, v3

    .line 88
    .line 89
    if-eqz v9, :cond_4

    .line 90
    .line 91
    sub-int/2addr v8, v3

    .line 92
    iput v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;->label:I

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    new-instance v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;

    .line 96
    .line 97
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    :goto_3
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 101
    .line 102
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;->label:I

    .line 103
    .line 104
    if-eqz p2, :cond_6

    .line 105
    .line 106
    if-ne p2, v4, :cond_5

    .line 107
    .line 108
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 120
    .line 121
    const/16 p2, 0x11

    .line 122
    .line 123
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 124
    .line 125
    .line 126
    iput v4, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$1;->label:I

    .line 127
    .line 128
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-ne p0, v7, :cond_7

    .line 133
    .line 134
    move-object v1, v7

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    :goto_4
    move-object v1, v5

    .line 137
    :goto_5
    return-object v1

    .line 138
    :pswitch_1
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    move-object v0, p2

    .line 143
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;

    .line 144
    .line 145
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;->label:I

    .line 146
    .line 147
    and-int v9, v8, v3

    .line 148
    .line 149
    if-eqz v9, :cond_8

    .line 150
    .line 151
    sub-int/2addr v8, v3

    .line 152
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;->label:I

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_8
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;

    .line 156
    .line 157
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 158
    .line 159
    .line 160
    :goto_6
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 161
    .line 162
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;->label:I

    .line 163
    .line 164
    if-eqz p2, :cond_a

    .line 165
    .line 166
    if-ne p2, v4, :cond_9

    .line 167
    .line 168
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_9
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 180
    .line 181
    const/16 p2, 0xf

    .line 182
    .line 183
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 184
    .line 185
    .line 186
    iput v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$1;->label:I

    .line 187
    .line 188
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-ne p0, v7, :cond_b

    .line 193
    .line 194
    move-object v1, v7

    .line 195
    goto :goto_8

    .line 196
    :cond_b
    :goto_7
    move-object v1, v5

    .line 197
    :goto_8
    return-object v1

    .line 198
    :pswitch_2
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    move-object v0, p2

    .line 203
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;

    .line 204
    .line 205
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;->label:I

    .line 206
    .line 207
    and-int v9, v8, v3

    .line 208
    .line 209
    if-eqz v9, :cond_c

    .line 210
    .line 211
    sub-int/2addr v8, v3

    .line 212
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;->label:I

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_c
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;

    .line 216
    .line 217
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 218
    .line 219
    .line 220
    :goto_9
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 221
    .line 222
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;->label:I

    .line 223
    .line 224
    if-eqz p2, :cond_e

    .line 225
    .line 226
    if-ne p2, v4, :cond_d

    .line 227
    .line 228
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto :goto_a

    .line 232
    :cond_d
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 240
    .line 241
    const/16 p2, 0xe

    .line 242
    .line 243
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 244
    .line 245
    .line 246
    iput v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$1;->label:I

    .line 247
    .line 248
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    if-ne p0, v7, :cond_f

    .line 253
    .line 254
    move-object v1, v7

    .line 255
    goto :goto_b

    .line 256
    :cond_f
    :goto_a
    move-object v1, v5

    .line 257
    :goto_b
    return-object v1

    .line 258
    :pswitch_3
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;

    .line 259
    .line 260
    if-eqz v0, :cond_10

    .line 261
    .line 262
    move-object v0, p2

    .line 263
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;

    .line 264
    .line 265
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;->label:I

    .line 266
    .line 267
    and-int v9, v8, v3

    .line 268
    .line 269
    if-eqz v9, :cond_10

    .line 270
    .line 271
    sub-int/2addr v8, v3

    .line 272
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;->label:I

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_10
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;

    .line 276
    .line 277
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 278
    .line 279
    .line 280
    :goto_c
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 281
    .line 282
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;->label:I

    .line 283
    .line 284
    if-eqz p2, :cond_12

    .line 285
    .line 286
    if-ne p2, v4, :cond_11

    .line 287
    .line 288
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_d

    .line 292
    :cond_11
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_e

    .line 296
    :cond_12
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 300
    .line 301
    const/16 p2, 0xc

    .line 302
    .line 303
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 304
    .line 305
    .line 306
    iput v4, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$1;->label:I

    .line 307
    .line 308
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    if-ne p0, v7, :cond_13

    .line 313
    .line 314
    move-object v1, v7

    .line 315
    goto :goto_e

    .line 316
    :cond_13
    :goto_d
    move-object v1, v5

    .line 317
    :goto_e
    return-object v1

    .line 318
    :pswitch_4
    instance-of v0, p2, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;

    .line 319
    .line 320
    if-eqz v0, :cond_14

    .line 321
    .line 322
    move-object v0, p2

    .line 323
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;

    .line 324
    .line 325
    iget v8, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;->label:I

    .line 326
    .line 327
    and-int v9, v8, v3

    .line 328
    .line 329
    if-eqz v9, :cond_14

    .line 330
    .line 331
    sub-int/2addr v8, v3

    .line 332
    iput v8, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;->label:I

    .line 333
    .line 334
    goto :goto_f

    .line 335
    :cond_14
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;

    .line 336
    .line 337
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 338
    .line 339
    .line 340
    :goto_f
    iget-object p0, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 341
    .line 342
    iget p2, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;->label:I

    .line 343
    .line 344
    if-eqz p2, :cond_16

    .line 345
    .line 346
    if-ne p2, v4, :cond_15

    .line 347
    .line 348
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto :goto_10

    .line 352
    :cond_15
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_11

    .line 356
    :cond_16
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 360
    .line 361
    const/16 p2, 0xb

    .line 362
    .line 363
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 364
    .line 365
    .line 366
    iput v4, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$1;->label:I

    .line 367
    .line 368
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    if-ne p0, v7, :cond_17

    .line 373
    .line 374
    move-object v1, v7

    .line 375
    goto :goto_11

    .line 376
    :cond_17
    :goto_10
    move-object v1, v5

    .line 377
    :goto_11
    return-object v1

    .line 378
    :pswitch_5
    instance-of v0, p2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;

    .line 379
    .line 380
    if-eqz v0, :cond_18

    .line 381
    .line 382
    move-object v0, p2

    .line 383
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;

    .line 384
    .line 385
    iget v8, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;->label:I

    .line 386
    .line 387
    and-int v9, v8, v3

    .line 388
    .line 389
    if-eqz v9, :cond_18

    .line 390
    .line 391
    sub-int/2addr v8, v3

    .line 392
    iput v8, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;->label:I

    .line 393
    .line 394
    goto :goto_12

    .line 395
    :cond_18
    new-instance v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;

    .line 396
    .line 397
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 398
    .line 399
    .line 400
    :goto_12
    iget-object p0, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 401
    .line 402
    iget p2, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;->label:I

    .line 403
    .line 404
    if-eqz p2, :cond_1a

    .line 405
    .line 406
    if-ne p2, v4, :cond_19

    .line 407
    .line 408
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    goto :goto_13

    .line 412
    :cond_19
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto :goto_14

    .line 416
    :cond_1a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 420
    .line 421
    const/16 p2, 0xa

    .line 422
    .line 423
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 424
    .line 425
    .line 426
    iput v4, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$1;->label:I

    .line 427
    .line 428
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    if-ne p0, v7, :cond_1b

    .line 433
    .line 434
    move-object v1, v7

    .line 435
    goto :goto_14

    .line 436
    :cond_1b
    :goto_13
    move-object v1, v5

    .line 437
    :goto_14
    return-object v1

    .line 438
    :pswitch_6
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 439
    .line 440
    const/16 v0, 0x9

    .line 441
    .line 442
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v6, p0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    if-ne p0, v7, :cond_1c

    .line 450
    .line 451
    move-object v5, p0

    .line 452
    :cond_1c
    return-object v5

    .line 453
    :pswitch_7
    instance-of v0, p2, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;

    .line 454
    .line 455
    if-eqz v0, :cond_1d

    .line 456
    .line 457
    move-object v0, p2

    .line 458
    check-cast v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;

    .line 459
    .line 460
    iget v8, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;->label:I

    .line 461
    .line 462
    and-int v9, v8, v3

    .line 463
    .line 464
    if-eqz v9, :cond_1d

    .line 465
    .line 466
    sub-int/2addr v8, v3

    .line 467
    iput v8, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;->label:I

    .line 468
    .line 469
    goto :goto_15

    .line 470
    :cond_1d
    new-instance v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;

    .line 471
    .line 472
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;Lkotlin/coroutines/Continuation;)V

    .line 473
    .line 474
    .line 475
    :goto_15
    iget-object p0, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 476
    .line 477
    iget p2, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;->label:I

    .line 478
    .line 479
    if-eqz p2, :cond_1f

    .line 480
    .line 481
    if-ne p2, v4, :cond_1e

    .line 482
    .line 483
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    goto :goto_16

    .line 487
    :cond_1e
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    goto :goto_17

    .line 491
    :cond_1f
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 495
    .line 496
    const/4 p2, 0x7

    .line 497
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 498
    .line 499
    .line 500
    iput v4, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$1;->label:I

    .line 501
    .line 502
    invoke-interface {v6, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    if-ne p0, v7, :cond_20

    .line 507
    .line 508
    move-object v1, v7

    .line 509
    goto :goto_17

    .line 510
    :cond_20
    :goto_16
    move-object v1, v5

    .line 511
    :goto_17
    return-object v1

    .line 512
    :pswitch_8
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;

    .line 513
    .line 514
    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 515
    .line 516
    .line 517
    invoke-interface {v6, p0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    if-ne p0, v7, :cond_21

    .line 522
    .line 523
    move-object v5, p0

    .line 524
    :cond_21
    return-object v5

    .line 525
    :pswitch_9
    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 526
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    .line 529
    .line 530
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 531
    .line 532
    const/4 v1, 0x0

    .line 533
    invoke-direct {v0, v1, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    invoke-interface {v6, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    if-ne p0, v7, :cond_22

    .line 541
    .line 542
    move-object v5, p0

    .line 543
    :cond_22
    return-object v5

    .line 544
    nop

    .line 545
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
