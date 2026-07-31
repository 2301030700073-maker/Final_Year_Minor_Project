.class public final Lcom/bumptech/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;
.implements Landroidx/lifecycle/viewmodel/CreationExtras$Key;
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
.implements Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaInitializer;
.implements Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;


# static fields
.field public static DEFAULT:Lcom/bumptech/glide/GlideBuilder$1;


# direct methods
.method public static addAutocryptPeerUpdateToIntentIfPresent(Lcom/fsck/k9/mail/internet/MimeMessage;Landroid/content/Intent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Autocrypt"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-array v0, v1, [Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v3, :cond_a

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->getAllHeaderParameters(Ljava/lang/String;)Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v6, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    const-string v3, "type"

    .line 60
    .line 61
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    const-string v7, "keydata"

    .line 68
    .line 69
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Ljava/lang/String;

    .line 74
    .line 75
    const-string v8, "addr"

    .line 76
    .line 77
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Ljava/lang/String;

    .line 82
    .line 83
    const-string v9, "prefer-encrypt"

    .line 84
    .line 85
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    check-cast v9, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v7, :cond_2

    .line 92
    .line 93
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 94
    .line 95
    invoke-static {v7}, Lcom/jcraft/jzlib/Adler32;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-object v10, v5

    .line 101
    :goto_1
    const-string v11, "AutocryptHeaderParser"

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    const-string v12, "1"

    .line 106
    .line 107
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-nez v12, :cond_3

    .line 112
    .line 113
    const-string v6, "Unsupported type parameter: "

    .line 114
    .line 115
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    new-array v4, v4, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v3, v4, v1

    .line 122
    .line 123
    invoke-static {v11, v4}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    if-nez v7, :cond_4

    .line 128
    .line 129
    new-array v3, v4, [Ljava/lang/Object;

    .line 130
    .line 131
    const-string v4, "Missing key parameter"

    .line 132
    .line 133
    aput-object v4, v3, v1

    .line 134
    .line 135
    invoke-static {v11, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    if-nez v10, :cond_5

    .line 140
    .line 141
    new-array v3, v4, [Ljava/lang/Object;

    .line 142
    .line 143
    const-string v4, "Error parsing base64 data"

    .line 144
    .line 145
    aput-object v4, v3, v1

    .line 146
    .line 147
    invoke-static {v11, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    if-nez v8, :cond_6

    .line 152
    .line 153
    new-array v3, v4, [Ljava/lang/Object;

    .line 154
    .line 155
    const-string v4, "No \'to\' header found"

    .line 156
    .line 157
    aput-object v4, v3, v1

    .line 158
    .line 159
    invoke-static {v11, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/lang/Iterable;

    .line 168
    .line 169
    instance-of v4, v3, Ljava/util/Collection;

    .line 170
    .line 171
    if-eqz v4, :cond_7

    .line 172
    .line 173
    move-object v4, v3

    .line 174
    check-cast v4, Ljava/util/Collection;

    .line 175
    .line 176
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_7

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_9

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    .line 199
    const-string v7, "_"

    .line 200
    .line 201
    invoke-static {v4, v7, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_8

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_9
    :goto_2
    new-instance v5, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    .line 209
    .line 210
    invoke-virtual {v10}, Lokio/ByteString;->toByteArray()[B

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const-string v4, "mutual"

    .line 215
    .line 216
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-direct {v5, v6, v8, v3, v4}, Lcom/fsck/k9/autocrypt/AutocryptHeader;-><init>(Ljava/util/LinkedHashMap;Ljava/lang/String;[BZ)V

    .line 221
    .line 222
    .line 223
    :goto_3
    if-eqz v5, :cond_1

    .line 224
    .line 225
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-ne v0, v4, :cond_b

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    :cond_b
    check-cast v5, Lcom/fsck/k9/autocrypt/AutocryptHeader;

    .line 241
    .line 242
    if-nez v5, :cond_c

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_c
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    aget-object v0, v0, v1

    .line 250
    .line 251
    iget-object v0, v0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v2, v5, Lcom/fsck/k9/autocrypt/AutocryptHeader;->addr:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_d

    .line 260
    .line 261
    :goto_4
    return v1

    .line 262
    :cond_d
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 267
    .line 268
    invoke-virtual {v1, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-eqz v2, :cond_e

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_e
    move-object v1, p0

    .line 276
    :goto_5
    iget-object p0, v5, Lcom/fsck/k9/autocrypt/AutocryptHeader;->keyData:[B

    .line 277
    .line 278
    iget-boolean v2, v5, Lcom/fsck/k9/autocrypt/AutocryptHeader;->isPreferEncryptMutual:Z

    .line 279
    .line 280
    new-instance v3, Lorg/openintents/openpgp/AutocryptPeerUpdate;

    .line 281
    .line 282
    if-eqz v2, :cond_f

    .line 283
    .line 284
    sget-object v2, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->MUTUAL:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_f
    sget-object v2, Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;->NOPREFERENCE:Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;

    .line 288
    .line 289
    :goto_6
    invoke-direct {v3, p0, v1, v2}, Lorg/openintents/openpgp/AutocryptPeerUpdate;-><init>([BLjava/util/Date;Lorg/openintents/openpgp/AutocryptPeerUpdate$PreferEncrypt;)V

    .line 290
    .line 291
    .line 292
    const-string p0, "autocrypt_peer_id"

    .line 293
    .line 294
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    const-string p0, "autocrypt_peer_update"

    .line 298
    .line 299
    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    .line 301
    .line 302
    return v4
.end method

.method public static fromInt(I)Lnet/thunderbird/core/android/account/DeletePolicy;
    .locals 4

    .line 1
    sget-object v0, Lnet/thunderbird/core/android/account/DeletePolicy;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    invoke-direct {v1, v2, v0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v3, v0

    .line 24
    check-cast v3, Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 25
    .line 26
    iget v3, v3, Lnet/thunderbird/core/android/account/DeletePolicy;->setting:I

    .line 27
    .line 28
    if-ne v3, p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v2

    .line 32
    :goto_0
    check-cast v0, Lnet/thunderbird/core/android/account/DeletePolicy;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    const-string v0, "DeletePolicy "

    .line 38
    .line 39
    const-string v1, " unknown"

    .line 40
    .line 41
    invoke-static {p0, v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2
.end method

.method public static isWhitespace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0xd

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    array-length v0, p1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static skipWhiteSpace(Lorg/apache/hc/core5/util/CharArrayBuffer;Landroidx/compose/material3/FabPlacement;)V
    .locals 4

    .line 1
    iget v0, p1, Landroidx/compose/material3/FabPlacement;->height:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/compose/material3/FabPlacement;->left:I

    .line 4
    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lorg/apache/hc/core5/util/CharArrayBuffer;->array:[C

    .line 9
    .line 10
    aget-char v3, v3, v0

    .line 11
    .line 12
    invoke-static {v3}, Lcom/bumptech/glide/GlideBuilder$1;->isWhitespace(C)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/compose/material3/FabPlacement;->updatePos(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 1
    new-instance p0, Lcom/bumptech/glide/RequestManager;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public initializeExtractor(Landroid/media/MediaExtractor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public initializeRetriever(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDiagnosticReceived()V
    .locals 1

    .line 1
    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    .line 2
    .line 3
    const-string v0, "ProfileInstaller"

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 2

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, ""

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x6

    .line 37
    const-string v1, "ProfileInstaller"

    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    const/16 v0, 0x8

    .line 45
    .line 46
    if-eq p1, v0, :cond_0

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 53
    .line 54
    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollLimit(IIIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onScrollProgress(IIII)V
    .locals 0

    .line 1
    return-void
.end method
