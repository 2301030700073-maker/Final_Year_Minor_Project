.class public final synthetic Lcoil3/UriKt$$ExternalSyntheticBUOutline0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lapp/k9mail/legacy/mailstore/FolderMapper;
.implements Lcoil3/EventListener$Factory;
.implements Lnet/thunderbird/feature/notification/api/sender/compat/NotificationSenderCompat$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic m(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/graphics/ColorSpace$Named;
    .locals 1

    .line 28
    sget-object v0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/graphics/ColorSpace;
    .locals 0

    .line 29
    check-cast p0, Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;
    .locals 0

    .line 30
    check-cast p0, Landroid/graphics/ImageDecoder$Source;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;
    .locals 0

    .line 31
    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    return-object p0
.end method

.method public static synthetic m(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 32
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()V
    .locals 1

    .line 33
    new-instance v0, Lorg/jsoup/SerializationException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static bridge synthetic m(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 34
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic m(Ljava/lang/String;)V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static bridge synthetic m$1()Landroid/graphics/ColorSpace$Named;
    .locals 1

    .line 19
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static synthetic m$1(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    new-instance p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Landroidx/work/WorkInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object p0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public create(Lcoil3/request/ImageRequest;)Lcoil3/EventListener;
    .locals 0

    .line 1
    sget p0, Lcoil3/EventListener$Factory$-CC;->$r8$clinit:I

    .line 2
    .line 3
    sget-object p0, Lcoil3/EventListener;->NONE:Lcoil3/EventListener;

    .line 4
    .line 5
    return-object p0
.end method

.method public map(Lokhttp3/ConnectionPool;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->$r8$classId:I

    .line 6
    .line 7
    sget-object v2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 8
    .line 9
    sget-object v3, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 10
    .line 11
    sget-object v4, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 12
    .line 13
    sget-object v5, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 14
    .line 15
    sget-object v6, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 16
    .line 17
    sget-object v7, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x2

    .line 21
    sget-object v10, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Landroid/database/Cursor;

    .line 29
    .line 30
    const/16 v1, 0xb

    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_1
    iget-object v0, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/database/Cursor;

    .line 47
    .line 48
    const/4 v1, 0x3

    .line 49
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :pswitch_2
    new-instance v0, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;

    .line 55
    .line 56
    new-instance v11, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 57
    .line 58
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getId()J

    .line 59
    .line 60
    .line 61
    move-result-wide v12

    .line 62
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->serverIdOrThrow()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Landroid/database/Cursor;

    .line 73
    .line 74
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {v9}, Landroidx/room/util/SchemaInfoUtilKt;->fromDatabaseFolderType(Ljava/lang/String;)Lcom/fsck/k9/mail/FolderType;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    packed-switch v9, :pswitch_data_1

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :pswitch_3
    move-object/from16 v16, v7

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_4
    move-object/from16 v16, v6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_5
    move-object/from16 v16, v5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_6
    move-object/from16 v16, v4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_7
    move-object/from16 v16, v3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_8
    move-object/from16 v16, v10

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_9
    move-object/from16 v16, v2

    .line 116
    .line 117
    :goto_0
    invoke-direct/range {v11 .. v16}, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;-><init>(JLjava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 118
    .line 119
    .line 120
    move-object v2, v11

    .line 121
    const/4 v3, 0x5

    .line 122
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x1

    .line 128
    if-ne v3, v5, :cond_0

    .line 129
    .line 130
    move v3, v5

    .line 131
    goto :goto_1

    .line 132
    :cond_0
    move v3, v4

    .line 133
    :goto_1
    const/4 v6, 0x6

    .line 134
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-ne v6, v5, :cond_1

    .line 139
    .line 140
    move v6, v4

    .line 141
    move v4, v5

    .line 142
    goto :goto_2

    .line 143
    :cond_1
    move v6, v4

    .line 144
    :goto_2
    const/4 v7, 0x7

    .line 145
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-ne v7, v5, :cond_2

    .line 150
    .line 151
    move v7, v5

    .line 152
    goto :goto_3

    .line 153
    :cond_2
    move v7, v6

    .line 154
    :goto_3
    const/16 v8, 0x8

    .line 155
    .line 156
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-ne v8, v5, :cond_3

    .line 161
    .line 162
    move v8, v6

    .line 163
    move v6, v5

    .line 164
    goto :goto_4

    .line 165
    :cond_3
    move v8, v6

    .line 166
    :goto_4
    const/16 v9, 0x9

    .line 167
    .line 168
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-ne v9, v5, :cond_4

    .line 173
    .line 174
    move v9, v7

    .line 175
    move v7, v5

    .line 176
    goto :goto_5

    .line 177
    :cond_4
    move v9, v7

    .line 178
    move v7, v8

    .line 179
    :goto_5
    const/16 v10, 0xa

    .line 180
    .line 181
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-ne v1, v5, :cond_5

    .line 186
    .line 187
    move v8, v5

    .line 188
    :cond_5
    move-object v1, v0

    .line 189
    move v5, v9

    .line 190
    invoke-direct/range {v1 .. v8}, Lapp/k9mail/legacy/mailstore/RemoteFolderDetails;-><init>(Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;ZZZZZZ)V

    .line 191
    .line 192
    .line 193
    move-object v8, v1

    .line 194
    :goto_6
    return-object v8

    .line 195
    :pswitch_a
    new-instance v0, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 196
    .line 197
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getId()J

    .line 198
    .line 199
    .line 200
    move-result-wide v11

    .line 201
    move-object v13, v3

    .line 202
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->serverIdOrThrow()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    move-object v14, v4

    .line 207
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, Landroid/database/Cursor;

    .line 214
    .line 215
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Landroidx/room/util/SchemaInfoUtilKt;->fromDatabaseFolderType(Ljava/lang/String;)Lcom/fsck/k9/mail/FolderType;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    packed-switch v1, :pswitch_data_2

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 234
    .line 235
    .line 236
    goto :goto_9

    .line 237
    :pswitch_b
    move-object v5, v7

    .line 238
    :goto_7
    :pswitch_c
    move-wide v1, v11

    .line 239
    goto :goto_8

    .line 240
    :pswitch_d
    move-object v5, v6

    .line 241
    goto :goto_7

    .line 242
    :pswitch_e
    move-wide v1, v11

    .line 243
    move-object v5, v14

    .line 244
    goto :goto_8

    .line 245
    :pswitch_f
    move-wide v1, v11

    .line 246
    move-object v5, v13

    .line 247
    goto :goto_8

    .line 248
    :pswitch_10
    move-object v5, v10

    .line 249
    goto :goto_7

    .line 250
    :pswitch_11
    move-object v5, v2

    .line 251
    goto :goto_7

    .line 252
    :goto_8
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;-><init>(JLjava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V

    .line 253
    .line 254
    .line 255
    move-object v8, v0

    .line 256
    :goto_9
    return-object v8

    .line 257
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public onResult(Lnet/thunderbird/core/outcome/Outcome;)V
    .locals 2

    .line 1
    iget p0, p0, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "notificationDismisser outcome = "

    .line 10
    .line 11
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-array p1, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "notificationSender outcome = "

    .line 30
    .line 31
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-array p1, v0, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
