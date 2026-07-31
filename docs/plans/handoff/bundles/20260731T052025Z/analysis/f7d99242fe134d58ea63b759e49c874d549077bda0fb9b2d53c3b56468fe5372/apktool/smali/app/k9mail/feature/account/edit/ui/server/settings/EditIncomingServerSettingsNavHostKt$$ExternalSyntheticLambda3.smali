.class public final synthetic Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Ljava/lang/String;Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$2:Landroidx/navigation/NavHostController;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    .line 7
    .line 8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 11
    .line 12
    iget-object v6, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$2:Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    iget-object v7, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, v0, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda3;->f$0:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 24
    .line 25
    move-object/from16 v8, p2

    .line 26
    .line 27
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 28
    .line 29
    move-object/from16 v9, p3

    .line 30
    .line 31
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    move-object/from16 v10, p4

    .line 34
    .line 35
    check-cast v10, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const v1, 0x7f120067

    .line 47
    .line 48
    .line 49
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    move-object v15, v9

    .line 54
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 55
    .line 56
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    or-int/2addr v1, v8

    .line 65
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    if-ne v8, v5, :cond_1

    .line 72
    .line 73
    :cond_0
    new-instance v8, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4;

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-direct {v8, v0, v7, v1}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    move-object v11, v8

    .line 83
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    if-ne v1, v5, :cond_3

    .line 96
    .line 97
    :cond_2
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v0, 0x6

    .line 100
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    move-object v12, v1

    .line 107
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 108
    .line 109
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    if-ne v1, v5, :cond_5

    .line 120
    .line 121
    :cond_4
    new-instance v1, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/4 v0, 0x7

    .line 124
    invoke-direct {v1, v7, v0}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    move-object/from16 v21, v1

    .line 131
    .line 132
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 133
    .line 134
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 141
    .line 142
    .line 143
    move-result-object v18

    .line 144
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 145
    .line 146
    .line 147
    move-result-object v20

    .line 148
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveOutgoingServerSettingsViewModel;

    .line 149
    .line 150
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 155
    .line 156
    .line 157
    move-result-object v17

    .line 158
    const/16 v19, 0x0

    .line 159
    .line 160
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    move-object v13, v0

    .line 165
    check-cast v13, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 166
    .line 167
    const/4 v14, 0x0

    .line 168
    const/16 v16, 0x1000

    .line 169
    .line 170
    invoke-static/range {v10 .. v16}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->SaveServerSettingsScreen(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 171
    .line 172
    .line 173
    move-object v2, v4

    .line 174
    goto :goto_0

    .line 175
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_0
    return-object v2

    .line 179
    :pswitch_0
    move-object/from16 v1, p1

    .line 180
    .line 181
    check-cast v1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 182
    .line 183
    move-object/from16 v8, p2

    .line 184
    .line 185
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .line 186
    .line 187
    move-object/from16 v9, p3

    .line 188
    .line 189
    check-cast v9, Landroidx/compose/runtime/Composer;

    .line 190
    .line 191
    move-object/from16 v10, p4

    .line 192
    .line 193
    check-cast v10, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    const v1, 0x7f120066

    .line 205
    .line 206
    .line 207
    invoke-static {v9, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    move-object v15, v9

    .line 212
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 213
    .line 214
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    or-int/2addr v1, v8

    .line 223
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    if-nez v1, :cond_7

    .line 228
    .line 229
    if-ne v8, v5, :cond_8

    .line 230
    .line 231
    :cond_7
    new-instance v8, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4;

    .line 232
    .line 233
    const/4 v1, 0x0

    .line 234
    invoke-direct {v8, v0, v7, v1}, Lapp/k9mail/feature/account/edit/ui/server/settings/EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda4;-><init>(Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;Ljava/lang/String;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    move-object v11, v8

    .line 241
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 242
    .line 243
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    if-ne v1, v5, :cond_a

    .line 254
    .line 255
    :cond_9
    new-instance v1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    .line 256
    .line 257
    const/4 v0, 0x2

    .line 258
    invoke-direct {v1, v6, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    move-object v12, v1

    .line 265
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 266
    .line 267
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-nez v0, :cond_b

    .line 276
    .line 277
    if-ne v1, v5, :cond_c

    .line 278
    .line 279
    :cond_b
    new-instance v1, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    const/4 v0, 0x5

    .line 282
    invoke-direct {v1, v7, v0}, Lcom/eygraber/uri/parts/PathPart$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_c
    move-object/from16 v21, v1

    .line 289
    .line 290
    check-cast v21, Lkotlin/jvm/functions/Function0;

    .line 291
    .line 292
    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-static {v0}, Lokhttp3/Cookie$Companion;->defaultExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 299
    .line 300
    .line 301
    move-result-object v18

    .line 302
    invoke-static {v15}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 303
    .line 304
    .line 305
    move-result-object v20

    .line 306
    const-class v1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveIncomingServerSettingsViewModel;

    .line 307
    .line 308
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 309
    .line 310
    .line 311
    move-result-object v16

    .line 312
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 313
    .line 314
    .line 315
    move-result-object v17

    .line 316
    const/16 v19, 0x0

    .line 317
    .line 318
    invoke-static/range {v16 .. v21}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    move-object v13, v0

    .line 323
    check-cast v13, Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;

    .line 324
    .line 325
    const/4 v14, 0x0

    .line 326
    const/16 v16, 0x1000

    .line 327
    .line 328
    invoke-static/range {v10 .. v16}, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsScreenKt;->SaveServerSettingsScreen(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/account/edit/ui/server/settings/save/BaseSaveServerSettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 329
    .line 330
    .line 331
    move-object v2, v4

    .line 332
    goto :goto_1

    .line 333
    :cond_d
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :goto_1
    return-object v2

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
