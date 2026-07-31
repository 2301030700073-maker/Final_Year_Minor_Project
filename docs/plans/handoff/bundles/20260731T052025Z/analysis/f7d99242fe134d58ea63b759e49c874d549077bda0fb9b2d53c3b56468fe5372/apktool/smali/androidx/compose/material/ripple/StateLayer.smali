.class public final Landroidx/compose/material/ripple/StateLayer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public animatedAlpha:Ljava/lang/Object;

.field public bounded:Z

.field public currentInteraction:Ljava/lang/Object;

.field public interactions:Ljava/lang/Object;

.field public rippleAlpha:Ljava/lang/Object;


# direct methods
.method public static equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public expect(C)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    int-to-char p0, p0

    .line 27
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v3, 0x4

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    aput-object v1, v3, v4

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    aput-object p1, v3, v1

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    aput-object v2, v3, p1

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    aput-object p0, v3, p1

    .line 45
    .line 46
    const-string p0, "Expected %04x (%c) but got %04x (%c)"

    .line 47
    .line 48
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public parseBareString(Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_5

    .line 16
    .line 17
    const/16 v2, 0x28

    .line 18
    .line 19
    if-eq v1, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x29

    .line 22
    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/16 v2, 0x5b

    .line 28
    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const/16 v2, 0x5d

    .line 32
    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    :cond_0
    const/16 v2, 0x7b

    .line 36
    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    if-eq v1, v2, :cond_3

    .line 42
    .line 43
    const/16 v2, 0x22

    .line 44
    .line 45
    if-eq v1, v2, :cond_3

    .line 46
    .line 47
    if-ltz v1, :cond_1

    .line 48
    .line 49
    const/16 v2, 0x1f

    .line 50
    .line 51
    if-le v1, v2, :cond_3

    .line 52
    .line 53
    :cond_1
    const/16 v2, 0x7f

    .line 54
    .line 55
    if-ne v1, v2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-char v1, v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/4 v1, 0x2

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    aput-object p1, v1, v2

    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    aput-object v0, v1, p1

    .line 96
    .line 97
    const-string p1, "parseBareString(): (%04x %c)"

    .line 98
    .line 99
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_5
    const-string p0, "parseBareString(): end of stream reached"

    .line 108
    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method public parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/compose/material/ripple/StateLayer;->parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_2
    instance-of v0, p3, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0
.end method

.method public parseLiteral()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 7
    .line 8
    const-string v3, "Invalid value for size of literal string"

    .line 9
    .line 10
    const/16 v0, 0x7b

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x7d

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/StateLayer;->readStringUntil(C)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    const/4 v5, 0x0

    .line 26
    if-ltz v4, :cond_10

    .line 27
    .line 28
    const/16 v0, 0xd

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 36
    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v0, :cond_d

    .line 51
    .line 52
    new-instance v6, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;

    .line 53
    .line 54
    invoke-direct {v6, v2, v4}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 60
    .line 61
    iget-object v7, v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .line 62
    .line 63
    invoke-interface {v7, v0, v6}, Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;->foundLiteral(Lcom/fsck/k9/mail/store/imap/ImapResponse;Lcom/fsck/k9/mail/filter/FixedLengthInputStream;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    move-object v7, v5

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    goto/16 :goto_c

    .line 73
    .line 74
    :goto_0
    move-object v7, v0

    .line 75
    move-object v0, v5

    .line 76
    :goto_1
    invoke-virtual {v6}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eq v8, v4, :cond_a

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string v0, "Callback consumed some data but returned no result"

    .line 88
    .line 89
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object v5

    .line 93
    :cond_2
    :goto_2
    invoke-virtual {v6}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->remainingBytes()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    int-to-long v8, v8

    .line 98
    sget v10, Lorg/apache/commons/io/IOUtils;->$r8$clinit:I

    .line 99
    .line 100
    sget-object v10, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 101
    .line 102
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, [Ljava/lang/Object;

    .line 107
    .line 108
    aget-object v11, v10, v3

    .line 109
    .line 110
    check-cast v11, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-eqz v11, :cond_3

    .line 117
    .line 118
    new-instance v10, Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 119
    .line 120
    const/16 v11, 0x2000

    .line 121
    .line 122
    new-array v11, v11, [B

    .line 123
    .line 124
    invoke-direct {v10, v11}, Lorg/apache/commons/io/IOUtils$ScratchBytes;-><init>([B)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    aput-object v11, v10, v3

    .line 131
    .line 132
    sget-object v10, Lorg/apache/commons/io/IOUtils$ScratchBytes;->INSTANCE:Lorg/apache/commons/io/IOUtils$ScratchBytes;

    .line 133
    .line 134
    :goto_3
    :try_start_2
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-wide/16 v11, 0x0

    .line 138
    .line 139
    cmp-long v13, v8, v11

    .line 140
    .line 141
    if-ltz v13, :cond_8

    .line 142
    .line 143
    move-wide v13, v8

    .line 144
    :goto_4
    cmp-long v15, v13, v11

    .line 145
    .line 146
    if-lez v15, :cond_6

    .line 147
    .line 148
    iget-object v15, v10, Lorg/apache/commons/io/IOUtils$ScratchBytes;->buffer:[B

    .line 149
    .line 150
    if-eqz v15, :cond_4

    .line 151
    .line 152
    :goto_5
    move-wide/from16 v16, v11

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_4
    sget-object v15, Lorg/apache/commons/io/IOUtils$ScratchBytes;->LOCAL:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 156
    .line 157
    invoke-virtual {v15}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    check-cast v15, [Ljava/lang/Object;

    .line 162
    .line 163
    const/16 v16, 0x1

    .line 164
    .line 165
    aget-object v15, v15, v16

    .line 166
    .line 167
    check-cast v15, [B

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :goto_6
    array-length v11, v15

    .line 171
    int-to-long v11, v11

    .line 172
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 173
    .line 174
    .line 175
    move-result-wide v11

    .line 176
    long-to-int v11, v11

    .line 177
    invoke-virtual {v6, v15, v3, v11}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;->read([BII)I

    .line 178
    .line 179
    .line 180
    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    int-to-long v11, v11

    .line 182
    cmp-long v15, v11, v16

    .line 183
    .line 184
    if-gez v15, :cond_5

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_5
    sub-long/2addr v13, v11

    .line 188
    move-wide/from16 v11, v16

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    :goto_7
    sub-long v11, v8, v13

    .line 192
    .line 193
    invoke-virtual {v10}, Lorg/apache/commons/io/IOUtils$ScratchBytes;->close()V

    .line 194
    .line 195
    .line 196
    cmp-long v6, v11, v8

    .line 197
    .line 198
    if-nez v6, :cond_7

    .line 199
    .line 200
    goto :goto_b

    .line 201
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v2, "Bytes to skip: "

    .line 206
    .line 207
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, " actual: "

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v2, "Skip count must be non-negative, actual: "

    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :goto_8
    move-object v1, v0

    .line 250
    goto :goto_9

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    goto :goto_8

    .line 253
    :goto_9
    if-eqz v10, :cond_9

    .line 254
    .line 255
    :try_start_4
    invoke-virtual {v10}, Lorg/apache/commons/io/IOUtils$ScratchBytes;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    .line 257
    .line 258
    goto :goto_a

    .line 259
    :catchall_1
    move-exception v0

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_a
    throw v1

    .line 264
    :cond_a
    :goto_b
    if-eqz v7, :cond_c

    .line 265
    .line 266
    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v0, Ljava/lang/Exception;

    .line 269
    .line 270
    if-nez v0, :cond_b

    .line 271
    .line 272
    iput-object v7, v1, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 273
    .line 274
    :cond_b
    const-string v0, "EXCEPTION"

    .line 275
    .line 276
    return-object v0

    .line 277
    :cond_c
    if-eqz v0, :cond_d

    .line 278
    .line 279
    return-object v0

    .line 280
    :goto_c
    throw v0

    .line 281
    :cond_d
    new-array v0, v4, [B

    .line 282
    .line 283
    :goto_d
    if-eq v3, v4, :cond_f

    .line 284
    .line 285
    sub-int v1, v4, v3

    .line 286
    .line 287
    invoke-virtual {v2, v0, v3, v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read([BII)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    const/4 v6, -0x1

    .line 292
    if-eq v1, v6, :cond_e

    .line 293
    .line 294
    add-int/2addr v3, v1

    .line 295
    goto :goto_d

    .line 296
    :cond_e
    const-string v0, "parseLiteral(): end of stream reached"

    .line 297
    .line 298
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-object v5

    .line 302
    :cond_f
    new-instance v1, Ljava/lang/String;

    .line 303
    .line 304
    const-string v2, "UTF8"

    .line 305
    .line 306
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-object v1

    .line 310
    :cond_10
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;

    .line 311
    .line 312
    invoke-direct {v0, v3, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    throw v0

    .line 316
    :catch_2
    move-exception v0

    .line 317
    new-instance v1, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;

    .line 318
    .line 319
    invoke-direct {v1, v3, v0}, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .line 321
    .line 322
    throw v1
.end method

.method public parseQuoted()Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lokio/Buffer;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    move v3, v2

    .line 13
    :goto_1
    iget-object v4, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-eq v4, v5, :cond_2

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const/16 v5, 0x5c

    .line 27
    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-nez v3, :cond_1

    .line 33
    .line 34
    if-ne v4, v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-virtual {v1, v4}, Lokio/Buffer;->writeByte(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string p0, "parseQuoted(): end of stream reached"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x28

    .line 10
    .line 11
    const/16 v2, 0x29

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1, v2}, Landroidx/compose/material/ripple/StateLayer;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/16 v1, 0x5b

    .line 21
    .line 22
    const/16 v3, 0x5d

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p1, v1, v3}, Landroidx/compose/material/ripple/StateLayer;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 34
    .line 35
    .line 36
    const-string p0, ")"

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    if-ne v0, v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 42
    .line 43
    .line 44
    const-string p0, "]"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    const/16 v1, 0x22

    .line 48
    .line 49
    if-ne v0, v1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->parseQuoted()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_4
    const/16 v1, 0x7b

    .line 57
    .line 58
    if-ne v0, v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->parseLiteral()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    const/16 v1, 0x20

    .line 66
    .line 67
    if-ne v0, v1, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    const/4 v1, 0x0

    .line 74
    const/16 v2, 0xd

    .line 75
    .line 76
    const/16 v3, 0xa

    .line 77
    .line 78
    if-ne v0, v2, :cond_7

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_7
    if-ne v0, v3, :cond_8

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_8
    const/16 v1, 0x9

    .line 94
    .line 95
    if-ne v0, v1, :cond_9

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/StateLayer;->parseBareString(Z)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method public process-BIzXfog(Landroidx/compose/ui/platform/WeakCache;Landroidx/compose/ui/platform/AndroidComposeView;Z)I
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/ui/node/HitTestResult;

    .line 10
    .line 11
    iget-boolean v3, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    return v4

    .line 17
    :cond_0
    const/4 v3, 0x1

    .line 18
    :try_start_0
    iput-boolean v3, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 19
    .line 20
    iget-object v5, v1, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Landroidx/camera/view/PreviewView$1;

    .line 23
    .line 24
    move-object/from16 v6, p1

    .line 25
    .line 26
    move-object/from16 v7, p2

    .line 27
    .line 28
    invoke-virtual {v5, v6, v7}, Landroidx/camera/view/PreviewView$1;->produce(Landroidx/compose/ui/platform/WeakCache;Landroidx/compose/ui/platform/AndroidComposeView;)Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v6, v5, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$messages:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v6, Landroidx/collection/LongSparseArray;

    .line 35
    .line 36
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move v8, v4

    .line 41
    :goto_0
    if-ge v8, v7, :cond_3

    .line 42
    .line 43
    invoke-virtual {v6, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 48
    .line 49
    iget-boolean v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 50
    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 54
    .line 55
    if-eqz v9, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_2
    :goto_1
    move v7, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v7, v3

    .line 67
    :goto_2
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    move v9, v4

    .line 72
    :goto_3
    if-ge v9, v8, :cond_6

    .line 73
    .line 74
    invoke-virtual {v6, v9}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_5

    .line 87
    .line 88
    :cond_4
    iget-object v11, v1, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v12, v11

    .line 91
    check-cast v12, Landroidx/compose/ui/node/LayoutNode;

    .line 92
    .line 93
    iget-wide v13, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 94
    .line 95
    iget-object v11, v1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v15, v11

    .line 98
    check-cast v15, Landroidx/compose/ui/node/HitTestResult;

    .line 99
    .line 100
    iget v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 101
    .line 102
    const/16 v17, 0x1

    .line 103
    .line 104
    move/from16 v16, v11

    .line 105
    .line 106
    invoke-virtual/range {v12 .. v17}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 107
    .line 108
    .line 109
    iget-object v11, v2, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    .line 110
    .line 111
    invoke-virtual {v11}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_5

    .line 116
    .line 117
    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 118
    .line 119
    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v0, v11, v12, v2, v10}, Landroidx/compose/ui/input/pointer/HitPathTracker;->addHitPath-QJqDSyo(JLjava/util/List;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Landroidx/compose/ui/node/HitTestResult;->clear()V

    .line 127
    .line 128
    .line 129
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move/from16 v2, p3

    .line 133
    .line 134
    invoke-virtual {v0, v5, v2}, Landroidx/compose/ui/input/pointer/HitPathTracker;->dispatchChanges(Lcom/fsck/k9/mailstore/LocalFolder$12;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-boolean v2, v5, Lcom/fsck/k9/mailstore/LocalFolder$12;->val$value:Z

    .line 139
    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    :cond_7
    move v2, v4

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move v5, v4

    .line 149
    :goto_4
    if-ge v5, v2, :cond_7

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 156
    .line 157
    invoke-static {v7, v3}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    const-wide/16 v10, 0x0

    .line 162
    .line 163
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_9

    .line 168
    .line 169
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_9

    .line 174
    .line 175
    move v2, v3

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :goto_5
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    move v7, v4

    .line 185
    :goto_6
    if-ge v7, v5, :cond_b

    .line 186
    .line 187
    invoke-virtual {v6, v7}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 192
    .line 193
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 194
    .line 195
    .line 196
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v8, :cond_a

    .line 198
    .line 199
    move v5, v3

    .line 200
    goto :goto_7

    .line 201
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_b
    move v5, v4

    .line 205
    :goto_7
    shl-int/2addr v2, v3

    .line 206
    or-int/2addr v0, v2

    .line 207
    shl-int/lit8 v2, v5, 0x2

    .line 208
    .line 209
    or-int/2addr v0, v2

    .line 210
    iput-boolean v4, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 211
    .line 212
    return v0

    .line 213
    :goto_8
    iput-boolean v4, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 214
    .line 215
    throw v0
.end method

.method public readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    const/16 v4, 0x2b

    .line 13
    .line 14
    if-ne v2, v4, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v2, p1, v4, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ne p1, v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/16 p1, 0xd

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/StateLayer;->readStringUntil(C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0xa

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    const/16 v4, 0x2a

    .line 57
    .line 58
    if-ne v2, v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 67
    .line 68
    invoke-direct {v2, p1, v0, v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/StateLayer;->readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->readStringUntil(C)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 82
    .line 83
    invoke-direct {v3, p1, v0, v2}, Lcom/fsck/k9/mail/store/imap/ImapResponse;-><init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object v3, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p0, v3}, Landroidx/compose/material/ripple/StateLayer;->readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Exception;

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/fsck/k9/mail/store/imap/ImapResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_3
    :try_start_1
    new-instance v0, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;

    .line 107
    .line 108
    const-string v2, "readResponse(): Exception in callback method"

    .line 109
    .line 110
    invoke-direct {v0, v2, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 118
    .line 119
    throw p1
.end method

.method public readStatusResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->readResponse(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;)Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 12
    .line 13
    invoke-interface {v3}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    new-array v3, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p3, v3, v5

    .line 25
    .line 26
    aput-object v2, v3, v6

    .line 27
    .line 28
    const-string v7, "%s<<<%s"

    .line 29
    .line 30
    invoke-static {v7, v3}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v3, v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p1, v3, v5

    .line 47
    .line 48
    aput-object v2, v3, v6

    .line 49
    .line 50
    aput-object p3, v3, v4

    .line 51
    .line 52
    const-string v2, "After sending tag %s, got tag response from previous command %s for %s"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_9

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;

    .line 72
    .line 73
    iget-object v7, v3, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-lt v7, v4, :cond_3

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-string v8, "EXISTS"

    .line 88
    .line 89
    invoke-static {v7, v8}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_2

    .line 94
    .line 95
    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v7, "EXPUNGE"

    .line 100
    .line 101
    invoke-static {v3, v7}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_2

    .line 106
    .line 107
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget-object v3, v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 112
    .line 113
    if-nez v3, :cond_8

    .line 114
    .line 115
    if-eqz p4, :cond_8

    .line 116
    .line 117
    iget-object v3, p4, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, Lcom/fsck/k9/mail/store/imap/RealImapConnection;

    .line 120
    .line 121
    iget-boolean v4, v2, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 122
    .line 123
    if-nez v4, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    iget-object v4, v3, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->imapOutputStream:Ljava/io/BufferedOutputStream;

    .line 127
    .line 128
    if-eqz v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {v2, v5}, Lcom/fsck/k9/mail/store/imap/ImapList;->isString(I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    invoke-virtual {v2, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    iget-object v7, v3, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->settings:Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;

    .line 143
    .line 144
    iget-object v7, v7, Lcom/fsck/k9/mail/store/imap/RealImapStore$StoreImapSettings;->host:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v1, v7}, Lcom/fsck/k9/mail/oauth/XOAuth2ChallengeParser;->shouldRetry(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput-boolean v1, v3, Lcom/fsck/k9/mail/store/imap/RealImapConnection;->retryOAuthWithNewToken:Z

    .line 151
    .line 152
    :cond_6
    const/16 v1, 0xd

    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    .line 156
    .line 157
    const/16 v1, 0xa

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    const-string p0, "Required value was null."

    .line 167
    .line 168
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_8
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-object v1, v2

    .line 176
    :cond_9
    if-eqz v1, :cond_0

    .line 177
    .line 178
    iget-object v2, v1, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-lt p0, v6, :cond_a

    .line 187
    .line 188
    invoke-virtual {v1, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, "OK"

    .line 193
    .line 194
    invoke-static {p0, p1}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-eqz p0, :cond_a

    .line 199
    .line 200
    return-object v0

    .line 201
    :cond_a
    invoke-virtual {v1}, Lcom/fsck/k9/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const-string p1, "Command: "

    .line 206
    .line 207
    const-string p3, "; response: "

    .line 208
    .line 209
    invoke-static {p1, p2, p3, p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    new-instance p1, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;

    .line 214
    .line 215
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/mail/store/imap/NegativeImapResponseException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 216
    .line 217
    .line 218
    throw p1
.end method

.method public readStringUntil(C)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->read()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    if-ne v1, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    int-to-char v1, v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    if-ge p1, v1, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v1, "["

    .line 44
    .line 45
    const-string v2, "]"

    .line 46
    .line 47
    invoke-static {v1, p1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, "\'"

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    const-string v1, "readStringUntil(): end of stream reached. Read: \""

    .line 70
    .line 71
    const-string v2, "\" while waiting for "

    .line 72
    .line 73
    invoke-static {v1, v0, v2, p1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method

.method public readTokens(Lcom/fsck/k9/mail/store/imap/ImapResponse;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/mail/filter/PeekableInputStream;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/StateLayer;->parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "]"

    .line 13
    .line 14
    const-string v3, ")"

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    :cond_1
    instance-of v4, v1, Ljava/lang/String;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_e

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const-string v4, "OK"

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/16 v6, 0xa

    .line 47
    .line 48
    const/16 v7, 0xd

    .line 49
    .line 50
    const/16 v8, 0x20

    .line 51
    .line 52
    if-nez v4, :cond_a

    .line 53
    .line 54
    const-string v4, "NO"

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_a

    .line 61
    .line 62
    const-string v4, "BAD"

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_a

    .line 69
    .line 70
    const-string v4, "PREAUTH"

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_a

    .line 77
    .line 78
    const-string v4, "BYE"

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_2
    const-string v4, "LIST"

    .line 89
    .line 90
    invoke-static {v1, v4}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_5

    .line 95
    .line 96
    const-string v4, "LSUB"

    .line 97
    .line 98
    invoke-static {v1, v4}, Landroidx/compose/material/ripple/StateLayer;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/StateLayer;->parseToken(Lcom/fsck/k9/mail/store/imap/ImapList;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    :cond_4
    if-eqz v0, :cond_d

    .line 124
    .line 125
    instance-of v1, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 126
    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    :goto_1
    invoke-virtual {p0, v8}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x28

    .line 137
    .line 138
    const/16 v2, 0x29

    .line 139
    .line 140
    invoke-virtual {p0, p1, v1, v2}, Landroidx/compose/material/ripple/StateLayer;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v8}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    const/16 v2, 0x22

    .line 151
    .line 152
    if-ne v1, v2, :cond_6

    .line 153
    .line 154
    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->parseQuoted()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    const/16 v1, 0x4e

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 162
    .line 163
    .line 164
    const/16 v1, 0x49

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 167
    .line 168
    .line 169
    const/16 v1, 0x4c

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 172
    .line 173
    .line 174
    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v8}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ne v0, v2, :cond_7

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->parseQuoted()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    goto :goto_3

    .line 191
    :cond_7
    const/16 v1, 0x7b

    .line 192
    .line 193
    if-ne v0, v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->parseLiteral()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Ljava/lang/String;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Landroidx/compose/material/ripple/StateLayer;->parseBareString(Z)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    :goto_3
    iget-boolean v1, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_9
    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v1, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$12;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v7}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v6}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-ne v1, v8, :cond_b

    .line 235
    .line 236
    invoke-virtual {p0, v8}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 237
    .line 238
    .line 239
    :cond_b
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    const/16 v2, 0x5b

    .line 244
    .line 245
    if-ne v1, v2, :cond_c

    .line 246
    .line 247
    const/16 v1, 0x5d

    .line 248
    .line 249
    invoke-virtual {p0, p1, v2, v1}, Landroidx/compose/material/ripple/StateLayer;->parseList(Lcom/fsck/k9/mail/store/imap/ImapList;CC)Lcom/fsck/k9/mail/store/imap/ImapList;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/fsck/k9/mail/filter/PeekableInputStream;->peek()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-ne v0, v8, :cond_c

    .line 257
    .line 258
    invoke-virtual {p0, v8}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 259
    .line 260
    .line 261
    :cond_c
    invoke-virtual {p0, v7}, Landroidx/compose/material/ripple/StateLayer;->readStringUntil(C)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0, v6}, Landroidx/compose/material/ripple/StateLayer;->expect(C)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    if-nez p0, :cond_d

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    :cond_d
    return-void

    .line 278
    :cond_e
    new-instance p0, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;

    .line 279
    .line 280
    const-string p1, "Unexpected non-string token"

    .line 281
    .line 282
    invoke-direct {p0, p1, v5}, Lcom/fsck/k9/mail/store/imap/ImapResponseParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw p0
.end method
