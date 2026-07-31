.class public final Landroidx/compose/runtime/GapPending$keyMap$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/FolderListPreference;Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    const/16 p1, 0xb

    .line 2
    .line 3
    iput p1, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->$r8$classId:I

    .line 2
    .line 3
    const-class v1, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Landroidx/compose/runtime/GapPending$keyMap$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogFragment;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v1, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    check-cast p0, Lnet/thunderbird/feature/mail/message/composer/dialog/SentFolderNotFoundConfirmationDialogFragment;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 34
    .line 35
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-class v0, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_2
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_3
    check-cast p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 54
    .line 55
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-class v0, Lcom/fsck/k9/ui/settings/account/Vibrator;

    .line 60
    .line 61
    invoke-static {v0, p0, v2, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_4
    check-cast p0, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 73
    .line 74
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 75
    .line 76
    const-class v1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_5
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-class p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 102
    .line 103
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v3, 0x0

    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-static/range {v0 .. v5}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_6
    check-cast p0, Lcom/fsck/k9/ui/messagesource/MessageHeadersFragment;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_7
    check-cast p0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 118
    .line 119
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "getOutboxFolderId: Found Outbox folder with id = "

    .line 124
    .line 125
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, "."

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_8
    check-cast p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 142
    .line 143
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_9
    check-cast p0, Lcom/fsck/k9/activity/UpgradeDatabaseActivity;

    .line 157
    .line 158
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    const-class v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p0, Lcom/fsck/k9/activity/EditIdentity;

    .line 174
    .line 175
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    const-class v0, Lcom/fsck/k9/EmailAddressValidator;

    .line 180
    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_b
    check-cast p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationActivity;

    .line 191
    .line 192
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    const-class v0, Lnet/thunderbird/core/logging/Logger;

    .line 197
    .line 198
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :pswitch_c
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;

    .line 208
    .line 209
    return-object p0

    .line 210
    :pswitch_d
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 211
    .line 212
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p0, v0, v2, v2}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    return-object p0

    .line 225
    :pswitch_e
    check-cast p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 226
    .line 227
    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    .line 228
    .line 229
    iget-wide v0, p0, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    .line 230
    .line 231
    iget-wide v2, p0, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    .line 232
    .line 233
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 234
    .line 235
    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0, v4}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 241
    .line 242
    .line 243
    move-result-wide v0

    .line 244
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 245
    .line 246
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 247
    .line 248
    .line 249
    return-object p0

    .line 250
    :pswitch_f
    check-cast p0, Landroidx/compose/runtime/GapPending;

    .line 251
    .line 252
    iget-object p0, p0, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    new-instance v1, Landroidx/collection/MutableScatterMap;

    .line 259
    .line 260
    invoke-direct {v1, v0}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    const/4 v2, 0x0

    .line 268
    :goto_0
    if-ge v2, v0, :cond_1

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 275
    .line 276
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 277
    .line 278
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->key:I

    .line 279
    .line 280
    if-eqz v4, :cond_0

    .line 281
    .line 282
    new-instance v4, Landroidx/compose/runtime/JoinedKey;

    .line 283
    .line 284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    iget-object v6, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->objectKey:Ljava/lang/Object;

    .line 289
    .line 290
    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    :goto_1
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/collection/MultiValueMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_1
    new-instance p0, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 305
    .line 306
    invoke-direct {p0, v1}, Landroidx/compose/runtime/collection/MultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 307
    .line 308
    .line 309
    return-object p0

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
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
