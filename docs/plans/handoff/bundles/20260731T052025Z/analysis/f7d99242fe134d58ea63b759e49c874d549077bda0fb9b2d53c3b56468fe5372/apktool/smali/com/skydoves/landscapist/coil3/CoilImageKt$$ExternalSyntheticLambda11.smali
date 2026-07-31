.class public final synthetic Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/16 v3, 0x90

    .line 6
    .line 7
    const/16 v4, 0x10

    .line 8
    .line 9
    const/16 v5, 0x20

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 25
    .line 26
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 27
    .line 28
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    check-cast p4, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p1, p2, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const-string p2, "accountId"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move-object p1, v9

    .line 57
    :goto_0
    if-eqz p1, :cond_3

    .line 58
    .line 59
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    or-int/2addr p2, p4

    .line 70
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    if-nez p2, :cond_1

    .line 75
    .line 76
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 77
    .line 78
    if-ne p4, p2, :cond_2

    .line 79
    .line 80
    :cond_1
    new-instance p4, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 p2, 0xd

    .line 83
    .line 84
    invoke-direct {p4, p2, p0, p1}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    invoke-static {v9, v9, p4, p3, v10}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->PermissionsScreen(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;Lnet/thunderbird/core/common/provider/BrandNameProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-string p0, "Account ID must not be null when navigating to Permissions"

    .line 97
    .line 98
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v7, v9

    .line 102
    :goto_1
    return-object v7

    .line 103
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 106
    .line 107
    check-cast p2, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 108
    .line 109
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 110
    .line 111
    check-cast p4, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    and-int/lit8 p1, p4, 0x30

    .line 121
    .line 122
    if-nez p1, :cond_5

    .line 123
    .line 124
    move-object p1, p3

    .line 125
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    move v4, v5

    .line 134
    :cond_4
    or-int/2addr p4, v4

    .line 135
    :cond_5
    and-int/lit16 p1, p4, 0x91

    .line 136
    .line 137
    if-eq p1, v3, :cond_6

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    move v8, v10

    .line 141
    :goto_2
    and-int/lit8 p1, p4, 0x1

    .line 142
    .line 143
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 144
    .line 145
    invoke-virtual {p3, p1, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    const p1, 0x3006b416

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    .line 158
    .line 159
    shr-int/lit8 p1, p4, 0x3

    .line 160
    .line 161
    and-int/lit8 p1, p1, 0xe

    .line 162
    .line 163
    invoke-static {p2, p0, v9, p3, p1}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->BannerGlobalNotificationHostLayout(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p3, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_7
    const p0, 0x300908f5

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 181
    .line 182
    .line 183
    :goto_3
    return-object v7

    .line 184
    :pswitch_1
    check-cast p0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 185
    .line 186
    check-cast p1, Landroid/view/View;

    .line 187
    .line 188
    check-cast p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 189
    .line 190
    check-cast p3, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;

    .line 191
    .line 192
    check-cast p4, Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    iget-boolean p2, p3, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 209
    .line 210
    xor-int/2addr p2, v8

    .line 211
    iput-object v9, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 212
    .line 213
    iget-object p3, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 214
    .line 215
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    iget-object p4, p3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem;

    .line 225
    .line 226
    iput-boolean p2, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 227
    .line 228
    sget-object p1, Lcom/fsck/k9/ui/settings/export/StatusText;->HIDDEN:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 229
    .line 230
    iput-object p1, p3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 231
    .line 232
    iput-boolean v10, p3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 233
    .line 234
    invoke-virtual {p3}, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->updateExportButtonFromSelection()V

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 238
    .line 239
    invoke-virtual {p0, p3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    return-object p0

    .line 245
    :pswitch_2
    check-cast p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 246
    .line 247
    check-cast p1, Landroid/view/View;

    .line 248
    .line 249
    check-cast p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 250
    .line 251
    check-cast p3, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 252
    .line 253
    check-cast p4, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    instance-of p1, p3, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 265
    .line 266
    if-eqz p1, :cond_9

    .line 267
    .line 268
    check-cast p3, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 269
    .line 270
    iget-object p1, p3, Lcom/fsck/k9/ui/settings/AccountItem;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 271
    .line 272
    sget p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->$r8$clinit:I

    .line 273
    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {p0, p1, v9}, Lcom/bumptech/glide/load/Option$1;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_9
    instance-of p1, p3, Lcom/fsck/k9/ui/settings/IntentItem;

    .line 285
    .line 286
    if-nez p1, :cond_c

    .line 287
    .line 288
    instance-of p1, p3, Lcom/fsck/k9/ui/settings/SettingsActionItem;

    .line 289
    .line 290
    if-eqz p1, :cond_a

    .line 291
    .line 292
    invoke-static {p0}, Lkotlin/math/MathKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavHostController;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    check-cast p3, Lcom/fsck/k9/ui/settings/SettingsActionItem;

    .line 297
    .line 298
    iget p1, p3, Lcom/fsck/k9/ui/settings/SettingsActionItem;->navigationAction:I

    .line 299
    .line 300
    invoke-virtual {p0, p1, v9}, Landroidx/navigation/NavHostController;->navigate(ILandroid/os/Bundle;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_a
    instance-of p1, p3, Lcom/fsck/k9/ui/settings/UrlActionItem;

    .line 305
    .line 306
    if-eqz p1, :cond_b

    .line 307
    .line 308
    check-cast p3, Lcom/fsck/k9/ui/settings/UrlActionItem;

    .line 309
    .line 310
    iget-object p1, p3, Lcom/fsck/k9/ui/settings/UrlActionItem;->url:Ljava/lang/String;

    .line 311
    .line 312
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 313
    .line 314
    const-string p3, "android.intent.action.VIEW"

    .line 315
    .line 316
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    const p1, 0x7f1202c4

    .line 332
    .line 333
    .line 334
    invoke-static {p0, p1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 339
    .line 340
    .line 341
    :cond_b
    :goto_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 342
    .line 343
    return-object p0

    .line 344
    :cond_c
    throw v9

    .line 345
    :pswitch_3
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 346
    .line 347
    check-cast p1, Landroid/view/View;

    .line 348
    .line 349
    check-cast p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 350
    .line 351
    check-cast p3, Lcom/fsck/k9/ui/managefolders/FolderListItem;

    .line 352
    .line 353
    check-cast p4, Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-wide p1, p3, Lcom/fsck/k9/ui/managefolders/FolderListItem;->folderId:J

    .line 365
    .line 366
    iget-object p3, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 367
    .line 368
    const-string p4, "account"

    .line 369
    .line 370
    if-eqz p3, :cond_d

    .line 371
    .line 372
    iget-object p3, p3, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 373
    .line 374
    new-instance v0, Lkotlin/Pair;

    .line 375
    .line 376
    invoke-direct {v0, p4, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    new-instance p2, Lkotlin/Pair;

    .line 384
    .line 385
    const-string p3, "folderId"

    .line 386
    .line 387
    invoke-direct {p2, p3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    new-array p1, v6, [Lkotlin/Pair;

    .line 391
    .line 392
    aput-object v0, p1, v10

    .line 393
    .line 394
    aput-object p2, p1, v8

    .line 395
    .line 396
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    invoke-static {p0}, Lkotlin/math/MathKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavHostController;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    const p2, 0x7f09004f

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, p2, p1}, Landroidx/navigation/NavHostController;->navigate(ILandroid/os/Bundle;)V

    .line 408
    .line 409
    .line 410
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 411
    .line 412
    return-object p0

    .line 413
    :cond_d
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v9

    .line 417
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 418
    .line 419
    check-cast p1, Landroid/view/View;

    .line 420
    .line 421
    check-cast p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 422
    .line 423
    check-cast p3, Lcom/fsck/k9/ui/choosefolder/FolderListItem;

    .line 424
    .line 425
    check-cast p4, Ljava/lang/Integer;

    .line 426
    .line 427
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    .line 429
    .line 430
    sget p1, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->$r8$clinit:I

    .line 431
    .line 432
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    iget-wide p1, p3, Lcom/fsck/k9/ui/choosefolder/FolderListItem;->databaseId:J

    .line 439
    .line 440
    iget-object p3, p3, Lcom/fsck/k9/ui/choosefolder/FolderListItem;->displayName:Ljava/lang/String;

    .line 441
    .line 442
    new-instance p4, Landroid/content/Intent;

    .line 443
    .line 444
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v0, "selectedFolderId"

    .line 448
    .line 449
    invoke-virtual {p4, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 450
    .line 451
    .line 452
    const-string p1, "folderDisplayName"

    .line 453
    .line 454
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    .line 456
    .line 457
    const-string p1, "messageReference"

    .line 458
    .line 459
    iget-object p2, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->messageReference:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    const/4 p1, -0x1

    .line 465
    invoke-virtual {p0, p1, p4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 469
    .line 470
    .line 471
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 472
    .line 473
    return-object p0

    .line 474
    :pswitch_5
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 475
    .line 476
    check-cast p1, Landroid/view/View;

    .line 477
    .line 478
    check-cast p2, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 479
    .line 480
    check-cast p3, Lapp/k9mail/feature/settings/import/ui/ImportListItem;

    .line 481
    .line 482
    check-cast p4, Ljava/lang/Integer;

    .line 483
    .line 484
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->onSettingsListItemClicked(I)V

    .line 499
    .line 500
    .line 501
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 502
    .line 503
    return-object p0

    .line 504
    :pswitch_6
    check-cast p0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 505
    .line 506
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 507
    .line 508
    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 509
    .line 510
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 511
    .line 512
    check-cast p4, Ljava/lang/Integer;

    .line 513
    .line 514
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-static {p0, v9, p3, v10}, Lcom/fsck/k9/sasl/OAuthBearer;->OnboardingNavHost(Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;Lapp/k9mail/feature/onboarding/migration/noop/NoOpOnboardingMigrationManager;Landroidx/compose/runtime/Composer;I)V

    .line 524
    .line 525
    .line 526
    return-object v7

    .line 527
    :pswitch_7
    check-cast p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 528
    .line 529
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 530
    .line 531
    check-cast p2, Ljava/lang/Boolean;

    .line 532
    .line 533
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 534
    .line 535
    .line 536
    move-result p2

    .line 537
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 538
    .line 539
    check-cast p4, Ljava/lang/Integer;

    .line 540
    .line 541
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 542
    .line 543
    .line 544
    move-result p4

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    and-int/lit8 p1, p4, 0x30

    .line 549
    .line 550
    if-nez p1, :cond_f

    .line 551
    .line 552
    move-object p1, p3

    .line 553
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 554
    .line 555
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 556
    .line 557
    .line 558
    move-result p1

    .line 559
    if-eqz p1, :cond_e

    .line 560
    .line 561
    move v4, v5

    .line 562
    :cond_e
    or-int/2addr p4, v4

    .line 563
    :cond_f
    and-int/lit16 p1, p4, 0x91

    .line 564
    .line 565
    if-eq p1, v3, :cond_10

    .line 566
    .line 567
    move p1, v8

    .line 568
    goto :goto_5

    .line 569
    :cond_10
    move p1, v10

    .line 570
    :goto_5
    and-int/2addr p4, v8

    .line 571
    move-object v4, p3

    .line 572
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 573
    .line 574
    invoke-virtual {v4, p4, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-eqz p1, :cond_12

    .line 579
    .line 580
    if-eqz p2, :cond_11

    .line 581
    .line 582
    const p1, 0x4ccfb9a4    # 1.0890781E8f

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 586
    .line 587
    .line 588
    iget-object p0, p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;->certificateError:Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;

    .line 589
    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;->serverCertificateProperties:Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;

    .line 594
    .line 595
    const/4 v3, 0x0

    .line 596
    const/16 v5, 0x8

    .line 597
    .line 598
    const/4 v1, 0x0

    .line 599
    const/4 v2, 0x0

    .line 600
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntRectKt;->ServerCertificateView(Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;Landroidx/compose/ui/Modifier;Lapp/k9mail/feature/account/server/certificate/ui/DefaultServerNameFormatter;Lapp/k9mail/feature/account/server/certificate/ui/DefaultFingerprintFormatter;Landroidx/compose/runtime/Composer;I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 604
    .line 605
    .line 606
    goto :goto_6

    .line 607
    :cond_11
    const p0, 0x4cd28a64    # 1.103839E8f

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 614
    .line 615
    .line 616
    goto :goto_6

    .line 617
    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 618
    .line 619
    .line 620
    :goto_6
    return-object v7

    .line 621
    :pswitch_8
    check-cast p0, Landroidx/fragment/app/Fragment$7;

    .line 622
    .line 623
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 624
    .line 625
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 626
    .line 627
    check-cast p3, Ljava/lang/String;

    .line 628
    .line 629
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    .line 630
    .line 631
    new-instance p1, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;

    .line 632
    .line 633
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-direct {p1, p4}, Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 637
    .line 638
    .line 639
    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 640
    .line 641
    check-cast p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 642
    .line 643
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->bindingTypes:[I

    .line 644
    .line 645
    array-length v0, v0

    .line 646
    move v3, v8

    .line 647
    :goto_7
    if-ge v3, v0, :cond_18

    .line 648
    .line 649
    iget-object v4, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->bindingTypes:[I

    .line 650
    .line 651
    aget v4, v4, v3

    .line 652
    .line 653
    if-eq v4, v8, :cond_17

    .line 654
    .line 655
    if-eq v4, v6, :cond_16

    .line 656
    .line 657
    if-eq v4, v2, :cond_15

    .line 658
    .line 659
    if-eq v4, v1, :cond_14

    .line 660
    .line 661
    const/4 v5, 0x5

    .line 662
    if-eq v4, v5, :cond_13

    .line 663
    .line 664
    goto :goto_8

    .line 665
    :cond_13
    invoke-interface {p1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 666
    .line 667
    .line 668
    goto :goto_8

    .line 669
    :cond_14
    iget-object v4, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->blobBindings:[[B

    .line 670
    .line 671
    aget-object v4, v4, v3

    .line 672
    .line 673
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    invoke-interface {p1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 677
    .line 678
    .line 679
    goto :goto_8

    .line 680
    :cond_15
    iget-object v4, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->stringBindings:[Ljava/lang/String;

    .line 681
    .line 682
    aget-object v4, v4, v3

    .line 683
    .line 684
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-interface {p1, v4, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(Ljava/lang/String;I)V

    .line 688
    .line 689
    .line 690
    goto :goto_8

    .line 691
    :cond_16
    iget-object v4, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->doubleBindings:[D

    .line 692
    .line 693
    aget-wide v9, v4, v3

    .line 694
    .line 695
    invoke-interface {p1, v9, v10, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(DI)V

    .line 696
    .line 697
    .line 698
    goto :goto_8

    .line 699
    :cond_17
    iget-object v4, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->longBindings:[J

    .line 700
    .line 701
    aget-wide v9, v4, v3

    .line 702
    .line 703
    invoke-interface {p1, v3, v9, v10}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 704
    .line 705
    .line 706
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 707
    .line 708
    goto :goto_7

    .line 709
    :cond_18
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    .line 710
    .line 711
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 712
    .line 713
    .line 714
    return-object p0

    .line 715
    :pswitch_9
    check-cast p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 716
    .line 717
    check-cast p1, Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 718
    .line 719
    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    .line 720
    .line 721
    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    .line 722
    .line 723
    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 724
    .line 725
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 726
    .line 727
    iget p3, p3, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 728
    .line 729
    iget p4, p4, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 730
    .line 731
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 732
    .line 733
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 734
    .line 735
    .line 736
    move-result-object p1

    .line 737
    instance-of p2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 738
    .line 739
    if-nez p2, :cond_19

    .line 740
    .line 741
    new-instance p2, Landroidx/core/view/MenuHostHelper;

    .line 742
    .line 743
    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    .line 744
    .line 745
    invoke-direct {p2, p1, p3}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Landroidx/core/view/MenuHostHelper;)V

    .line 746
    .line 747
    .line 748
    iput-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    .line 749
    .line 750
    iget-object p0, p2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 751
    .line 752
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    check-cast p0, Landroid/graphics/Typeface;

    .line 756
    .line 757
    goto :goto_9

    .line 758
    :cond_19
    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 759
    .line 760
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    check-cast p0, Landroid/graphics/Typeface;

    .line 764
    .line 765
    :goto_9
    return-object p0

    .line 766
    :pswitch_a
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 767
    .line 768
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    .line 769
    .line 770
    check-cast p2, Ljava/lang/Integer;

    .line 771
    .line 772
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 773
    .line 774
    .line 775
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 776
    .line 777
    check-cast p4, Ljava/lang/Integer;

    .line 778
    .line 779
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 780
    .line 781
    .line 782
    move-result p2

    .line 783
    and-int/lit8 p4, p2, 0x6

    .line 784
    .line 785
    if-nez p4, :cond_1b

    .line 786
    .line 787
    move-object p4, p3

    .line 788
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 789
    .line 790
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result p4

    .line 794
    if-eqz p4, :cond_1a

    .line 795
    .line 796
    goto :goto_a

    .line 797
    :cond_1a
    move v1, v6

    .line 798
    :goto_a
    or-int/2addr p2, v1

    .line 799
    :cond_1b
    and-int/lit16 p4, p2, 0x83

    .line 800
    .line 801
    const/16 v0, 0x82

    .line 802
    .line 803
    if-eq p4, v0, :cond_1c

    .line 804
    .line 805
    goto :goto_b

    .line 806
    :cond_1c
    move v8, v10

    .line 807
    :goto_b
    and-int/lit8 p4, p2, 0x1

    .line 808
    .line 809
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 810
    .line 811
    invoke-virtual {p3, p4, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 812
    .line 813
    .line 814
    move-result p4

    .line 815
    if-eqz p4, :cond_1d

    .line 816
    .line 817
    and-int/lit8 p2, p2, 0xe

    .line 818
    .line 819
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    .line 821
    .line 822
    move-result-object p2

    .line 823
    invoke-virtual {p0, p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    goto :goto_c

    .line 827
    :cond_1d
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 828
    .line 829
    .line 830
    :goto_c
    return-object v7

    .line 831
    :pswitch_b
    check-cast p0, Lcom/skydoves/landscapist/ImageOptions;

    .line 832
    .line 833
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 834
    .line 835
    check-cast p2, Lcom/skydoves/landscapist/ImageLoadState;

    .line 836
    .line 837
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 838
    .line 839
    check-cast p4, Ljava/lang/Integer;

    .line 840
    .line 841
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 842
    .line 843
    .line 844
    move-result p4

    .line 845
    invoke-static {p0, p1, p2, p3, p4}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$KBmkI-Taopr5pIEL6GdGcU75g-4(Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Lcom/skydoves/landscapist/ImageLoadState;Landroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 846
    .line 847
    .line 848
    move-result-object p0

    .line 849
    return-object p0

    .line 850
    nop

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
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
