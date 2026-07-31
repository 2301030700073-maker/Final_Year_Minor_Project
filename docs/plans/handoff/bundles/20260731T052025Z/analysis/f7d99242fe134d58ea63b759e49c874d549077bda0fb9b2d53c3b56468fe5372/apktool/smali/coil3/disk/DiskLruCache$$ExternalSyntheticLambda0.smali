.class public final synthetic Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/EditCommand;Landroidx/compose/ui/platform/WeakCache;)V
    .locals 0

    .line 1
    const/16 p2, 0xf

    .line 2
    .line 3
    iput p2, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->currentMap:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Landroidx/collection/MutableObjectIntMap;

    .line 25
    .line 26
    invoke-direct {v3}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    .line 32
    .line 33
    invoke-virtual {v4, v1, v3}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, p1, v2, v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 15
    .line 16
    check-cast p1, Lcoil3/transform/Transformation;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcoil3/request/ImageRequestsKt;->$r8$lambda$LqOWfruuUq49FpUPLCe24e1mVkw(Lkotlin/jvm/internal/Ref$IntRef;Lcoil3/transform/Transformation;)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 26
    .line 27
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->packageManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x1c

    .line 44
    .line 45
    :try_start_0
    iget-object v2, p1, Lapp/k9mail/feature/settings/import/ui/AppVersion;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    if-lt v7, v1, :cond_0

    .line 54
    .line 55
    invoke-static {v6}, Landroidx/webkit/internal/ApiHelperForP;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 61
    .line 62
    int-to-long v6, v6

    .line 63
    :goto_0
    iget v8, p1, Lapp/k9mail/feature/settings/import/ui/AppVersion;->minVersionCode:I

    .line 64
    .line 65
    int-to-long v8, v8

    .line 66
    cmp-long v6, v6, v8

    .line 67
    .line 68
    if-ltz v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v5, v4

    .line 72
    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->packageManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 80
    .line 81
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v4, Lapp/k9mail/feature/settings/import/ui/AppInfo;

    .line 96
    .line 97
    invoke-direct {v4, v2, v0, v5}, Lapp/k9mail/feature/settings/import/ui/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    move-object v3, v4

    .line 101
    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 104
    .line 105
    const-string v2, "ImportAppFetcher"

    .line 106
    .line 107
    new-instance v4, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    invoke-direct {v4, v1, p1}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v2, v0, v4}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-object v3

    .line 116
    :pswitch_1
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 119
    .line 120
    check-cast p1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$CameraPermissionResult;

    .line 127
    .line 128
    invoke-direct {v0, p1}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Event$CameraPermissionResult;-><init>(Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->event(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p0

    .line 137
    :pswitch_2
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Landroidx/camera/view/PreviewView;

    .line 140
    .line 141
    check-cast p1, Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :pswitch_3
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast p0, Landroidx/activity/ComponentActivity;

    .line 150
    .line 151
    check-cast p1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 157
    .line 158
    .line 159
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p0

    .line 162
    :pswitch_4
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;

    .line 165
    .line 166
    move-object v0, p1

    .line 167
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 168
    .line 169
    new-instance v1, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 170
    .line 171
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 172
    .line 173
    iget-object v3, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-object v4, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 176
    .line 177
    iget-object v5, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 178
    .line 179
    iget-object v6, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    move-object v7, p0

    .line 186
    check-cast v7, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 187
    .line 188
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    move-object v8, p0

    .line 193
    check-cast v8, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 194
    .line 195
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    move-object v9, p0

    .line 200
    check-cast v9, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 201
    .line 202
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    move-object v10, p0

    .line 207
    check-cast v10, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 208
    .line 209
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    move-object v11, p0

    .line 214
    check-cast v11, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 215
    .line 216
    invoke-direct/range {v1 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;)V

    .line 217
    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    const/16 v5, 0x1e

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v3, 0x0

    .line 224
    invoke-static/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    return-object p0

    .line 229
    :pswitch_5
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 230
    .line 231
    move-object v1, p0

    .line 232
    check-cast v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 233
    .line 234
    move-object v0, p1

    .line 235
    check-cast v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getAllowedAuthenticationTypes(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    iget-object p1, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->authenticationType:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 245
    .line 246
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_2

    .line 251
    .line 252
    :goto_3
    move-object v5, p1

    .line 253
    goto :goto_4

    .line 254
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    move-object p1, p0

    .line 259
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :goto_4
    sget-object v3, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;->TLS:Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 263
    .line 264
    iget-object p0, v0, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 265
    .line 266
    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->toDefaultPort(Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;)J

    .line 267
    .line 268
    .line 269
    move-result-wide v6

    .line 270
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {p1}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateValue(Ljava/lang/Long;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    const/4 v12, 0x0

    .line 282
    const/16 v13, 0xfe2

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    const/4 v6, 0x0

    .line 286
    const/4 v7, 0x0

    .line 287
    const/4 v8, 0x0

    .line 288
    const/4 v9, 0x0

    .line 289
    const/4 v10, 0x0

    .line 290
    const/4 v11, 0x0

    .line 291
    invoke-static/range {v0 .. v13}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    return-object p0

    .line 296
    :pswitch_6
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 299
    .line 300
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    new-instance v0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;

    .line 306
    .line 307
    iget v1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 308
    .line 309
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 310
    .line 311
    invoke-direct {v0, p1, v1}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event$OnOAuthResult;-><init>(Landroid/content/Intent;I)V

    .line 312
    .line 313
    .line 314
    check-cast p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;

    .line 315
    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewModel;->event(Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$Event;)V

    .line 320
    .line 321
    .line 322
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 323
    .line 324
    return-object p0

    .line 325
    :pswitch_7
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 328
    .line 329
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    const-string/jumbo p1, "validate"

    .line 335
    .line 336
    .line 337
    invoke-static {p0, p1}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 341
    .line 342
    return-object p0

    .line 343
    :pswitch_8
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p0, Landroidx/compose/ui/autofill/ContentType;

    .line 346
    .line 347
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/autofill/ContentType;)V

    .line 353
    .line 354
    .line 355
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 356
    .line 357
    return-object p0

    .line 358
    :pswitch_9
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p0, Landroidx/room/RoomConnectionManager;

    .line 361
    .line 362
    check-cast p1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 363
    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Ljava/lang/Object;

    .line 368
    .line 369
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 370
    .line 371
    return-object p0

    .line 372
    :pswitch_a
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p0, Landroidx/navigation/fragment/FragmentNavigator;

    .line 375
    .line 376
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 377
    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    new-instance v0, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;

    .line 382
    .line 383
    const/4 v1, 0x3

    .line 384
    invoke-direct {v0, v1, p0, p1}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :pswitch_b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast p0, Landroid/content/Context;

    .line 391
    .line 392
    check-cast p1, Landroid/os/Bundle;

    .line 393
    .line 394
    invoke-static {p0}, Landroidx/room/util/SchemaInfoUtilKt;->createNavController$NavHostControllerKt__NavHostController_androidKt(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-virtual {p0, p1}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .line 399
    .line 400
    .line 401
    return-object p0

    .line 402
    :pswitch_c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast p0, Landroidx/datastore/core/DataStoreImpl;

    .line 405
    .line 406
    iget-object v0, p0, Landroidx/datastore/core/DataStoreImpl;->storageConnectionDelegate:Lkotlin/SynchronizedLazyImpl;

    .line 407
    .line 408
    check-cast p1, Ljava/lang/Throwable;

    .line 409
    .line 410
    if-eqz p1, :cond_3

    .line 411
    .line 412
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/room/ObservedTableVersions;

    .line 413
    .line 414
    new-instance v1, Landroidx/datastore/core/Final;

    .line 415
    .line 416
    invoke-direct {v1, p1}, Landroidx/datastore/core/Final;-><init>(Ljava/lang/Throwable;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0, v1}, Landroidx/room/ObservedTableVersions;->tryUpdate(Landroidx/datastore/core/State;)V

    .line 420
    .line 421
    .line 422
    :cond_3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->isInitialized()Z

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    if-eqz p0, :cond_4

    .line 427
    .line 428
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    check-cast p0, Landroidx/datastore/core/FileStorageConnection;

    .line 433
    .line 434
    invoke-virtual {p0}, Landroidx/datastore/core/FileStorageConnection;->close()V

    .line 435
    .line 436
    .line 437
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 438
    .line 439
    return-object p0

    .line 440
    :pswitch_d
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast p0, Landroidx/compose/ui/text/input/EditCommand;

    .line 443
    .line 444
    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    .line 445
    .line 446
    if-ne p0, p1, :cond_5

    .line 447
    .line 448
    const-string p0, " > "

    .line 449
    .line 450
    goto :goto_5

    .line 451
    :cond_5
    const-string p0, "   "

    .line 452
    .line 453
    :goto_5
    const-string v0, ", newCursorPosition="

    .line 454
    .line 455
    instance-of v1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 456
    .line 457
    const/16 v2, 0x29

    .line 458
    .line 459
    if-eqz v1, :cond_6

    .line 460
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string v3, "CommitTextCommand(text.length="

    .line 464
    .line 465
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    check-cast p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    .line 469
    .line 470
    iget-object v3, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 471
    .line 472
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget p1, p1, Landroidx/compose/ui/text/input/CommitTextCommand;->newCursorPosition:I

    .line 485
    .line 486
    :goto_6
    invoke-static {v1, p1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :cond_6
    instance-of v1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 493
    .line 494
    if-eqz v1, :cond_7

    .line 495
    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string v3, "SetComposingTextCommand(text.length="

    .line 499
    .line 500
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    .line 504
    .line 505
    iget-object v3, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 506
    .line 507
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget p1, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;->newCursorPosition:I

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_7
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 523
    .line 524
    if-eqz v0, :cond_8

    .line 525
    .line 526
    check-cast p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    .line 527
    .line 528
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    goto :goto_7

    .line 533
    :cond_8
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 534
    .line 535
    if-eqz v0, :cond_9

    .line 536
    .line 537
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    .line 538
    .line 539
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    goto :goto_7

    .line 544
    :cond_9
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 545
    .line 546
    if-eqz v0, :cond_a

    .line 547
    .line 548
    check-cast p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    .line 549
    .line 550
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    goto :goto_7

    .line 555
    :cond_a
    instance-of v0, p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 556
    .line 557
    if-eqz v0, :cond_b

    .line 558
    .line 559
    check-cast p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    .line 560
    .line 561
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetSelectionCommand;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    goto :goto_7

    .line 566
    :cond_b
    instance-of v0, p1, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    .line 567
    .line 568
    if-eqz v0, :cond_c

    .line 569
    .line 570
    const-string p1, "FinishComposingTextCommand()"

    .line 571
    .line 572
    goto :goto_7

    .line 573
    :cond_c
    instance-of v0, p1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    .line 574
    .line 575
    if-eqz v0, :cond_d

    .line 576
    .line 577
    const-string p1, "DeleteAllCommand()"

    .line 578
    .line 579
    goto :goto_7

    .line 580
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    if-nez p1, :cond_e

    .line 593
    .line 594
    const-string/jumbo p1, "{anonymous EditCommand}"

    .line 595
    .line 596
    .line 597
    :cond_e
    const-string v0, "Unknown EditCommand: "

    .line 598
    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    :goto_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    return-object p0

    .line 608
    :pswitch_e
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 611
    .line 612
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 613
    .line 614
    iget-object v2, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 615
    .line 616
    iget v3, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    .line 617
    .line 618
    iget v4, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->fontSynthesis:I

    .line 619
    .line 620
    iget-object v5, p1, Landroidx/compose/ui/text/font/TypefaceRequest;->resourceLoaderCacheKey:Ljava/lang/Object;

    .line 621
    .line 622
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 623
    .line 624
    const/4 v1, 0x0

    .line 625
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 633
    .line 634
    return-object p0

    .line 635
    :pswitch_f
    invoke-direct {p0, p1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$snapshots$SnapshotStateObserver$$ExternalSyntheticLambda1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    return-object p0

    .line 640
    :pswitch_10
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 643
    .line 644
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->parentSaveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 645
    .line 646
    if-eqz p0, :cond_f

    .line 647
    .line 648
    invoke-interface {p0, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    return-object p0

    .line 657
    :pswitch_11
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 660
    .line 661
    check-cast p1, Landroidx/compose/runtime/MovableContentStateReference;

    .line 662
    .line 663
    iget-object p1, p1, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 664
    .line 665
    invoke-static {p1}, Landroidx/compose/ui/unit/IntRectKt;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 666
    .line 667
    .line 668
    move-result-object p1

    .line 669
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 670
    .line 671
    .line 672
    move-result p0

    .line 673
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object p0

    .line 677
    return-object p0

    .line 678
    :pswitch_12
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 681
    .line 682
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 683
    .line 684
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 688
    .line 689
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_10

    .line 694
    .line 695
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 696
    .line 697
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    :cond_10
    iget-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 701
    .line 702
    iget-object v1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 703
    .line 704
    if-nez v0, :cond_12

    .line 705
    .line 706
    if-nez v1, :cond_11

    .line 707
    .line 708
    iput-object p1, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 709
    .line 710
    goto :goto_9

    .line 711
    :cond_11
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 712
    .line 713
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 714
    .line 715
    invoke-direct {v0}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    iput-object v0, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingWatchSet:Landroidx/collection/MutableScatterSet;

    .line 725
    .line 726
    iput-object v3, p0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->workingSoleWatchedObject:Ljava/lang/Object;

    .line 727
    .line 728
    goto :goto_9

    .line 729
    :cond_12
    if-nez v1, :cond_13

    .line 730
    .line 731
    goto :goto_8

    .line 732
    :cond_13
    const-string/jumbo p0, "workingSoleWatchedObject must be null when workingWatchSet is non-null"

    .line 733
    .line 734
    .line 735
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    :goto_8
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 742
    .line 743
    return-object p0

    .line 744
    :pswitch_13
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 747
    .line 748
    check-cast p1, Ljava/lang/Throwable;

    .line 749
    .line 750
    const-string v0, "Recomposer effect job completed"

    .line 751
    .line 752
    invoke-static {v0, p1}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 757
    .line 758
    monitor-enter v1

    .line 759
    :try_start_1
    iget-object v2, p0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 760
    .line 761
    if-eqz v2, :cond_14

    .line 762
    .line 763
    iget-object v4, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 764
    .line 765
    sget-object v5, Landroidx/compose/runtime/Recomposer$State;->ShuttingDown:Landroidx/compose/runtime/Recomposer$State;

    .line 766
    .line 767
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4, v3, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 774
    .line 775
    .line 776
    iput-object v3, p0, Landroidx/compose/runtime/Recomposer;->workContinuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 777
    .line 778
    new-instance v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 779
    .line 780
    const/16 v3, 0x1a

    .line 781
    .line 782
    invoke-direct {v0, v3, p0, p1}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    invoke-interface {v2, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 786
    .line 787
    .line 788
    goto :goto_a

    .line 789
    :catchall_0
    move-exception v0

    .line 790
    move-object p0, v0

    .line 791
    goto :goto_b

    .line 792
    :cond_14
    iput-object v0, p0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 793
    .line 794
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 795
    .line 796
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 797
    .line 798
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    invoke-virtual {p0, v3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    .line 803
    .line 804
    :goto_a
    monitor-exit v1

    .line 805
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 806
    .line 807
    return-object p0

    .line 808
    :goto_b
    monitor-exit v1

    .line 809
    throw p0

    .line 810
    :pswitch_14
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    .line 813
    .line 814
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/CompositionImpl;->recordReadOf(Ljava/lang/Object;)V

    .line 815
    .line 816
    .line 817
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 818
    .line 819
    return-object p0

    .line 820
    :pswitch_15
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 823
    .line 824
    check-cast p1, Landroidx/compose/runtime/NestedMovableContent;

    .line 825
    .line 826
    iget-object p1, p1, Landroidx/compose/runtime/NestedMovableContent;->container:Landroidx/compose/runtime/MovableContentStateReference;

    .line 827
    .line 828
    if-eq p1, p0, :cond_15

    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_15
    move v4, v5

    .line 832
    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 833
    .line 834
    .line 835
    move-result-object p0

    .line 836
    return-object p0

    .line 837
    :pswitch_16
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 838
    .line 839
    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    .line 840
    .line 841
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 842
    .line 843
    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    cmpl-float v0, v0, v2

    .line 848
    .line 849
    if-lez v0, :cond_16

    .line 850
    .line 851
    new-instance v0, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;

    .line 852
    .line 853
    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 854
    .line 855
    .line 856
    move-result p0

    .line 857
    new-instance v2, Lkotlin/ranges/ClosedFloatRange;

    .line 858
    .line 859
    invoke-direct {v2, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(F)V

    .line 860
    .line 861
    .line 862
    invoke-direct {v0, p0, v2}, Landroidx/compose/ui/semantics/ProgressBarRangeInfo;-><init>(FLkotlin/ranges/ClosedFloatRange;)V

    .line 863
    .line 864
    .line 865
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 866
    .line 867
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 868
    .line 869
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 870
    .line 871
    aget-object v1, v1, v5

    .line 872
    .line 873
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    :cond_16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 877
    .line 878
    return-object p0

    .line 879
    :pswitch_17
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 882
    .line 883
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 884
    .line 885
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 886
    .line 887
    const/16 v0, 0xb

    .line 888
    .line 889
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 890
    .line 891
    .line 892
    return-object p1

    .line 893
    :pswitch_18
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 894
    .line 895
    check-cast p0, Landroidx/compose/ui/text/TextLinkStyles;

    .line 896
    .line 897
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 898
    .line 899
    iget-object v0, p1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 902
    .line 903
    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 904
    .line 905
    const/16 v2, 0xe

    .line 906
    .line 907
    if-eqz v1, :cond_17

    .line 908
    .line 909
    move-object v1, v0

    .line 910
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 911
    .line 912
    iget-object v3, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 913
    .line 914
    if-nez v3, :cond_17

    .line 915
    .line 916
    iget-object v0, v1, Landroidx/compose/ui/text/LinkAnnotation$Url;->url:Ljava/lang/String;

    .line 917
    .line 918
    new-instance v1, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 919
    .line 920
    invoke-direct {v1, v0, p0}, Landroidx/compose/ui/text/LinkAnnotation$Url;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 921
    .line 922
    .line 923
    invoke-static {p1, v1, v4, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 924
    .line 925
    .line 926
    move-result-object p1

    .line 927
    goto :goto_d

    .line 928
    :cond_17
    instance-of v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 929
    .line 930
    if-eqz v1, :cond_18

    .line 931
    .line 932
    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 933
    .line 934
    iget-object v1, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 935
    .line 936
    if-nez v1, :cond_18

    .line 937
    .line 938
    iget-object v0, v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->tag:Ljava/lang/String;

    .line 939
    .line 940
    new-instance v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 941
    .line 942
    invoke-direct {v1, v0, p0}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;)V

    .line 943
    .line 944
    .line 945
    invoke-static {p1, v1, v4, v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 946
    .line 947
    .line 948
    move-result-object p1

    .line 949
    :cond_18
    :goto_d
    return-object p1

    .line 950
    :pswitch_19
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast p0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    .line 953
    .line 954
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 955
    .line 956
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 957
    .line 958
    .line 959
    new-instance p1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 960
    .line 961
    const/16 v0, 0xa

    .line 962
    .line 963
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 964
    .line 965
    .line 966
    return-object p1

    .line 967
    :pswitch_1a
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 970
    .line 971
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 972
    .line 973
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object p0

    .line 977
    check-cast p0, Ljava/lang/Number;

    .line 978
    .line 979
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 980
    .line 981
    .line 982
    move-result p0

    .line 983
    invoke-static {p1, p0}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F

    .line 984
    .line 985
    .line 986
    move-result v0

    .line 987
    invoke-static {p1, p0}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F

    .line 988
    .line 989
    .line 990
    move-result p0

    .line 991
    cmpg-float v2, p0, v2

    .line 992
    .line 993
    if-nez v2, :cond_19

    .line 994
    .line 995
    goto :goto_e

    .line 996
    :cond_19
    div-float v1, v0, p0

    .line 997
    .line 998
    :goto_e
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 999
    .line 1000
    .line 1001
    sget-wide v0, Landroidx/compose/material3/ModalBottomSheetKt;->PredictiveBackChildTransformOrigin:J

    .line 1002
    .line 1003
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 1004
    .line 1005
    .line 1006
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1007
    .line 1008
    return-object p0

    .line 1009
    :pswitch_1b
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1010
    .line 1011
    check-cast p0, Landroidx/compose/runtime/State;

    .line 1012
    .line 1013
    move-object v0, p1

    .line 1014
    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 1015
    .line 1016
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p0

    .line 1020
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 1021
    .line 1022
    iget-wide v1, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 1023
    .line 1024
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 1025
    .line 1026
    invoke-static {v1, v2, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 1027
    .line 1028
    .line 1029
    move-result p0

    .line 1030
    if-nez p0, :cond_1a

    .line 1031
    .line 1032
    const/4 v6, 0x0

    .line 1033
    const/16 v7, 0x7e

    .line 1034
    .line 1035
    const-wide/16 v3, 0x0

    .line 1036
    .line 1037
    const/4 v5, 0x0

    .line 1038
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/Modifier$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 1039
    .line 1040
    .line 1041
    :cond_1a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1042
    .line 1043
    return-object p0

    .line 1044
    :pswitch_1c
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast p0, Lcoil3/disk/DiskLruCache;

    .line 1047
    .line 1048
    check-cast p1, Ljava/io/IOException;

    .line 1049
    .line 1050
    invoke-static {p0, p1}, Lcoil3/disk/DiskLruCache;->$r8$lambda$qm1epoAzn48kiiQmSXkh5Col7Vs(Lcoil3/disk/DiskLruCache;Ljava/io/IOException;)Lkotlin/Unit;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p0

    .line 1054
    return-object p0

    .line 1055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
