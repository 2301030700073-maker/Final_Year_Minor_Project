.class public final Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

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
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 6
    .line 7
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v5, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/high16 v7, -0x80000000

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    instance-of v0, p2, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 26
    .line 27
    iget v1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 28
    .line 29
    and-int v2, v1, v7

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    sub-int/2addr v1, v7

    .line 34
    iput v1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    iget v1, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    if-ne v1, v8, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v4, v9

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object p0, p1

    .line 65
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 68
    .line 69
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 70
    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    iput v8, v0, Lorg/wikipedia/usercontrib/UserContribListActivity$onCreate$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 74
    .line 75
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, p2, :cond_3

    .line 80
    .line 81
    move-object v4, p2

    .line 82
    :cond_3
    :goto_1
    return-object v4

    .line 83
    :pswitch_0
    instance-of v0, p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    move-object v0, p2

    .line 88
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 89
    .line 90
    iget v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 91
    .line 92
    and-int v2, v1, v7

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    sub-int/2addr v1, v7

    .line 97
    iput v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 101
    .line 102
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    .line 106
    .line 107
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 108
    .line 109
    iget v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    if-ne v1, v8, :cond_5

    .line 114
    .line 115
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v4, v9

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object p0, p1

    .line 128
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 129
    .line 130
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 131
    .line 132
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    iput v8, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$onViewCreated$3$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 137
    .line 138
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-ne p0, p2, :cond_7

    .line 143
    .line 144
    move-object v4, p2

    .line 145
    :cond_7
    :goto_3
    return-object v4

    .line 146
    :pswitch_1
    instance-of v0, p2, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    move-object v0, p2

    .line 151
    check-cast v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;

    .line 152
    .line 153
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;->label:I

    .line 154
    .line 155
    and-int v2, v1, v7

    .line 156
    .line 157
    if-eqz v2, :cond_8

    .line 158
    .line 159
    sub-int/2addr v1, v7

    .line 160
    iput v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;->label:I

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;

    .line 164
    .line 165
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    iget-object p0, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 169
    .line 170
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 171
    .line 172
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;->label:I

    .line 173
    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    if-ne v1, v8, :cond_9

    .line 177
    .line 178
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_9
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    move-object v4, v9

    .line 186
    goto :goto_6

    .line 187
    :cond_a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 191
    .line 192
    sget-object p0, Lorg/wikipedia/settings/SettingsRepository;->hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 193
    .line 194
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    check-cast p0, Ljava/util/Set;

    .line 199
    .line 200
    if-nez p0, :cond_b

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_b
    move-object v3, p0

    .line 204
    :goto_5
    iput v8, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$2$2$1;->label:I

    .line 205
    .line 206
    invoke-interface {v5, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    if-ne p0, p2, :cond_c

    .line 211
    .line 212
    move-object v4, p2

    .line 213
    :cond_c
    :goto_6
    return-object v4

    .line 214
    :pswitch_2
    instance-of v0, p2, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    move-object v0, p2

    .line 219
    check-cast v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;

    .line 220
    .line 221
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    .line 222
    .line 223
    and-int v2, v1, v7

    .line 224
    .line 225
    if-eqz v2, :cond_d

    .line 226
    .line 227
    sub-int/2addr v1, v7

    .line 228
    iput v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_d
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;

    .line 232
    .line 233
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 234
    .line 235
    .line 236
    :goto_7
    iget-object p0, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 237
    .line 238
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 239
    .line 240
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    .line 241
    .line 242
    if-eqz v1, :cond_f

    .line 243
    .line 244
    if-ne v1, v8, :cond_e

    .line 245
    .line 246
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_e
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    move-object v4, v9

    .line 254
    goto :goto_9

    .line 255
    :cond_f
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 259
    .line 260
    sget-object p0, Lorg/wikipedia/settings/SettingsRepository;->hiddenModulesKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 261
    .line 262
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Ljava/util/Set;

    .line 267
    .line 268
    if-nez p0, :cond_10

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_10
    move-object v3, p0

    .line 272
    :goto_8
    iput v8, v0, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1$2$1;->label:I

    .line 273
    .line 274
    invoke-interface {v5, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    if-ne p0, p2, :cond_11

    .line 279
    .line 280
    move-object v4, p2

    .line 281
    :cond_11
    :goto_9
    return-object v4

    .line 282
    :pswitch_3
    instance-of v0, p2, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;

    .line 283
    .line 284
    if-eqz v0, :cond_12

    .line 285
    .line 286
    move-object v0, p2

    .line 287
    check-cast v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;

    .line 288
    .line 289
    iget v1, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;->label:I

    .line 290
    .line 291
    and-int v2, v1, v7

    .line 292
    .line 293
    if-eqz v2, :cond_12

    .line 294
    .line 295
    sub-int/2addr v1, v7

    .line 296
    iput v1, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;->label:I

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_12
    new-instance v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;

    .line 300
    .line 301
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 302
    .line 303
    .line 304
    :goto_a
    iget-object p0, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 305
    .line 306
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 307
    .line 308
    iget v1, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;->label:I

    .line 309
    .line 310
    if-eqz v1, :cond_14

    .line 311
    .line 312
    if-ne v1, v8, :cond_13

    .line 313
    .line 314
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_13
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    move-object v4, v9

    .line 322
    goto :goto_b

    .line 323
    :cond_14
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    check-cast p1, Ljava/lang/String;

    .line 327
    .line 328
    iput v8, v0, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$map$1$2$1;->label:I

    .line 329
    .line 330
    invoke-interface {v5, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    if-ne p0, p2, :cond_15

    .line 335
    .line 336
    move-object v4, p2

    .line 337
    :cond_15
    :goto_b
    return-object v4

    .line 338
    :pswitch_4
    instance-of v0, p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 339
    .line 340
    if-eqz v0, :cond_16

    .line 341
    .line 342
    move-object v0, p2

    .line 343
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 344
    .line 345
    iget v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 346
    .line 347
    and-int v2, v1, v7

    .line 348
    .line 349
    if-eqz v2, :cond_16

    .line 350
    .line 351
    sub-int/2addr v1, v7

    .line 352
    iput v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_16
    new-instance v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;

    .line 356
    .line 357
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 358
    .line 359
    .line 360
    :goto_c
    iget-object p0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    .line 361
    .line 362
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 363
    .line 364
    iget v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 365
    .line 366
    if-eqz v1, :cond_18

    .line 367
    .line 368
    if-ne v1, v8, :cond_17

    .line 369
    .line 370
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    goto :goto_d

    .line 374
    :cond_17
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    move-object v4, v9

    .line 378
    goto :goto_d

    .line 379
    :cond_18
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    move-object p0, p1

    .line 383
    check-cast p0, Landroidx/paging/CombinedLoadStates;

    .line 384
    .line 385
    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->refresh:Landroidx/paging/LoadState;

    .line 386
    .line 387
    instance-of p0, p0, Landroidx/paging/LoadState$NotLoading;

    .line 388
    .line 389
    if-eqz p0, :cond_19

    .line 390
    .line 391
    iput v8, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$onCreate$5$1$1$invokeSuspend$$inlined$filter$1$2$1;->label:I

    .line 392
    .line 393
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    if-ne p0, p2, :cond_19

    .line 398
    .line 399
    move-object v4, p2

    .line 400
    :cond_19
    :goto_d
    return-object v4

    .line 401
    :pswitch_5
    instance-of v0, p2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;

    .line 402
    .line 403
    if-eqz v0, :cond_1a

    .line 404
    .line 405
    move-object v0, p2

    .line 406
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;

    .line 407
    .line 408
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;->label:I

    .line 409
    .line 410
    and-int v2, v1, v7

    .line 411
    .line 412
    if-eqz v2, :cond_1a

    .line 413
    .line 414
    sub-int/2addr v1, v7

    .line 415
    iput v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;->label:I

    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_1a
    new-instance v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;

    .line 419
    .line 420
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 421
    .line 422
    .line 423
    :goto_e
    iget-object p0, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 424
    .line 425
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 426
    .line 427
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;->label:I

    .line 428
    .line 429
    if-eqz v1, :cond_1c

    .line 430
    .line 431
    if-ne v1, v8, :cond_1b

    .line 432
    .line 433
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_f

    .line 437
    :cond_1b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    move-object v4, v9

    .line 441
    goto :goto_f

    .line 442
    :cond_1c
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    check-cast p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 446
    .line 447
    invoke-virtual {p1}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->toFeedPreferenceUiState()Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceUiState;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    iput v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$2$2$1;->label:I

    .line 452
    .line 453
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    if-ne p0, p2, :cond_1d

    .line 458
    .line 459
    move-object v4, p2

    .line 460
    :cond_1d
    :goto_f
    return-object v4

    .line 461
    :pswitch_6
    instance-of v0, p2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;

    .line 462
    .line 463
    if-eqz v0, :cond_1e

    .line 464
    .line 465
    move-object v0, p2

    .line 466
    check-cast v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;

    .line 467
    .line 468
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;->label:I

    .line 469
    .line 470
    and-int v2, v1, v7

    .line 471
    .line 472
    if-eqz v2, :cond_1e

    .line 473
    .line 474
    sub-int/2addr v1, v7

    .line 475
    iput v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;->label:I

    .line 476
    .line 477
    goto :goto_10

    .line 478
    :cond_1e
    new-instance v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;

    .line 479
    .line 480
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 481
    .line 482
    .line 483
    :goto_10
    iget-object p0, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 484
    .line 485
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 486
    .line 487
    iget v1, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;->label:I

    .line 488
    .line 489
    if-eqz v1, :cond_20

    .line 490
    .line 491
    if-ne v1, v8, :cond_1f

    .line 492
    .line 493
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    goto :goto_11

    .line 497
    :cond_1f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    move-object v4, v9

    .line 501
    goto :goto_11

    .line 502
    :cond_20
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    check-cast p1, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;

    .line 506
    .line 507
    invoke-virtual {p1}, Lorg/wikipedia/feed/personalization/PersonalizedViewModelState;->toInterestUiState()Lorg/wikipedia/feed/personalization/interest/InterestUiState;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    iput v8, v0, Lorg/wikipedia/feed/personalization/PersonalizationViewModel$special$$inlined$map$1$2$1;->label:I

    .line 512
    .line 513
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object p0

    .line 517
    if-ne p0, p2, :cond_21

    .line 518
    .line 519
    move-object v4, p2

    .line 520
    :cond_21
    :goto_11
    return-object v4

    .line 521
    :pswitch_7
    instance-of v0, p2, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;

    .line 522
    .line 523
    if-eqz v0, :cond_22

    .line 524
    .line 525
    move-object v0, p2

    .line 526
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;

    .line 527
    .line 528
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;->label:I

    .line 529
    .line 530
    and-int v2, v1, v7

    .line 531
    .line 532
    if-eqz v2, :cond_22

    .line 533
    .line 534
    sub-int/2addr v1, v7

    .line 535
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;->label:I

    .line 536
    .line 537
    goto :goto_12

    .line 538
    :cond_22
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;

    .line 539
    .line 540
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 541
    .line 542
    .line 543
    :goto_12
    iget-object p0, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;->result:Ljava/lang/Object;

    .line 544
    .line 545
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 546
    .line 547
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;->label:I

    .line 548
    .line 549
    if-eqz v1, :cond_24

    .line 550
    .line 551
    if-ne v1, v8, :cond_23

    .line 552
    .line 553
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    goto :goto_13

    .line 557
    :cond_23
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    move-object v4, v9

    .line 561
    goto :goto_13

    .line 562
    :cond_24
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    instance-of p0, p1, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 566
    .line 567
    if-eqz p0, :cond_25

    .line 568
    .line 569
    iput v8, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$filterIsInstance$1$2$1;->label:I

    .line 570
    .line 571
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    if-ne p0, p2, :cond_25

    .line 576
    .line 577
    move-object v4, p2

    .line 578
    :cond_25
    :goto_13
    return-object v4

    .line 579
    :pswitch_8
    instance-of v0, p2, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;

    .line 580
    .line 581
    if-eqz v0, :cond_26

    .line 582
    .line 583
    move-object v0, p2

    .line 584
    check-cast v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;

    .line 585
    .line 586
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;->label:I

    .line 587
    .line 588
    and-int v10, v3, v7

    .line 589
    .line 590
    if-eqz v10, :cond_26

    .line 591
    .line 592
    sub-int/2addr v3, v7

    .line 593
    iput v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;->label:I

    .line 594
    .line 595
    goto :goto_14

    .line 596
    :cond_26
    new-instance v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;

    .line 597
    .line 598
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 599
    .line 600
    .line 601
    :goto_14
    iget-object p0, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 602
    .line 603
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 604
    .line 605
    iget v3, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;->label:I

    .line 606
    .line 607
    if-eqz v3, :cond_28

    .line 608
    .line 609
    if-ne v3, v8, :cond_27

    .line 610
    .line 611
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    goto :goto_15

    .line 615
    :cond_27
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    move-object v4, v9

    .line 619
    goto :goto_15

    .line 620
    :cond_28
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    check-cast p1, Landroidx/paging/PagingData;

    .line 624
    .line 625
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 626
    .line 627
    const/4 v3, 0x3

    .line 628
    invoke-direct {p0, v3, v8, v9}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 629
    .line 630
    .line 631
    invoke-static {p1, p0}, Landroidx/paging/FlowExtKt;->insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;

    .line 632
    .line 633
    .line 634
    move-result-object p0

    .line 635
    new-instance p1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 636
    .line 637
    invoke-direct {p1, v2, v1, v9}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 638
    .line 639
    .line 640
    invoke-static {p0, p1}, Landroidx/paging/FlowExtKt;->map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    iput v8, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel$special$$inlined$map$1$2$1;->label:I

    .line 645
    .line 646
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    if-ne p0, p2, :cond_29

    .line 651
    .line 652
    move-object v4, p2

    .line 653
    :cond_29
    :goto_15
    return-object v4

    .line 654
    :pswitch_9
    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 655
    .line 656
    if-eqz v0, :cond_2a

    .line 657
    .line 658
    move-object v0, p2

    .line 659
    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 660
    .line 661
    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 662
    .line 663
    and-int v2, v1, v7

    .line 664
    .line 665
    if-eqz v2, :cond_2a

    .line 666
    .line 667
    sub-int/2addr v1, v7

    .line 668
    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 669
    .line 670
    goto :goto_16

    .line 671
    :cond_2a
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;

    .line 672
    .line 673
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 674
    .line 675
    .line 676
    :goto_16
    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->result:Ljava/lang/Object;

    .line 677
    .line 678
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 679
    .line 680
    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 681
    .line 682
    if-eqz v1, :cond_2c

    .line 683
    .line 684
    if-ne v1, v8, :cond_2b

    .line 685
    .line 686
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    goto :goto_17

    .line 690
    :cond_2b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    move-object v4, v9

    .line 694
    goto :goto_17

    .line 695
    :cond_2c
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    if-eqz p1, :cond_2d

    .line 699
    .line 700
    iput v8, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1;->label:I

    .line 701
    .line 702
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object p0

    .line 706
    if-ne p0, p2, :cond_2d

    .line 707
    .line 708
    move-object v4, p2

    .line 709
    :cond_2d
    :goto_17
    return-object v4

    .line 710
    :pswitch_a
    instance-of v0, p2, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 711
    .line 712
    if-eqz v0, :cond_2e

    .line 713
    .line 714
    move-object v0, p2

    .line 715
    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 716
    .line 717
    iget v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 718
    .line 719
    and-int v2, v1, v7

    .line 720
    .line 721
    if-eqz v2, :cond_2e

    .line 722
    .line 723
    sub-int/2addr v1, v7

    .line 724
    iput v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 725
    .line 726
    goto :goto_18

    .line 727
    :cond_2e
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;

    .line 728
    .line 729
    invoke-direct {v0, p0, p2}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 730
    .line 731
    .line 732
    :goto_18
    iget-object p0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->result:Ljava/lang/Object;

    .line 733
    .line 734
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 735
    .line 736
    iget v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 737
    .line 738
    if-eqz v1, :cond_30

    .line 739
    .line 740
    if-ne v1, v8, :cond_2f

    .line 741
    .line 742
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 743
    .line 744
    .line 745
    goto :goto_19

    .line 746
    :cond_2f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    move-object v4, v9

    .line 750
    goto :goto_19

    .line 751
    :cond_30
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    instance-of p0, p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 755
    .line 756
    if-eqz p0, :cond_31

    .line 757
    .line 758
    iput v8, v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1;->label:I

    .line 759
    .line 760
    invoke-interface {v5, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    if-ne p0, p2, :cond_31

    .line 765
    .line 766
    move-object v4, p2

    .line 767
    :cond_31
    :goto_19
    return-object v4

    .line 768
    :pswitch_b
    instance-of v0, p2, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;

    .line 769
    .line 770
    if-eqz v0, :cond_32

    .line 771
    .line 772
    move-object v0, p2

    .line 773
    check-cast v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;

    .line 774
    .line 775
    iget v1, v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;->label:I

    .line 776
    .line 777
    and-int v2, v1, v7

    .line 778
    .line 779
    if-eqz v2, :cond_32

    .line 780
    .line 781
    sub-int/2addr v1, v7

    .line 782
    iput v1, v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;->label:I

    .line 783
    .line 784
    goto :goto_1a

    .line 785
    :cond_32
    new-instance v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;

    .line 786
    .line 787
    invoke-direct {v0, p0, p2}, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 788
    .line 789
    .line 790
    :goto_1a
    iget-object p0, v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    .line 791
    .line 792
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 793
    .line 794
    iget v1, v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;->label:I

    .line 795
    .line 796
    if-eqz v1, :cond_34

    .line 797
    .line 798
    if-ne v1, v8, :cond_33

    .line 799
    .line 800
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :cond_33
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    move-object v4, v9

    .line 808
    goto :goto_1b

    .line 809
    :cond_34
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    check-cast p1, Lkotlin/Pair;

    .line 813
    .line 814
    iget-object p0, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 815
    .line 816
    if-eqz p0, :cond_35

    .line 817
    .line 818
    iput v8, v0, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1$2$1;->label:I

    .line 819
    .line 820
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object p0

    .line 824
    if-ne p0, p2, :cond_35

    .line 825
    .line 826
    move-object v4, p2

    .line 827
    :cond_35
    :goto_1b
    return-object v4

    .line 828
    :pswitch_c
    instance-of v0, p2, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;

    .line 829
    .line 830
    if-eqz v0, :cond_36

    .line 831
    .line 832
    move-object v0, p2

    .line 833
    check-cast v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;

    .line 834
    .line 835
    iget v3, v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;->label:I

    .line 836
    .line 837
    and-int v10, v3, v7

    .line 838
    .line 839
    if-eqz v10, :cond_36

    .line 840
    .line 841
    sub-int/2addr v3, v7

    .line 842
    iput v3, v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;->label:I

    .line 843
    .line 844
    goto :goto_1c

    .line 845
    :cond_36
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;

    .line 846
    .line 847
    invoke-direct {v0, p0, p2}, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 848
    .line 849
    .line 850
    :goto_1c
    iget-object p0, v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 851
    .line 852
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 853
    .line 854
    iget v3, v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;->label:I

    .line 855
    .line 856
    if-eqz v3, :cond_38

    .line 857
    .line 858
    if-ne v3, v8, :cond_37

    .line 859
    .line 860
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    goto :goto_1d

    .line 864
    :cond_37
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    move-object v4, v9

    .line 868
    goto :goto_1d

    .line 869
    :cond_38
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    check-cast p1, Landroidx/paging/MulticastedPagingData;

    .line 873
    .line 874
    new-instance p0, Landroidx/paging/PagingData;

    .line 875
    .line 876
    iget-object v3, p1, Landroidx/paging/MulticastedPagingData;->accumulated:Lokhttp3/Request$Builder;

    .line 877
    .line 878
    iget-object v3, v3, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 881
    .line 882
    new-instance v6, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 883
    .line 884
    invoke-direct {v6, v1, p1, v9}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 885
    .line 886
    .line 887
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 888
    .line 889
    invoke-direct {v1, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 890
    .line 891
    .line 892
    new-instance v3, Landroidx/paging/MulticastedPagingData$asPagingData$2;

    .line 893
    .line 894
    const/4 v6, 0x0

    .line 895
    invoke-direct {v3, v6, p1, v9}, Landroidx/paging/MulticastedPagingData$asPagingData$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 896
    .line 897
    .line 898
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    .line 899
    .line 900
    invoke-direct {v6, v1, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 901
    .line 902
    .line 903
    iget-object v1, p1, Landroidx/paging/MulticastedPagingData;->parent:Landroidx/paging/PagingData;

    .line 904
    .line 905
    iget-object v3, v1, Landroidx/paging/PagingData;->uiReceiver:Landroidx/paging/UiReceiver;

    .line 906
    .line 907
    iget-object v1, v1, Landroidx/paging/PagingData;->hintReceiver:Landroidx/paging/HintHandler;

    .line 908
    .line 909
    new-instance v7, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 910
    .line 911
    invoke-direct {v7, v2, p1}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-direct {p0, v6, v3, v1, v7}, Landroidx/paging/PagingData;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/paging/UiReceiver;Landroidx/paging/HintHandler;Lkotlin/jvm/functions/Function0;)V

    .line 915
    .line 916
    .line 917
    iput v8, v0, Landroidx/paging/CachedPagingDataKt$cachedIn$$inlined$map$1$2$1;->label:I

    .line 918
    .line 919
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object p0

    .line 923
    if-ne p0, p2, :cond_39

    .line 924
    .line 925
    move-object v4, p2

    .line 926
    :cond_39
    :goto_1d
    return-object v4

    .line 927
    :pswitch_d
    instance-of v0, p2, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 928
    .line 929
    if-eqz v0, :cond_3a

    .line 930
    .line 931
    move-object v0, p2

    .line 932
    check-cast v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 933
    .line 934
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 935
    .line 936
    and-int v2, v1, v7

    .line 937
    .line 938
    if-eqz v2, :cond_3a

    .line 939
    .line 940
    sub-int/2addr v1, v7

    .line 941
    iput v1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 942
    .line 943
    goto :goto_1e

    .line 944
    :cond_3a
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;

    .line 945
    .line 946
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 947
    .line 948
    .line 949
    :goto_1e
    iget-object p0, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 950
    .line 951
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 952
    .line 953
    iget v1, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 954
    .line 955
    if-eqz v1, :cond_3c

    .line 956
    .line 957
    if-ne v1, v8, :cond_3b

    .line 958
    .line 959
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    goto :goto_20

    .line 963
    :cond_3b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    :goto_1f
    move-object v4, v9

    .line 967
    goto :goto_20

    .line 968
    :cond_3c
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 969
    .line 970
    .line 971
    check-cast p1, Landroidx/datastore/core/State;

    .line 972
    .line 973
    instance-of p0, p1, Landroidx/datastore/core/ReadException;

    .line 974
    .line 975
    if-nez p0, :cond_41

    .line 976
    .line 977
    instance-of p0, p1, Landroidx/datastore/core/Final;

    .line 978
    .line 979
    if-nez p0, :cond_40

    .line 980
    .line 981
    instance-of p0, p1, Landroidx/datastore/core/Data;

    .line 982
    .line 983
    if-eqz p0, :cond_3d

    .line 984
    .line 985
    check-cast p1, Landroidx/datastore/core/Data;

    .line 986
    .line 987
    iget-object p0, p1, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 988
    .line 989
    iput v8, v0, Landroidx/datastore/core/SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 990
    .line 991
    invoke-interface {v5, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object p0

    .line 995
    if-ne p0, p2, :cond_3f

    .line 996
    .line 997
    move-object v4, p2

    .line 998
    goto :goto_20

    .line 999
    :cond_3d
    instance-of p0, p1, Landroidx/datastore/core/UnInitialized;

    .line 1000
    .line 1001
    if-eqz p0, :cond_3e

    .line 1002
    .line 1003
    const-string p0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 1004
    .line 1005
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_1f

    .line 1009
    :cond_3e
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1010
    .line 1011
    .line 1012
    goto :goto_1f

    .line 1013
    :cond_3f
    :goto_20
    return-object v4

    .line 1014
    :cond_40
    check-cast p1, Landroidx/datastore/core/Final;

    .line 1015
    .line 1016
    iget-object p0, p1, Landroidx/datastore/core/Final;->finalException:Ljava/lang/Throwable;

    .line 1017
    .line 1018
    throw p0

    .line 1019
    :cond_41
    check-cast p1, Landroidx/datastore/core/ReadException;

    .line 1020
    .line 1021
    iget-object p0, p1, Landroidx/datastore/core/ReadException;->readException:Ljava/lang/Throwable;

    .line 1022
    .line 1023
    throw p0

    .line 1024
    :pswitch_e
    instance-of v0, p2, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;

    .line 1025
    .line 1026
    if-eqz v0, :cond_42

    .line 1027
    .line 1028
    move-object v0, p2

    .line 1029
    check-cast v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;

    .line 1030
    .line 1031
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;->label:I

    .line 1032
    .line 1033
    and-int v2, v1, v7

    .line 1034
    .line 1035
    if-eqz v2, :cond_42

    .line 1036
    .line 1037
    sub-int/2addr v1, v7

    .line 1038
    iput v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;->label:I

    .line 1039
    .line 1040
    goto :goto_21

    .line 1041
    :cond_42
    new-instance v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;

    .line 1042
    .line 1043
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;-><init>(Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 1044
    .line 1045
    .line 1046
    :goto_21
    iget-object p0, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 1047
    .line 1048
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1049
    .line 1050
    iget v1, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;->label:I

    .line 1051
    .line 1052
    if-eqz v1, :cond_44

    .line 1053
    .line 1054
    if-ne v1, v8, :cond_43

    .line 1055
    .line 1056
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    goto :goto_22

    .line 1060
    :cond_43
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    move-object v4, v9

    .line 1064
    goto :goto_22

    .line 1065
    :cond_44
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    check-cast p1, Lorg/wikipedia/events/NewRecommendedReadingListEvent;

    .line 1069
    .line 1070
    iput v8, v0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$map$1$2$1;->label:I

    .line 1071
    .line 1072
    invoke-interface {v5, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object p0

    .line 1076
    if-ne p0, p2, :cond_45

    .line 1077
    .line 1078
    move-object v4, p2

    .line 1079
    :cond_45
    :goto_22
    return-object v4

    .line 1080
    nop

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
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
