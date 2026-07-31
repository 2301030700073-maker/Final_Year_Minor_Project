.class public final Lapp/k9mail/feature/migration/provider/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accountManager$delegate:Lkotlin/Lazy;

.field public final settingsExporter$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/feature/migration/provider/SettingsProvider$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lapp/k9mail/feature/migration/provider/SettingsProvider$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/migration/provider/SettingsProvider;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lapp/k9mail/feature/migration/provider/SettingsProvider;->accountManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lapp/k9mail/feature/migration/provider/SettingsProvider$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lapp/k9mail/feature/migration/provider/SettingsProvider$special$$inlined$inject$default$1;-><init>(Lapp/k9mail/feature/migration/provider/SettingsProvider;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lapp/k9mail/feature/migration/provider/SettingsProvider;->settingsExporter$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "application/x-k9settings"

    .line 5
    .line 6
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final onCreate()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lkotlin/Pair;

    .line 19
    .line 20
    const-string v0, "com.fsck.k9"

    .line 21
    .line 22
    const-string v1, "55c8a523b97335f5bf60dfe8a9f3e1dde744516d9357e80a925b7b22e4f55524"

    .line 23
    .line 24
    invoke-direct {p2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lkotlin/Pair;

    .line 28
    .line 29
    const-string v2, "c430665e3662253b2078dcda350c2c6ce44d915a3d8a147b63ced619bb9e8576"

    .line 30
    .line 31
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lkotlin/Pair;

    .line 35
    .line 36
    const-string v2, "net.thunderbird.android"

    .line 37
    .line 38
    const-string v3, "b6524779b3dbbc5ac17a5ac271ddb29dcfbf723578c238e03c3c217811356dd1"

    .line 39
    .line 40
    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lkotlin/Pair;

    .line 44
    .line 45
    const-string v3, "net.thunderbird.android.beta"

    .line 46
    .line 47
    const-string v4, "056bfafb450249502fd9226228704c2529e1b822da06760d47a85c9557741fbd"

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lkotlin/Pair;

    .line 53
    .line 54
    const-string v4, "net.thunderbird.android.daily"

    .line 55
    .line 56
    const-string v5, "c48d74a75c45cd362b0ff2c1e9756f541dee816163e3684a9fd59f6c3ae949b2"

    .line 57
    .line 58
    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x5

    .line 62
    new-array v4, v4, [Lkotlin/Pair;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    aput-object p2, v4, v5

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    aput-object v1, v4, p2

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    aput-object v0, v4, v1

    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    aput-object v2, v4, v0

    .line 75
    .line 76
    const/4 v0, 0x4

    .line 77
    aput-object v3, v4, v0

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v3, 0x0

    .line 88
    if-nez v2, :cond_0

    .line 89
    .line 90
    :goto_0
    move v0, v5

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_0
    new-instance v4, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 94
    .line 95
    invoke-direct {v4, v1, v0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    const/16 v6, 0x19

    .line 101
    .line 102
    invoke-direct {v0, v2, v6}, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lkotlin/sequences/FilteringSequence;

    .line 106
    .line 107
    invoke-direct {v6, v4, p2, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/16 v4, 0xc

    .line 113
    .line 114
    invoke-direct {v0, v4}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v4, Lkotlin/sequences/TakeWhileSequence;

    .line 118
    .line 119
    invoke-direct {v4, v6, v0, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move-object v0, v3

    .line 134
    :goto_1
    if-nez v0, :cond_2

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    const/16 v6, 0x1c

    .line 140
    .line 141
    if-lt v4, v6, :cond_6

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    const/high16 v4, 0x8000000

    .line 147
    .line 148
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 153
    .line 154
    if-eqz p1, :cond_4

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_3

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->hasPastSigningCertificates()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    :cond_4
    :goto_2
    move-object p1, v3

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/content/pm/Signature;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    const/16 v4, 0x40

    .line 188
    .line 189
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 194
    .line 195
    if-eqz p1, :cond_4

    .line 196
    .line 197
    array-length v4, p1

    .line 198
    if-eq v4, p2, :cond_7

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/content/pm/Signature;

    .line 206
    .line 207
    :goto_3
    if-nez p1, :cond_8

    .line 208
    .line 209
    const-string p1, "Couldn\'t retrieve caller signature"

    .line 210
    .line 211
    new-array v0, v5, [Ljava/lang/Object;

    .line 212
    .line 213
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_8
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Lcom/jcraft/jzlib/Adler32;->of$default([B)Lokio/ByteString;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string v4, "SHA-256"

    .line 231
    .line 232
    invoke-virtual {p1, v4}, Lokio/ByteString;->digest$okio(Ljava/lang/String;)Lokio/ByteString;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    new-array v1, v1, [Ljava/lang/Object;

    .line 247
    .line 248
    aput-object v2, v1, v5

    .line 249
    .line 250
    aput-object p1, v1, p2

    .line 251
    .line 252
    const-string p1, "Caller %s signature fingerprint matches %s"

    .line 253
    .line 254
    invoke-static {p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_9
    new-array v1, v1, [Ljava/lang/Object;

    .line 259
    .line 260
    aput-object v2, v1, v5

    .line 261
    .line 262
    aput-object p1, v1, p2

    .line 263
    .line 264
    const-string p1, "Failed! Signature mismatch for calling package %s (%s)"

    .line 265
    .line 266
    invoke-static {p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :goto_4
    if-nez v0, :cond_a

    .line 270
    .line 271
    const-string p0, "Caller must be in the allowlist"

    .line 272
    .line 273
    new-array p1, v5, [Ljava/lang/Object;

    .line 274
    .line 275
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-object v3

    .line 279
    :cond_a
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    aget-object v0, p1, v5

    .line 287
    .line 288
    aget-object p1, p1, p2

    .line 289
    .line 290
    new-instance p2, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 291
    .line 292
    const/16 v1, 0xb

    .line 293
    .line 294
    invoke-direct {p2, v1, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    const/16 p0, 0x1f

    .line 298
    .line 299
    invoke-static {v3, p2, p0}, Lorg/jsoup/nodes/NodeUtils;->thread$default(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 300
    .line 301
    .line 302
    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
