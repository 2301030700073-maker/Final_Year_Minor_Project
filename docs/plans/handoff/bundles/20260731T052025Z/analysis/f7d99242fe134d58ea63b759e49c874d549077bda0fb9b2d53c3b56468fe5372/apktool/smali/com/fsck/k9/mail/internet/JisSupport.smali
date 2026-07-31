.class public abstract Lcom/fsck/k9/mail/internet/JisSupport;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ASCII_ESCAPE_SEQUENCE:[B

.field public static final ATEXT_SPECIAL:[C

.field public static final CHARSET_FALLBACK_MAP:[[Ljava/lang/String;

.field public static final TSPECIALS:[C


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [[Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "koi8-u"

    .line 5
    .line 6
    const-string v2, "koi8-r"

    .line 7
    .line 8
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    const-string v1, "iso-2022-jp-[\\d]+"

    .line 16
    .line 17
    const-string v2, "iso-2022-jp"

    .line 18
    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    sput-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->CHARSET_FALLBACK_MAP:[[Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [B

    .line 30
    .line 31
    fill-array-data v0, :array_0

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->ASCII_ESCAPE_SEQUENCE:[B

    .line 35
    .line 36
    const/16 v0, 0xf

    .line 37
    .line 38
    new-array v0, v0, [C

    .line 39
    .line 40
    fill-array-data v0, :array_1

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->TSPECIALS:[C

    .line 44
    .line 45
    const/16 v0, 0x13

    .line 46
    .line 47
    new-array v0, v0, [C

    .line 48
    .line 49
    fill-array-data v0, :array_2

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->ATEXT_SPECIAL:[C

    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 1
        0x1bt
        0x28t
        0x42t
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 2
        0x28s
        0x29s
        0x3cs
        0x3es
        0x40s
        0x2cs
        0x3bs
        0x3as
        0x5cs
        0x22s
        0x2fs
        0x5bs
        0x5ds
        0x3fs
        0x3ds
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    nop

    .line 81
    :array_2
    .array-data 2
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x2as
        0x2bs
        0x2ds
        0x2fs
        0x3ds
        0x3fs
        0x5es
        0x5fs
        0x60s
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public static charsetDecode(Lcom/fsck/k9/backend/imap/ImapSync;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lokio/ByteString;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lokio/Buffer$inputStream$1;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, p0}, Lcom/fsck/k9/mail/internet/JisSupport;->readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static checkHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/16 v3, 0x3a

    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 33
    .line 34
    const-string v0, "Header name contains characters not allowed: "

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 v0, -0x1

    .line 41
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/lit8 p0, p0, 0x2

    .line 50
    .line 51
    new-instance v1, Landroidx/collection/CircularArray;

    .line 52
    .line 53
    invoke-direct {v1, p1, p0}, Landroidx/collection/CircularArray;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->endReached()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const-string p1, "Line exceeds 998 characters"

    .line 61
    .line 62
    if-nez p0, :cond_b

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->peek()C

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/16 v2, 0xd

    .line 69
    .line 70
    if-ne p0, v2, :cond_7

    .line 71
    .line 72
    const-string p0, "CR"

    .line 73
    .line 74
    invoke-virtual {v1, v2, p0}, Landroidx/collection/CircularArray;->expect(CLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p0, "LF"

    .line 78
    .line 79
    const/16 v2, 0xa

    .line 80
    .line 81
    invoke-virtual {v1, v2, p0}, Landroidx/collection/CircularArray;->expect(CLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget p0, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 85
    .line 86
    const/16 v2, 0x3e8

    .line 87
    .line 88
    if-gt p0, v2, :cond_6

    .line 89
    .line 90
    iput v0, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->endReached()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->peek()C

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->skip()V

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->endReached()Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->peek()C

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_3

    .line 126
    .line 127
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->skip()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->endReached()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->peek()C

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-eqz p0, :cond_4

    .line 146
    .line 147
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->skip()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 152
    .line 153
    const-string p1, "Expected VCHAR"

    .line 154
    .line 155
    iget v0, v1, Landroidx/collection/CircularArray;->tail:I

    .line 156
    .line 157
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :cond_5
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 162
    .line 163
    const-string p1, "Expected WSP"

    .line 164
    .line 165
    iget v0, v1, Landroidx/collection/CircularArray;->tail:I

    .line 166
    .line 167
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_6
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 172
    .line 173
    iget v0, v1, Landroidx/collection/CircularArray;->tail:I

    .line 174
    .line 175
    add-int/lit8 v0, v0, -0x1

    .line 176
    .line 177
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_7
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_9

    .line 186
    .line 187
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_8

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    new-instance p1, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 195
    .line 196
    const-string v0, "Unexpected character ("

    .line 197
    .line 198
    const-string v2, ")"

    .line 199
    .line 200
    invoke-static {p0, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    iget v0, v1, Landroidx/collection/CircularArray;->tail:I

    .line 205
    .line 206
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    throw p1

    .line 210
    :cond_9
    :goto_3
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->endReached()Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-nez p0, :cond_2

    .line 215
    .line 216
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->peek()C

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_a

    .line 225
    .line 226
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-eqz p0, :cond_2

    .line 231
    .line 232
    :cond_a
    invoke-virtual {v1}, Landroidx/collection/CircularArray;->skip()V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_b
    iget p0, v1, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 237
    .line 238
    const/16 v0, 0x3e6

    .line 239
    .line 240
    if-gt p0, v0, :cond_c

    .line 241
    .line 242
    return-void

    .line 243
    :cond_c
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 244
    .line 245
    iget v0, v1, Landroidx/collection/CircularArray;->tail:I

    .line 246
    .line 247
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    throw p0
.end method

.method public static closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->closeWithoutDeleting()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    array-length v3, p0

    .line 20
    move v4, v1

    .line 21
    :goto_1
    if-ge v1, v3, :cond_3

    .line 22
    .line 23
    aget-object v5, p0, v1

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v7, v4, 0x2

    .line 36
    .line 37
    add-int/2addr v7, v6

    .line 38
    add-int/2addr v7, v2

    .line 39
    const/16 v8, 0x4e

    .line 40
    .line 41
    if-le v7, v8, :cond_1

    .line 42
    .line 43
    const-string v4, ",\r\n "

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    move v4, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    if-lez v1, :cond_2

    .line 56
    .line 57
    const-string v7, ", "

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x2

    .line 63
    .line 64
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    add-int/2addr v4, v6

    .line 68
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    const-string p0, "addresses must not be empty"

    .line 77
    .line 78
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static final decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/mail/internet/MessageIdParser;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readHeaderValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeValue;

    .line 27
    .line 28
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 29
    .line 30
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 31
    .line 32
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeValue;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->readBasicParameters(Lcom/fsck/k9/mail/internet/MessageIdParser;)Lcom/fsck/k9/mail/internet/BasicParameterResults;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, v0, Lcom/fsck/k9/mail/internet/BasicParameterResults;->parameters:Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/fsck/k9/mail/internet/BasicParameterResults;->ignoredParameters:Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/BasicParameterResults;->parserErrorIndex:Ljava/lang/Integer;

    .line 45
    .line 46
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const/4 v10, 0x0

    .line 69
    if-eqz v9, :cond_10

    .line 70
    .line 71
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    check-cast v9, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    move-object v14, v11

    .line 82
    check-cast v14, Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    check-cast v9, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 89
    .line 90
    const/16 v11, 0x2a

    .line 91
    .line 92
    invoke-static {v11, v14}, Lkotlin/text/StringsKt;->endsWith$default(CLjava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_1

    .line 97
    .line 98
    iget-boolean v13, v9, Lcom/fsck/k9/mail/internet/ParameterValue;->wasToken:Z

    .line 99
    .line 100
    if-nez v13, :cond_1

    .line 101
    .line 102
    move-object/from16 p0, v4

    .line 103
    .line 104
    goto/16 :goto_9

    .line 105
    .line 106
    :cond_1
    new-array v13, v1, [C

    .line 107
    .line 108
    aput-char v11, v13, v10

    .line 109
    .line 110
    invoke-static {v14, v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    const/4 v15, 0x2

    .line 119
    move-object/from16 p0, v4

    .line 120
    .line 121
    if-gt v15, v13, :cond_6

    .line 122
    .line 123
    const/4 v4, 0x4

    .line 124
    if-ge v13, v4, :cond_6

    .line 125
    .line 126
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/4 v13, 0x3

    .line 131
    if-ne v4, v13, :cond_2

    .line 132
    .line 133
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-lez v4, :cond_2

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_2
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    move-object v13, v4

    .line 151
    check-cast v13, Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Ljava/lang/String;

    .line 158
    .line 159
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-ne v1, v15, :cond_3

    .line 164
    .line 165
    if-eqz v12, :cond_3

    .line 166
    .line 167
    move-object/from16 v15, p0

    .line 168
    .line 169
    :goto_1
    const/4 v1, 0x1

    .line 170
    goto :goto_5

    .line 171
    :cond_3
    const-string v1, "0"

    .line 172
    .line 173
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    move-object v15, v1

    .line 184
    goto :goto_1

    .line 185
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    const/16 v15, 0x30

    .line 193
    .line 194
    if-lez v1, :cond_5

    .line 195
    .line 196
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v1, v15, v10}, Lkotlin/text/CharsKt__CharKt;->equals(CCZ)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-eqz v1, :cond_5

    .line 205
    .line 206
    const/4 v1, 0x1

    .line 207
    goto :goto_2

    .line 208
    :cond_5
    move v1, v10

    .line 209
    :goto_2
    if-eqz v1, :cond_7

    .line 210
    .line 211
    :catch_0
    :cond_6
    :goto_3
    move-object/from16 v4, p0

    .line 212
    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_7
    move v1, v10

    .line 216
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-ge v1, v10, :cond_8

    .line 221
    .line 222
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-gt v15, v10, :cond_6

    .line 227
    .line 228
    const/16 v15, 0x3a

    .line 229
    .line 230
    if-ge v10, v15, :cond_6

    .line 231
    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    .line 234
    const/16 v15, 0x30

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_8
    const/4 v1, 0x1

    .line 238
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    check-cast v4, Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    if-eqz v4, :cond_6

    .line 249
    .line 250
    move-object v15, v4

    .line 251
    :goto_5
    iget-object v4, v9, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v12, :cond_d

    .line 254
    .line 255
    new-instance v10, Lcom/fsck/k9/mail/internet/MessageIdParser;

    .line 256
    .line 257
    invoke-direct {v10, v4, v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;-><init>(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    if-eqz v15, :cond_9

    .line 261
    .line 262
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_a

    .line 267
    .line 268
    :cond_9
    const/4 v1, 0x0

    .line 269
    goto :goto_6

    .line 270
    :cond_a
    new-instance v1, Lokio/Buffer;

    .line 271
    .line 272
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readExtendedParameterValueInto(Lokio/Buffer;)V

    .line 276
    .line 277
    .line 278
    new-instance v4, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;

    .line 279
    .line 280
    invoke-direct {v4, v13, v14, v15, v1}, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/Buffer;)V

    .line 281
    .line 282
    .line 283
    goto :goto_9

    .line 284
    :goto_6
    :try_start_0
    invoke-virtual {v10}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readUntil()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v16

    .line 288
    const/16 v11, 0x27

    .line 289
    .line 290
    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readUntil()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v10, v11}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result v11
    :try_end_0
    .catch Lcom/fsck/k9/mail/internet/MimeHeaderParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    if-nez v11, :cond_b

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_b
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v1
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/fsck/k9/mail/internet/MimeHeaderParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    :catch_1
    :goto_7
    if-eqz v1, :cond_c

    .line 311
    .line 312
    :try_start_2
    new-instance v1, Lokio/Buffer;

    .line 313
    .line 314
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v10, v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readExtendedParameterValueInto(Lokio/Buffer;)V

    .line 318
    .line 319
    .line 320
    new-instance v12, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;

    .line 321
    .line 322
    move-object/from16 v17, v1

    .line 323
    .line 324
    invoke-direct/range {v12 .. v17}, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/Buffer;)V

    .line 325
    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_c
    iget v1, v10, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 329
    .line 330
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    new-instance v12, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 335
    .line 336
    invoke-direct {v12, v13, v14, v15, v1}, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/fsck/k9/mail/internet/MimeHeaderParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    .line 338
    .line 339
    :goto_8
    move-object v4, v12

    .line 340
    goto :goto_9

    .line 341
    :cond_d
    new-instance v1, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 342
    .line 343
    invoke-direct {v1, v13, v14, v15, v4}, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    move-object v4, v1

    .line 347
    :goto_9
    if-nez v4, :cond_e

    .line 348
    .line 349
    iget-object v1, v9, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 350
    .line 351
    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    :goto_a
    const/4 v1, 0x1

    .line 355
    move-object/from16 v4, p0

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_e
    iget-object v1, v4, Lcom/fsck/k9/mail/internet/ParameterSection;->name:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v9

    .line 365
    if-nez v9, :cond_f

    .line 366
    .line 367
    new-instance v9, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-interface {v6, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    :cond_f
    check-cast v9, Ljava/util/List;

    .line 376
    .line 377
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_a

    .line 381
    :cond_10
    move-object/from16 p0, v4

    .line 382
    .line 383
    move v1, v10

    .line 384
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 385
    .line 386
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-eqz v8, :cond_1f

    .line 402
    .line 403
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    check-cast v8, Ljava/util/Map$Entry;

    .line 408
    .line 409
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    check-cast v9, Ljava/lang/String;

    .line 414
    .line 415
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    check-cast v8, Ljava/util/List;

    .line 420
    .line 421
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    const/4 v11, 0x1

    .line 426
    if-le v10, v11, :cond_11

    .line 427
    .line 428
    new-instance v10, Landroidx/viewpager/widget/ViewPager$1;

    .line 429
    .line 430
    const/16 v12, 0x11

    .line 431
    .line 432
    invoke-direct {v10, v12}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 433
    .line 434
    .line 435
    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 436
    .line 437
    .line 438
    :cond_11
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    if-ne v10, v11, :cond_12

    .line 443
    .line 444
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    check-cast v10, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 449
    .line 450
    iget-object v10, v10, Lcom/fsck/k9/mail/internet/ParameterSection;->section:Ljava/lang/Integer;

    .line 451
    .line 452
    if-eqz v10, :cond_18

    .line 453
    .line 454
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 455
    .line 456
    .line 457
    move-result v10

    .line 458
    if-nez v10, :cond_15

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_12
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    instance-of v10, v10, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;

    .line 466
    .line 467
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    move v13, v1

    .line 472
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v14

    .line 476
    if-eqz v14, :cond_18

    .line 477
    .line 478
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v14

    .line 482
    add-int/lit8 v15, v13, 0x1

    .line 483
    .line 484
    if-ltz v13, :cond_17

    .line 485
    .line 486
    check-cast v14, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 487
    .line 488
    iget-object v1, v14, Lcom/fsck/k9/mail/internet/ParameterSection;->section:Ljava/lang/Integer;

    .line 489
    .line 490
    if-nez v1, :cond_13

    .line 491
    .line 492
    goto :goto_d

    .line 493
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    if-ne v1, v13, :cond_15

    .line 498
    .line 499
    if-nez v10, :cond_14

    .line 500
    .line 501
    instance-of v1, v14, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;

    .line 502
    .line 503
    if-eqz v1, :cond_14

    .line 504
    .line 505
    goto :goto_d

    .line 506
    :cond_14
    move v13, v15

    .line 507
    const/4 v1, 0x0

    .line 508
    goto :goto_c

    .line 509
    :cond_15
    :goto_d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    if-eqz v8, :cond_16

    .line 518
    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v8

    .line 523
    check-cast v8, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 524
    .line 525
    iget-object v8, v8, Lcom/fsck/k9/mail/internet/ParameterSection;->originalName:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    check-cast v9, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 535
    .line 536
    iget-object v9, v9, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 537
    .line 538
    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    goto :goto_e

    .line 542
    :cond_16
    :goto_f
    const/4 v1, 0x0

    .line 543
    goto/16 :goto_b

    .line 544
    .line 545
    :cond_17
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 546
    .line 547
    .line 548
    throw p0

    .line 549
    :cond_18
    :goto_10
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    check-cast v1, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 554
    .line 555
    instance-of v10, v1, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;

    .line 556
    .line 557
    if-eqz v10, :cond_1c

    .line 558
    .line 559
    check-cast v1, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;

    .line 560
    .line 561
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/InitialExtendedValueParameterSection;->charsetName:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    new-instance v10, Lokio/Buffer;

    .line 571
    .line 572
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 573
    .line 574
    .line 575
    new-instance v12, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result v13

    .line 588
    if-eqz v13, :cond_1b

    .line 589
    .line 590
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v13

    .line 594
    check-cast v13, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 595
    .line 596
    instance-of v14, v13, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;

    .line 597
    .line 598
    if-eqz v14, :cond_19

    .line 599
    .line 600
    check-cast v13, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;

    .line 601
    .line 602
    iget-object v13, v13, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;->data:Lokio/Buffer;

    .line 603
    .line 604
    invoke-virtual {v10, v13}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 605
    .line 606
    .line 607
    goto :goto_11

    .line 608
    :cond_19
    instance-of v14, v13, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 609
    .line 610
    if-eqz v14, :cond_1a

    .line 611
    .line 612
    iget-wide v14, v10, Lokio/Buffer;->size:J

    .line 613
    .line 614
    invoke-virtual {v10, v14, v15, v1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v14

    .line 618
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    check-cast v13, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 622
    .line 623
    iget-object v13, v13, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;->text:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    goto :goto_11

    .line 629
    :cond_1a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 630
    .line 631
    .line 632
    return-object p0

    .line 633
    :cond_1b
    iget-wide v13, v10, Lokio/Buffer;->size:J

    .line 634
    .line 635
    invoke-virtual {v10, v13, v14, v1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    goto :goto_13

    .line 647
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 653
    .line 654
    .line 655
    move-result-object v8

    .line 656
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    .line 658
    .line 659
    move-result v10

    .line 660
    if-eqz v10, :cond_1e

    .line 661
    .line 662
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    check-cast v10, Lcom/fsck/k9/mail/internet/ParameterSection;

    .line 667
    .line 668
    instance-of v12, v10, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 669
    .line 670
    if-eqz v12, :cond_1d

    .line 671
    .line 672
    check-cast v10, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;

    .line 673
    .line 674
    iget-object v10, v10, Lcom/fsck/k9/mail/internet/RegularValueParameterSection;->text:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    goto :goto_12

    .line 680
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    .line 681
    .line 682
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 683
    .line 684
    .line 685
    throw v0

    .line 686
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    :goto_13
    invoke-interface {v4, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    goto/16 :goto_f

    .line 694
    .line 695
    :cond_1f
    new-instance v1, Ljava/util/ArrayList;

    .line 696
    .line 697
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 709
    .line 710
    .line 711
    move-result v6

    .line 712
    if-eqz v6, :cond_21

    .line 713
    .line 714
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    check-cast v6, Ljava/util/Map$Entry;

    .line 719
    .line 720
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v7

    .line 724
    check-cast v7, Ljava/lang/String;

    .line 725
    .line 726
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    check-cast v6, Ljava/lang/String;

    .line 731
    .line 732
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v8

    .line 736
    if-nez v8, :cond_20

    .line 737
    .line 738
    move-object/from16 v8, p0

    .line 739
    .line 740
    invoke-static {v6, v8}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v6

    .line 744
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    goto :goto_14

    .line 748
    :cond_20
    move-object/from16 v8, p0

    .line 749
    .line 750
    new-instance v9, Lkotlin/Pair;

    .line 751
    .line 752
    invoke-direct {v9, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_21
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeValue;

    .line 760
    .line 761
    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-direct {v3, v2, v4, v1, v0}, Lcom/fsck/k9/mail/internet/MimeValue;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;)V

    .line 766
    .line 767
    .line 768
    return-object v3
.end method

.method public static decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/fsck/k9/mail/internet/RawDataBody;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/mail/internet/RawDataBody;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/fsck/k9/mail/internet/RawDataBody;->getEncoding()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "7bit"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    const-string v1, "8bit"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    const-string v1, "binary"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "base64"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$11;

    .line 50
    .line 51
    invoke-direct {v0, p0, p0, v2}, Lcom/fsck/k9/mailstore/LocalStore$11;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    const-string v1, "quoted-printable"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$12;

    .line 64
    .line 65
    invoke-direct {v0, p0, p0, v2}, Lcom/fsck/k9/mailstore/LocalStore$12;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;I)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    aput-object v0, v1, v2

    .line 73
    .line 74
    const-string v0, "Unsupported encoding: %s"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-object p0

    .line 80
    :cond_4
    invoke-interface {p0}, Lcom/fsck/k9/mail/Body;->getInputStream()Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method

.method public static final decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "=?"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    move v5, v2

    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    const/4 v7, 0x4

    .line 24
    invoke-static {v0, v1, v5, v2, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    const/4 v9, -0x1

    .line 29
    if-ne v8, v9, :cond_1

    .line 30
    .line 31
    invoke-static {v3, v6, v0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->decodePreviousAndAppendSuffix(Ljava/lang/StringBuilder;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    add-int/lit8 v10, v8, 0x2

    .line 40
    .line 41
    const/16 v11, 0x3f

    .line 42
    .line 43
    invoke-static {v0, v11, v10, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 44
    .line 45
    .line 46
    move-result v12

    .line 47
    if-ne v12, v9, :cond_2

    .line 48
    .line 49
    invoke-static {v3, v6, v0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->decodePreviousAndAppendSuffix(Ljava/lang/StringBuilder;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 58
    .line 59
    invoke-static {v0, v11, v12, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-ne v12, v9, :cond_3

    .line 64
    .line 65
    invoke-static {v3, v6, v0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->decodePreviousAndAppendSuffix(Ljava/lang/StringBuilder;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 74
    .line 75
    const-string v13, "?="

    .line 76
    .line 77
    invoke-static {v0, v13, v12, v2, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    if-ne v12, v9, :cond_4

    .line 82
    .line 83
    invoke-static {v3, v6, v0, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->decodePreviousAndAppendSuffix(Ljava/lang/StringBuilder;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :cond_4
    add-int/lit8 v13, v12, 0x2

    .line 92
    .line 93
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {v0, v11, v10, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    const/4 v15, 0x1

    .line 102
    if-ne v14, v12, :cond_5

    .line 103
    .line 104
    :goto_1
    move-object/from16 v9, p1

    .line 105
    .line 106
    :catch_0
    :goto_2
    move/from16 v16, v2

    .line 107
    .line 108
    :goto_3
    const/4 v4, 0x0

    .line 109
    goto/16 :goto_9

    .line 110
    .line 111
    :cond_5
    add-int/lit8 v4, v14, 0x1

    .line 112
    .line 113
    invoke-static {v0, v11, v4, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-ne v7, v12, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    invoke-virtual {v0, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    const/16 v11, 0x2a

    .line 125
    .line 126
    const/4 v14, 0x6

    .line 127
    invoke-static {v10, v11, v2, v14}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eq v11, v9, :cond_7

    .line 132
    .line 133
    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    :cond_7
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    move-object/from16 v9, p1

    .line 148
    .line 149
    :try_start_0
    invoke-static {v10, v9}, Lcom/fsck/k9/mail/internet/JisSupport;->fixupCharset(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-nez v11, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    new-array v7, v15, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v4, v7, v2

    .line 166
    .line 167
    const-string v4, "Missing encoded text in encoded word: \'%s\'"

    .line 168
    .line 169
    invoke-static {v4, v7}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    const-string v11, "Q"

    .line 174
    .line 175
    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-eqz v11, :cond_b

    .line 180
    .line 181
    new-instance v4, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 182
    .line 183
    new-instance v11, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    move v14, v2

    .line 193
    :goto_4
    if-ge v14, v12, :cond_a

    .line 194
    .line 195
    move/from16 v16, v2

    .line 196
    .line 197
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    const/16 v15, 0x5f

    .line 202
    .line 203
    if-ne v2, v15, :cond_9

    .line 204
    .line 205
    const-string v2, "=20"

    .line 206
    .line 207
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_9
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 215
    .line 216
    move/from16 v2, v16

    .line 217
    .line 218
    const/4 v15, 0x1

    .line 219
    goto :goto_4

    .line 220
    :cond_a
    move/from16 v16, v2

    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    sget-object v7, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 227
    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance v7, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    .line 236
    .line 237
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 238
    .line 239
    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v7, v11}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 243
    .line 244
    .line 245
    :try_start_1
    invoke-static {v7}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/InputStreamSource;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    new-instance v11, Lokio/Buffer;

    .line 250
    .line 251
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v2}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 255
    .line 256
    .line 257
    iget-wide v14, v11, Lokio/Buffer;->size:J

    .line 258
    .line 259
    invoke-virtual {v11, v14, v15}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    .line 260
    .line 261
    .line 262
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    goto :goto_7

    .line 264
    :goto_6
    move-object v1, v0

    .line 265
    goto :goto_8

    .line 266
    :catchall_0
    move-exception v0

    .line 267
    goto :goto_6

    .line 268
    :catch_1
    :try_start_2
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .line 270
    :goto_7
    invoke-virtual {v7}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    .line 271
    .line 272
    .line 273
    sget-object v7, Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;->Q:Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;

    .line 274
    .line 275
    invoke-direct {v4, v10, v7, v2}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;Lokio/ByteString;)V

    .line 276
    .line 277
    .line 278
    goto :goto_9

    .line 279
    :goto_8
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    :catchall_1
    move-exception v0

    .line 281
    invoke-static {v7, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_b
    move/from16 v16, v2

    .line 286
    .line 287
    const-string v2, "B"

    .line 288
    .line 289
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_d

    .line 294
    .line 295
    new-instance v4, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 296
    .line 297
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 298
    .line 299
    invoke-static {v7}, Lcom/jcraft/jzlib/Adler32;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    if-nez v2, :cond_c

    .line 304
    .line 305
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 306
    .line 307
    :cond_c
    sget-object v7, Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;->B:Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;

    .line 308
    .line 309
    invoke-direct {v4, v10, v7, v2}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/String;Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;Lokio/ByteString;)V

    .line 310
    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_d
    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    const/4 v4, 0x1

    .line 318
    new-array v7, v4, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v2, v7, v16

    .line 321
    .line 322
    const-string v2, "Warning: Unknown encoding in encoded word \'%s\'"

    .line 323
    .line 324
    invoke-static {v2, v7}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :goto_9
    if-nez v6, :cond_f

    .line 330
    .line 331
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    if-nez v4, :cond_e

    .line 335
    .line 336
    invoke-virtual {v3, v0, v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    :cond_e
    :goto_a
    move/from16 v10, v16

    .line 340
    .line 341
    goto/16 :goto_c

    .line 342
    .line 343
    :cond_f
    if-nez v4, :cond_10

    .line 344
    .line 345
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/JisSupport;->charsetDecode(Lcom/fsck/k9/backend/imap/ImapSync;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v0, v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_10
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->isWhitespace(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-nez v2, :cond_11

    .line 364
    .line 365
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/JisSupport;->charsetDecode(Lcom/fsck/k9/backend/imap/ImapSync;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_11
    iget-object v2, v6, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v2, Ljava/lang/String;

    .line 379
    .line 380
    iget-object v5, v6, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v5, Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;

    .line 383
    .line 384
    iget-object v7, v4, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v7, Lcom/fsck/k9/mail/internet/DecoderUtil$Encoding;

    .line 387
    .line 388
    if-ne v5, v7, :cond_14

    .line 389
    .line 390
    iget-object v5, v4, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast v5, Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_14

    .line 399
    .line 400
    const-string v5, "ISO-2022-JP"

    .line 401
    .line 402
    const/4 v7, 0x1

    .line 403
    invoke-static {v2, v5, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_12

    .line 408
    .line 409
    iget-object v2, v6, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v2, Lokio/ByteString;

    .line 412
    .line 413
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Lokio/ByteString;->getSize$okio()I

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    const/4 v7, 0x3

    .line 421
    sub-int/2addr v5, v7

    .line 422
    sget-object v8, Lcom/fsck/k9/mail/internet/JisSupport;->ASCII_ESCAPE_SEQUENCE:[B

    .line 423
    .line 424
    move/from16 v10, v16

    .line 425
    .line 426
    invoke-virtual {v2, v5, v8, v10, v7}, Lokio/ByteString;->rangeEquals(I[BII)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_13

    .line 431
    .line 432
    goto :goto_b

    .line 433
    :cond_12
    move/from16 v10, v16

    .line 434
    .line 435
    :cond_13
    iget-object v2, v6, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v2, Lokio/ByteString;

    .line 438
    .line 439
    iget-object v5, v4, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v5, Lokio/ByteString;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    new-instance v6, Lokio/Buffer;

    .line 447
    .line 448
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6, v2}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v5}, Lokio/Buffer;->write(Lokio/ByteString;)V

    .line 455
    .line 456
    .line 457
    iget-wide v7, v6, Lokio/Buffer;->size:J

    .line 458
    .line 459
    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    iput-object v2, v4, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 467
    .line 468
    goto :goto_c

    .line 469
    :cond_14
    move/from16 v10, v16

    .line 470
    .line 471
    :goto_b
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/JisSupport;->charsetDecode(Lcom/fsck/k9/backend/imap/ImapSync;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    :goto_c
    move-object v6, v4

    .line 479
    move v2, v10

    .line 480
    move v5, v13

    .line 481
    goto/16 :goto_0
.end method

.method public static decodePreviousAndAppendSuffix(Ljava/lang/StringBuilder;Lcom/fsck/k9/backend/imap/ImapSync;Ljava/lang/String;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->charsetDecode(Lcom/fsck/k9/backend/imap/ImapSync;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p2, p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1570
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    .line 1571
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p0

    const/16 v1, 0x4e

    const/16 v2, 0x9

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v4

    .line 1572
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1573
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    move-result v5

    if-nez v5, :cond_10

    if-eq v1, v3, :cond_10

    if-eq v1, v2, :cond_10

    const/16 v5, 0xd

    if-eq v1, v5, :cond_10

    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    goto/16 :goto_d

    .line 1574
    :cond_1
    :goto_1
    sget-object v0, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 1575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1576
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_2

    .line 1577
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1578
    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 1579
    :goto_3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 1580
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 1581
    array-length v6, v5

    const-string v7, "=?"

    if-nez v6, :cond_4

    goto :goto_6

    :cond_4
    move v6, v4

    move v8, v6

    .line 1582
    :goto_4
    array-length v9, v5

    if-ge v6, v9, :cond_6

    .line 1583
    aget-byte v9, v5, v6

    and-int/lit16 v9, v9, 0xff

    if-eq v9, v3, :cond_5

    .line 1584
    sget-object v10, Lcom/fsck/k9/mail/internet/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    mul-int/lit8 v8, v8, 0x64

    .line 1585
    array-length v6, v5

    div-int/2addr v8, v6

    const/16 v6, 0x1e

    if-le v8, v6, :cond_7

    .line 1586
    const-string v6, "?B?"

    .line 1587
    invoke-static {v7, v1, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1588
    invoke-static {v1, p1, v0, v5}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p1

    :goto_5
    move-object v1, p1

    goto :goto_7

    .line 1589
    :cond_7
    :goto_6
    const-string v6, "?Q?"

    .line 1590
    invoke-static {v7, v1, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1591
    invoke-static {v1, p1, v0, v5}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 1592
    :goto_7
    sget p1, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 1593
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int p1, p0, v5

    const/16 v6, 0x4c

    if-gt p1, v6, :cond_8

    return-object v1

    .line 1594
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    neg-int p0, p0

    .line 1595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    move v0, v4

    :goto_8
    if-ge v0, p1, :cond_a

    .line 1596
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_f

    if-ne v8, v2, :cond_9

    goto :goto_c

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    if-ne p1, v5, :cond_b

    .line 1597
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v0, p1, 0x1

    .line 1599
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    :goto_a
    if-ge v0, v8, :cond_d

    .line 1600
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v3, :cond_e

    if-ne v9, v2, :cond_c

    goto :goto_b

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    move v0, v8

    :cond_e
    :goto_b
    sub-int v8, v0, p0

    if-le v8, v6, :cond_f

    .line 1601
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v7, v1, p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1602
    const-string p0, "\r\n"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, p1

    :cond_f
    :goto_c
    move p1, v0

    goto :goto_9

    :cond_10
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_11
    return-object p1
.end method

.method public static final encode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 26

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4e

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x3

    .line 52
    add-int/2addr v4, v5

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v4

    .line 58
    const/16 v9, 0x4e

    .line 59
    .line 60
    if-gt v6, v9, :cond_1

    .line 61
    .line 62
    const/4 v6, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v6, 0x0

    .line 65
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    add-int/2addr v10, v4

    .line 70
    const/4 v11, 0x2

    .line 71
    add-int/2addr v10, v11

    .line 72
    if-gt v10, v9, :cond_2

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/4 v10, 0x0

    .line 77
    :goto_2
    const/16 v12, 0x3d

    .line 78
    .line 79
    const-string v13, ";\r\n "

    .line 80
    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isToken(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_3
    move-object/from16 v25, v1

    .line 102
    .line 103
    goto/16 :goto_3d

    .line 104
    .line 105
    :cond_3
    if-eqz v10, :cond_5

    .line 106
    .line 107
    const/4 v10, 0x0

    .line 108
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-ge v10, v14, :cond_6

    .line 113
    .line 114
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    invoke-static {v14}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    if-eqz v15, :cond_4

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_4
    invoke-static {v14}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_5

    .line 130
    .line 131
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move/from16 v18, v5

    .line 135
    .line 136
    const/16 p0, 0x0

    .line 137
    .line 138
    const/16 v17, 0x1

    .line 139
    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    move v15, v11

    .line 147
    const/16 p0, 0x0

    .line 148
    .line 149
    const/4 v14, 0x0

    .line 150
    :goto_6
    const/16 v6, 0x7f

    .line 151
    .line 152
    const/16 v7, 0x5d

    .line 153
    .line 154
    const/16 v11, 0x23

    .line 155
    .line 156
    const/16 v17, 0x1

    .line 157
    .line 158
    const/16 v8, 0x21

    .line 159
    .line 160
    move/from16 v18, v5

    .line 161
    .line 162
    const/16 v5, 0x5c

    .line 163
    .line 164
    const-string v12, "Unsupported character: "

    .line 165
    .line 166
    if-ge v14, v10, :cond_c

    .line 167
    .line 168
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-ne v9, v8, :cond_7

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_7
    if-gt v11, v9, :cond_8

    .line 176
    .line 177
    if-ge v9, v5, :cond_8

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_8
    if-gt v7, v9, :cond_9

    .line 181
    .line 182
    if-ge v9, v6, :cond_9

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_9
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_a

    .line 190
    .line 191
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_a
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_b

    .line 199
    .line 200
    add-int/lit8 v15, v15, 0x2

    .line 201
    .line 202
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 203
    .line 204
    move/from16 v5, v18

    .line 205
    .line 206
    const/16 v9, 0x4e

    .line 207
    .line 208
    const/4 v11, 0x2

    .line 209
    const/16 v12, 0x3d

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_b
    invoke-static {v12, v9}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_c
    add-int/2addr v4, v15

    .line 217
    const/16 v9, 0x4e

    .line 218
    .line 219
    if-gt v4, v9, :cond_13

    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    add-int/lit8 v4, v4, 0x10

    .line 226
    .line 227
    new-instance v9, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .line 231
    .line 232
    const/16 v4, 0x22

    .line 233
    .line 234
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    const/4 v14, 0x0

    .line 242
    :goto_9
    if-ge v14, v10, :cond_12

    .line 243
    .line 244
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    if-ne v15, v8, :cond_d

    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_d
    if-gt v11, v15, :cond_e

    .line 252
    .line 253
    if-ge v15, v5, :cond_e

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_e
    if-gt v7, v15, :cond_f

    .line 257
    .line 258
    if-ge v15, v6, :cond_f

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_f
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_10

    .line 266
    .line 267
    :goto_a
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_10
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 272
    .line 273
    .line 274
    move-result v16

    .line 275
    if-eqz v16, :cond_11

    .line 276
    .line 277
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_11
    invoke-static {v12, v15}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    return-object p0

    .line 290
    :cond_12
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const/16 v3, 0x3d

    .line 304
    .line 305
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_13
    :goto_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    add-int/lit8 v4, v4, 0xa

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    const-string v6, " < 0"

    .line 324
    .line 325
    const-string v7, "endIndex < beginIndex: "

    .line 326
    .line 327
    if-ltz v5, :cond_4d

    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    const-string v9, " > "

    .line 334
    .line 335
    const-string v10, "endIndex > length: "

    .line 336
    .line 337
    if-gt v5, v8, :cond_4c

    .line 338
    .line 339
    const/4 v8, 0x0

    .line 340
    const/4 v11, 0x0

    .line 341
    :goto_d
    const v19, -0xdc01

    .line 342
    .line 343
    .line 344
    const v21, -0xd801

    .line 345
    .line 346
    .line 347
    const/high16 v22, 0x10000

    .line 348
    .line 349
    const/16 v15, 0x800

    .line 350
    .line 351
    const/16 v24, 0x3f

    .line 352
    .line 353
    const/16 v12, 0x80

    .line 354
    .line 355
    if-ge v8, v5, :cond_25

    .line 356
    .line 357
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    if-ge v14, v12, :cond_15

    .line 362
    .line 363
    int-to-byte v12, v14

    .line 364
    int-to-char v12, v12

    .line 365
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v12, :cond_14

    .line 370
    .line 371
    :goto_e
    move/from16 v12, v17

    .line 372
    .line 373
    goto :goto_f

    .line 374
    :cond_14
    move/from16 v12, v18

    .line 375
    .line 376
    :goto_f
    add-int/2addr v11, v12

    .line 377
    add-int/lit8 v8, v8, 0x1

    .line 378
    .line 379
    goto :goto_d

    .line 380
    :cond_15
    if-ge v14, v15, :cond_17

    .line 381
    .line 382
    shr-int/lit8 v15, v14, 0x6

    .line 383
    .line 384
    or-int/lit16 v15, v15, 0xc0

    .line 385
    .line 386
    int-to-byte v15, v15

    .line 387
    int-to-char v15, v15

    .line 388
    invoke-static {v15}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 389
    .line 390
    .line 391
    move-result v15

    .line 392
    if-eqz v15, :cond_16

    .line 393
    .line 394
    move/from16 v15, v17

    .line 395
    .line 396
    goto :goto_10

    .line 397
    :cond_16
    move/from16 v15, v18

    .line 398
    .line 399
    :goto_10
    add-int/2addr v11, v15

    .line 400
    and-int/lit8 v14, v14, 0x3f

    .line 401
    .line 402
    or-int/2addr v12, v14

    .line 403
    int-to-byte v12, v12

    .line 404
    int-to-char v12, v12

    .line 405
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-eqz v12, :cond_14

    .line 410
    .line 411
    goto :goto_e

    .line 412
    :cond_17
    const v15, 0xd800

    .line 413
    .line 414
    .line 415
    if-lt v14, v15, :cond_18

    .line 416
    .line 417
    const v15, 0xdfff

    .line 418
    .line 419
    .line 420
    if-le v14, v15, :cond_19

    .line 421
    .line 422
    :cond_18
    move-object/from16 v25, v1

    .line 423
    .line 424
    goto/16 :goto_1a

    .line 425
    .line 426
    :cond_19
    add-int/lit8 v12, v8, 0x1

    .line 427
    .line 428
    if-ge v12, v5, :cond_1a

    .line 429
    .line 430
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 431
    .line 432
    .line 433
    move-result v23

    .line 434
    move/from16 v15, v23

    .line 435
    .line 436
    :goto_11
    move-object/from16 v25, v1

    .line 437
    .line 438
    const v1, 0xdbff

    .line 439
    .line 440
    .line 441
    goto :goto_12

    .line 442
    :cond_1a
    const/4 v15, 0x0

    .line 443
    goto :goto_11

    .line 444
    :goto_12
    if-gt v14, v1, :cond_20

    .line 445
    .line 446
    const v1, 0xdc00

    .line 447
    .line 448
    .line 449
    if-lt v15, v1, :cond_20

    .line 450
    .line 451
    const v1, 0xdfff

    .line 452
    .line 453
    .line 454
    if-le v15, v1, :cond_1b

    .line 455
    .line 456
    goto :goto_18

    .line 457
    :cond_1b
    and-int v1, v14, v21

    .line 458
    .line 459
    shl-int/lit8 v1, v1, 0xa

    .line 460
    .line 461
    and-int v12, v15, v19

    .line 462
    .line 463
    or-int/2addr v1, v12

    .line 464
    add-int v1, v1, v22

    .line 465
    .line 466
    shr-int/lit8 v12, v1, 0x12

    .line 467
    .line 468
    or-int/lit16 v12, v12, 0xf0

    .line 469
    .line 470
    int-to-byte v12, v12

    .line 471
    int-to-char v12, v12

    .line 472
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 473
    .line 474
    .line 475
    move-result v12

    .line 476
    if-eqz v12, :cond_1c

    .line 477
    .line 478
    move/from16 v12, v17

    .line 479
    .line 480
    goto :goto_13

    .line 481
    :cond_1c
    move/from16 v12, v18

    .line 482
    .line 483
    :goto_13
    add-int/2addr v11, v12

    .line 484
    shr-int/lit8 v12, v1, 0xc

    .line 485
    .line 486
    and-int/lit8 v12, v12, 0x3f

    .line 487
    .line 488
    const/16 v14, 0x80

    .line 489
    .line 490
    or-int/2addr v12, v14

    .line 491
    int-to-byte v12, v12

    .line 492
    int-to-char v12, v12

    .line 493
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 494
    .line 495
    .line 496
    move-result v12

    .line 497
    if-eqz v12, :cond_1d

    .line 498
    .line 499
    move/from16 v12, v17

    .line 500
    .line 501
    goto :goto_14

    .line 502
    :cond_1d
    move/from16 v12, v18

    .line 503
    .line 504
    :goto_14
    add-int/2addr v11, v12

    .line 505
    shr-int/lit8 v12, v1, 0x6

    .line 506
    .line 507
    and-int/lit8 v12, v12, 0x3f

    .line 508
    .line 509
    or-int/2addr v12, v14

    .line 510
    int-to-byte v12, v12

    .line 511
    int-to-char v12, v12

    .line 512
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 513
    .line 514
    .line 515
    move-result v12

    .line 516
    if-eqz v12, :cond_1e

    .line 517
    .line 518
    move/from16 v12, v17

    .line 519
    .line 520
    goto :goto_15

    .line 521
    :cond_1e
    move/from16 v12, v18

    .line 522
    .line 523
    :goto_15
    add-int/2addr v11, v12

    .line 524
    and-int/lit8 v1, v1, 0x3f

    .line 525
    .line 526
    or-int/2addr v1, v14

    .line 527
    int-to-byte v1, v1

    .line 528
    int-to-char v1, v1

    .line 529
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    if-eqz v1, :cond_1f

    .line 534
    .line 535
    move/from16 v1, v17

    .line 536
    .line 537
    goto :goto_16

    .line 538
    :cond_1f
    move/from16 v1, v18

    .line 539
    .line 540
    :goto_16
    add-int/2addr v11, v1

    .line 541
    add-int/lit8 v8, v8, 0x2

    .line 542
    .line 543
    :goto_17
    move-object/from16 v1, v25

    .line 544
    .line 545
    goto/16 :goto_d

    .line 546
    .line 547
    :cond_20
    :goto_18
    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_21

    .line 552
    .line 553
    move/from16 v1, v17

    .line 554
    .line 555
    goto :goto_19

    .line 556
    :cond_21
    move/from16 v1, v18

    .line 557
    .line 558
    :goto_19
    add-int/2addr v11, v1

    .line 559
    move v8, v12

    .line 560
    goto :goto_17

    .line 561
    :goto_1a
    shr-int/lit8 v1, v14, 0xc

    .line 562
    .line 563
    or-int/lit16 v1, v1, 0xe0

    .line 564
    .line 565
    int-to-byte v1, v1

    .line 566
    int-to-char v1, v1

    .line 567
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-eqz v1, :cond_22

    .line 572
    .line 573
    move/from16 v1, v17

    .line 574
    .line 575
    goto :goto_1b

    .line 576
    :cond_22
    move/from16 v1, v18

    .line 577
    .line 578
    :goto_1b
    add-int/2addr v11, v1

    .line 579
    shr-int/lit8 v1, v14, 0x6

    .line 580
    .line 581
    and-int/lit8 v1, v1, 0x3f

    .line 582
    .line 583
    const/16 v12, 0x80

    .line 584
    .line 585
    or-int/2addr v1, v12

    .line 586
    int-to-byte v1, v1

    .line 587
    int-to-char v1, v1

    .line 588
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    if-eqz v1, :cond_23

    .line 593
    .line 594
    move/from16 v1, v17

    .line 595
    .line 596
    goto :goto_1c

    .line 597
    :cond_23
    move/from16 v1, v18

    .line 598
    .line 599
    :goto_1c
    add-int/2addr v11, v1

    .line 600
    and-int/lit8 v1, v14, 0x3f

    .line 601
    .line 602
    or-int/2addr v1, v12

    .line 603
    int-to-byte v1, v1

    .line 604
    int-to-char v1, v1

    .line 605
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-eqz v1, :cond_24

    .line 610
    .line 611
    move/from16 v1, v17

    .line 612
    .line 613
    goto :goto_1d

    .line 614
    :cond_24
    move/from16 v1, v18

    .line 615
    .line 616
    :goto_1d
    add-int/2addr v11, v1

    .line 617
    add-int/lit8 v8, v8, 0x1

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_25
    move-object/from16 v25, v1

    .line 621
    .line 622
    add-int/2addr v4, v11

    .line 623
    add-int/lit8 v4, v4, 0x1

    .line 624
    .line 625
    const/16 v1, 0x25

    .line 626
    .line 627
    sget-object v5, Lcom/fsck/k9/mail/filter/Hex;->UPPER_CASE:[C

    .line 628
    .line 629
    const/16 v8, 0xf

    .line 630
    .line 631
    const/16 v11, 0x4e

    .line 632
    .line 633
    if-gt v4, v11, :cond_3b

    .line 634
    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 641
    .line 642
    .line 643
    move-result v11

    .line 644
    if-ltz v11, :cond_3a

    .line 645
    .line 646
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 647
    .line 648
    .line 649
    move-result v6

    .line 650
    if-gt v11, v6, :cond_39

    .line 651
    .line 652
    const/4 v6, 0x0

    .line 653
    :goto_1e
    if-ge v6, v11, :cond_38

    .line 654
    .line 655
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 656
    .line 657
    .line 658
    move-result v7

    .line 659
    const/16 v14, 0x80

    .line 660
    .line 661
    if-ge v7, v14, :cond_27

    .line 662
    .line 663
    int-to-byte v7, v7

    .line 664
    int-to-char v9, v7

    .line 665
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 666
    .line 667
    .line 668
    move-result v10

    .line 669
    if-eqz v10, :cond_26

    .line 670
    .line 671
    :goto_1f
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    goto :goto_21

    .line 675
    :cond_26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    shr-int/lit8 v9, v7, 0x4

    .line 679
    .line 680
    and-int/2addr v9, v8

    .line 681
    aget-char v9, v5, v9

    .line 682
    .line 683
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    and-int/lit8 v7, v7, 0xf

    .line 687
    .line 688
    aget-char v7, v5, v7

    .line 689
    .line 690
    :goto_20
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    :goto_21
    add-int/lit8 v6, v6, 0x1

    .line 694
    .line 695
    goto :goto_1e

    .line 696
    :cond_27
    if-ge v7, v15, :cond_2a

    .line 697
    .line 698
    shr-int/lit8 v9, v7, 0x6

    .line 699
    .line 700
    or-int/lit16 v9, v9, 0xc0

    .line 701
    .line 702
    int-to-byte v9, v9

    .line 703
    int-to-char v10, v9

    .line 704
    invoke-static {v10}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 705
    .line 706
    .line 707
    move-result v12

    .line 708
    if-eqz v12, :cond_28

    .line 709
    .line 710
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    goto :goto_22

    .line 714
    :cond_28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    shr-int/lit8 v10, v9, 0x4

    .line 718
    .line 719
    and-int/2addr v10, v8

    .line 720
    aget-char v10, v5, v10

    .line 721
    .line 722
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    and-int/lit8 v9, v9, 0xf

    .line 726
    .line 727
    aget-char v9, v5, v9

    .line 728
    .line 729
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    :goto_22
    and-int/lit8 v7, v7, 0x3f

    .line 733
    .line 734
    const/16 v14, 0x80

    .line 735
    .line 736
    or-int/2addr v7, v14

    .line 737
    int-to-byte v7, v7

    .line 738
    int-to-char v9, v7

    .line 739
    invoke-static {v9}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 740
    .line 741
    .line 742
    move-result v10

    .line 743
    if-eqz v10, :cond_29

    .line 744
    .line 745
    goto :goto_1f

    .line 746
    :cond_29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    shr-int/lit8 v9, v7, 0x4

    .line 750
    .line 751
    and-int/2addr v9, v8

    .line 752
    aget-char v9, v5, v9

    .line 753
    .line 754
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    and-int/lit8 v7, v7, 0xf

    .line 758
    .line 759
    aget-char v7, v5, v7

    .line 760
    .line 761
    goto :goto_20

    .line 762
    :cond_2a
    const v9, 0xd800

    .line 763
    .line 764
    .line 765
    if-lt v7, v9, :cond_34

    .line 766
    .line 767
    const v9, 0xdfff

    .line 768
    .line 769
    .line 770
    if-le v7, v9, :cond_2b

    .line 771
    .line 772
    :goto_23
    move/from16 v20, v8

    .line 773
    .line 774
    const v8, 0xdc00

    .line 775
    .line 776
    .line 777
    const v14, 0xdbff

    .line 778
    .line 779
    .line 780
    goto/16 :goto_2d

    .line 781
    .line 782
    :cond_2b
    add-int/lit8 v10, v6, 0x1

    .line 783
    .line 784
    if-ge v10, v11, :cond_2c

    .line 785
    .line 786
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    .line 787
    .line 788
    .line 789
    move-result v12

    .line 790
    :goto_24
    const v14, 0xdbff

    .line 791
    .line 792
    .line 793
    goto :goto_25

    .line 794
    :cond_2c
    const/4 v12, 0x0

    .line 795
    goto :goto_24

    .line 796
    :goto_25
    move/from16 v20, v8

    .line 797
    .line 798
    const v8, 0xdc00

    .line 799
    .line 800
    .line 801
    if-gt v7, v14, :cond_32

    .line 802
    .line 803
    if-lt v12, v8, :cond_32

    .line 804
    .line 805
    if-le v12, v9, :cond_2d

    .line 806
    .line 807
    goto/16 :goto_2a

    .line 808
    .line 809
    :cond_2d
    and-int v7, v7, v21

    .line 810
    .line 811
    shl-int/lit8 v7, v7, 0xa

    .line 812
    .line 813
    and-int v10, v12, v19

    .line 814
    .line 815
    or-int/2addr v7, v10

    .line 816
    add-int v7, v7, v22

    .line 817
    .line 818
    shr-int/lit8 v10, v7, 0x12

    .line 819
    .line 820
    or-int/lit16 v10, v10, 0xf0

    .line 821
    .line 822
    int-to-byte v10, v10

    .line 823
    int-to-char v12, v10

    .line 824
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 825
    .line 826
    .line 827
    move-result v16

    .line 828
    if-eqz v16, :cond_2e

    .line 829
    .line 830
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    goto :goto_26

    .line 834
    :cond_2e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    shr-int/lit8 v12, v10, 0x4

    .line 838
    .line 839
    and-int/lit8 v12, v12, 0xf

    .line 840
    .line 841
    aget-char v12, v5, v12

    .line 842
    .line 843
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    and-int/lit8 v10, v10, 0xf

    .line 847
    .line 848
    aget-char v10, v5, v10

    .line 849
    .line 850
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    :goto_26
    shr-int/lit8 v10, v7, 0xc

    .line 854
    .line 855
    and-int/lit8 v10, v10, 0x3f

    .line 856
    .line 857
    const/16 v12, 0x80

    .line 858
    .line 859
    or-int/2addr v10, v12

    .line 860
    int-to-byte v10, v10

    .line 861
    int-to-char v12, v10

    .line 862
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 863
    .line 864
    .line 865
    move-result v16

    .line 866
    if-eqz v16, :cond_2f

    .line 867
    .line 868
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    goto :goto_27

    .line 872
    :cond_2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    shr-int/lit8 v12, v10, 0x4

    .line 876
    .line 877
    and-int/lit8 v12, v12, 0xf

    .line 878
    .line 879
    aget-char v12, v5, v12

    .line 880
    .line 881
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    and-int/lit8 v10, v10, 0xf

    .line 885
    .line 886
    aget-char v10, v5, v10

    .line 887
    .line 888
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    :goto_27
    shr-int/lit8 v10, v7, 0x6

    .line 892
    .line 893
    and-int/lit8 v10, v10, 0x3f

    .line 894
    .line 895
    const/16 v12, 0x80

    .line 896
    .line 897
    or-int/2addr v10, v12

    .line 898
    int-to-byte v10, v10

    .line 899
    int-to-char v12, v10

    .line 900
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 901
    .line 902
    .line 903
    move-result v16

    .line 904
    if-eqz v16, :cond_30

    .line 905
    .line 906
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    goto :goto_28

    .line 910
    :cond_30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    shr-int/lit8 v12, v10, 0x4

    .line 914
    .line 915
    and-int/lit8 v12, v12, 0xf

    .line 916
    .line 917
    aget-char v12, v5, v12

    .line 918
    .line 919
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    and-int/lit8 v10, v10, 0xf

    .line 923
    .line 924
    aget-char v10, v5, v10

    .line 925
    .line 926
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    :goto_28
    and-int/lit8 v7, v7, 0x3f

    .line 930
    .line 931
    const/16 v12, 0x80

    .line 932
    .line 933
    or-int/2addr v7, v12

    .line 934
    int-to-byte v7, v7

    .line 935
    int-to-char v10, v7

    .line 936
    invoke-static {v10}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 937
    .line 938
    .line 939
    move-result v12

    .line 940
    if-eqz v12, :cond_31

    .line 941
    .line 942
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    goto :goto_29

    .line 946
    :cond_31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    shr-int/lit8 v10, v7, 0x4

    .line 950
    .line 951
    and-int/lit8 v10, v10, 0xf

    .line 952
    .line 953
    aget-char v10, v5, v10

    .line 954
    .line 955
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    and-int/lit8 v7, v7, 0xf

    .line 959
    .line 960
    aget-char v7, v5, v7

    .line 961
    .line 962
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    :goto_29
    add-int/lit8 v6, v6, 0x2

    .line 966
    .line 967
    move/from16 v8, v20

    .line 968
    .line 969
    goto/16 :goto_1e

    .line 970
    .line 971
    :cond_32
    :goto_2a
    invoke-static/range {v24 .. v24}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 972
    .line 973
    .line 974
    move-result v6

    .line 975
    if-eqz v6, :cond_33

    .line 976
    .line 977
    move/from16 v6, v24

    .line 978
    .line 979
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    goto :goto_2b

    .line 983
    :cond_33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    aget-char v6, v5, v18

    .line 987
    .line 988
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    aget-char v6, v5, v20

    .line 992
    .line 993
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    :goto_2b
    move v6, v10

    .line 997
    :goto_2c
    move/from16 v8, v20

    .line 998
    .line 999
    const/16 v24, 0x3f

    .line 1000
    .line 1001
    goto/16 :goto_1e

    .line 1002
    .line 1003
    :cond_34
    const v9, 0xdfff

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_23

    .line 1007
    .line 1008
    :goto_2d
    shr-int/lit8 v10, v7, 0xc

    .line 1009
    .line 1010
    or-int/lit16 v10, v10, 0xe0

    .line 1011
    .line 1012
    int-to-byte v10, v10

    .line 1013
    int-to-char v12, v10

    .line 1014
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v16

    .line 1018
    if-eqz v16, :cond_35

    .line 1019
    .line 1020
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    goto :goto_2e

    .line 1024
    :cond_35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    shr-int/lit8 v12, v10, 0x4

    .line 1028
    .line 1029
    and-int/lit8 v12, v12, 0xf

    .line 1030
    .line 1031
    aget-char v12, v5, v12

    .line 1032
    .line 1033
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    .line 1036
    and-int/lit8 v10, v10, 0xf

    .line 1037
    .line 1038
    aget-char v10, v5, v10

    .line 1039
    .line 1040
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    :goto_2e
    shr-int/lit8 v10, v7, 0x6

    .line 1044
    .line 1045
    const/16 v24, 0x3f

    .line 1046
    .line 1047
    and-int/lit8 v10, v10, 0x3f

    .line 1048
    .line 1049
    const/16 v12, 0x80

    .line 1050
    .line 1051
    or-int/2addr v10, v12

    .line 1052
    int-to-byte v10, v10

    .line 1053
    int-to-char v12, v10

    .line 1054
    invoke-static {v12}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 1055
    .line 1056
    .line 1057
    move-result v16

    .line 1058
    if-eqz v16, :cond_36

    .line 1059
    .line 1060
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    goto :goto_2f

    .line 1064
    :cond_36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    shr-int/lit8 v12, v10, 0x4

    .line 1068
    .line 1069
    and-int/lit8 v12, v12, 0xf

    .line 1070
    .line 1071
    aget-char v12, v5, v12

    .line 1072
    .line 1073
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    and-int/lit8 v10, v10, 0xf

    .line 1077
    .line 1078
    aget-char v10, v5, v10

    .line 1079
    .line 1080
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    :goto_2f
    and-int/lit8 v7, v7, 0x3f

    .line 1084
    .line 1085
    const/16 v12, 0x80

    .line 1086
    .line 1087
    or-int/2addr v7, v12

    .line 1088
    int-to-byte v7, v7

    .line 1089
    int-to-char v10, v7

    .line 1090
    invoke-static {v10}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v12

    .line 1094
    if-eqz v12, :cond_37

    .line 1095
    .line 1096
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    goto :goto_30

    .line 1100
    :cond_37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1101
    .line 1102
    .line 1103
    shr-int/lit8 v10, v7, 0x4

    .line 1104
    .line 1105
    and-int/lit8 v10, v10, 0xf

    .line 1106
    .line 1107
    aget-char v10, v5, v10

    .line 1108
    .line 1109
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    and-int/lit8 v7, v7, 0xf

    .line 1113
    .line 1114
    aget-char v7, v5, v7

    .line 1115
    .line 1116
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    .line 1119
    :goto_30
    add-int/lit8 v6, v6, 0x1

    .line 1120
    .line 1121
    goto :goto_2c

    .line 1122
    :cond_38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    const-string v2, "*=UTF-8\'\'"

    .line 1133
    .line 1134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    goto/16 :goto_3d

    .line 1141
    .line 1142
    :cond_39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1143
    .line 1144
    .line 1145
    move-result v0

    .line 1146
    invoke-static {v11, v0, v10, v9}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 1151
    .line 1152
    .line 1153
    return-object p0

    .line 1154
    :cond_3a
    invoke-static {v11, v7, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 1159
    .line 1160
    .line 1161
    return-object p0

    .line 1162
    :cond_3b
    move/from16 v20, v8

    .line 1163
    .line 1164
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1165
    .line 1166
    .line 1167
    move-result v4

    .line 1168
    move/from16 v7, v17

    .line 1169
    .line 1170
    const/4 v6, 0x0

    .line 1171
    const/4 v8, 0x0

    .line 1172
    const/4 v9, 0x0

    .line 1173
    :goto_31
    if-ge v6, v4, :cond_4b

    .line 1174
    .line 1175
    if-eqz v7, :cond_3e

    .line 1176
    .line 1177
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 1181
    .line 1182
    .line 1183
    move-result v7

    .line 1184
    add-int/lit8 v7, v7, -0x1

    .line 1185
    .line 1186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    .line 1188
    .line 1189
    const/16 v9, 0x2a

    .line 1190
    .line 1191
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    const-string v9, "*="

    .line 1198
    .line 1199
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    if-nez v8, :cond_3c

    .line 1203
    .line 1204
    const-string v9, "UTF-8\'\'"

    .line 1205
    .line 1206
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 1210
    .line 1211
    .line 1212
    move-result v9

    .line 1213
    sub-int/2addr v9, v7

    .line 1214
    rsub-int/lit8 v9, v9, 0x4d

    .line 1215
    .line 1216
    move/from16 v7, v18

    .line 1217
    .line 1218
    if-lt v9, v7, :cond_3d

    .line 1219
    .line 1220
    add-int/lit8 v8, v8, 0x1

    .line 1221
    .line 1222
    const/4 v7, 0x0

    .line 1223
    goto :goto_32

    .line 1224
    :cond_3d
    const-string v0, "Parameter name too long"

    .line 1225
    .line 1226
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    return-object p0

    .line 1230
    :cond_3e
    :goto_32
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 1231
    .line 1232
    .line 1233
    move-result v10

    .line 1234
    const v11, 0xe000

    .line 1235
    .line 1236
    .line 1237
    const/16 v12, 0x80

    .line 1238
    .line 1239
    if-ge v10, v12, :cond_3f

    .line 1240
    .line 1241
    :goto_33
    move/from16 v12, v17

    .line 1242
    .line 1243
    move v14, v12

    .line 1244
    goto :goto_35

    .line 1245
    :cond_3f
    if-ge v10, v15, :cond_40

    .line 1246
    .line 1247
    move/from16 v12, v17

    .line 1248
    .line 1249
    const/4 v14, 0x2

    .line 1250
    goto :goto_35

    .line 1251
    :cond_40
    const v12, 0xd800

    .line 1252
    .line 1253
    .line 1254
    if-ge v10, v12, :cond_41

    .line 1255
    .line 1256
    :goto_34
    move/from16 v12, v17

    .line 1257
    .line 1258
    const/4 v14, 0x3

    .line 1259
    goto :goto_35

    .line 1260
    :cond_41
    if-ge v10, v11, :cond_42

    .line 1261
    .line 1262
    goto :goto_33

    .line 1263
    :cond_42
    move/from16 v12, v22

    .line 1264
    .line 1265
    if-ge v10, v12, :cond_43

    .line 1266
    .line 1267
    goto :goto_34

    .line 1268
    :cond_43
    const/4 v14, 0x4

    .line 1269
    move/from16 v12, v17

    .line 1270
    .line 1271
    :goto_35
    if-ne v14, v12, :cond_44

    .line 1272
    .line 1273
    int-to-char v11, v10

    .line 1274
    invoke-static {v11}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v19

    .line 1278
    if-eqz v19, :cond_44

    .line 1279
    .line 1280
    if-lt v9, v12, :cond_44

    .line 1281
    .line 1282
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    add-int/lit8 v6, v6, 0x1

    .line 1286
    .line 1287
    add-int/lit8 v9, v9, -0x1

    .line 1288
    .line 1289
    move/from16 v17, v12

    .line 1290
    .line 1291
    const/16 v18, 0x3

    .line 1292
    .line 1293
    :goto_36
    const/high16 v22, 0x10000

    .line 1294
    .line 1295
    goto :goto_31

    .line 1296
    :cond_44
    mul-int/lit8 v14, v14, 0x3

    .line 1297
    .line 1298
    if-lt v9, v14, :cond_4a

    .line 1299
    .line 1300
    const/16 v14, 0x80

    .line 1301
    .line 1302
    if-ge v10, v14, :cond_45

    .line 1303
    .line 1304
    int-to-byte v11, v10

    .line 1305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    shr-int/lit8 v14, v11, 0x4

    .line 1309
    .line 1310
    and-int/lit8 v14, v14, 0xf

    .line 1311
    .line 1312
    aget-char v14, v5, v14

    .line 1313
    .line 1314
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    and-int/lit8 v11, v11, 0xf

    .line 1318
    .line 1319
    aget-char v11, v5, v11

    .line 1320
    .line 1321
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    add-int/lit8 v9, v9, -0x3

    .line 1325
    .line 1326
    :goto_37
    const v11, 0xd800

    .line 1327
    .line 1328
    .line 1329
    const/16 v14, 0x80

    .line 1330
    .line 1331
    const/16 v18, 0x3

    .line 1332
    .line 1333
    :goto_38
    const/16 v24, 0x3f

    .line 1334
    .line 1335
    goto/16 :goto_3b

    .line 1336
    .line 1337
    :cond_45
    if-ge v10, v15, :cond_46

    .line 1338
    .line 1339
    shr-int/lit8 v11, v10, 0x6

    .line 1340
    .line 1341
    or-int/lit16 v11, v11, 0xc0

    .line 1342
    .line 1343
    int-to-byte v11, v11

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    shr-int/lit8 v14, v11, 0x4

    .line 1348
    .line 1349
    and-int/lit8 v14, v14, 0xf

    .line 1350
    .line 1351
    aget-char v14, v5, v14

    .line 1352
    .line 1353
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    and-int/lit8 v11, v11, 0xf

    .line 1357
    .line 1358
    aget-char v11, v5, v11

    .line 1359
    .line 1360
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    and-int/lit8 v11, v10, 0x3f

    .line 1364
    .line 1365
    const/16 v14, 0x80

    .line 1366
    .line 1367
    or-int/2addr v11, v14

    .line 1368
    int-to-byte v11, v11

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1370
    .line 1371
    .line 1372
    shr-int/lit8 v14, v11, 0x4

    .line 1373
    .line 1374
    and-int/lit8 v14, v14, 0xf

    .line 1375
    .line 1376
    aget-char v14, v5, v14

    .line 1377
    .line 1378
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    and-int/lit8 v11, v11, 0xf

    .line 1382
    .line 1383
    aget-char v11, v5, v11

    .line 1384
    .line 1385
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    .line 1388
    add-int/lit8 v9, v9, -0x6

    .line 1389
    .line 1390
    goto :goto_37

    .line 1391
    :cond_46
    const v11, 0xd800

    .line 1392
    .line 1393
    .line 1394
    if-lt v10, v11, :cond_47

    .line 1395
    .line 1396
    const v14, 0xe000

    .line 1397
    .line 1398
    .line 1399
    if-gt v14, v10, :cond_48

    .line 1400
    .line 1401
    const v12, 0x10001

    .line 1402
    .line 1403
    .line 1404
    if-ge v10, v12, :cond_48

    .line 1405
    .line 1406
    :cond_47
    const/16 v18, 0x3

    .line 1407
    .line 1408
    goto :goto_3a

    .line 1409
    :cond_48
    if-gt v11, v10, :cond_49

    .line 1410
    .line 1411
    if-ge v10, v14, :cond_49

    .line 1412
    .line 1413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    const/16 v18, 0x3

    .line 1417
    .line 1418
    aget-char v12, v5, v18

    .line 1419
    .line 1420
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    aget-char v12, v5, v20

    .line 1424
    .line 1425
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1426
    .line 1427
    .line 1428
    add-int/lit8 v9, v9, -0x3

    .line 1429
    .line 1430
    :goto_39
    const/16 v14, 0x80

    .line 1431
    .line 1432
    goto :goto_38

    .line 1433
    :cond_49
    const/16 v18, 0x3

    .line 1434
    .line 1435
    shr-int/lit8 v12, v10, 0x12

    .line 1436
    .line 1437
    or-int/lit16 v12, v12, 0xf0

    .line 1438
    .line 1439
    int-to-byte v12, v12

    .line 1440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1444
    .line 1445
    .line 1446
    shr-int/lit8 v12, v10, 0xc

    .line 1447
    .line 1448
    const/16 v24, 0x3f

    .line 1449
    .line 1450
    and-int/lit8 v12, v12, 0x3f

    .line 1451
    .line 1452
    const/16 v14, 0x80

    .line 1453
    .line 1454
    or-int/2addr v12, v14

    .line 1455
    int-to-byte v12, v12

    .line 1456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1460
    .line 1461
    .line 1462
    shr-int/lit8 v12, v10, 0x6

    .line 1463
    .line 1464
    and-int/lit8 v12, v12, 0x3f

    .line 1465
    .line 1466
    or-int/2addr v12, v14

    .line 1467
    int-to-byte v12, v12

    .line 1468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1472
    .line 1473
    .line 1474
    and-int/lit8 v12, v10, 0x3f

    .line 1475
    .line 1476
    or-int/2addr v12, v14

    .line 1477
    int-to-byte v12, v12

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1482
    .line 1483
    .line 1484
    add-int/lit8 v9, v9, -0xc

    .line 1485
    .line 1486
    goto :goto_39

    .line 1487
    :goto_3a
    shr-int/lit8 v12, v10, 0xc

    .line 1488
    .line 1489
    or-int/lit16 v12, v12, 0xe0

    .line 1490
    .line 1491
    int-to-byte v12, v12

    .line 1492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1496
    .line 1497
    .line 1498
    shr-int/lit8 v12, v10, 0x6

    .line 1499
    .line 1500
    const/16 v24, 0x3f

    .line 1501
    .line 1502
    and-int/lit8 v12, v12, 0x3f

    .line 1503
    .line 1504
    const/16 v14, 0x80

    .line 1505
    .line 1506
    or-int/2addr v12, v14

    .line 1507
    int-to-byte v12, v12

    .line 1508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1509
    .line 1510
    .line 1511
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1512
    .line 1513
    .line 1514
    and-int/lit8 v12, v10, 0x3f

    .line 1515
    .line 1516
    or-int/2addr v12, v14

    .line 1517
    int-to-byte v12, v12

    .line 1518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    invoke-static {v0, v12}, Lcom/fsck/k9/mail/filter/Hex;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 1522
    .line 1523
    .line 1524
    add-int/lit8 v9, v9, -0x9

    .line 1525
    .line 1526
    :goto_3b
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 1527
    .line 1528
    .line 1529
    move-result v10

    .line 1530
    add-int/2addr v6, v10

    .line 1531
    :goto_3c
    const/16 v17, 0x1

    .line 1532
    .line 1533
    goto/16 :goto_36

    .line 1534
    .line 1535
    :cond_4a
    const/16 v18, 0x3

    .line 1536
    .line 1537
    const/16 v24, 0x3f

    .line 1538
    .line 1539
    const/4 v7, 0x1

    .line 1540
    goto :goto_3c

    .line 1541
    :cond_4b
    :goto_3d
    move-object/from16 v1, v25

    .line 1542
    .line 1543
    goto/16 :goto_0

    .line 1544
    .line 1545
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1546
    .line 1547
    .line 1548
    move-result v0

    .line 1549
    invoke-static {v5, v0, v10, v9}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v0

    .line 1553
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 1554
    .line 1555
    .line 1556
    return-object p0

    .line 1557
    :cond_4d
    invoke-static {v5, v7, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/Object;)V

    .line 1562
    .line 1563
    .line 1564
    return-object p0

    .line 1565
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    return-object v0
.end method

.method public static findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/fsck/k9/mail/Multipart;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 32
    .line 33
    invoke-static {v1, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public static findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/fsck/k9/mail/Multipart;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_5

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    instance-of v5, v4, Lcom/fsck/k9/mail/Multipart;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-static {v4, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v4, p1, p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    move v2, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-eqz p3, :cond_3

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    :cond_3
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-interface {v3}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v5, "text/html"

    .line 83
    .line 84
    invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    new-instance v2, Lcom/fsck/k9/mail/internet/Viewable$Html;

    .line 91
    .line 92
    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_0

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    return-object v0
.end method

.method public static findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    instance-of v3, v2, Lcom/fsck/k9/mail/Multipart;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-interface {v1}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "text/plain"

    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    new-instance v2, Lcom/fsck/k9/mail/internet/Viewable$Text;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    instance-of v4, v3, Lcom/fsck/k9/mail/Multipart;

    .line 13
    .line 14
    if-eqz v4, :cond_5

    .line 15
    .line 16
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 17
    .line 18
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "multipart/alternative"

    .line 23
    .line 24
    invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    invoke-static {v3, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->getParts(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v3, v0, p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/HashSet;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_d

    .line 57
    .line 58
    :cond_2
    new-instance v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p0, v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/ArrayList;

    .line 64
    .line 65
    iput-object p2, v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v1, "multipart/signed"

    .line 76
    .line 77
    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    iget-object v1, v3, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-lez p0, :cond_d

    .line 90
    .line 91
    invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_d

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 118
    .line 119
    invoke-static {v0, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    instance-of v0, v3, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/4 v1, 0x0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :cond_6
    const-string v0, "attachment"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_8

    .line 145
    .line 146
    if-eqz v2, :cond_7

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    check-cast v3, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 150
    .line 151
    new-instance v0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object p0, v0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mContainerPart:Lcom/fsck/k9/mail/Part;

    .line 157
    .line 158
    iput-object v3, v0, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;->mMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 159
    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-static {v3, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_8
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    const-string v0, "text/plain"

    .line 185
    .line 186
    invoke-static {p2, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_a

    .line 191
    .line 192
    new-instance p2, Lcom/fsck/k9/mail/internet/Viewable$Text;

    .line 193
    .line 194
    invoke-direct {p2, p0}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_a
    new-instance p2, Lcom/fsck/k9/mail/internet/Viewable$Html;

    .line 199
    .line 200
    invoke-direct {p2, p0}, Lcom/fsck/k9/mail/internet/Viewable$Textual;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_b
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    const-string v0, "application/pgp-signature"

    .line 212
    .line 213
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_c

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_c
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const-string v0, "text/rfc822-headers"

    .line 225
    .line 226
    invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_e

    .line 231
    .line 232
    :cond_d
    :goto_3
    return-void

    .line 233
    :cond_e
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public static fixupCharset(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "0"

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string p0, "US-ASCII"

    .line 12
    .line 13
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "cp932"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v1, "shift_jis"

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object p0, v1

    .line 30
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    const-string v0, "iso-2022-jp"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_13

    .line 43
    .line 44
    :cond_3
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_4

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_4
    iget-object v1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 50
    .line 51
    const-string v2, "Received"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    array-length v3, v2

    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez v3, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    array-length v3, v2

    .line 63
    move v5, v4

    .line 64
    :goto_0
    if-ge v5, v3, :cond_6

    .line 65
    .line 66
    aget-object v6, v2, v5

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_e

    .line 76
    .line 77
    array-length v2, p1

    .line 78
    if-nez v2, :cond_7

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_7
    aget-object p1, p1, v4

    .line 83
    .line 84
    iget-object p1, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 85
    .line 86
    if-nez p1, :cond_8

    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_8
    const-string v2, "docomo.ne.jp"

    .line 91
    .line 92
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_d

    .line 97
    .line 98
    const-string v2, "dwmail.jp"

    .line 99
    .line 100
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_d

    .line 105
    .line 106
    const-string v2, "pdx.ne.jp"

    .line 107
    .line 108
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_d

    .line 113
    .line 114
    const-string/jumbo v2, "willcom.com"

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_d

    .line 122
    .line 123
    const-string v2, "emnet.ne.jp"

    .line 124
    .line 125
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_d

    .line 130
    .line 131
    const-string v2, "emobile.ne.jp"

    .line 132
    .line 133
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_9

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_9
    const-string v2, "softbank.ne.jp"

    .line 141
    .line 142
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_c

    .line 147
    .line 148
    const-string/jumbo v2, "vodafone.ne.jp"

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-nez v2, :cond_c

    .line 156
    .line 157
    const-string v2, "disney.ne.jp"

    .line 158
    .line 159
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_c

    .line 164
    .line 165
    const-string/jumbo v2, "vertuclub.ne.jp"

    .line 166
    .line 167
    .line 168
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    const-string v2, "ezweb.ne.jp"

    .line 176
    .line 177
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_b

    .line 182
    .line 183
    const-string v2, "ido.ne.jp"

    .line 184
    .line 185
    invoke-static {p1, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isInDomain(Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_e

    .line 190
    .line 191
    :cond_b
    const-string p1, "kddi"

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_c
    :goto_2
    const-string p1, "softbank"

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_d
    :goto_3
    const-string p1, "docomo"

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_e
    :goto_4
    move-object p1, v0

    .line 201
    :goto_5
    if-eqz p1, :cond_f

    .line 202
    .line 203
    move-object v0, p1

    .line 204
    goto :goto_6

    .line 205
    :cond_f
    const-string p1, "X-Mailer"

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    array-length v1, p1

    .line 212
    if-nez v1, :cond_10

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_10
    aget-object v1, p1, v4

    .line 216
    .line 217
    const-string v2, "iPhone Mail "

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_11

    .line 224
    .line 225
    aget-object p1, p1, v4

    .line 226
    .line 227
    const-string v1, "iPad Mail "

    .line 228
    .line 229
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_12

    .line 234
    .line 235
    :cond_11
    const-string v0, "iphone"

    .line 236
    .line 237
    :cond_12
    :goto_6
    if-eqz v0, :cond_13

    .line 238
    .line 239
    const-string p1, "-"

    .line 240
    .line 241
    const-string v1, "-2007"

    .line 242
    .line 243
    const-string/jumbo v2, "x-"

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v0, p1, p0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    :cond_13
    return-object p0
.end method

.method public static getAllHeaderParameters(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\r|\n"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, ";"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    aget-object v4, p0, v3

    .line 26
    .line 27
    const-string v5, "="

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    array-length v5, v4

    .line 35
    if-ne v5, v6, :cond_0

    .line 36
    .line 37
    aget-object v5, v4, v2

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const/4 v6, 0x1

    .line 50
    aget-object v4, v4, v6

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Lcom/fsck/k9/mail/internet/MessageIdParser;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readHeaderValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeValue;->parameters:Ljava/util/Map;

    .line 23
    .line 24
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    return-object p0
.end method

.method public static getParts(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable;

    .line 21
    .line 22
    instance-of v2, v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/Viewable$Textual;->mPart:Lcom/fsck/k9/mail/Part;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v2, v1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mText:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getParts(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->mHtml:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getParts(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object v0
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p0, "No body present for this message part"

    .line 12
    .line 13
    new-array p1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v3, v2, Lcom/fsck/k9/mail/internet/TextBody;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Lcom/fsck/k9/mail/internet/TextBody;

    .line 28
    .line 29
    iget-object p0, v2, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const-string v4, "text/*"

    .line 39
    .line 40
    const-string v5, "\\*"

    .line 41
    .line 42
    const-string v6, "\\.\\*"

    .line 43
    .line 44
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x2

    .line 49
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    :cond_2
    const-string v4, "application/pgp"

    .line 64
    .line 65
    invoke-interface {p0, v4}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    :cond_3
    invoke-static {p0, v2, v3, p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->getTextFromTextPart(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;Ljava/lang/String;J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    const-string p0, "Provided non-text part: %s"

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    new-array p1, p1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v3, p1, v1

    .line 82
    .line 83
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :goto_0
    const-string p1, "Unable to getTextFromPart"

    .line 88
    .line 89
    new-array p2, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5
    const-string p0, "Argument \'part\' must not be null"

    .line 96
    .line 97
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public static getTextFromTextPart(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;Ljava/lang/String;J)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/fsck/k9/mail/internet/MessageIdParser;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/mail/internet/MessageIdParser;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readHeaderValue()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeValue;

    .line 29
    .line 30
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 31
    .line 32
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 33
    .line 34
    invoke-direct {v1, v0, v3, v5, v4}, Lcom/fsck/k9/mail/internet/MimeValue;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->readBasicParameters(Lcom/fsck/k9/mail/internet/MessageIdParser;)Lcom/fsck/k9/mail/internet/BasicParameterResults;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v3, v1, Lcom/fsck/k9/mail/internet/BasicParameterResults;->parameters:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    iget-object v5, v1, Lcom/fsck/k9/mail/internet/BasicParameterResults;->ignoredParameters:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/fsck/k9/mail/internet/BasicParameterResults;->parserErrorIndex:Ljava/lang/Integer;

    .line 47
    .line 48
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    invoke-static {v7}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 92
    .line 93
    iget-object v7, v7, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeValue;

    .line 100
    .line 101
    invoke-direct {v3, v0, v6, v5, v1}, Lcom/fsck/k9/mail/internet/MimeValue;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;)V

    .line 102
    .line 103
    .line 104
    move-object v1, v3

    .line 105
    :goto_1
    const-string v0, "charset"

    .line 106
    .line 107
    iget-object v3, v1, Lcom/fsck/k9/mail/internet/MimeValue;->parameters:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    const/4 v3, 0x2

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    iget-object v0, v1, Lcom/fsck/k9/mail/internet/MimeValue;->ignoredParameters:Ljava/util/List;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    const/4 v5, 0x7

    .line 127
    invoke-direct {v1, v5}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 128
    .line 129
    .line 130
    new-instance v5, Lkotlin/sequences/FilteringSequence;

    .line 131
    .line 132
    invoke-direct {v5, v0, v2, v1}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    const/16 v1, 0x8

    .line 138
    .line 139
    invoke-direct {v0, v1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lkotlin/sequences/TakeWhileSequence;

    .line 143
    .line 144
    invoke-direct {v1, v5, v0, v3}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-ne v1, v2, :cond_2

    .line 156
    .line 157
    check-cast v0, Ljava/lang/Iterable;

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    move-object v0, v4

    .line 167
    :cond_3
    :goto_2
    const-string v1, "text/html"

    .line 168
    .line 169
    invoke-static {p2, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    const/4 v1, 0x0

    .line 174
    if-eqz p2, :cond_6

    .line 175
    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    const/16 v5, 0x100

    .line 183
    .line 184
    :try_start_0
    new-array v6, v5, [B

    .line 185
    .line 186
    invoke-virtual {p2, v6, v1, v5}, Ljava/io/InputStream;->read([BII)I

    .line 187
    .line 188
    .line 189
    new-instance v5, Ljava/lang/String;

    .line 190
    .line 191
    const-string v7, "US-ASCII"

    .line 192
    .line 193
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_4

    .line 201
    .line 202
    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .line 204
    :try_start_1
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .line 206
    .line 207
    :catch_0
    return-object p0

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    goto :goto_3

    .line 210
    :cond_4
    :try_start_2
    const-string v6, "<meta http-equiv=\"?Content-Type\"? content=\"text/html; charset=(.+?)\">"

    .line 211
    .line 212
    invoke-static {v6, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_5

    .line 225
    .line 226
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_5
    :try_start_3
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_3
    :try_start_4
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 235
    .line 236
    .line 237
    :catch_1
    throw p0

    .line 238
    :catch_2
    :cond_6
    :goto_4
    move-object p2, p0

    .line 239
    :goto_5
    if-eqz p2, :cond_8

    .line 240
    .line 241
    instance-of v3, p2, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 242
    .line 243
    if-eqz v3, :cond_7

    .line 244
    .line 245
    check-cast p2, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_7
    instance-of v3, p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 249
    .line 250
    if-nez v3, :cond_9

    .line 251
    .line 252
    :cond_8
    :goto_6
    move-object p2, v4

    .line 253
    goto :goto_7

    .line 254
    :cond_9
    check-cast p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 255
    .line 256
    iget-object p2, p2, Lcom/fsck/k9/mail/internet/MimeBodyPart;->parent:Lcom/fsck/k9/mail/Multipart;

    .line 257
    .line 258
    if-nez p2, :cond_a

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_a
    iget-object p2, p2, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :goto_7
    invoke-static {v0, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->fixupCharset(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const-wide/16 v5, -0x1

    .line 273
    .line 274
    cmp-long v0, p3, v5

    .line 275
    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream;

    .line 279
    .line 280
    invoke-direct {v0, p1, p3, p4}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_b
    move-object v0, p1

    .line 285
    :goto_8
    :try_start_5
    invoke-static {v0, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :try_start_6
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 290
    .line 291
    .line 292
    :catch_3
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeValue;->parameters:Ljava/util/Map;

    .line 301
    .line 302
    const-string p3, "text/plain"

    .line 303
    .line 304
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeValue;->value:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {p3, p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    if-nez p0, :cond_c

    .line 311
    .line 312
    new-instance p0, Lcom/fsck/k9/mail/internet/FormatFlowedResult;

    .line 313
    .line 314
    invoke-direct {p0, v1, v1}, Lcom/fsck/k9/mail/internet/FormatFlowedResult;-><init>(ZZ)V

    .line 315
    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_c
    const-string p0, "format"

    .line 319
    .line 320
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    check-cast p0, Ljava/lang/String;

    .line 325
    .line 326
    if-eqz p0, :cond_d

    .line 327
    .line 328
    sget-object p3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 329
    .line 330
    invoke-virtual {p0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_d
    move-object p0, v4

    .line 339
    :goto_9
    const-string p3, "flowed"

    .line 340
    .line 341
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p0

    .line 345
    if-nez p0, :cond_e

    .line 346
    .line 347
    new-instance p0, Lcom/fsck/k9/mail/internet/FormatFlowedResult;

    .line 348
    .line 349
    invoke-direct {p0, v1, v1}, Lcom/fsck/k9/mail/internet/FormatFlowedResult;-><init>(ZZ)V

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_e
    const-string p0, "delsp"

    .line 354
    .line 355
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    check-cast p0, Ljava/lang/String;

    .line 360
    .line 361
    if-eqz p0, :cond_f

    .line 362
    .line 363
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 364
    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    :cond_f
    new-instance p0, Lcom/fsck/k9/mail/internet/FormatFlowedResult;

    .line 373
    .line 374
    const-string/jumbo p1, "yes"

    .line 375
    .line 376
    .line 377
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    invoke-direct {p0, v2, p1}, Lcom/fsck/k9/mail/internet/FormatFlowedResult;-><init>(ZZ)V

    .line 382
    .line 383
    .line 384
    :goto_a
    iget-boolean p1, p0, Lcom/fsck/k9/mail/internet/FormatFlowedResult;->isFormatFlowed:Z

    .line 385
    .line 386
    if-eqz p1, :cond_1e

    .line 387
    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    move p3, v1

    .line 394
    move p4, p3

    .line 395
    move v0, p4

    .line 396
    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    sub-int/2addr v3, v2

    .line 401
    if-gt p3, v3, :cond_1d

    .line 402
    .line 403
    move v3, v1

    .line 404
    :goto_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    sub-int/2addr v4, v2

    .line 409
    const/16 v5, 0x3e

    .line 410
    .line 411
    if-gt p3, v4, :cond_10

    .line 412
    .line 413
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    if-ne v4, v5, :cond_10

    .line 418
    .line 419
    add-int/lit8 v3, v3, 0x1

    .line 420
    .line 421
    add-int/lit8 p3, p3, 0x1

    .line 422
    .line 423
    goto :goto_c

    .line 424
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    sub-int/2addr v4, v2

    .line 429
    const/16 v6, 0x20

    .line 430
    .line 431
    if-gt p3, v4, :cond_11

    .line 432
    .line 433
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-ne v4, v6, :cond_11

    .line 438
    .line 439
    add-int/lit8 p3, p3, 0x1

    .line 440
    .line 441
    :cond_11
    const/16 v4, 0xa

    .line 442
    .line 443
    const/4 v7, 0x4

    .line 444
    invoke-static {p2, v4, p3, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    const/4 v7, -0x1

    .line 449
    if-eq v4, v7, :cond_12

    .line 450
    .line 451
    move v7, v2

    .line 452
    goto :goto_d

    .line 453
    :cond_12
    move v7, v1

    .line 454
    :goto_d
    if-eqz v7, :cond_13

    .line 455
    .line 456
    move v8, v4

    .line 457
    goto :goto_e

    .line 458
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    :goto_e
    if-lez v8, :cond_14

    .line 463
    .line 464
    add-int/lit8 v9, v8, -0x1

    .line 465
    .line 466
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    const/16 v10, 0xd

    .line 471
    .line 472
    if-ne v9, v10, :cond_14

    .line 473
    .line 474
    add-int/lit8 v8, v8, -0x1

    .line 475
    .line 476
    :cond_14
    const-string v9, "\r\n"

    .line 477
    .line 478
    if-eqz v0, :cond_15

    .line 479
    .line 480
    if-eq v3, p4, :cond_15

    .line 481
    .line 482
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    move v0, v1

    .line 486
    :cond_15
    sub-int p4, v8, p3

    .line 487
    .line 488
    const/4 v10, 0x3

    .line 489
    if-ne p4, v10, :cond_16

    .line 490
    .line 491
    const-string p4, "-- "

    .line 492
    .line 493
    invoke-virtual {p2, p3, p4, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 494
    .line 495
    .line 496
    move-result p4

    .line 497
    if-eqz p4, :cond_16

    .line 498
    .line 499
    if-eqz v0, :cond_18

    .line 500
    .line 501
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    move p4, v1

    .line 505
    move v0, p4

    .line 506
    goto :goto_f

    .line 507
    :cond_16
    if-le v8, p3, :cond_18

    .line 508
    .line 509
    add-int/lit8 p4, v8, -0x1

    .line 510
    .line 511
    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    .line 512
    .line 513
    .line 514
    move-result p4

    .line 515
    if-ne p4, v6, :cond_18

    .line 516
    .line 517
    iget-boolean p4, p0, Lcom/fsck/k9/mail/internet/FormatFlowedResult;->isDelSp:Z

    .line 518
    .line 519
    if-eqz p4, :cond_17

    .line 520
    .line 521
    add-int/lit8 v8, v8, -0x1

    .line 522
    .line 523
    :cond_17
    move p4, v2

    .line 524
    goto :goto_f

    .line 525
    :cond_18
    move p4, v1

    .line 526
    :goto_f
    if-nez v0, :cond_1a

    .line 527
    .line 528
    if-lez v3, :cond_1a

    .line 529
    .line 530
    move v0, v1

    .line 531
    :goto_10
    if-ge v0, v3, :cond_19

    .line 532
    .line 533
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    add-int/lit8 v0, v0, 0x1

    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_19
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    :cond_1a
    invoke-virtual {p1, p2, p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    if-nez p4, :cond_1b

    .line 546
    .line 547
    if-eqz v7, :cond_1b

    .line 548
    .line 549
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    :cond_1b
    if-eqz v7, :cond_1c

    .line 553
    .line 554
    add-int/lit8 v4, v4, 0x1

    .line 555
    .line 556
    move p3, v4

    .line 557
    goto :goto_11

    .line 558
    :cond_1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 559
    .line 560
    .line 561
    move-result p3

    .line 562
    :goto_11
    move v0, p4

    .line 563
    move p4, v3

    .line 564
    goto/16 :goto_b

    .line 565
    .line 566
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    return-object p0

    .line 571
    :cond_1e
    return-object p2

    .line 572
    :catchall_1
    move-exception p0

    .line 573
    :try_start_7
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 574
    .line 575
    .line 576
    :catch_4
    throw p0
.end method

.method public static hasMissingParts(Lcom/fsck/k9/mail/Part;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lcom/fsck/k9/mail/Multipart;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p0, Lcom/fsck/k9/mail/Multipart;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/fsck/k9/mail/Part;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->hasMissingParts(Lcom/fsck/k9/mail/Part;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static final isAText(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5b

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x61

    .line 11
    .line 12
    if-gt v0, p0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x7b

    .line 15
    .line 16
    if-ge p0, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x30

    .line 20
    .line 21
    if-gt v0, p0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x3a

    .line 24
    .line 25
    if-ge p0, v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->ATEXT_SPECIAL:[C

    .line 29
    .line 30
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_3
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static final isAttributeChar(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2a

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x27

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x25

    .line 16
    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/fsck/k9/mail/internet/JisSupport;->TSPECIALS:[C

    .line 20
    .line 21
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static isInDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v2, 0x40

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0x2e

    .line 24
    .line 25
    if-ne v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "multipart/"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "filename"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const-string v2, "attachment"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v0, "text/html"

    .line 32
    .line 33
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "text/plain"

    .line 40
    .line 41
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "application/pgp"

    .line 48
    .line 49
    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 p0, 0x1

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 58
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static isToken(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    sget-object v3, Lcom/fsck/k9/mail/internet/JisSupport;->TSPECIALS:[C

    .line 27
    .line 28
    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v1

    .line 38
    :cond_2
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public static final isVChar(C)Z
    .locals 2

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gt v0, p0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x7f

    .line 7
    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    return v1
.end method

.method public static final isWsp(C)Z
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
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static quotedUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x22

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/16 v5, 0x5c

    .line 29
    .line 30
    if-eq v4, v0, :cond_0

    .line 31
    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static readBasicParameters(Lcom/fsck/k9/mail/internet/MessageIdParser;)Lcom/fsck/k9/mail/internet/BasicParameterResults;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/16 v3, 0x3b

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readToken()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x3d

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/16 v5, 0x22

    .line 50
    .line 51
    if-ne v4, v5, :cond_4

    .line 52
    .line 53
    new-instance v4, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 54
    .line 55
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eq v7, v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->read()C

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/16 v8, 0xa

    .line 80
    .line 81
    if-eq v7, v8, :cond_1

    .line 82
    .line 83
    const/16 v8, 0xd

    .line 84
    .line 85
    if-eq v7, v8, :cond_1

    .line 86
    .line 87
    const/16 v8, 0x5c

    .line 88
    .line 89
    if-eq v7, v8, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->read()C

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 108
    .line 109
    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-direct {v4, v6, v5}, Lcom/fsck/k9/mail/internet/ParameterValue;-><init>(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move-exception p0

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    new-instance v4, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readToken()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const/4 v6, 0x1

    .line 124
    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/mail/internet/ParameterValue;-><init>(Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object v5, v4, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Lcom/fsck/k9/mail/internet/ParameterValue;

    .line 134
    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v4, v6, Lcom/fsck/k9/mail/internet/ParameterValue;->value:Ljava/lang/String;

    .line 141
    .line 142
    new-instance v6, Lkotlin/Pair;

    .line 143
    .line 144
    invoke-direct {v6, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v4, Lkotlin/Pair;

    .line 151
    .line 152
    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_6

    .line 164
    .line 165
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    new-instance v4, Lkotlin/Pair;

    .line 170
    .line 171
    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 181
    .line 182
    .line 183
    move-result v3
    :try_end_0
    .catch Lcom/fsck/k9/mail/internet/MimeHeaderParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    if-eqz v3, :cond_0

    .line 185
    .line 186
    const/4 p0, 0x0

    .line 187
    goto :goto_4

    .line 188
    :goto_3
    iget p0, p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;->errorIndex:I

    .line 189
    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    :goto_4
    new-instance v1, Lcom/fsck/k9/mail/internet/BasicParameterResults;

    .line 195
    .line 196
    invoke-direct {v1, v0, v2, p0}, Lcom/fsck/k9/mail/internet/BasicParameterResults;-><init>(Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 197
    .line 198
    .line 199
    return-object v1
.end method

.method public static readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x13

    .line 6
    .line 7
    const-string v2, "-shift_jis-2007"

    .line 8
    .line 9
    const/16 v3, 0x11

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const-string/jumbo v5, "x-"

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "-iso-2022-jp-2007"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    .line 42
    .line 43
    .line 44
    iput v6, v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:I

    .line 45
    .line 46
    iput-boolean v7, v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 47
    .line 48
    iput-object p0, v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    sub-int/2addr p0, v3

    .line 55
    invoke-virtual {p1, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v5, p0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object p0, v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-le v0, v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/lit8 v0, v0, -0xf

    .line 93
    .line 94
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "iphone"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const-string v0, "shift_jis"

    .line 105
    .line 106
    move-object v8, v0

    .line 107
    move v0, p1

    .line 108
    move-object p1, v8

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move v0, v7

    .line 111
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move v1, v7

    .line 117
    :goto_1
    move v2, v7

    .line 118
    :goto_2
    if-ge v2, v4, :cond_4

    .line 119
    .line 120
    sget-object v3, Lcom/fsck/k9/mail/internet/JisSupport;->CHARSET_FALLBACK_MAP:[[Ljava/lang/String;

    .line 121
    .line 122
    aget-object v3, v3, v2

    .line 123
    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    aget-object v5, v3, v7

    .line 128
    .line 129
    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_3

    .line 134
    .line 135
    aget-object v1, v3, v6

    .line 136
    .line 137
    new-array v5, v4, [Ljava/lang/Object;

    .line 138
    .line 139
    aput-object p1, v5, v7

    .line 140
    .line 141
    aput-object v1, v5, v6

    .line 142
    .line 143
    const-string p1, "I don\'t know how to deal with the charset %s. Falling back to %s"

    .line 144
    .line 145
    invoke-static {p1, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    aget-object p1, v3, v6

    .line 149
    .line 150
    :try_start_1
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v1
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_3

    .line 155
    :catch_1
    move v1, v7

    .line 156
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    :goto_4
    if-nez v1, :cond_5

    .line 160
    .line 161
    const-string p1, "US-ASCII"

    .line 162
    .line 163
    :cond_5
    sget v1, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 164
    .line 165
    sget v1, Lorg/apache/commons/io/Charsets;->$r8$clinit:I

    .line 166
    .line 167
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-nez p1, :cond_6

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_5
    new-instance p1, Lorg/apache/commons/io/output/StringBuilderWriter;

    .line 179
    .line 180
    invoke-direct {p1}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v2, Ljava/io/InputStreamReader;

    .line 184
    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :cond_7
    invoke-direct {v2, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 192
    .line 193
    .line 194
    sget-object p0, Lorg/apache/commons/io/IOUtils$ScratchChars;->LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    check-cast v1, [Ljava/lang/Object;

    .line 201
    .line 202
    aget-object v3, v1, v7

    .line 203
    .line 204
    check-cast v3, Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_8

    .line 211
    .line 212
    new-instance v1, Lorg/apache/commons/io/IOUtils$ScratchChars;

    .line 213
    .line 214
    const/16 v3, 0x2000

    .line 215
    .line 216
    new-array v3, v3, [C

    .line 217
    .line 218
    invoke-direct {v1, v3}, Lorg/apache/commons/io/IOUtils$ScratchChars;-><init>([C)V

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_8
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 223
    .line 224
    aput-object v3, v1, v7

    .line 225
    .line 226
    sget-object v1, Lorg/apache/commons/io/IOUtils$ScratchChars;->INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchChars;

    .line 227
    .line 228
    :goto_6
    :try_start_2
    iget-object v3, v1, Lorg/apache/commons/io/IOUtils$ScratchChars;->buffer:[C

    .line 229
    .line 230
    if-eqz v3, :cond_9

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_9
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    check-cast p0, [Ljava/lang/Object;

    .line 238
    .line 239
    aget-object p0, p0, v6

    .line 240
    .line 241
    move-object v3, p0

    .line 242
    check-cast v3, [C

    .line 243
    .line 244
    :goto_7
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    const/4 v4, -0x1

    .line 249
    if-eq v4, p0, :cond_a

    .line 250
    .line 251
    invoke-virtual {p1, v3, v7, p0}, Lorg/apache/commons/io/output/StringBuilderWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :catchall_0
    move-exception p0

    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_a
    invoke-virtual {v1}, Lorg/apache/commons/io/IOUtils$ScratchChars;->close()V

    .line 259
    .line 260
    .line 261
    iget-object p0, p1, Lorg/apache/commons/io/output/StringBuilderWriter;->builder:Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    if-eqz v0, :cond_c

    .line 268
    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .line 277
    .line 278
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-ge v7, v0, :cond_b

    .line 283
    .line 284
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    packed-switch v0, :pswitch_data_0

    .line 289
    .line 290
    .line 291
    packed-switch v0, :pswitch_data_1

    .line 292
    .line 293
    .line 294
    packed-switch v0, :pswitch_data_2

    .line 295
    .line 296
    .line 297
    packed-switch v0, :pswitch_data_3

    .line 298
    .line 299
    .line 300
    packed-switch v0, :pswitch_data_4

    .line 301
    .line 302
    .line 303
    packed-switch v0, :pswitch_data_5

    .line 304
    .line 305
    .line 306
    goto/16 :goto_9

    .line 307
    .line 308
    :pswitch_0
    const v0, 0xfee76

    .line 309
    .line 310
    .line 311
    goto/16 :goto_9

    .line 312
    .line 313
    :pswitch_1
    const v0, 0xfee75

    .line 314
    .line 315
    .line 316
    goto/16 :goto_9

    .line 317
    .line 318
    :pswitch_2
    const v0, 0xfee74

    .line 319
    .line 320
    .line 321
    goto/16 :goto_9

    .line 322
    .line 323
    :pswitch_3
    const v0, 0xfee73

    .line 324
    .line 325
    .line 326
    goto/16 :goto_9

    .line 327
    .line 328
    :pswitch_4
    const v0, 0xfee72

    .line 329
    .line 330
    .line 331
    goto/16 :goto_9

    .line 332
    .line 333
    :pswitch_5
    const v0, 0xfee71

    .line 334
    .line 335
    .line 336
    goto/16 :goto_9

    .line 337
    .line 338
    :pswitch_6
    const v0, 0xfee70

    .line 339
    .line 340
    .line 341
    goto/16 :goto_9

    .line 342
    .line 343
    :pswitch_7
    const v0, 0xfeb2a

    .line 344
    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :pswitch_8
    const v0, 0xfe553

    .line 349
    .line 350
    .line 351
    goto/16 :goto_9

    .line 352
    .line 353
    :pswitch_9
    const v0, 0xfe50e

    .line 354
    .line 355
    .line 356
    goto/16 :goto_9

    .line 357
    .line 358
    :pswitch_a
    const v0, 0xfe50d

    .line 359
    .line 360
    .line 361
    goto/16 :goto_9

    .line 362
    .line 363
    :pswitch_b
    const v0, 0xfe50c

    .line 364
    .line 365
    .line 366
    goto/16 :goto_9

    .line 367
    .line 368
    :pswitch_c
    const v0, 0xfe50b

    .line 369
    .line 370
    .line 371
    goto/16 :goto_9

    .line 372
    .line 373
    :pswitch_d
    const v0, 0xfe1d7

    .line 374
    .line 375
    .line 376
    goto/16 :goto_9

    .line 377
    .line 378
    :pswitch_e
    const v0, 0xfe1d6

    .line 379
    .line 380
    .line 381
    goto/16 :goto_9

    .line 382
    .line 383
    :pswitch_f
    const v0, 0xfe1d5

    .line 384
    .line 385
    .line 386
    goto/16 :goto_9

    .line 387
    .line 388
    :pswitch_10
    const v0, 0xfe1d4

    .line 389
    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :pswitch_11
    const v0, 0xfe1d3

    .line 394
    .line 395
    .line 396
    goto/16 :goto_9

    .line 397
    .line 398
    :pswitch_12
    const v0, 0xfe1d2

    .line 399
    .line 400
    .line 401
    goto/16 :goto_9

    .line 402
    .line 403
    :pswitch_13
    const v0, 0xfe1d1

    .line 404
    .line 405
    .line 406
    goto/16 :goto_9

    .line 407
    .line 408
    :pswitch_14
    const v0, 0xfe1d0

    .line 409
    .line 410
    .line 411
    goto/16 :goto_9

    .line 412
    .line 413
    :pswitch_15
    const v0, 0xfe1cf

    .line 414
    .line 415
    .line 416
    goto/16 :goto_9

    .line 417
    .line 418
    :pswitch_16
    const v0, 0xfe1ce

    .line 419
    .line 420
    .line 421
    goto/16 :goto_9

    .line 422
    .line 423
    :pswitch_17
    const v0, 0xfe1cd

    .line 424
    .line 425
    .line 426
    goto/16 :goto_9

    .line 427
    .line 428
    :pswitch_18
    const v0, 0xfe1cc

    .line 429
    .line 430
    .line 431
    goto/16 :goto_9

    .line 432
    .line 433
    :pswitch_19
    const v0, 0xfe1cb

    .line 434
    .line 435
    .line 436
    goto/16 :goto_9

    .line 437
    .line 438
    :pswitch_1a
    const v0, 0xfe1ca

    .line 439
    .line 440
    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :pswitch_1b
    const v0, 0xfe1ba

    .line 444
    .line 445
    .line 446
    goto/16 :goto_9

    .line 447
    .line 448
    :pswitch_1c
    const v0, 0xfe1c9

    .line 449
    .line 450
    .line 451
    goto/16 :goto_9

    .line 452
    .line 453
    :pswitch_1d
    const v0, 0xfe1c8

    .line 454
    .line 455
    .line 456
    goto/16 :goto_9

    .line 457
    .line 458
    :pswitch_1e
    const v0, 0xfe1c7

    .line 459
    .line 460
    .line 461
    goto/16 :goto_9

    .line 462
    .line 463
    :pswitch_1f
    const v0, 0xfe1b6

    .line 464
    .line 465
    .line 466
    goto/16 :goto_9

    .line 467
    .line 468
    :pswitch_20
    const v0, 0xfe1b5

    .line 469
    .line 470
    .line 471
    goto/16 :goto_9

    .line 472
    .line 473
    :pswitch_21
    const v0, 0xfe4c6

    .line 474
    .line 475
    .line 476
    goto/16 :goto_9

    .line 477
    .line 478
    :pswitch_22
    const v0, 0xfe1ab

    .line 479
    .line 480
    .line 481
    goto/16 :goto_9

    .line 482
    .line 483
    :pswitch_23
    const v0, 0xfe1aa

    .line 484
    .line 485
    .line 486
    goto/16 :goto_9

    .line 487
    .line 488
    :pswitch_24
    const v0, 0xfe1a9

    .line 489
    .line 490
    .line 491
    goto/16 :goto_9

    .line 492
    .line 493
    :pswitch_25
    const v0, 0xfe1a8

    .line 494
    .line 495
    .line 496
    goto/16 :goto_9

    .line 497
    .line 498
    :pswitch_26
    const v0, 0xfe1a7

    .line 499
    .line 500
    .line 501
    goto/16 :goto_9

    .line 502
    .line 503
    :pswitch_27
    const v0, 0xfe1a6

    .line 504
    .line 505
    .line 506
    goto/16 :goto_9

    .line 507
    .line 508
    :pswitch_28
    const v0, 0xfe1a5

    .line 509
    .line 510
    .line 511
    goto/16 :goto_9

    .line 512
    .line 513
    :pswitch_29
    const v0, 0xfe1a4

    .line 514
    .line 515
    .line 516
    goto/16 :goto_9

    .line 517
    .line 518
    :pswitch_2a
    const v0, 0xfe4ee

    .line 519
    .line 520
    .line 521
    goto/16 :goto_9

    .line 522
    .line 523
    :pswitch_2b
    const v0, 0xfe4ed

    .line 524
    .line 525
    .line 526
    goto/16 :goto_9

    .line 527
    .line 528
    :pswitch_2c
    const v0, 0xfe4ec

    .line 529
    .line 530
    .line 531
    goto/16 :goto_9

    .line 532
    .line 533
    :pswitch_2d
    const v0, 0xfe4eb

    .line 534
    .line 535
    .line 536
    goto/16 :goto_9

    .line 537
    .line 538
    :pswitch_2e
    const v0, 0xfe4ea

    .line 539
    .line 540
    .line 541
    goto/16 :goto_9

    .line 542
    .line 543
    :pswitch_2f
    const v0, 0xfe4e9

    .line 544
    .line 545
    .line 546
    goto/16 :goto_9

    .line 547
    .line 548
    :pswitch_30
    const v0, 0xfe4e8

    .line 549
    .line 550
    .line 551
    goto/16 :goto_9

    .line 552
    .line 553
    :pswitch_31
    const v0, 0xfe4e7

    .line 554
    .line 555
    .line 556
    goto/16 :goto_9

    .line 557
    .line 558
    :pswitch_32
    const v0, 0xfe4e6

    .line 559
    .line 560
    .line 561
    goto/16 :goto_9

    .line 562
    .line 563
    :pswitch_33
    const v0, 0xfe4e5

    .line 564
    .line 565
    .line 566
    goto/16 :goto_9

    .line 567
    .line 568
    :pswitch_34
    const v0, 0xfe4c5

    .line 569
    .line 570
    .line 571
    goto/16 :goto_9

    .line 572
    .line 573
    :pswitch_35
    const v0, 0xfe4c4

    .line 574
    .line 575
    .line 576
    goto/16 :goto_9

    .line 577
    .line 578
    :pswitch_36
    const v0, 0xfe4c0

    .line 579
    .line 580
    .line 581
    goto/16 :goto_9

    .line 582
    .line 583
    :pswitch_37
    const v0, 0xfe802

    .line 584
    .line 585
    .line 586
    goto/16 :goto_9

    .line 587
    .line 588
    :pswitch_38
    const v0, 0xfe4bf

    .line 589
    .line 590
    .line 591
    goto/16 :goto_9

    .line 592
    .line 593
    :pswitch_39
    const v0, 0xfe4be

    .line 594
    .line 595
    .line 596
    goto/16 :goto_9

    .line 597
    .line 598
    :pswitch_3a
    const v0, 0xfe4bd

    .line 599
    .line 600
    .line 601
    goto/16 :goto_9

    .line 602
    .line 603
    :pswitch_3b
    const v0, 0xfe805

    .line 604
    .line 605
    .line 606
    goto/16 :goto_9

    .line 607
    .line 608
    :pswitch_3c
    const v0, 0xfe804

    .line 609
    .line 610
    .line 611
    goto/16 :goto_9

    .line 612
    .line 613
    :pswitch_3d
    const v0, 0xfe4b8

    .line 614
    .line 615
    .line 616
    goto/16 :goto_9

    .line 617
    .line 618
    :pswitch_3e
    const v0, 0xfe00d

    .line 619
    .line 620
    .line 621
    goto/16 :goto_9

    .line 622
    .line 623
    :pswitch_3f
    const v0, 0xfe008

    .line 624
    .line 625
    .line 626
    goto/16 :goto_9

    .line 627
    .line 628
    :pswitch_40
    const v0, 0xfe00c

    .line 629
    .line 630
    .line 631
    goto/16 :goto_9

    .line 632
    .line 633
    :pswitch_41
    const v0, 0xfe00a

    .line 634
    .line 635
    .line 636
    goto/16 :goto_9

    .line 637
    .line 638
    :pswitch_42
    const v0, 0xfe513

    .line 639
    .line 640
    .line 641
    goto/16 :goto_9

    .line 642
    .line 643
    :pswitch_43
    const v0, 0xfe043

    .line 644
    .line 645
    .line 646
    goto/16 :goto_9

    .line 647
    .line 648
    :pswitch_44
    const v0, 0xfe017

    .line 649
    .line 650
    .line 651
    goto/16 :goto_9

    .line 652
    .line 653
    :pswitch_45
    const v0, 0xfe51f

    .line 654
    .line 655
    .line 656
    goto/16 :goto_9

    .line 657
    .line 658
    :pswitch_46
    const v0, 0xfe049

    .line 659
    .line 660
    .line 661
    goto/16 :goto_9

    .line 662
    .line 663
    :pswitch_47
    const v0, 0xfe005

    .line 664
    .line 665
    .line 666
    goto/16 :goto_9

    .line 667
    .line 668
    :pswitch_48
    const v0, 0xfe51e

    .line 669
    .line 670
    .line 671
    goto/16 :goto_9

    .line 672
    .line 673
    :pswitch_49
    const v0, 0xfe1c6

    .line 674
    .line 675
    .line 676
    goto/16 :goto_9

    .line 677
    .line 678
    :pswitch_4a
    const v0, 0xfe51d

    .line 679
    .line 680
    .line 681
    goto/16 :goto_9

    .line 682
    .line 683
    :pswitch_4b
    const v0, 0xfe971

    .line 684
    .line 685
    .line 686
    goto/16 :goto_9

    .line 687
    .line 688
    :pswitch_4c
    const v0, 0xfe038

    .line 689
    .line 690
    .line 691
    goto/16 :goto_9

    .line 692
    .line 693
    :pswitch_4d
    const v0, 0xfe82a

    .line 694
    .line 695
    .line 696
    goto/16 :goto_9

    .line 697
    .line 698
    :pswitch_4e
    const v0, 0xfe007

    .line 699
    .line 700
    .line 701
    goto/16 :goto_9

    .line 702
    .line 703
    :pswitch_4f
    const v0, 0xfe51c

    .line 704
    .line 705
    .line 706
    goto/16 :goto_9

    .line 707
    .line 708
    :pswitch_50
    const v0, 0xfe51b

    .line 709
    .line 710
    .line 711
    goto/16 :goto_9

    .line 712
    .line 713
    :pswitch_51
    const v0, 0xfe51a

    .line 714
    .line 715
    .line 716
    goto/16 :goto_9

    .line 717
    .line 718
    :pswitch_52
    const v0, 0xfe519

    .line 719
    .line 720
    .line 721
    goto/16 :goto_9

    .line 722
    .line 723
    :pswitch_53
    const v0, 0xfeb17

    .line 724
    .line 725
    .line 726
    goto/16 :goto_9

    .line 727
    .line 728
    :pswitch_54
    const v0, 0xfe518

    .line 729
    .line 730
    .line 731
    goto/16 :goto_9

    .line 732
    .line 733
    :pswitch_55
    const v0, 0xfe7e2

    .line 734
    .line 735
    .line 736
    goto/16 :goto_9

    .line 737
    .line 738
    :pswitch_56
    const v0, 0xfe7e0

    .line 739
    .line 740
    .line 741
    goto/16 :goto_9

    .line 742
    .line 743
    :pswitch_57
    const v0, 0xfe7fe

    .line 744
    .line 745
    .line 746
    goto/16 :goto_9

    .line 747
    .line 748
    :pswitch_58
    const v0, 0xfe7f4

    .line 749
    .line 750
    .line 751
    goto/16 :goto_9

    .line 752
    .line 753
    :pswitch_59
    const v0, 0xfe7f3

    .line 754
    .line 755
    .line 756
    goto/16 :goto_9

    .line 757
    .line 758
    :pswitch_5a
    const v0, 0xfe7f2

    .line 759
    .line 760
    .line 761
    goto/16 :goto_9

    .line 762
    .line 763
    :pswitch_5b
    const v0, 0xfe7f1

    .line 764
    .line 765
    .line 766
    goto/16 :goto_9

    .line 767
    .line 768
    :pswitch_5c
    const v0, 0xfe7e5

    .line 769
    .line 770
    .line 771
    goto/16 :goto_9

    .line 772
    .line 773
    :pswitch_5d
    const v0, 0xfe7de

    .line 774
    .line 775
    .line 776
    goto/16 :goto_9

    .line 777
    .line 778
    :pswitch_5e
    const v0, 0xfe80e

    .line 779
    .line 780
    .line 781
    goto/16 :goto_9

    .line 782
    .line 783
    :pswitch_5f
    const v0, 0xfe7dd

    .line 784
    .line 785
    .line 786
    goto/16 :goto_9

    .line 787
    .line 788
    :pswitch_60
    const v0, 0xfe7d6

    .line 789
    .line 790
    .line 791
    goto/16 :goto_9

    .line 792
    .line 793
    :pswitch_61
    const v0, 0xfe1a2

    .line 794
    .line 795
    .line 796
    goto/16 :goto_9

    .line 797
    .line 798
    :pswitch_62
    const v0, 0xfe1a0

    .line 799
    .line 800
    .line 801
    goto/16 :goto_9

    .line 802
    .line 803
    :pswitch_63
    const v0, 0xfe358

    .line 804
    .line 805
    .line 806
    goto/16 :goto_9

    .line 807
    .line 808
    :pswitch_64
    const v0, 0xfe353

    .line 809
    .line 810
    .line 811
    goto/16 :goto_9

    .line 812
    .line 813
    :pswitch_65
    const v0, 0xfe829

    .line 814
    .line 815
    .line 816
    goto/16 :goto_9

    .line 817
    .line 818
    :pswitch_66
    const v0, 0xfe352

    .line 819
    .line 820
    .line 821
    goto/16 :goto_9

    .line 822
    .line 823
    :pswitch_67
    const v0, 0xfe351

    .line 824
    .line 825
    .line 826
    goto/16 :goto_9

    .line 827
    .line 828
    :pswitch_68
    const v0, 0xfeba1

    .line 829
    .line 830
    .line 831
    goto/16 :goto_9

    .line 832
    .line 833
    :pswitch_69
    const v0, 0xfeba0

    .line 834
    .line 835
    .line 836
    goto/16 :goto_9

    .line 837
    .line 838
    :pswitch_6a
    const v0, 0xfeb9f

    .line 839
    .line 840
    .line 841
    goto/16 :goto_9

    .line 842
    .line 843
    :pswitch_6b
    const v0, 0xfeb9e

    .line 844
    .line 845
    .line 846
    goto/16 :goto_9

    .line 847
    .line 848
    :pswitch_6c
    const v0, 0xfeb9d

    .line 849
    .line 850
    .line 851
    goto/16 :goto_9

    .line 852
    .line 853
    :pswitch_6d
    const v0, 0xfe35b

    .line 854
    .line 855
    .line 856
    goto/16 :goto_9

    .line 857
    .line 858
    :pswitch_6e
    const v0, 0xfe193

    .line 859
    .line 860
    .line 861
    goto/16 :goto_9

    .line 862
    .line 863
    :pswitch_6f
    const v0, 0xfe191

    .line 864
    .line 865
    .line 866
    goto/16 :goto_9

    .line 867
    .line 868
    :pswitch_70
    const v0, 0xfe192

    .line 869
    .line 870
    .line 871
    goto/16 :goto_9

    .line 872
    .line 873
    :pswitch_71
    const v0, 0xfe190

    .line 874
    .line 875
    .line 876
    goto/16 :goto_9

    .line 877
    .line 878
    :pswitch_72
    const v0, 0xfe32c

    .line 879
    .line 880
    .line 881
    goto/16 :goto_9

    .line 882
    .line 883
    :pswitch_73
    const v0, 0xfe32d

    .line 884
    .line 885
    .line 886
    goto/16 :goto_9

    .line 887
    .line 888
    :pswitch_74
    const v0, 0xfe33d

    .line 889
    .line 890
    .line 891
    goto/16 :goto_9

    .line 892
    .line 893
    :pswitch_75
    const v0, 0xfe338

    .line 894
    .line 895
    .line 896
    goto/16 :goto_9

    .line 897
    .line 898
    :pswitch_76
    const v0, 0xfe336

    .line 899
    .line 900
    .line 901
    goto/16 :goto_9

    .line 902
    .line 903
    :pswitch_77
    const v0, 0xfe339

    .line 904
    .line 905
    .line 906
    goto/16 :goto_9

    .line 907
    .line 908
    :pswitch_78
    const v0, 0xfe334

    .line 909
    .line 910
    .line 911
    goto/16 :goto_9

    .line 912
    .line 913
    :pswitch_79
    const v0, 0xfe33a

    .line 914
    .line 915
    .line 916
    goto/16 :goto_9

    .line 917
    .line 918
    :pswitch_7a
    const v0, 0xfe322

    .line 919
    .line 920
    .line 921
    goto/16 :goto_9

    .line 922
    .line 923
    :pswitch_7b
    const v0, 0xfe325

    .line 924
    .line 925
    .line 926
    goto/16 :goto_9

    .line 927
    .line 928
    :pswitch_7c
    const v0, 0xfe326

    .line 929
    .line 930
    .line 931
    goto/16 :goto_9

    .line 932
    .line 933
    :pswitch_7d
    const v0, 0xfe32f

    .line 934
    .line 935
    .line 936
    goto/16 :goto_9

    .line 937
    .line 938
    :pswitch_7e
    const v0, 0xfe32e

    .line 939
    .line 940
    .line 941
    goto/16 :goto_9

    .line 942
    .line 943
    :pswitch_7f
    const v0, 0xfe33b

    .line 944
    .line 945
    .line 946
    goto/16 :goto_9

    .line 947
    .line 948
    :pswitch_80
    const v0, 0xfe33e

    .line 949
    .line 950
    .line 951
    goto/16 :goto_9

    .line 952
    .line 953
    :pswitch_81
    const v0, 0xfe32a

    .line 954
    .line 955
    .line 956
    goto/16 :goto_9

    .line 957
    .line 958
    :pswitch_82
    const v0, 0xfe342

    .line 959
    .line 960
    .line 961
    goto/16 :goto_9

    .line 962
    .line 963
    :pswitch_83
    const v0, 0xfe33f

    .line 964
    .line 965
    .line 966
    goto/16 :goto_9

    .line 967
    .line 968
    :pswitch_84
    const v0, 0xfe33c

    .line 969
    .line 970
    .line 971
    goto/16 :goto_9

    .line 972
    .line 973
    :pswitch_85
    const v0, 0xfe347

    .line 974
    .line 975
    .line 976
    goto/16 :goto_9

    .line 977
    .line 978
    :pswitch_86
    const v0, 0xfe333

    .line 979
    .line 980
    .line 981
    goto/16 :goto_9

    .line 982
    .line 983
    :pswitch_87
    const v0, 0xfe340

    .line 984
    .line 985
    .line 986
    goto/16 :goto_9

    .line 987
    .line 988
    :pswitch_88
    const v0, 0xfe343

    .line 989
    .line 990
    .line 991
    goto/16 :goto_9

    .line 992
    .line 993
    :pswitch_89
    const v0, 0xfe345

    .line 994
    .line 995
    .line 996
    goto/16 :goto_9

    .line 997
    .line 998
    :pswitch_8a
    const v0, 0xfe970

    .line 999
    .line 1000
    .line 1001
    goto/16 :goto_9

    .line 1002
    .line 1003
    :pswitch_8b
    const v0, 0xfe96f

    .line 1004
    .line 1005
    .line 1006
    goto/16 :goto_9

    .line 1007
    .line 1008
    :pswitch_8c
    const v0, 0xfe511

    .line 1009
    .line 1010
    .line 1011
    goto/16 :goto_9

    .line 1012
    .line 1013
    :pswitch_8d
    const v0, 0xfe056

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_9

    .line 1017
    .line 1018
    :pswitch_8e
    const v0, 0xfe055

    .line 1019
    .line 1020
    .line 1021
    goto/16 :goto_9

    .line 1022
    .line 1023
    :pswitch_8f
    const v0, 0xfe054

    .line 1024
    .line 1025
    .line 1026
    goto/16 :goto_9

    .line 1027
    .line 1028
    :pswitch_90
    const v0, 0xfe053

    .line 1029
    .line 1030
    .line 1031
    goto/16 :goto_9

    .line 1032
    .line 1033
    :pswitch_91
    const v0, 0xfe052

    .line 1034
    .line 1035
    .line 1036
    goto/16 :goto_9

    .line 1037
    .line 1038
    :pswitch_92
    const v0, 0xfe051

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_9

    .line 1042
    .line 1043
    :pswitch_93
    const v0, 0xfe96e

    .line 1044
    .line 1045
    .line 1046
    goto/16 :goto_9

    .line 1047
    .line 1048
    :pswitch_94
    const v0, 0xfe96d

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_9

    .line 1052
    .line 1053
    :pswitch_95
    const v0, 0xfe961

    .line 1054
    .line 1055
    .line 1056
    goto/16 :goto_9

    .line 1057
    .line 1058
    :pswitch_96
    const v0, 0xfe96c

    .line 1059
    .line 1060
    .line 1061
    goto/16 :goto_9

    .line 1062
    .line 1063
    :pswitch_97
    const v0, 0xfe963

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_9

    .line 1067
    .line 1068
    :pswitch_98
    const v0, 0xfe96b

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_9

    .line 1072
    .line 1073
    :pswitch_99
    const v0, 0xfe96a

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_9

    .line 1077
    .line 1078
    :pswitch_9a
    const v0, 0xfe969

    .line 1079
    .line 1080
    .line 1081
    goto/16 :goto_9

    .line 1082
    .line 1083
    :pswitch_9b
    const v0, 0xfe968

    .line 1084
    .line 1085
    .line 1086
    goto/16 :goto_9

    .line 1087
    .line 1088
    :pswitch_9c
    const v0, 0xfe967

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_9

    .line 1092
    .line 1093
    :pswitch_9d
    const v0, 0xfe966

    .line 1094
    .line 1095
    .line 1096
    goto/16 :goto_9

    .line 1097
    .line 1098
    :pswitch_9e
    const v0, 0xfe964

    .line 1099
    .line 1100
    .line 1101
    goto/16 :goto_9

    .line 1102
    .line 1103
    :pswitch_9f
    const v0, 0xfe984

    .line 1104
    .line 1105
    .line 1106
    goto/16 :goto_9

    .line 1107
    .line 1108
    :pswitch_a0
    const v0, 0xfeb0b

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_9

    .line 1112
    .line 1113
    :pswitch_a1
    const v0, 0xfeb0a

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_9

    .line 1117
    .line 1118
    :pswitch_a2
    const v0, 0xfeb69

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_9

    .line 1122
    .line 1123
    :pswitch_a3
    const v0, 0xfeb57

    .line 1124
    .line 1125
    .line 1126
    goto/16 :goto_9

    .line 1127
    .line 1128
    :pswitch_a4
    const v0, 0xfeb45

    .line 1129
    .line 1130
    .line 1131
    goto/16 :goto_9

    .line 1132
    .line 1133
    :pswitch_a5
    const v0, 0xfeb44

    .line 1134
    .line 1135
    .line 1136
    goto/16 :goto_9

    .line 1137
    .line 1138
    :pswitch_a6
    const v0, 0xfeb5b

    .line 1139
    .line 1140
    .line 1141
    goto/16 :goto_9

    .line 1142
    .line 1143
    :pswitch_a7
    const v0, 0xfeb5d

    .line 1144
    .line 1145
    .line 1146
    goto/16 :goto_9

    .line 1147
    .line 1148
    :pswitch_a8
    const v0, 0xfeb68

    .line 1149
    .line 1150
    .line 1151
    goto/16 :goto_9

    .line 1152
    .line 1153
    :pswitch_a9
    const v0, 0xfeb60

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_9

    .line 1157
    .line 1158
    :pswitch_aa
    const v0, 0xfeb16

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_9

    .line 1162
    .line 1163
    :pswitch_ab
    const v0, 0xfeb15

    .line 1164
    .line 1165
    .line 1166
    goto/16 :goto_9

    .line 1167
    .line 1168
    :pswitch_ac
    const v0, 0xfeb14

    .line 1169
    .line 1170
    .line 1171
    goto/16 :goto_9

    .line 1172
    .line 1173
    :pswitch_ad
    const v0, 0xfeb13

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_9

    .line 1177
    .line 1178
    :pswitch_ae
    const v0, 0xfeb12

    .line 1179
    .line 1180
    .line 1181
    goto/16 :goto_9

    .line 1182
    .line 1183
    :pswitch_af
    const v0, 0xfeb11

    .line 1184
    .line 1185
    .line 1186
    goto/16 :goto_9

    .line 1187
    .line 1188
    :pswitch_b0
    const v0, 0xfeb0d

    .line 1189
    .line 1190
    .line 1191
    goto/16 :goto_9

    .line 1192
    .line 1193
    :pswitch_b1
    const v0, 0xfe814

    .line 1194
    .line 1195
    .line 1196
    goto/16 :goto_9

    .line 1197
    .line 1198
    :pswitch_b2
    const v0, 0xfe4f2

    .line 1199
    .line 1200
    .line 1201
    goto/16 :goto_9

    .line 1202
    .line 1203
    :pswitch_b3
    const v0, 0xfe808

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_9

    .line 1207
    .line 1208
    :pswitch_b4
    const v0, 0xfe4f0

    .line 1209
    .line 1210
    .line 1211
    goto/16 :goto_9

    .line 1212
    .line 1213
    :pswitch_b5
    const v0, 0xfe4da

    .line 1214
    .line 1215
    .line 1216
    goto/16 :goto_9

    .line 1217
    .line 1218
    :pswitch_b6
    const v0, 0xfe4d9

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_9

    .line 1222
    .line 1223
    :pswitch_b7
    const v0, 0xfe199

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_9

    .line 1227
    .line 1228
    :pswitch_b8
    const v0, 0xfe198

    .line 1229
    .line 1230
    .line 1231
    goto/16 :goto_9

    .line 1232
    .line 1233
    :pswitch_b9
    const v0, 0xfe197

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_9

    .line 1237
    .line 1238
    :pswitch_ba
    const v0, 0xfe196

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_9

    .line 1242
    .line 1243
    :pswitch_bb
    const v0, 0xfe195

    .line 1244
    .line 1245
    .line 1246
    goto/16 :goto_9

    .line 1247
    .line 1248
    :pswitch_bc
    const v0, 0xfe4d8

    .line 1249
    .line 1250
    .line 1251
    goto/16 :goto_9

    .line 1252
    .line 1253
    :pswitch_bd
    const v0, 0xfe4d7

    .line 1254
    .line 1255
    .line 1256
    goto/16 :goto_9

    .line 1257
    .line 1258
    :pswitch_be
    const v0, 0xfe4d5

    .line 1259
    .line 1260
    .line 1261
    goto/16 :goto_9

    .line 1262
    .line 1263
    :pswitch_bf
    const v0, 0xfe4d4

    .line 1264
    .line 1265
    .line 1266
    goto/16 :goto_9

    .line 1267
    .line 1268
    :pswitch_c0
    const v0, 0xfe530

    .line 1269
    .line 1270
    .line 1271
    goto/16 :goto_9

    .line 1272
    .line 1273
    :pswitch_c1
    const v0, 0xfe53c

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_9

    .line 1277
    .line 1278
    :pswitch_c2
    const v0, 0xfeb2b

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_9

    .line 1282
    .line 1283
    :pswitch_c3
    const v0, 0xfe50f

    .line 1284
    .line 1285
    .line 1286
    goto/16 :goto_9

    .line 1287
    .line 1288
    :pswitch_c4
    const v0, 0xfe53e

    .line 1289
    .line 1290
    .line 1291
    goto/16 :goto_9

    .line 1292
    .line 1293
    :pswitch_c5
    const v0, 0xfe517

    .line 1294
    .line 1295
    .line 1296
    goto/16 :goto_9

    .line 1297
    .line 1298
    :pswitch_c6
    const v0, 0xfeb58

    .line 1299
    .line 1300
    .line 1301
    goto/16 :goto_9

    .line 1302
    .line 1303
    :pswitch_c7
    const v0, 0xfe516

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_9

    .line 1307
    .line 1308
    :pswitch_c8
    const v0, 0xfe50a

    .line 1309
    .line 1310
    .line 1311
    goto/16 :goto_9

    .line 1312
    .line 1313
    :pswitch_c9
    const v0, 0xfeb1e

    .line 1314
    .line 1315
    .line 1316
    goto/16 :goto_9

    .line 1317
    .line 1318
    :pswitch_ca
    const v0, 0xfeb43

    .line 1319
    .line 1320
    .line 1321
    goto/16 :goto_9

    .line 1322
    .line 1323
    :pswitch_cb
    const v0, 0xfe987

    .line 1324
    .line 1325
    .line 1326
    goto/16 :goto_9

    .line 1327
    .line 1328
    :pswitch_cc
    const v0, 0xfe985

    .line 1329
    .line 1330
    .line 1331
    goto/16 :goto_9

    .line 1332
    .line 1333
    :pswitch_cd
    const v0, 0xfe803

    .line 1334
    .line 1335
    .line 1336
    goto/16 :goto_9

    .line 1337
    .line 1338
    :pswitch_ce
    const v0, 0xfe508

    .line 1339
    .line 1340
    .line 1341
    goto/16 :goto_9

    .line 1342
    .line 1343
    :pswitch_cf
    const v0, 0xfe048

    .line 1344
    .line 1345
    .line 1346
    goto/16 :goto_9

    .line 1347
    .line 1348
    :pswitch_d0
    const v0, 0xfe047

    .line 1349
    .line 1350
    .line 1351
    goto/16 :goto_9

    .line 1352
    .line 1353
    :pswitch_d1
    const v0, 0xfe828

    .line 1354
    .line 1355
    .line 1356
    goto/16 :goto_9

    .line 1357
    .line 1358
    :pswitch_d2
    const v0, 0xfe046

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_9

    .line 1362
    .line 1363
    :pswitch_d3
    const v0, 0xfe03d

    .line 1364
    .line 1365
    .line 1366
    goto/16 :goto_9

    .line 1367
    .line 1368
    :pswitch_d4
    const v0, 0xfe045

    .line 1369
    .line 1370
    .line 1371
    goto/16 :goto_9

    .line 1372
    .line 1373
    :pswitch_d5
    const v0, 0xfe4d3

    .line 1374
    .line 1375
    .line 1376
    goto/16 :goto_9

    .line 1377
    .line 1378
    :pswitch_d6
    const v0, 0xfe527

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_9

    .line 1382
    .line 1383
    :pswitch_d7
    const v0, 0xfee7d

    .line 1384
    .line 1385
    .line 1386
    goto/16 :goto_9

    .line 1387
    .line 1388
    :pswitch_d8
    const v0, 0xfee7c

    .line 1389
    .line 1390
    .line 1391
    goto/16 :goto_9

    .line 1392
    .line 1393
    :pswitch_d9
    const v0, 0xfee7b

    .line 1394
    .line 1395
    .line 1396
    goto/16 :goto_9

    .line 1397
    .line 1398
    :pswitch_da
    const v0, 0xfee7a

    .line 1399
    .line 1400
    .line 1401
    goto/16 :goto_9

    .line 1402
    .line 1403
    :pswitch_db
    const v0, 0xfee79

    .line 1404
    .line 1405
    .line 1406
    goto/16 :goto_9

    .line 1407
    .line 1408
    :pswitch_dc
    const v0, 0xfee78

    .line 1409
    .line 1410
    .line 1411
    goto/16 :goto_9

    .line 1412
    .line 1413
    :pswitch_dd
    const v0, 0xfee77

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_9

    .line 1417
    .line 1418
    :pswitch_de
    const v0, 0xfe1b4

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_9

    .line 1422
    .line 1423
    :pswitch_df
    const v0, 0xfeb23

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_9

    .line 1427
    .line 1428
    :pswitch_e0
    const v0, 0xfe83a

    .line 1429
    .line 1430
    .line 1431
    goto/16 :goto_9

    .line 1432
    .line 1433
    :pswitch_e1
    const v0, 0xfe839

    .line 1434
    .line 1435
    .line 1436
    goto/16 :goto_9

    .line 1437
    .line 1438
    :pswitch_e2
    const v0, 0xfeb2d

    .line 1439
    .line 1440
    .line 1441
    goto/16 :goto_9

    .line 1442
    .line 1443
    :pswitch_e3
    const v0, 0xfeb29

    .line 1444
    .line 1445
    .line 1446
    goto/16 :goto_9

    .line 1447
    .line 1448
    :pswitch_e4
    const v0, 0xfeb27

    .line 1449
    .line 1450
    .line 1451
    goto/16 :goto_9

    .line 1452
    .line 1453
    :pswitch_e5
    const v0, 0xfeb42

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_9

    .line 1457
    .line 1458
    :pswitch_e6
    const v0, 0xfe037

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_9

    .line 1462
    .line 1463
    :pswitch_e7
    const v0, 0xfe036

    .line 1464
    .line 1465
    .line 1466
    goto/16 :goto_9

    .line 1467
    .line 1468
    :pswitch_e8
    const v0, 0xfe035

    .line 1469
    .line 1470
    .line 1471
    goto/16 :goto_9

    .line 1472
    .line 1473
    :pswitch_e9
    const v0, 0xfe034

    .line 1474
    .line 1475
    .line 1476
    goto/16 :goto_9

    .line 1477
    .line 1478
    :pswitch_ea
    const v0, 0xfe033

    .line 1479
    .line 1480
    .line 1481
    goto/16 :goto_9

    .line 1482
    .line 1483
    :pswitch_eb
    const v0, 0xfe032

    .line 1484
    .line 1485
    .line 1486
    goto/16 :goto_9

    .line 1487
    .line 1488
    :pswitch_ec
    const v0, 0xfe031

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_9

    .line 1492
    .line 1493
    :pswitch_ed
    const v0, 0xfe030

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_9

    .line 1497
    .line 1498
    :pswitch_ee
    const v0, 0xfe02f

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_9

    .line 1502
    .line 1503
    :pswitch_ef
    const v0, 0xfe02e

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_9

    .line 1507
    .line 1508
    :pswitch_f0
    const v0, 0xfe02d

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_9

    .line 1512
    .line 1513
    :pswitch_f1
    const v0, 0xfe02c

    .line 1514
    .line 1515
    .line 1516
    goto/16 :goto_9

    .line 1517
    .line 1518
    :pswitch_f2
    const v0, 0xfe02b

    .line 1519
    .line 1520
    .line 1521
    goto/16 :goto_9

    .line 1522
    .line 1523
    :pswitch_f3
    const v0, 0xfe4f8

    .line 1524
    .line 1525
    .line 1526
    goto/16 :goto_9

    .line 1527
    .line 1528
    :pswitch_f4
    const v0, 0xfeaff

    .line 1529
    .line 1530
    .line 1531
    goto/16 :goto_9

    .line 1532
    .line 1533
    :pswitch_f5
    const v0, 0xfeafe

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_9

    .line 1537
    .line 1538
    :pswitch_f6
    const v0, 0xfeafd

    .line 1539
    .line 1540
    .line 1541
    goto/16 :goto_9

    .line 1542
    .line 1543
    :pswitch_f7
    const v0, 0xfeafc

    .line 1544
    .line 1545
    .line 1546
    goto/16 :goto_9

    .line 1547
    .line 1548
    :pswitch_f8
    const v0, 0xfeaf3

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_9

    .line 1552
    .line 1553
    :pswitch_f9
    const v0, 0xfeaf1

    .line 1554
    .line 1555
    .line 1556
    goto/16 :goto_9

    .line 1557
    .line 1558
    :pswitch_fa
    const v0, 0xfeaf2

    .line 1559
    .line 1560
    .line 1561
    goto/16 :goto_9

    .line 1562
    .line 1563
    :pswitch_fb
    const v0, 0xfeaf0

    .line 1564
    .line 1565
    .line 1566
    goto/16 :goto_9

    .line 1567
    .line 1568
    :pswitch_fc
    const v0, 0xfeafb

    .line 1569
    .line 1570
    .line 1571
    goto/16 :goto_9

    .line 1572
    .line 1573
    :pswitch_fd
    const v0, 0xfeafa

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_9

    .line 1577
    .line 1578
    :pswitch_fe
    const v0, 0xfeaf9

    .line 1579
    .line 1580
    .line 1581
    goto/16 :goto_9

    .line 1582
    .line 1583
    :pswitch_ff
    const v0, 0xfeaf8

    .line 1584
    .line 1585
    .line 1586
    goto/16 :goto_9

    .line 1587
    .line 1588
    :pswitch_100
    const v0, 0xfeb9c

    .line 1589
    .line 1590
    .line 1591
    goto/16 :goto_9

    .line 1592
    .line 1593
    :pswitch_101
    const v0, 0xfeb9b

    .line 1594
    .line 1595
    .line 1596
    goto/16 :goto_9

    .line 1597
    .line 1598
    :pswitch_102
    const v0, 0xfeb9a

    .line 1599
    .line 1600
    .line 1601
    goto/16 :goto_9

    .line 1602
    .line 1603
    :pswitch_103
    const v0, 0xfeb99

    .line 1604
    .line 1605
    .line 1606
    goto/16 :goto_9

    .line 1607
    .line 1608
    :pswitch_104
    const v0, 0xfeb41

    .line 1609
    .line 1610
    .line 1611
    goto/16 :goto_9

    .line 1612
    .line 1613
    :pswitch_105
    const v0, 0xfeb40

    .line 1614
    .line 1615
    .line 1616
    goto/16 :goto_9

    .line 1617
    .line 1618
    :pswitch_106
    const v0, 0xfeb2f

    .line 1619
    .line 1620
    .line 1621
    goto/16 :goto_9

    .line 1622
    .line 1623
    :pswitch_107
    const v0, 0xfeb31

    .line 1624
    .line 1625
    .line 1626
    goto/16 :goto_9

    .line 1627
    .line 1628
    :pswitch_108
    const v0, 0xfeb81

    .line 1629
    .line 1630
    .line 1631
    goto/16 :goto_9

    .line 1632
    .line 1633
    :pswitch_109
    const v0, 0xfeb3f

    .line 1634
    .line 1635
    .line 1636
    goto/16 :goto_9

    .line 1637
    .line 1638
    :pswitch_10a
    const v0, 0xfeb3e

    .line 1639
    .line 1640
    .line 1641
    goto/16 :goto_9

    .line 1642
    .line 1643
    :pswitch_10b
    const v0, 0xfeb3d

    .line 1644
    .line 1645
    .line 1646
    goto/16 :goto_9

    .line 1647
    .line 1648
    :pswitch_10c
    const v0, 0xfe837

    .line 1649
    .line 1650
    .line 1651
    goto/16 :goto_9

    .line 1652
    .line 1653
    :pswitch_10d
    const v0, 0xfe836

    .line 1654
    .line 1655
    .line 1656
    goto/16 :goto_9

    .line 1657
    .line 1658
    :pswitch_10e
    const v0, 0xfe835

    .line 1659
    .line 1660
    .line 1661
    goto/16 :goto_9

    .line 1662
    .line 1663
    :pswitch_10f
    const v0, 0xfe834

    .line 1664
    .line 1665
    .line 1666
    goto/16 :goto_9

    .line 1667
    .line 1668
    :pswitch_110
    const v0, 0xfe833

    .line 1669
    .line 1670
    .line 1671
    goto/16 :goto_9

    .line 1672
    .line 1673
    :pswitch_111
    const v0, 0xfe832

    .line 1674
    .line 1675
    .line 1676
    goto/16 :goto_9

    .line 1677
    .line 1678
    :pswitch_112
    const v0, 0xfe831

    .line 1679
    .line 1680
    .line 1681
    goto/16 :goto_9

    .line 1682
    .line 1683
    :pswitch_113
    const v0, 0xfe830

    .line 1684
    .line 1685
    .line 1686
    goto/16 :goto_9

    .line 1687
    .line 1688
    :pswitch_114
    const v0, 0xfe82f

    .line 1689
    .line 1690
    .line 1691
    goto/16 :goto_9

    .line 1692
    .line 1693
    :pswitch_115
    const v0, 0xfe82e

    .line 1694
    .line 1695
    .line 1696
    goto/16 :goto_9

    .line 1697
    .line 1698
    :pswitch_116
    const v0, 0xfeb67

    .line 1699
    .line 1700
    .line 1701
    goto/16 :goto_9

    .line 1702
    .line 1703
    :pswitch_117
    const v0, 0xfeb64

    .line 1704
    .line 1705
    .line 1706
    goto/16 :goto_9

    .line 1707
    .line 1708
    :pswitch_118
    const v0, 0xfeb63

    .line 1709
    .line 1710
    .line 1711
    goto/16 :goto_9

    .line 1712
    .line 1713
    :pswitch_119
    const v0, 0xfeb3c

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_9

    .line 1717
    .line 1718
    :pswitch_11a
    const v0, 0xfeb3b

    .line 1719
    .line 1720
    .line 1721
    goto/16 :goto_9

    .line 1722
    .line 1723
    :pswitch_11b
    const v0, 0xfeb3a

    .line 1724
    .line 1725
    .line 1726
    goto/16 :goto_9

    .line 1727
    .line 1728
    :pswitch_11c
    const v0, 0xfeb39

    .line 1729
    .line 1730
    .line 1731
    goto/16 :goto_9

    .line 1732
    .line 1733
    :pswitch_11d
    const v0, 0xfeb38

    .line 1734
    .line 1735
    .line 1736
    goto/16 :goto_9

    .line 1737
    .line 1738
    :pswitch_11e
    const v0, 0xfeb37

    .line 1739
    .line 1740
    .line 1741
    goto/16 :goto_9

    .line 1742
    .line 1743
    :pswitch_11f
    const v0, 0xfeb36

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_9

    .line 1747
    .line 1748
    :pswitch_120
    const v0, 0xfe82b

    .line 1749
    .line 1750
    .line 1751
    goto/16 :goto_9

    .line 1752
    .line 1753
    :pswitch_121
    const v0, 0xfe82c

    .line 1754
    .line 1755
    .line 1756
    goto/16 :goto_9

    .line 1757
    .line 1758
    :pswitch_122
    const v0, 0xfeb1d

    .line 1759
    .line 1760
    .line 1761
    goto/16 :goto_9

    .line 1762
    .line 1763
    :pswitch_123
    const v0, 0xfeb1b

    .line 1764
    .line 1765
    .line 1766
    goto/16 :goto_9

    .line 1767
    .line 1768
    :pswitch_124
    const v0, 0xfeb1c

    .line 1769
    .line 1770
    .line 1771
    goto/16 :goto_9

    .line 1772
    .line 1773
    :pswitch_125
    const v0, 0xfeb1a

    .line 1774
    .line 1775
    .line 1776
    goto/16 :goto_9

    .line 1777
    .line 1778
    :pswitch_126
    const v0, 0xfe838

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_9

    .line 1782
    .line 1783
    :pswitch_127
    const v0, 0xfeb20

    .line 1784
    .line 1785
    .line 1786
    goto/16 :goto_9

    .line 1787
    .line 1788
    :pswitch_128
    const v0, 0xfe044

    .line 1789
    .line 1790
    .line 1791
    goto/16 :goto_9

    .line 1792
    .line 1793
    :pswitch_129
    const v0, 0xfeb1f

    .line 1794
    .line 1795
    .line 1796
    goto/16 :goto_9

    .line 1797
    .line 1798
    :pswitch_12a
    const v0, 0xfeb25

    .line 1799
    .line 1800
    .line 1801
    goto/16 :goto_9

    .line 1802
    .line 1803
    :pswitch_12b
    const v0, 0xfeb62

    .line 1804
    .line 1805
    .line 1806
    goto/16 :goto_9

    .line 1807
    .line 1808
    :pswitch_12c
    const v0, 0xfeb61

    .line 1809
    .line 1810
    .line 1811
    goto/16 :goto_9

    .line 1812
    .line 1813
    :pswitch_12d
    const v0, 0xfeb19

    .line 1814
    .line 1815
    .line 1816
    goto/16 :goto_9

    .line 1817
    .line 1818
    :pswitch_12e
    const v0, 0xfeb24

    .line 1819
    .line 1820
    .line 1821
    goto/16 :goto_9

    .line 1822
    .line 1823
    :pswitch_12f
    const v0, 0xfe7e8

    .line 1824
    .line 1825
    .line 1826
    goto/16 :goto_9

    .line 1827
    .line 1828
    :pswitch_130
    const v0, 0xfe7f0

    .line 1829
    .line 1830
    .line 1831
    goto/16 :goto_9

    .line 1832
    .line 1833
    :pswitch_131
    const v0, 0xfe7ef

    .line 1834
    .line 1835
    .line 1836
    goto/16 :goto_9

    .line 1837
    .line 1838
    :pswitch_132
    const v0, 0xfe7e6

    .line 1839
    .line 1840
    .line 1841
    goto/16 :goto_9

    .line 1842
    .line 1843
    :pswitch_133
    const v0, 0xfe4b7

    .line 1844
    .line 1845
    .line 1846
    goto/16 :goto_9

    .line 1847
    .line 1848
    :pswitch_134
    const v0, 0xfe4ba

    .line 1849
    .line 1850
    .line 1851
    goto/16 :goto_9

    .line 1852
    .line 1853
    :pswitch_135
    const v0, 0xfe4b9

    .line 1854
    .line 1855
    .line 1856
    goto/16 :goto_9

    .line 1857
    .line 1858
    :pswitch_136
    const v0, 0xfe4b4

    .line 1859
    .line 1860
    .line 1861
    goto/16 :goto_9

    .line 1862
    .line 1863
    :pswitch_137
    const v0, 0xfe4b6

    .line 1864
    .line 1865
    .line 1866
    goto/16 :goto_9

    .line 1867
    .line 1868
    :pswitch_138
    const v0, 0xfe4b3

    .line 1869
    .line 1870
    .line 1871
    goto/16 :goto_9

    .line 1872
    .line 1873
    :pswitch_139
    const v0, 0xfe1a1

    .line 1874
    .line 1875
    .line 1876
    goto/16 :goto_9

    .line 1877
    .line 1878
    :pswitch_13a
    const v0, 0xfe506

    .line 1879
    .line 1880
    .line 1881
    goto/16 :goto_9

    .line 1882
    .line 1883
    :pswitch_13b
    const v0, 0xfe7e7

    .line 1884
    .line 1885
    .line 1886
    goto/16 :goto_9

    .line 1887
    .line 1888
    :pswitch_13c
    const v0, 0xfe7f6

    .line 1889
    .line 1890
    .line 1891
    goto/16 :goto_9

    .line 1892
    .line 1893
    :pswitch_13d
    const v0, 0xfe7f7

    .line 1894
    .line 1895
    .line 1896
    goto/16 :goto_9

    .line 1897
    .line 1898
    :pswitch_13e
    const v0, 0xfe4b5

    .line 1899
    .line 1900
    .line 1901
    goto/16 :goto_9

    .line 1902
    .line 1903
    :pswitch_13f
    const v0, 0xfeb5e

    .line 1904
    .line 1905
    .line 1906
    goto/16 :goto_9

    .line 1907
    .line 1908
    :pswitch_140
    const v0, 0xfe531

    .line 1909
    .line 1910
    .line 1911
    goto/16 :goto_9

    .line 1912
    .line 1913
    :pswitch_141
    const v0, 0xfe4df

    .line 1914
    .line 1915
    .line 1916
    goto/16 :goto_9

    .line 1917
    .line 1918
    :pswitch_142
    const v0, 0xfe4de

    .line 1919
    .line 1920
    .line 1921
    goto/16 :goto_9

    .line 1922
    .line 1923
    :pswitch_143
    const v0, 0xfe546

    .line 1924
    .line 1925
    .line 1926
    goto/16 :goto_9

    .line 1927
    .line 1928
    :pswitch_144
    const v0, 0xfe965

    .line 1929
    .line 1930
    .line 1931
    goto/16 :goto_9

    .line 1932
    .line 1933
    :pswitch_145
    const v0, 0xfe00b

    .line 1934
    .line 1935
    .line 1936
    goto/16 :goto_9

    .line 1937
    .line 1938
    :pswitch_146
    const v0, 0xfeb87

    .line 1939
    .line 1940
    .line 1941
    goto/16 :goto_9

    .line 1942
    .line 1943
    :pswitch_147
    const v0, 0xfeb86

    .line 1944
    .line 1945
    .line 1946
    goto/16 :goto_9

    .line 1947
    .line 1948
    :pswitch_148
    const v0, 0xfe514

    .line 1949
    .line 1950
    .line 1951
    goto/16 :goto_9

    .line 1952
    .line 1953
    :pswitch_149
    const v0, 0xfe52f

    .line 1954
    .line 1955
    .line 1956
    goto/16 :goto_9

    .line 1957
    .line 1958
    :pswitch_14a
    const v0, 0xfe821

    .line 1959
    .line 1960
    .line 1961
    goto/16 :goto_9

    .line 1962
    .line 1963
    :pswitch_14b
    const v0, 0xfe507

    .line 1964
    .line 1965
    .line 1966
    goto/16 :goto_9

    .line 1967
    .line 1968
    :pswitch_14c
    const v0, 0xfe505

    .line 1969
    .line 1970
    .line 1971
    goto/16 :goto_9

    .line 1972
    .line 1973
    :pswitch_14d
    const v0, 0xfe4d6

    .line 1974
    .line 1975
    .line 1976
    goto/16 :goto_9

    .line 1977
    .line 1978
    :pswitch_14e
    const v0, 0xfe004

    .line 1979
    .line 1980
    .line 1981
    goto/16 :goto_9

    .line 1982
    .line 1983
    :pswitch_14f
    const v0, 0xfeb59

    .line 1984
    .line 1985
    .line 1986
    goto/16 :goto_9

    .line 1987
    .line 1988
    :pswitch_150
    const v0, 0xfe509

    .line 1989
    .line 1990
    .line 1991
    goto/16 :goto_9

    .line 1992
    .line 1993
    :pswitch_151
    const v0, 0xfeb35

    .line 1994
    .line 1995
    .line 1996
    goto/16 :goto_9

    .line 1997
    .line 1998
    :pswitch_152
    const v0, 0xfeb34

    .line 1999
    .line 2000
    .line 2001
    goto/16 :goto_9

    .line 2002
    .line 2003
    :pswitch_153
    const v0, 0xfeb33

    .line 2004
    .line 2005
    .line 2006
    goto/16 :goto_9

    .line 2007
    .line 2008
    :pswitch_154
    const v0, 0xfe7f8

    .line 2009
    .line 2010
    .line 2011
    goto/16 :goto_9

    .line 2012
    .line 2013
    :pswitch_155
    const v0, 0xfe7eb

    .line 2014
    .line 2015
    .line 2016
    goto/16 :goto_9

    .line 2017
    .line 2018
    :pswitch_156
    const v0, 0xfe7ee

    .line 2019
    .line 2020
    .line 2021
    goto/16 :goto_9

    .line 2022
    .line 2023
    :pswitch_157
    const v0, 0xfe7dc

    .line 2024
    .line 2025
    .line 2026
    goto/16 :goto_9

    .line 2027
    .line 2028
    :pswitch_158
    const v0, 0xfe80d

    .line 2029
    .line 2030
    .line 2031
    goto/16 :goto_9

    .line 2032
    .line 2033
    :pswitch_159
    const v0, 0xfe7d7

    .line 2034
    .line 2035
    .line 2036
    goto/16 :goto_9

    .line 2037
    .line 2038
    :pswitch_15a
    const v0, 0xfe7db

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_9

    .line 2042
    .line 2043
    :pswitch_15b
    const v0, 0xfe80c

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_9

    .line 2047
    .line 2048
    :pswitch_15c
    const v0, 0xfe4dd

    .line 2049
    .line 2050
    .line 2051
    goto/16 :goto_9

    .line 2052
    .line 2053
    :pswitch_15d
    const v0, 0xfeb32

    .line 2054
    .line 2055
    .line 2056
    goto/16 :goto_9

    .line 2057
    .line 2058
    :pswitch_15e
    const v0, 0xfe80b

    .line 2059
    .line 2060
    .line 2061
    goto/16 :goto_9

    .line 2062
    .line 2063
    :pswitch_15f
    const v0, 0xfe81b

    .line 2064
    .line 2065
    .line 2066
    goto/16 :goto_9

    .line 2067
    .line 2068
    :pswitch_160
    const v0, 0xfe1b1

    .line 2069
    .line 2070
    .line 2071
    goto/16 :goto_9

    .line 2072
    .line 2073
    :pswitch_161
    const v0, 0xfe81c

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_9

    .line 2077
    .line 2078
    :pswitch_162
    const v0, 0xfe820

    .line 2079
    .line 2080
    .line 2081
    goto/16 :goto_9

    .line 2082
    .line 2083
    :pswitch_163
    const v0, 0xfe81f

    .line 2084
    .line 2085
    .line 2086
    goto/16 :goto_9

    .line 2087
    .line 2088
    :pswitch_164
    const v0, 0xfe81e

    .line 2089
    .line 2090
    .line 2091
    goto/16 :goto_9

    .line 2092
    .line 2093
    :pswitch_165
    const v0, 0xfe81d

    .line 2094
    .line 2095
    .line 2096
    goto/16 :goto_9

    .line 2097
    .line 2098
    :pswitch_166
    const v0, 0xfe807

    .line 2099
    .line 2100
    .line 2101
    goto/16 :goto_9

    .line 2102
    .line 2103
    :pswitch_167
    const v0, 0xfe7fd

    .line 2104
    .line 2105
    .line 2106
    goto/16 :goto_9

    .line 2107
    .line 2108
    :pswitch_168
    const v0, 0xfe7fa

    .line 2109
    .line 2110
    .line 2111
    goto/16 :goto_9

    .line 2112
    .line 2113
    :pswitch_169
    const v0, 0xfe7fb

    .line 2114
    .line 2115
    .line 2116
    goto/16 :goto_9

    .line 2117
    .line 2118
    :pswitch_16a
    const v0, 0xfe4bc

    .line 2119
    .line 2120
    .line 2121
    goto/16 :goto_9

    .line 2122
    .line 2123
    :pswitch_16b
    const v0, 0xfe960

    .line 2124
    .line 2125
    .line 2126
    goto/16 :goto_9

    .line 2127
    .line 2128
    :pswitch_16c
    const v0, 0xfe537

    .line 2129
    .line 2130
    .line 2131
    goto/16 :goto_9

    .line 2132
    .line 2133
    :pswitch_16d
    const v0, 0xfe53b

    .line 2134
    .line 2135
    .line 2136
    goto/16 :goto_9

    .line 2137
    .line 2138
    :pswitch_16e
    const v0, 0xfe4f6

    .line 2139
    .line 2140
    .line 2141
    goto/16 :goto_9

    .line 2142
    .line 2143
    :pswitch_16f
    const v0, 0xfe1b3

    .line 2144
    .line 2145
    .line 2146
    goto/16 :goto_9

    .line 2147
    .line 2148
    :pswitch_170
    const v0, 0xfe1ae

    .line 2149
    .line 2150
    .line 2151
    goto/16 :goto_9

    .line 2152
    .line 2153
    :pswitch_171
    const v0, 0xfe1b2

    .line 2154
    .line 2155
    .line 2156
    goto/16 :goto_9

    .line 2157
    .line 2158
    :pswitch_172
    const v0, 0xfe042

    .line 2159
    .line 2160
    .line 2161
    goto/16 :goto_9

    .line 2162
    .line 2163
    :pswitch_173
    const v0, 0xfe03f

    .line 2164
    .line 2165
    .line 2166
    goto/16 :goto_9

    .line 2167
    .line 2168
    :pswitch_174
    const v0, 0xfe515

    .line 2169
    .line 2170
    .line 2171
    goto/16 :goto_9

    .line 2172
    .line 2173
    :pswitch_175
    const v0, 0xfe4ca

    .line 2174
    .line 2175
    .line 2176
    goto/16 :goto_9

    .line 2177
    .line 2178
    :pswitch_176
    const v0, 0xfe7d9

    .line 2179
    .line 2180
    .line 2181
    goto/16 :goto_9

    .line 2182
    .line 2183
    :pswitch_177
    const v0, 0xfeb85

    .line 2184
    .line 2185
    .line 2186
    goto/16 :goto_9

    .line 2187
    .line 2188
    :pswitch_178
    const v0, 0xfe4f5

    .line 2189
    .line 2190
    .line 2191
    goto/16 :goto_9

    .line 2192
    .line 2193
    :pswitch_179
    const v0, 0xfe510

    .line 2194
    .line 2195
    .line 2196
    goto/16 :goto_9

    .line 2197
    .line 2198
    :pswitch_17a
    const v0, 0xfe827

    .line 2199
    .line 2200
    .line 2201
    goto/16 :goto_9

    .line 2202
    .line 2203
    :pswitch_17b
    const v0, 0xfe03c

    .line 2204
    .line 2205
    .line 2206
    goto/16 :goto_9

    .line 2207
    .line 2208
    :pswitch_17c
    const v0, 0xfeb56

    .line 2209
    .line 2210
    .line 2211
    goto/16 :goto_9

    .line 2212
    .line 2213
    :pswitch_17d
    const v0, 0xfe4d1

    .line 2214
    .line 2215
    .line 2216
    goto/16 :goto_9

    .line 2217
    .line 2218
    :pswitch_17e
    const v0, 0xfe7ed

    .line 2219
    .line 2220
    .line 2221
    goto/16 :goto_9

    .line 2222
    .line 2223
    :pswitch_17f
    const v0, 0xfe1b0

    .line 2224
    .line 2225
    .line 2226
    goto/16 :goto_9

    .line 2227
    .line 2228
    :pswitch_180
    const v0, 0xfe1bf

    .line 2229
    .line 2230
    .line 2231
    goto/16 :goto_9

    .line 2232
    .line 2233
    :pswitch_181
    const v0, 0xfe1c5

    .line 2234
    .line 2235
    .line 2236
    goto/16 :goto_9

    .line 2237
    .line 2238
    :pswitch_182
    const v0, 0xfe1c4

    .line 2239
    .line 2240
    .line 2241
    goto/16 :goto_9

    .line 2242
    .line 2243
    :pswitch_183
    const v0, 0xfe344

    .line 2244
    .line 2245
    .line 2246
    goto/16 :goto_9

    .line 2247
    .line 2248
    :pswitch_184
    const v0, 0xfe341

    .line 2249
    .line 2250
    .line 2251
    goto/16 :goto_9

    .line 2252
    .line 2253
    :pswitch_185
    const v0, 0xfe327

    .line 2254
    .line 2255
    .line 2256
    goto/16 :goto_9

    .line 2257
    .line 2258
    :pswitch_186
    const v0, 0xfe329

    .line 2259
    .line 2260
    .line 2261
    goto/16 :goto_9

    .line 2262
    .line 2263
    :pswitch_187
    const v0, 0xfe526

    .line 2264
    .line 2265
    .line 2266
    goto/16 :goto_9

    .line 2267
    .line 2268
    :pswitch_188
    const v0, 0xfe52b

    .line 2269
    .line 2270
    .line 2271
    goto/16 :goto_9

    .line 2272
    .line 2273
    :pswitch_189
    const v0, 0xfe52e

    .line 2274
    .line 2275
    .line 2276
    goto/16 :goto_9

    .line 2277
    .line 2278
    :pswitch_18a
    const v0, 0xfe52d

    .line 2279
    .line 2280
    .line 2281
    goto/16 :goto_9

    .line 2282
    .line 2283
    :pswitch_18b
    const v0, 0xfe4f4

    .line 2284
    .line 2285
    .line 2286
    goto/16 :goto_9

    .line 2287
    .line 2288
    :pswitch_18c
    const v0, 0xfe320

    .line 2289
    .line 2290
    .line 2291
    goto/16 :goto_9

    .line 2292
    .line 2293
    :pswitch_18d
    const v0, 0xfe323

    .line 2294
    .line 2295
    .line 2296
    goto/16 :goto_9

    .line 2297
    .line 2298
    :pswitch_18e
    const v0, 0xfe330

    .line 2299
    .line 2300
    .line 2301
    goto/16 :goto_9

    .line 2302
    .line 2303
    :pswitch_18f
    const v0, 0xfe335

    .line 2304
    .line 2305
    .line 2306
    goto/16 :goto_9

    .line 2307
    .line 2308
    :pswitch_190
    const v0, 0xfe1bc

    .line 2309
    .line 2310
    .line 2311
    goto/16 :goto_9

    .line 2312
    .line 2313
    :pswitch_191
    const v0, 0xfe1c3

    .line 2314
    .line 2315
    .line 2316
    goto/16 :goto_9

    .line 2317
    .line 2318
    :pswitch_192
    const v0, 0xfe1c2

    .line 2319
    .line 2320
    .line 2321
    goto/16 :goto_9

    .line 2322
    .line 2323
    :pswitch_193
    const v0, 0xfe1b7

    .line 2324
    .line 2325
    .line 2326
    goto/16 :goto_9

    .line 2327
    .line 2328
    :pswitch_194
    const v0, 0xfe1c1

    .line 2329
    .line 2330
    .line 2331
    goto/16 :goto_9

    .line 2332
    .line 2333
    :pswitch_195
    const v0, 0xfe1c0

    .line 2334
    .line 2335
    .line 2336
    goto/16 :goto_9

    .line 2337
    .line 2338
    :pswitch_196
    const v0, 0xfe1b8

    .line 2339
    .line 2340
    .line 2341
    goto/16 :goto_9

    .line 2342
    .line 2343
    :pswitch_197
    const v0, 0xfe1af

    .line 2344
    .line 2345
    .line 2346
    goto/16 :goto_9

    .line 2347
    .line 2348
    :pswitch_198
    const v0, 0xfe009

    .line 2349
    .line 2350
    .line 2351
    goto/16 :goto_9

    .line 2352
    .line 2353
    :pswitch_199
    const v0, 0xfe014

    .line 2354
    .line 2355
    .line 2356
    goto/16 :goto_9

    .line 2357
    .line 2358
    :pswitch_19a
    const v0, 0xfe002

    .line 2359
    .line 2360
    .line 2361
    goto/16 :goto_9

    .line 2362
    .line 2363
    :pswitch_19b
    const v0, 0xfe000

    .line 2364
    .line 2365
    .line 2366
    goto/16 :goto_9

    .line 2367
    .line 2368
    :pswitch_19c
    const v0, 0xfe001

    .line 2369
    .line 2370
    .line 2371
    goto/16 :goto_9

    .line 2372
    .line 2373
    :pswitch_19d
    const v0, 0xfe003

    .line 2374
    .line 2375
    .line 2376
    goto/16 :goto_9

    .line 2377
    .line 2378
    :pswitch_19e
    const v0, 0xfe983

    .line 2379
    .line 2380
    .line 2381
    goto/16 :goto_9

    .line 2382
    .line 2383
    :pswitch_19f
    const v0, 0xfe962

    .line 2384
    .line 2385
    .line 2386
    goto/16 :goto_9

    .line 2387
    .line 2388
    :pswitch_1a0
    const v0, 0xfe981

    .line 2389
    .line 2390
    .line 2391
    goto/16 :goto_9

    .line 2392
    .line 2393
    :pswitch_1a1
    const v0, 0xfe982

    .line 2394
    .line 2395
    .line 2396
    goto/16 :goto_9

    .line 2397
    .line 2398
    :pswitch_1a2
    const v0, 0xfe980

    .line 2399
    .line 2400
    .line 2401
    goto/16 :goto_9

    .line 2402
    .line 2403
    :pswitch_1a3
    const v0, 0xfe818

    .line 2404
    .line 2405
    .line 2406
    goto/16 :goto_9

    .line 2407
    .line 2408
    :pswitch_1a4
    const v0, 0xfe816

    .line 2409
    .line 2410
    .line 2411
    goto/16 :goto_9

    .line 2412
    .line 2413
    :pswitch_1a5
    const v0, 0xfe815

    .line 2414
    .line 2415
    .line 2416
    goto/16 :goto_9

    .line 2417
    .line 2418
    :pswitch_1a6
    const v0, 0xfeb82

    .line 2419
    .line 2420
    .line 2421
    goto/16 :goto_9

    .line 2422
    .line 2423
    :pswitch_1a7
    const v0, 0xfe813

    .line 2424
    .line 2425
    .line 2426
    goto/16 :goto_9

    .line 2427
    .line 2428
    :pswitch_1a8
    const v0, 0xfe801

    .line 2429
    .line 2430
    .line 2431
    goto/16 :goto_9

    .line 2432
    .line 2433
    :pswitch_1a9
    const v0, 0xfe800

    .line 2434
    .line 2435
    .line 2436
    goto/16 :goto_9

    .line 2437
    .line 2438
    :pswitch_1aa
    const v0, 0xfe4c3

    .line 2439
    .line 2440
    .line 2441
    goto/16 :goto_9

    .line 2442
    .line 2443
    :pswitch_1ab
    const v0, 0xfe7f5

    .line 2444
    .line 2445
    .line 2446
    goto/16 :goto_9

    .line 2447
    .line 2448
    :pswitch_1ac
    const v0, 0xfe7ec

    .line 2449
    .line 2450
    .line 2451
    goto/16 :goto_9

    .line 2452
    .line 2453
    :pswitch_1ad
    const v0, 0xfe4b2

    .line 2454
    .line 2455
    .line 2456
    goto/16 :goto_9

    .line 2457
    .line 2458
    :pswitch_1ae
    const v0, 0xfe4bb

    .line 2459
    .line 2460
    .line 2461
    goto/16 :goto_9

    .line 2462
    .line 2463
    :pswitch_1af
    const v0, 0xfe4b0

    .line 2464
    .line 2465
    .line 2466
    goto/16 :goto_9

    .line 2467
    .line 2468
    :pswitch_1b0
    const v0, 0xfe826

    .line 2469
    .line 2470
    .line 2471
    goto/16 :goto_9

    .line 2472
    .line 2473
    :pswitch_1b1
    const v0, 0xfe825

    .line 2474
    .line 2475
    .line 2476
    goto/16 :goto_9

    .line 2477
    .line 2478
    :pswitch_1b2
    const v0, 0xfe512

    .line 2479
    .line 2480
    .line 2481
    goto/16 :goto_9

    .line 2482
    .line 2483
    :pswitch_1b3
    const v0, 0xfe041

    .line 2484
    .line 2485
    .line 2486
    goto/16 :goto_9

    .line 2487
    .line 2488
    :pswitch_1b4
    const v0, 0xfe4d2

    .line 2489
    .line 2490
    .line 2491
    goto/16 :goto_9

    .line 2492
    .line 2493
    :pswitch_1b5
    const v0, 0xfe040

    .line 2494
    .line 2495
    .line 2496
    goto/16 :goto_9

    .line 2497
    .line 2498
    :pswitch_1b6
    const v0, 0xfe029

    .line 2499
    .line 2500
    .line 2501
    goto/16 :goto_9

    .line 2502
    .line 2503
    :pswitch_1b7
    const v0, 0xfe028

    .line 2504
    .line 2505
    .line 2506
    goto/16 :goto_9

    .line 2507
    .line 2508
    :pswitch_1b8
    const v0, 0xfe027

    .line 2509
    .line 2510
    .line 2511
    goto/16 :goto_9

    .line 2512
    .line 2513
    :pswitch_1b9
    const v0, 0xfe026

    .line 2514
    .line 2515
    .line 2516
    goto/16 :goto_9

    .line 2517
    .line 2518
    :pswitch_1ba
    const v0, 0xfe025

    .line 2519
    .line 2520
    .line 2521
    goto/16 :goto_9

    .line 2522
    .line 2523
    :pswitch_1bb
    const v0, 0xfe024

    .line 2524
    .line 2525
    .line 2526
    goto/16 :goto_9

    .line 2527
    .line 2528
    :pswitch_1bc
    const v0, 0xfe023

    .line 2529
    .line 2530
    .line 2531
    goto/16 :goto_9

    .line 2532
    .line 2533
    :pswitch_1bd
    const v0, 0xfe022

    .line 2534
    .line 2535
    .line 2536
    goto/16 :goto_9

    .line 2537
    .line 2538
    :pswitch_1be
    const v0, 0xfe021

    .line 2539
    .line 2540
    .line 2541
    goto/16 :goto_9

    .line 2542
    .line 2543
    :pswitch_1bf
    const v0, 0xfe020

    .line 2544
    .line 2545
    .line 2546
    goto/16 :goto_9

    .line 2547
    .line 2548
    :pswitch_1c0
    const v0, 0xfe01f

    .line 2549
    .line 2550
    .line 2551
    goto/16 :goto_9

    .line 2552
    .line 2553
    :pswitch_1c1
    const v0, 0xfe01e

    .line 2554
    .line 2555
    .line 2556
    goto/16 :goto_9

    .line 2557
    .line 2558
    :pswitch_1c2
    const v0, 0xfeb0e

    .line 2559
    .line 2560
    .line 2561
    goto/16 :goto_9

    .line 2562
    .line 2563
    :pswitch_1c3
    const v0, 0xfeb0c

    .line 2564
    .line 2565
    .line 2566
    goto/16 :goto_9

    .line 2567
    .line 2568
    :pswitch_1c4
    const v0, 0xfeb04

    .line 2569
    .line 2570
    .line 2571
    goto/16 :goto_9

    .line 2572
    .line 2573
    :pswitch_1c5
    const v0, 0xfeb09

    .line 2574
    .line 2575
    .line 2576
    goto/16 :goto_9

    .line 2577
    .line 2578
    :pswitch_1c6
    const v0, 0xfe7e3

    .line 2579
    .line 2580
    .line 2581
    goto/16 :goto_9

    .line 2582
    .line 2583
    :pswitch_1c7
    const v0, 0xfe7df

    .line 2584
    .line 2585
    .line 2586
    goto/16 :goto_9

    .line 2587
    .line 2588
    :pswitch_1c8
    const v0, 0xfe7e9

    .line 2589
    .line 2590
    .line 2591
    goto/16 :goto_9

    .line 2592
    .line 2593
    :pswitch_1c9
    const v0, 0xfe7ea

    .line 2594
    .line 2595
    .line 2596
    goto/16 :goto_9

    .line 2597
    .line 2598
    :pswitch_1ca
    const v0, 0xfe7e4

    .line 2599
    .line 2600
    .line 2601
    goto/16 :goto_9

    .line 2602
    .line 2603
    :pswitch_1cb
    const v0, 0xfe1be

    .line 2604
    .line 2605
    .line 2606
    goto/16 :goto_9

    .line 2607
    .line 2608
    :pswitch_1cc
    const v0, 0xfe1bd

    .line 2609
    .line 2610
    .line 2611
    goto/16 :goto_9

    .line 2612
    .line 2613
    :pswitch_1cd
    const v0, 0xfe7d4

    .line 2614
    .line 2615
    .line 2616
    goto/16 :goto_9

    .line 2617
    .line 2618
    :pswitch_1ce
    const v0, 0xfe7da

    .line 2619
    .line 2620
    .line 2621
    goto/16 :goto_9

    .line 2622
    .line 2623
    :pswitch_1cf
    const v0, 0xfe7d1

    .line 2624
    .line 2625
    .line 2626
    goto :goto_9

    .line 2627
    :pswitch_1d0
    const v0, 0xfe7d3

    .line 2628
    .line 2629
    .line 2630
    goto :goto_9

    .line 2631
    :pswitch_1d1
    const v0, 0xfe7d2

    .line 2632
    .line 2633
    .line 2634
    goto :goto_9

    .line 2635
    :pswitch_1d2
    const v0, 0xfe7d5

    .line 2636
    .line 2637
    .line 2638
    goto :goto_9

    .line 2639
    :pswitch_1d3
    const v0, 0xfeb95

    .line 2640
    .line 2641
    .line 2642
    goto :goto_9

    .line 2643
    :pswitch_1d4
    const v0, 0xfeb94

    .line 2644
    .line 2645
    .line 2646
    goto :goto_9

    .line 2647
    :pswitch_1d5
    const v0, 0xfeb93

    .line 2648
    .line 2649
    .line 2650
    goto :goto_9

    .line 2651
    :pswitch_1d6
    const v0, 0xfeb98

    .line 2652
    .line 2653
    .line 2654
    goto :goto_9

    .line 2655
    :pswitch_1d7
    const v0, 0xfeb97

    .line 2656
    .line 2657
    .line 2658
    goto :goto_9

    .line 2659
    :pswitch_1d8
    const v0, 0xfeb96

    .line 2660
    .line 2661
    .line 2662
    goto :goto_9

    .line 2663
    :pswitch_1d9
    const v0, 0xfe538

    .line 2664
    .line 2665
    .line 2666
    goto :goto_9

    .line 2667
    :pswitch_1da
    const v0, 0xfe528

    .line 2668
    .line 2669
    .line 2670
    goto :goto_9

    .line 2671
    :pswitch_1db
    const v0, 0xfe525

    .line 2672
    .line 2673
    .line 2674
    goto :goto_9

    .line 2675
    :pswitch_1dc
    const v0, 0xfe523

    .line 2676
    .line 2677
    .line 2678
    goto :goto_9

    .line 2679
    :pswitch_1dd
    const v0, 0xfe4ef

    .line 2680
    .line 2681
    .line 2682
    goto :goto_9

    .line 2683
    :pswitch_1de
    const v0, 0xfe4cd

    .line 2684
    .line 2685
    .line 2686
    goto :goto_9

    .line 2687
    :pswitch_1df
    const v0, 0xfe4cf

    .line 2688
    .line 2689
    .line 2690
    goto :goto_9

    .line 2691
    :pswitch_1e0
    const v0, 0xfe19e

    .line 2692
    .line 2693
    .line 2694
    goto :goto_9

    .line 2695
    :pswitch_1e1
    const v0, 0xfe19d

    .line 2696
    .line 2697
    .line 2698
    goto :goto_9

    .line 2699
    :pswitch_1e2
    const v0, 0xfe823

    .line 2700
    .line 2701
    .line 2702
    goto :goto_9

    .line 2703
    :pswitch_1e3
    const v0, 0xfe19c

    .line 2704
    .line 2705
    .line 2706
    goto :goto_9

    .line 2707
    :pswitch_1e4
    const v0, 0xfe19b

    .line 2708
    .line 2709
    .line 2710
    :goto_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2711
    .line 2712
    .line 2713
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 2714
    .line 2715
    .line 2716
    move-result v7

    .line 2717
    goto/16 :goto_8

    .line 2718
    .line 2719
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2720
    .line 2721
    .line 2722
    move-result-object p0

    .line 2723
    :cond_c
    return-object p0

    .line 2724
    :goto_a
    if-eqz v1, :cond_d

    .line 2725
    .line 2726
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/io/IOUtils$ScratchChars;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2727
    .line 2728
    .line 2729
    goto :goto_b

    .line 2730
    :catchall_1
    move-exception p1

    .line 2731
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2732
    .line 2733
    .line 2734
    :cond_d
    :goto_b
    throw p0

    .line 2735
    :pswitch_data_0
    .packed-switch 0xe001
        :pswitch_1e4
        :pswitch_1e3
        :pswitch_1e2
        :pswitch_1e1
        :pswitch_1e0
        :pswitch_1df
        :pswitch_1de
        :pswitch_1dd
        :pswitch_1dc
        :pswitch_1db
        :pswitch_1da
        :pswitch_1d9
        :pswitch_1d8
        :pswitch_1d7
        :pswitch_1d6
        :pswitch_1d5
        :pswitch_1d4
        :pswitch_1d3
        :pswitch_1d2
        :pswitch_1d1
        :pswitch_1d0
        :pswitch_1cf
        :pswitch_1ce
        :pswitch_1cd
        :pswitch_1cc
        :pswitch_1cb
        :pswitch_1ca
        :pswitch_1c9
        :pswitch_1c8
        :pswitch_1c7
        :pswitch_1c6
        :pswitch_1c5
        :pswitch_1c4
        :pswitch_1c3
        :pswitch_1c2
        :pswitch_1c1
        :pswitch_1c0
        :pswitch_1bf
        :pswitch_1be
        :pswitch_1bd
        :pswitch_1bc
        :pswitch_1bb
        :pswitch_1ba
        :pswitch_1b9
        :pswitch_1b8
        :pswitch_1b7
        :pswitch_1b6
        :pswitch_1b5
        :pswitch_1b4
        :pswitch_1b3
        :pswitch_1b2
        :pswitch_1b1
        :pswitch_1b0
        :pswitch_1af
        :pswitch_1ae
        :pswitch_1ad
        :pswitch_1ac
        :pswitch_1ab
        :pswitch_1aa
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
    .end packed-switch

    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    .line 2747
    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    .line 2754
    .line 2755
    .line 2756
    .line 2757
    .line 2758
    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    .line 2764
    .line 2765
    .line 2766
    .line 2767
    .line 2768
    .line 2769
    .line 2770
    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    .line 2776
    .line 2777
    .line 2778
    .line 2779
    .line 2780
    .line 2781
    .line 2782
    .line 2783
    .line 2784
    .line 2785
    .line 2786
    .line 2787
    .line 2788
    .line 2789
    .line 2790
    .line 2791
    .line 2792
    .line 2793
    .line 2794
    .line 2795
    .line 2796
    .line 2797
    .line 2798
    .line 2799
    .line 2800
    .line 2801
    .line 2802
    .line 2803
    .line 2804
    .line 2805
    .line 2806
    .line 2807
    .line 2808
    .line 2809
    .line 2810
    .line 2811
    .line 2812
    .line 2813
    .line 2814
    .line 2815
    .line 2816
    .line 2817
    .line 2818
    .line 2819
    .line 2820
    .line 2821
    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    .line 2832
    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    .line 2838
    .line 2839
    .line 2840
    .line 2841
    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    .line 2848
    .line 2849
    .line 2850
    .line 2851
    .line 2852
    .line 2853
    .line 2854
    .line 2855
    .line 2856
    .line 2857
    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    :pswitch_data_1
    .packed-switch 0xe101
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
    .end packed-switch

    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    .line 2984
    .line 2985
    .line 2986
    .line 2987
    .line 2988
    .line 2989
    .line 2990
    .line 2991
    .line 2992
    .line 2993
    .line 2994
    .line 2995
    .line 2996
    .line 2997
    .line 2998
    .line 2999
    .line 3000
    .line 3001
    .line 3002
    .line 3003
    .line 3004
    .line 3005
    .line 3006
    .line 3007
    .line 3008
    .line 3009
    .line 3010
    .line 3011
    .line 3012
    .line 3013
    .line 3014
    .line 3015
    .line 3016
    .line 3017
    .line 3018
    .line 3019
    .line 3020
    .line 3021
    .line 3022
    .line 3023
    .line 3024
    .line 3025
    .line 3026
    .line 3027
    .line 3028
    .line 3029
    .line 3030
    .line 3031
    .line 3032
    .line 3033
    .line 3034
    .line 3035
    .line 3036
    .line 3037
    .line 3038
    .line 3039
    .line 3040
    .line 3041
    .line 3042
    .line 3043
    .line 3044
    .line 3045
    .line 3046
    .line 3047
    .line 3048
    .line 3049
    .line 3050
    .line 3051
    .line 3052
    .line 3053
    .line 3054
    .line 3055
    .line 3056
    .line 3057
    .line 3058
    .line 3059
    .line 3060
    .line 3061
    .line 3062
    .line 3063
    .line 3064
    .line 3065
    .line 3066
    .line 3067
    .line 3068
    .line 3069
    .line 3070
    .line 3071
    .line 3072
    .line 3073
    .line 3074
    .line 3075
    .line 3076
    .line 3077
    .line 3078
    .line 3079
    .line 3080
    .line 3081
    .line 3082
    .line 3083
    .line 3084
    .line 3085
    .line 3086
    .line 3087
    .line 3088
    .line 3089
    .line 3090
    .line 3091
    .line 3092
    .line 3093
    .line 3094
    .line 3095
    .line 3096
    .line 3097
    .line 3098
    .line 3099
    .line 3100
    .line 3101
    .line 3102
    .line 3103
    :pswitch_data_2
    .packed-switch 0xe201
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
    .end packed-switch

    .line 3104
    .line 3105
    .line 3106
    .line 3107
    .line 3108
    .line 3109
    .line 3110
    .line 3111
    .line 3112
    .line 3113
    .line 3114
    .line 3115
    .line 3116
    .line 3117
    .line 3118
    .line 3119
    .line 3120
    .line 3121
    .line 3122
    .line 3123
    .line 3124
    .line 3125
    .line 3126
    .line 3127
    .line 3128
    .line 3129
    .line 3130
    .line 3131
    .line 3132
    .line 3133
    .line 3134
    .line 3135
    .line 3136
    .line 3137
    .line 3138
    .line 3139
    .line 3140
    .line 3141
    .line 3142
    .line 3143
    .line 3144
    .line 3145
    .line 3146
    .line 3147
    .line 3148
    .line 3149
    .line 3150
    .line 3151
    .line 3152
    .line 3153
    .line 3154
    .line 3155
    .line 3156
    .line 3157
    .line 3158
    .line 3159
    .line 3160
    .line 3161
    .line 3162
    .line 3163
    .line 3164
    .line 3165
    .line 3166
    .line 3167
    .line 3168
    .line 3169
    .line 3170
    .line 3171
    .line 3172
    .line 3173
    .line 3174
    .line 3175
    .line 3176
    .line 3177
    .line 3178
    .line 3179
    .line 3180
    .line 3181
    .line 3182
    .line 3183
    .line 3184
    .line 3185
    .line 3186
    .line 3187
    .line 3188
    .line 3189
    .line 3190
    .line 3191
    .line 3192
    .line 3193
    .line 3194
    .line 3195
    .line 3196
    .line 3197
    .line 3198
    .line 3199
    .line 3200
    .line 3201
    .line 3202
    .line 3203
    .line 3204
    .line 3205
    .line 3206
    .line 3207
    .line 3208
    .line 3209
    .line 3210
    .line 3211
    .line 3212
    .line 3213
    .line 3214
    .line 3215
    .line 3216
    .line 3217
    .line 3218
    .line 3219
    .line 3220
    .line 3221
    .line 3222
    .line 3223
    .line 3224
    .line 3225
    .line 3226
    .line 3227
    .line 3228
    .line 3229
    .line 3230
    .line 3231
    .line 3232
    .line 3233
    .line 3234
    .line 3235
    .line 3236
    .line 3237
    .line 3238
    .line 3239
    .line 3240
    .line 3241
    .line 3242
    .line 3243
    .line 3244
    .line 3245
    .line 3246
    .line 3247
    .line 3248
    .line 3249
    .line 3250
    .line 3251
    :pswitch_data_3
    .packed-switch 0xe301
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe401
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xe501
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

.method public static setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V
    .locals 8

    .line 1
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 12
    .line 13
    const-string v1, "MIME-Version"

    .line 14
    .line 15
    const-string v2, "1.0"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    instance-of v0, p1, Lcom/fsck/k9/mail/Multipart;

    .line 21
    .line 22
    const-string v1, "Content-Transfer-Encoding"

    .line 23
    .line 24
    const-string v2, "Content-Type"

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    check-cast p1, Lcom/fsck/k9/mail/Multipart;

    .line 29
    .line 30
    iput-object p0, p1, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    .line 31
    .line 32
    check-cast p1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMultipart;->mimeType:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeMultipart;->boundary:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v3, "boundary"

    .line 45
    .line 46
    invoke-static {v3, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, v2, p1}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "7bit"

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-interface {p0, v1, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    instance-of v0, p1, Lcom/fsck/k9/mail/internet/TextBody;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->decode(Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeValue;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p1, Lcom/fsck/k9/mail/internet/MimeValue;->value:Ljava/lang/String;

    .line 88
    .line 89
    const-string v3, "\\*"

    .line 90
    .line 91
    const-string v4, "\\.\\*"

    .line 92
    .line 93
    const-string v5, "text/*"

    .line 94
    .line 95
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v4, 0x2

    .line 100
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    iget-object p1, p1, Lcom/fsck/k9/mail/internet/MimeValue;->parameters:Ljava/util/Map;

    .line 115
    .line 116
    const-string v3, "name"

    .line 117
    .line 118
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const-string/jumbo v5, "utf-8"

    .line 128
    .line 129
    .line 130
    const-string v6, "charset"

    .line 131
    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    invoke-static {v6, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    new-instance v7, Lkotlin/Pair;

    .line 143
    .line 144
    invoke-direct {v7, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    new-instance v5, Lkotlin/Pair;

    .line 148
    .line 149
    invoke-direct {v5, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-array p1, v4, [Lkotlin/Pair;

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    aput-object v7, p1, v3

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    aput-object v5, p1, v3

    .line 159
    .line 160
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :goto_0
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p0, v2, p1}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    invoke-interface {p0, v2, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v0, "quoted-printable"

    .line 180
    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    invoke-interface {p1, v0}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_5
    invoke-interface {p0, v1, v0}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_6
    instance-of v0, p1, Lcom/fsck/k9/mail/internet/RawDataBody;

    .line 191
    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    check-cast p1, Lcom/fsck/k9/mail/internet/RawDataBody;

    .line 195
    .line 196
    invoke-interface {p1}, Lcom/fsck/k9/mail/internet/RawDataBody;->getEncoding()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p0, v1, p1}, Lcom/fsck/k9/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    return-void
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "\r|\n"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
