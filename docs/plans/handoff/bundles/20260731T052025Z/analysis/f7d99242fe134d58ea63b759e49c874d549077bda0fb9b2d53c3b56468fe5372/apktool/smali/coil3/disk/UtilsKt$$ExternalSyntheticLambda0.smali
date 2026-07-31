.class public final synthetic Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcoil3/network/okhttp/OkHttpNetworkFetcher;->$r8$lambda$OErbyFWnyF62FgArSo8Hm69duIM()Lcoil3/network/NetworkClient;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-static {}, Lcoil3/network/NetworkFetcher$Factory;->$r8$lambda$nh0Ov3KUCmLPT8pJHa_p_HjnuU4()Lcoil3/network/CacheStrategy;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    invoke-static {}, Lcoil3/network/NetworkFetcher$Factory;->$r8$lambda$FNajmD22G6E4q4iGHkUlzjw8IbY()Lcoil3/network/ConcurrentRequestStrategy;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_2
    invoke-static {}, Lcoil3/network/NetworkFetcher$Factory;->$r8$lambda$cszjLS2lwLODEwutXAK7egofyaY()Lcoil3/network/CacheStrategy;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_3
    invoke-static {}, Lcoil3/network/NetworkFetcher$Factory;->$r8$lambda$vMPCKOlDO5HaJYb_JAn-4Ay1gSI()Lcoil3/network/ConcurrentRequestStrategy;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_4
    invoke-static {}, Lcoil3/decode/BlackholeDecoder$Factory;->$r8$lambda$ytEzJ2RGVMPaQsK8I1EVyBmHznI()Lcoil3/Image;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_5
    invoke-static {}, Lcoil3/RealImageLoaderKt;->$r8$lambda$d-_5ZvXbUps7cuKLb28Rugzpxu0()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_6
    invoke-static {}, Lcoil3/RealImageLoaderKt;->$r8$lambda$cEwQTzbA1qsw_wppO_RsTZUcvnY()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_7
    invoke-static {}, Lcoil3/ImageLoader$Builder;->$r8$lambda$MGO0irA--7QKthBo2Bi6bGehgPg()Lcoil3/disk/DiskCache;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_8
    invoke-static {}, Lcoil3/ImageLoader$Builder;->$r8$lambda$vGjja16SmQ5zzZ7ASSAYuT3ZbTY()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_9
    const-string p0, "Error while updating unread widget(s)"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_a
    sget p0, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationActivity;->$r8$clinit:I

    .line 64
    .line 65
    const-string p0, "Received an invalid widget ID"

    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_b
    const-string p0, "Error reading settings file"

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_c
    const-string p0, "Error importing settings"

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_d
    const-string p0, "No browser found to start OAuth login flow."

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_e
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0

    .line 108
    :pswitch_12
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_13
    const-string p0, "Failed to launch custom tabs. Browser is not available."

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_14
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_15
    const-string p0, "Starting to observe window layout info"

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_16
    const-string p0, "Cleaning up"

    .line 129
    .line 130
    return-object p0

    .line 131
    :pswitch_17
    const-string p0, "Stopping observation"

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_18
    new-instance p0, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 135
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    return-object p0

    .line 140
    :pswitch_19
    :try_start_0
    const-class p0, Landroidx/window/layout/WindowInfoTracker;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-eqz p0, :cond_0

    .line 147
    .line 148
    new-instance v4, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 149
    .line 150
    new-instance v5, Landroidx/window/core/ConsumerAdapter;

    .line 151
    .line 152
    invoke-direct {v5, p0, v2}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;I)V

    .line 153
    .line 154
    .line 155
    invoke-direct {v4, p0, v5}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    move-object v4, v3

    .line 160
    :goto_0
    if-eqz v4, :cond_5

    .line 161
    .line 162
    invoke-virtual {v4}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    new-instance v5, Landroidx/window/core/ConsumerAdapter;

    .line 169
    .line 170
    invoke-direct {v5, p0, v2}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    const/16 v2, 0x9

    .line 178
    .line 179
    if-lt p0, v2, :cond_1

    .line 180
    .line 181
    new-instance p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi9;

    .line 182
    .line 183
    invoke-direct {p0, v4, v5}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    move-object v3, p0

    .line 187
    goto :goto_2

    .line 188
    :cond_1
    const/4 v2, 0x6

    .line 189
    if-lt p0, v2, :cond_2

    .line 190
    .line 191
    new-instance p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi6;

    .line 192
    .line 193
    invoke-direct {p0, v4, v5}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    if-lt p0, v0, :cond_3

    .line 198
    .line 199
    new-instance p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;

    .line 200
    .line 201
    invoke-direct {p0, v4, v5}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi2;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    if-ne p0, v1, :cond_4

    .line 206
    .line 207
    new-instance p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;

    .line 208
    .line 209
    invoke-direct {p0, v4, v5}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi1;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    new-instance p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;

    .line 214
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catchall_0
    :cond_5
    :goto_2
    return-object v3

    .line 220
    :pswitch_1a
    :try_start_1
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 221
    .line 222
    sget-object p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->getThreadSessionMethod$delegate:Lkotlin/Lazy;

    .line 223
    .line 224
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    check-cast p0, Ljava/lang/reflect/Method;

    .line 229
    .line 230
    if-eqz p0, :cond_6

    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    if-eqz p0, :cond_6

    .line 237
    .line 238
    const-string v4, "beginTransaction"

    .line 239
    .line 240
    const/4 v5, 0x4

    .line 241
    new-array v5, v5, [Ljava/lang/Class;

    .line 242
    .line 243
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 244
    .line 245
    aput-object v6, v5, v2

    .line 246
    .line 247
    const-class v2, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 248
    .line 249
    aput-object v2, v5, v1

    .line 250
    .line 251
    aput-object v6, v5, v0

    .line 252
    .line 253
    const-class v0, Landroid/os/CancellationSignal;

    .line 254
    .line 255
    const/4 v1, 0x3

    .line 256
    aput-object v0, v5, v1

    .line 257
    .line 258
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 259
    .line 260
    .line 261
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 262
    :catchall_1
    :cond_6
    return-object v3

    .line 263
    :pswitch_1b
    :try_start_2
    const-class p0, Landroid/database/sqlite/SQLiteDatabase;

    .line 264
    .line 265
    const-string v0, "getThreadSession"

    .line 266
    .line 267
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    .line 273
    .line 274
    move-object v3, p0

    .line 275
    :catchall_2
    return-object v3

    .line 276
    :pswitch_1c
    invoke-static {}, Lcoil3/disk/UtilsKt;->$r8$lambda$4QhXLtszi88U5QXCXk-a4I0syjQ()Lcoil3/disk/DiskCache;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0

    .line 281
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
