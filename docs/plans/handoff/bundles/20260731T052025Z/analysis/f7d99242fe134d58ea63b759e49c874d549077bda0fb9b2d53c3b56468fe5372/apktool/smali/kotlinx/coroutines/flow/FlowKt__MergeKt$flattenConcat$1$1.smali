.class public final Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_flow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->$this_flow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->$this_flow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;

    .line 24
    .line 25
    iget v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 26
    .line 27
    and-int v9, v8, v5

    .line 28
    .line 29
    if-eqz v9, :cond_0

    .line 30
    .line 31
    sub-int/2addr v8, v5

    .line 32
    iput v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;

    .line 36
    .line 37
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 41
    .line 42
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    if-ne p2, v6, :cond_1

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v1, v7

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    check-cast p1, Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/Iterable;

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    instance-of v3, p2, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iput v6, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultSystemNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 100
    .line 101
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, v4, :cond_5

    .line 106
    .line 107
    move-object v1, v4

    .line 108
    :cond_5
    :goto_2
    return-object v1

    .line 109
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    move-object v0, p2

    .line 114
    check-cast v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;

    .line 115
    .line 116
    iget v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 117
    .line 118
    and-int v9, v8, v5

    .line 119
    .line 120
    if-eqz v9, :cond_6

    .line 121
    .line 122
    sub-int/2addr v8, v5

    .line 123
    iput v8, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    new-instance v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;

    .line 127
    .line 128
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    :goto_3
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 132
    .line 133
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 134
    .line 135
    if-eqz p2, :cond_8

    .line 136
    .line 137
    if-ne p2, v6, :cond_7

    .line 138
    .line 139
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move-object v1, v7

    .line 147
    goto :goto_5

    .line 148
    :cond_8
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    check-cast p1, Ljava/util/Map;

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/Iterable;

    .line 158
    .line 159
    new-instance p1, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_a

    .line 173
    .line 174
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    instance-of v3, p2, Lnet/thunderbird/feature/notification/api/content/InAppNotification;

    .line 179
    .line 180
    if-eqz v3, :cond_9

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_a
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    iput v6, v0, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream$special$$inlined$map$1$2$1;->label:I

    .line 191
    .line 192
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    if-ne p0, v4, :cond_b

    .line 197
    .line 198
    move-object v1, v4

    .line 199
    :cond_b
    :goto_5
    return-object v1

    .line 200
    :pswitch_1
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;

    .line 201
    .line 202
    if-eqz v0, :cond_c

    .line 203
    .line 204
    move-object v0, p2

    .line 205
    check-cast v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;

    .line 206
    .line 207
    iget v8, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;->label:I

    .line 208
    .line 209
    and-int v9, v8, v5

    .line 210
    .line 211
    if-eqz v9, :cond_c

    .line 212
    .line 213
    sub-int/2addr v8, v5

    .line 214
    iput v8, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;->label:I

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_c
    new-instance v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;

    .line 218
    .line 219
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 220
    .line 221
    .line 222
    :goto_6
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 223
    .line 224
    iget p2, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;->label:I

    .line 225
    .line 226
    if-eqz p2, :cond_e

    .line 227
    .line 228
    if-ne p2, v6, :cond_d

    .line 229
    .line 230
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move-object v1, v7

    .line 238
    goto :goto_7

    .line 239
    :cond_e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    check-cast p1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 243
    .line 244
    iget-object p0, p1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byId:Ljava/util/Map;

    .line 245
    .line 246
    iput v6, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$special$$inlined$map$1$2$1;->label:I

    .line 247
    .line 248
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    if-ne p0, v4, :cond_f

    .line 253
    .line 254
    move-object v1, v4

    .line 255
    :cond_f
    :goto_7
    return-object v1

    .line 256
    :pswitch_2
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;

    .line 257
    .line 258
    if-eqz v0, :cond_10

    .line 259
    .line 260
    move-object v0, p2

    .line 261
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;

    .line 262
    .line 263
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;->label:I

    .line 264
    .line 265
    and-int v9, v8, v5

    .line 266
    .line 267
    if-eqz v9, :cond_10

    .line 268
    .line 269
    sub-int/2addr v8, v5

    .line 270
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;->label:I

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_10
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;

    .line 274
    .line 275
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 276
    .line 277
    .line 278
    :goto_8
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 279
    .line 280
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;->label:I

    .line 281
    .line 282
    if-eqz p2, :cond_12

    .line 283
    .line 284
    if-ne p2, v6, :cond_11

    .line 285
    .line 286
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_11
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-object v1, v7

    .line 294
    goto :goto_9

    .line 295
    :cond_12
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 299
    .line 300
    iget-object p0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 301
    .line 302
    iput v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadFolders$$inlined$map$1$2$1;->label:I

    .line 303
    .line 304
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    if-ne p0, v4, :cond_13

    .line 309
    .line 310
    move-object v1, v4

    .line 311
    :cond_13
    :goto_9
    return-object v1

    .line 312
    :pswitch_3
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;

    .line 313
    .line 314
    if-eqz v0, :cond_14

    .line 315
    .line 316
    move-object v0, p2

    .line 317
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;

    .line 318
    .line 319
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;->label:I

    .line 320
    .line 321
    and-int v9, v8, v5

    .line 322
    .line 323
    if-eqz v9, :cond_14

    .line 324
    .line 325
    sub-int/2addr v8, v5

    .line 326
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;->label:I

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :cond_14
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;

    .line 330
    .line 331
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 332
    .line 333
    .line 334
    :goto_a
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 335
    .line 336
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;->label:I

    .line 337
    .line 338
    if-eqz p2, :cond_16

    .line 339
    .line 340
    if-ne p2, v6, :cond_15

    .line 341
    .line 342
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_15
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    move-object v1, v7

    .line 350
    goto :goto_b

    .line 351
    :cond_16
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 355
    .line 356
    iget-object p0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 357
    .line 358
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->showUnifiedFolders:Z

    .line 359
    .line 360
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    iput v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel$loadAccounts$$inlined$map$1$2$1;->label:I

    .line 365
    .line 366
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    if-ne p0, v4, :cond_17

    .line 371
    .line 372
    move-object v1, v4

    .line 373
    :cond_17
    :goto_b
    return-object v1

    .line 374
    :pswitch_4
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;

    .line 375
    .line 376
    if-eqz v0, :cond_18

    .line 377
    .line 378
    move-object v0, p2

    .line 379
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;

    .line 380
    .line 381
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;->label:I

    .line 382
    .line 383
    and-int v9, v8, v5

    .line 384
    .line 385
    if-eqz v9, :cond_18

    .line 386
    .line 387
    sub-int/2addr v8, v5

    .line 388
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;->label:I

    .line 389
    .line 390
    goto :goto_c

    .line 391
    :cond_18
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;

    .line 392
    .line 393
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 394
    .line 395
    .line 396
    :goto_c
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 397
    .line 398
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;->label:I

    .line 399
    .line 400
    if-eqz p2, :cond_1a

    .line 401
    .line 402
    if-ne p2, v6, :cond_19

    .line 403
    .line 404
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_19
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    move-object v1, v7

    .line 412
    goto :goto_d

    .line 413
    :cond_1a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 417
    .line 418
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    iput v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayFoldersForAccount$invoke$$inlined$map$1$2$1;->label:I

    .line 423
    .line 424
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    if-ne p0, v4, :cond_1b

    .line 429
    .line 430
    move-object v1, v4

    .line 431
    :cond_1b
    :goto_d
    return-object v1

    .line 432
    :pswitch_5
    instance-of v0, p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;

    .line 433
    .line 434
    if-eqz v0, :cond_1c

    .line 435
    .line 436
    move-object v0, p2

    .line 437
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;

    .line 438
    .line 439
    iget v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;->label:I

    .line 440
    .line 441
    and-int v9, v8, v5

    .line 442
    .line 443
    if-eqz v9, :cond_1c

    .line 444
    .line 445
    sub-int/2addr v8, v5

    .line 446
    iput v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;->label:I

    .line 447
    .line 448
    goto :goto_e

    .line 449
    :cond_1c
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;

    .line 450
    .line 451
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 452
    .line 453
    .line 454
    :goto_e
    iget-object p0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 455
    .line 456
    iget p2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;->label:I

    .line 457
    .line 458
    if-eqz p2, :cond_1e

    .line 459
    .line 460
    if-ne p2, v6, :cond_1d

    .line 461
    .line 462
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_1d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    move-object v1, v7

    .line 470
    goto :goto_f

    .line 471
    :cond_1e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    check-cast p1, Lapp/k9mail/legacy/message/controller/MessageCounts;

    .line 475
    .line 476
    new-instance p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 477
    .line 478
    iget p2, p1, Lapp/k9mail/legacy/message/controller/MessageCounts;->unread:I

    .line 479
    .line 480
    iget p1, p1, Lapp/k9mail/legacy/message/controller/MessageCounts;->starred:I

    .line 481
    .line 482
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;-><init>(II)V

    .line 483
    .line 484
    .line 485
    iput v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/data/UnifiedFolderRepository$getUnifiedDisplayFolderFlow$$inlined$map$1$2$1;->label:I

    .line 486
    .line 487
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    if-ne p0, v4, :cond_1f

    .line 492
    .line 493
    move-object v1, v4

    .line 494
    :cond_1f
    :goto_f
    return-object v1

    .line 495
    :pswitch_6
    instance-of v0, p2, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;

    .line 496
    .line 497
    if-eqz v0, :cond_20

    .line 498
    .line 499
    move-object v0, p2

    .line 500
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;

    .line 501
    .line 502
    iget v8, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;->label:I

    .line 503
    .line 504
    and-int v9, v8, v5

    .line 505
    .line 506
    if-eqz v9, :cond_20

    .line 507
    .line 508
    sub-int/2addr v8, v5

    .line 509
    iput v8, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;->label:I

    .line 510
    .line 511
    goto :goto_10

    .line 512
    :cond_20
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;

    .line 513
    .line 514
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 515
    .line 516
    .line 517
    :goto_10
    iget-object p0, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 518
    .line 519
    iget p2, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;->label:I

    .line 520
    .line 521
    if-eqz p2, :cond_22

    .line 522
    .line 523
    if-ne p2, v6, :cond_21

    .line 524
    .line 525
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    goto :goto_11

    .line 529
    :cond_21
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move-object v1, v7

    .line 533
    goto :goto_11

    .line 534
    :cond_22
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 538
    .line 539
    iget-object p0, p1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 540
    .line 541
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->miscSettings:Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 542
    .line 543
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;->showRecentChanges:Z

    .line 544
    .line 545
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    iput v6, v0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel$getShowRecentChangesFlow$$inlined$map$1$2$1;->label:I

    .line 550
    .line 551
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    if-ne p0, v4, :cond_23

    .line 556
    .line 557
    move-object v1, v4

    .line 558
    :cond_23
    :goto_11
    return-object v1

    .line 559
    :pswitch_7
    instance-of v0, p2, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;

    .line 560
    .line 561
    if-eqz v0, :cond_24

    .line 562
    .line 563
    move-object v0, p2

    .line 564
    check-cast v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;

    .line 565
    .line 566
    iget v8, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;->label:I

    .line 567
    .line 568
    and-int v9, v8, v5

    .line 569
    .line 570
    if-eqz v9, :cond_24

    .line 571
    .line 572
    sub-int/2addr v8, v5

    .line 573
    iput v8, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;->label:I

    .line 574
    .line 575
    goto :goto_12

    .line 576
    :cond_24
    new-instance v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;

    .line 577
    .line 578
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 579
    .line 580
    .line 581
    :goto_12
    iget-object p0, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 582
    .line 583
    iget p2, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;->label:I

    .line 584
    .line 585
    if-eqz p2, :cond_26

    .line 586
    .line 587
    if-ne p2, v6, :cond_25

    .line 588
    .line 589
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    goto :goto_13

    .line 593
    :cond_25
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    move-object v1, v7

    .line 597
    goto :goto_13

    .line 598
    :cond_26
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 602
    .line 603
    iget-object p0, p1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 604
    .line 605
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 606
    .line 607
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 608
    .line 609
    iput v6, v0, Lnet/thunderbird/core/ui/theme/manager/ThemeManager$init$$inlined$map$1$2$1;->label:I

    .line 610
    .line 611
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    if-ne p0, v4, :cond_27

    .line 616
    .line 617
    move-object v1, v4

    .line 618
    :cond_27
    :goto_13
    return-object v1

    .line 619
    :pswitch_8
    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 620
    .line 621
    if-eqz v0, :cond_28

    .line 622
    .line 623
    move-object v0, p2

    .line 624
    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 625
    .line 626
    iget v8, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 627
    .line 628
    and-int v9, v8, v5

    .line 629
    .line 630
    if-eqz v9, :cond_28

    .line 631
    .line 632
    sub-int/2addr v8, v5

    .line 633
    iput v8, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 634
    .line 635
    goto :goto_14

    .line 636
    :cond_28
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 637
    .line 638
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 639
    .line 640
    .line 641
    :goto_14
    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->result:Ljava/lang/Object;

    .line 642
    .line 643
    iget p2, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 644
    .line 645
    if-eqz p2, :cond_2a

    .line 646
    .line 647
    if-ne p2, v6, :cond_29

    .line 648
    .line 649
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    goto :goto_15

    .line 653
    :cond_29
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    move-object v1, v7

    .line 657
    goto :goto_15

    .line 658
    :cond_2a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    if-eqz p1, :cond_2b

    .line 662
    .line 663
    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 664
    .line 665
    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object p0

    .line 669
    if-ne p0, v4, :cond_2b

    .line 670
    .line 671
    move-object v1, v4

    .line 672
    :cond_2b
    :goto_15
    return-object v1

    .line 673
    :pswitch_9
    instance-of v0, p2, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;

    .line 674
    .line 675
    if-eqz v0, :cond_2c

    .line 676
    .line 677
    move-object v0, p2

    .line 678
    check-cast v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;

    .line 679
    .line 680
    iget v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;->label:I

    .line 681
    .line 682
    and-int v9, v8, v5

    .line 683
    .line 684
    if-eqz v9, :cond_2c

    .line 685
    .line 686
    sub-int/2addr v8, v5

    .line 687
    iput v8, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;->label:I

    .line 688
    .line 689
    goto :goto_16

    .line 690
    :cond_2c
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;

    .line 691
    .line 692
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 693
    .line 694
    .line 695
    :goto_16
    iget-object p0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 696
    .line 697
    iget p2, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;->label:I

    .line 698
    .line 699
    if-eqz p2, :cond_2e

    .line 700
    .line 701
    if-ne p2, v6, :cond_2d

    .line 702
    .line 703
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    goto :goto_17

    .line 707
    :cond_2d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    move-object v1, v7

    .line 711
    goto :goto_17

    .line 712
    :cond_2e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 713
    .line 714
    .line 715
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 716
    .line 717
    iget-object p0, p1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 718
    .line 719
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 720
    .line 721
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 722
    .line 723
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 724
    .line 725
    .line 726
    move-result-object p0

    .line 727
    iput v6, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$$inlined$map$1$2$1;->label:I

    .line 728
    .line 729
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    if-ne p0, v4, :cond_2f

    .line 734
    .line 735
    move-object v1, v4

    .line 736
    :cond_2f
    :goto_17
    return-object v1

    .line 737
    :pswitch_a
    instance-of v0, p2, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;

    .line 738
    .line 739
    if-eqz v0, :cond_30

    .line 740
    .line 741
    move-object v0, p2

    .line 742
    check-cast v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;

    .line 743
    .line 744
    iget v8, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;->label:I

    .line 745
    .line 746
    and-int v9, v8, v5

    .line 747
    .line 748
    if-eqz v9, :cond_30

    .line 749
    .line 750
    sub-int/2addr v8, v5

    .line 751
    iput v8, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;->label:I

    .line 752
    .line 753
    goto :goto_18

    .line 754
    :cond_30
    new-instance v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;

    .line 755
    .line 756
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 757
    .line 758
    .line 759
    :goto_18
    iget-object p0, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 760
    .line 761
    iget p2, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;->label:I

    .line 762
    .line 763
    if-eqz p2, :cond_32

    .line 764
    .line 765
    if-ne p2, v6, :cond_31

    .line 766
    .line 767
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    goto :goto_19

    .line 771
    :cond_31
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    move-object v1, v7

    .line 775
    goto :goto_19

    .line 776
    :cond_32
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 780
    .line 781
    iget-object p0, p1, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 782
    .line 783
    iget-object p0, p0, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 784
    .line 785
    iput v6, v0, Lcom/fsck/k9/controller/push/PushController$listenForBackgroundSyncChanges$$inlined$map$1$2$1;->label:I

    .line 786
    .line 787
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object p0

    .line 791
    if-ne p0, v4, :cond_33

    .line 792
    .line 793
    move-object v1, v4

    .line 794
    :cond_33
    :goto_19
    return-object v1

    .line 795
    :pswitch_b
    instance-of v0, p2, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;

    .line 796
    .line 797
    if-eqz v0, :cond_34

    .line 798
    .line 799
    move-object v0, p2

    .line 800
    check-cast v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;

    .line 801
    .line 802
    iget v8, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;->label:I

    .line 803
    .line 804
    and-int v9, v8, v5

    .line 805
    .line 806
    if-eqz v9, :cond_34

    .line 807
    .line 808
    sub-int/2addr v8, v5

    .line 809
    iput v8, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;->label:I

    .line 810
    .line 811
    goto :goto_1a

    .line 812
    :cond_34
    new-instance v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;

    .line 813
    .line 814
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 815
    .line 816
    .line 817
    :goto_1a
    iget-object p0, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 818
    .line 819
    iget p2, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;->label:I

    .line 820
    .line 821
    if-eqz p2, :cond_36

    .line 822
    .line 823
    if-ne p2, v6, :cond_35

    .line 824
    .line 825
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    goto :goto_1b

    .line 829
    :cond_35
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    move-object v1, v7

    .line 833
    goto :goto_1b

    .line 834
    :cond_36
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 838
    .line 839
    iget p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->idleRefreshMinutes:I

    .line 840
    .line 841
    new-instance p1, Ljava/lang/Integer;

    .line 842
    .line 843
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 844
    .line 845
    .line 846
    iput v6, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$2$1;->label:I

    .line 847
    .line 848
    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    if-ne p0, v4, :cond_37

    .line 853
    .line 854
    move-object v1, v4

    .line 855
    :cond_37
    :goto_1b
    return-object v1

    .line 856
    :pswitch_c
    instance-of v0, p2, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;

    .line 857
    .line 858
    if-eqz v0, :cond_38

    .line 859
    .line 860
    move-object v0, p2

    .line 861
    check-cast v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;

    .line 862
    .line 863
    iget v8, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;->label:I

    .line 864
    .line 865
    and-int v9, v8, v5

    .line 866
    .line 867
    if-eqz v9, :cond_38

    .line 868
    .line 869
    sub-int/2addr v8, v5

    .line 870
    iput v8, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;->label:I

    .line 871
    .line 872
    goto :goto_1c

    .line 873
    :cond_38
    new-instance v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;

    .line 874
    .line 875
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 876
    .line 877
    .line 878
    :goto_1c
    iget-object p0, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 879
    .line 880
    iget p2, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;->label:I

    .line 881
    .line 882
    if-eqz p2, :cond_3a

    .line 883
    .line 884
    if-ne p2, v6, :cond_39

    .line 885
    .line 886
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    goto :goto_1d

    .line 890
    :cond_39
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    move-object v1, v7

    .line 894
    goto :goto_1d

    .line 895
    :cond_3a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 896
    .line 897
    .line 898
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 899
    .line 900
    iget p0, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->maxPushFolders:I

    .line 901
    .line 902
    new-instance p1, Ljava/lang/Integer;

    .line 903
    .line 904
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 905
    .line 906
    .line 907
    iput v6, v0, Lcom/fsck/k9/backends/DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1$2$1;->label:I

    .line 908
    .line 909
    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object p0

    .line 913
    if-ne p0, v4, :cond_3b

    .line 914
    .line 915
    move-object v1, v4

    .line 916
    :cond_3b
    :goto_1d
    return-object v1

    .line 917
    :pswitch_d
    instance-of v0, p2, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 918
    .line 919
    if-eqz v0, :cond_3c

    .line 920
    .line 921
    move-object v0, p2

    .line 922
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 923
    .line 924
    iget v8, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 925
    .line 926
    and-int v9, v8, v5

    .line 927
    .line 928
    if-eqz v9, :cond_3c

    .line 929
    .line 930
    sub-int/2addr v8, v5

    .line 931
    iput v8, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 932
    .line 933
    goto :goto_1e

    .line 934
    :cond_3c
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 935
    .line 936
    invoke-direct {v0, p0, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 937
    .line 938
    .line 939
    :goto_1e
    iget-object p0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->result:Ljava/lang/Object;

    .line 940
    .line 941
    iget p2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 942
    .line 943
    if-eqz p2, :cond_3e

    .line 944
    .line 945
    if-ne p2, v6, :cond_3d

    .line 946
    .line 947
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    goto :goto_1f

    .line 951
    :cond_3d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    move-object v1, v7

    .line 955
    goto :goto_1f

    .line 956
    :cond_3e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 957
    .line 958
    .line 959
    instance-of p0, p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 960
    .line 961
    if-eqz p0, :cond_3f

    .line 962
    .line 963
    iput v6, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 964
    .line 965
    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object p0

    .line 969
    if-ne p0, v4, :cond_3f

    .line 970
    .line 971
    move-object v1, v4

    .line 972
    :cond_3f
    :goto_1f
    return-object v1

    .line 973
    :pswitch_e
    instance-of v0, p2, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;

    .line 974
    .line 975
    if-eqz v0, :cond_40

    .line 976
    .line 977
    move-object v0, p2

    .line 978
    check-cast v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;

    .line 979
    .line 980
    iget v8, v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;->label:I

    .line 981
    .line 982
    and-int v9, v8, v5

    .line 983
    .line 984
    if-eqz v9, :cond_40

    .line 985
    .line 986
    sub-int/2addr v8, v5

    .line 987
    iput v8, v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;->label:I

    .line 988
    .line 989
    goto :goto_20

    .line 990
    :cond_40
    new-instance v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;

    .line 991
    .line 992
    invoke-direct {v0, p0, p2}, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 993
    .line 994
    .line 995
    :goto_20
    iget-object p0, v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 996
    .line 997
    iget p2, v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;->label:I

    .line 998
    .line 999
    if-eqz p2, :cond_42

    .line 1000
    .line 1001
    if-ne p2, v6, :cond_41

    .line 1002
    .line 1003
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_21

    .line 1007
    :cond_41
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    move-object v1, v7

    .line 1011
    goto :goto_21

    .line 1012
    :cond_42
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1013
    .line 1014
    .line 1015
    check-cast p1, Ljava/util/List;

    .line 1016
    .line 1017
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p0

    .line 1021
    check-cast p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 1022
    .line 1023
    if-eqz p0, :cond_43

    .line 1024
    .line 1025
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Landroidx/work/WorkInfo;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v7

    .line 1029
    :cond_43
    iput v6, v0, Landroidx/work/impl/model/WorkSpecDaoKt$getWorkStatusPojoFlowDataForIds$$inlined$map$1$2$1;->label:I

    .line 1030
    .line 1031
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    move-result-object p0

    .line 1035
    if-ne p0, v4, :cond_44

    .line 1036
    .line 1037
    move-object v1, v4

    .line 1038
    :cond_44
    :goto_21
    return-object v1

    .line 1039
    :pswitch_f
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 1040
    .line 1041
    if-eqz v0, :cond_45

    .line 1042
    .line 1043
    move-object v0, p2

    .line 1044
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 1045
    .line 1046
    iget v8, v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 1047
    .line 1048
    and-int v9, v8, v5

    .line 1049
    .line 1050
    if-eqz v9, :cond_45

    .line 1051
    .line 1052
    sub-int/2addr v8, v5

    .line 1053
    iput v8, v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 1054
    .line 1055
    goto :goto_22

    .line 1056
    :cond_45
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 1057
    .line 1058
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 1059
    .line 1060
    .line 1061
    :goto_22
    iget-object p0, v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 1062
    .line 1063
    iget p2, v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 1064
    .line 1065
    if-eqz p2, :cond_47

    .line 1066
    .line 1067
    if-ne p2, v6, :cond_46

    .line 1068
    .line 1069
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1070
    .line 1071
    .line 1072
    goto :goto_25

    .line 1073
    :cond_46
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    :goto_23
    move-object v1, v7

    .line 1077
    goto :goto_25

    .line 1078
    :cond_47
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    check-cast p1, Landroidx/datastore/core/State;

    .line 1082
    .line 1083
    instance-of p0, p1, Landroidx/datastore/core/ReadException;

    .line 1084
    .line 1085
    if-nez p0, :cond_4c

    .line 1086
    .line 1087
    instance-of p0, p1, Landroidx/datastore/core/Data;

    .line 1088
    .line 1089
    if-eqz p0, :cond_48

    .line 1090
    .line 1091
    check-cast p1, Landroidx/datastore/core/Data;

    .line 1092
    .line 1093
    iget-object p0, p1, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 1094
    .line 1095
    iput v6, v0, Landroidx/datastore/core/DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 1096
    .line 1097
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object p0

    .line 1101
    if-ne p0, v4, :cond_4b

    .line 1102
    .line 1103
    move-object v1, v4

    .line 1104
    goto :goto_25

    .line 1105
    :cond_48
    instance-of p0, p1, Landroidx/datastore/core/Final;

    .line 1106
    .line 1107
    if-nez p0, :cond_4a

    .line 1108
    .line 1109
    instance-of p0, p1, Landroidx/datastore/core/UnInitialized;

    .line 1110
    .line 1111
    if-nez p0, :cond_4a

    .line 1112
    .line 1113
    instance-of p0, p1, Landroidx/datastore/core/NoValueDataState;

    .line 1114
    .line 1115
    if-eqz p0, :cond_49

    .line 1116
    .line 1117
    goto :goto_24

    .line 1118
    :cond_49
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_23

    .line 1122
    :cond_4a
    :goto_24
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 1123
    .line 1124
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_23

    .line 1128
    :cond_4b
    :goto_25
    return-object v1

    .line 1129
    :cond_4c
    check-cast p1, Landroidx/datastore/core/ReadException;

    .line 1130
    .line 1131
    iget-object p0, p1, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    .line 1132
    .line 1133
    throw p0

    .line 1134
    :pswitch_10
    instance-of v0, p2, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;

    .line 1135
    .line 1136
    if-eqz v0, :cond_4d

    .line 1137
    .line 1138
    move-object v0, p2

    .line 1139
    check-cast v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;

    .line 1140
    .line 1141
    iget v8, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;->label:I

    .line 1142
    .line 1143
    and-int v9, v8, v5

    .line 1144
    .line 1145
    if-eqz v9, :cond_4d

    .line 1146
    .line 1147
    sub-int/2addr v8, v5

    .line 1148
    iput v8, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;->label:I

    .line 1149
    .line 1150
    goto :goto_26

    .line 1151
    :cond_4d
    new-instance v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;

    .line 1152
    .line 1153
    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    .line 1154
    .line 1155
    .line 1156
    :goto_26
    iget-object p0, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 1157
    .line 1158
    iget p2, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;->label:I

    .line 1159
    .line 1160
    if-eqz p2, :cond_4f

    .line 1161
    .line 1162
    if-ne p2, v6, :cond_4e

    .line 1163
    .line 1164
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_29

    .line 1168
    :cond_4e
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    move-object v1, v7

    .line 1172
    goto :goto_29

    .line 1173
    :cond_4f
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1174
    .line 1175
    .line 1176
    check-cast p1, Ljava/util/List;

    .line 1177
    .line 1178
    new-instance p0, Ljava/util/ArrayList;

    .line 1179
    .line 1180
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .line 1182
    .line 1183
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p1

    .line 1187
    :cond_50
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1188
    .line 1189
    .line 1190
    move-result p2

    .line 1191
    if-eqz p2, :cond_51

    .line 1192
    .line 1193
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object p2

    .line 1197
    check-cast p2, Landroidx/camera/camera2/pipe/CameraId;

    .line 1198
    .line 1199
    iget-object p2, p2, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 1200
    .line 1201
    :try_start_0
    invoke-static {p2, v7, v7}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 1202
    .line 1203
    .line 1204
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    goto :goto_28

    .line 1206
    :catch_0
    move-exception v3

    .line 1207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    const-string v8, "Failed to create CameraIdentifier for pipeId: "

    .line 1210
    .line 1211
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object p2

    .line 1221
    const-string v5, "PipePresenceSrc"

    .line 1222
    .line 1223
    invoke-static {v5, p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1224
    .line 1225
    .line 1226
    move-object p2, v7

    .line 1227
    :goto_28
    if-eqz p2, :cond_50

    .line 1228
    .line 1229
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    goto :goto_27

    .line 1233
    :cond_51
    iput v6, v0, Landroidx/camera/camera2/adapter/PipeCameraPresenceSource$startMonitoring$$inlined$map$1$2$1;->label:I

    .line 1234
    .line 1235
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object p0

    .line 1239
    if-ne p0, v4, :cond_52

    .line 1240
    .line 1241
    move-object v1, v4

    .line 1242
    :cond_52
    :goto_29
    return-object v1

    .line 1243
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 1244
    .line 1245
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->emit(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object p0

    .line 1249
    return-object p0

    .line 1250
    nop

    .line 1251
    :pswitch_data_0
    .packed-switch 0x0
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

.method public emit(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;->result:Ljava/lang/Object;

    .line 1251
    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v2, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1$emit$1;->label:I

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$1$1;->$this_flow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
