.class public final Lokhttp3/tls/internal/der/DerReader;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final END_OF_DATA:Lokhttp3/tls/internal/der/DerHeader;


# instance fields
.field public constructed:Z

.field public final countingSource:Lokhttp3/tls/internal/der/DerReader$CountingSource;

.field public limit:J

.field public final path:Ljava/util/ArrayList;

.field public peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

.field public final source:Lokio/RealBufferedSource;

.field public final typeHintStack:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/DerHeader;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const-wide/16 v5, -0x1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-direct/range {v0 .. v6}, Lokhttp3/tls/internal/der/DerHeader;-><init>(IJZJ)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lokhttp3/tls/internal/der/DerReader;->END_OF_DATA:Lokhttp3/tls/internal/der/DerHeader;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lokio/Buffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokhttp3/tls/internal/der/DerReader$CountingSource;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->countingSource:Lokhttp3/tls/internal/der/DerReader$CountingSource;

    .line 10
    .line 11
    new-instance p1, Lokio/RealBufferedSource;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 17
    .line 18
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    iput-wide v0, p0, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->typeHintStack:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lokhttp3/tls/internal/der/DerReader;->path:Ljava/util/ArrayList;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getByteCount()J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->countingSource:Lokhttp3/tls/internal/der/DerReader$CountingSource;

    .line 2
    .line 3
    iget-wide v0, v0, Lokhttp3/tls/internal/der/DerReader$CountingSource;->bytesRead:J

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 6
    .line 7
    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 8
    .line 9
    iget-wide v2, p0, Lokio/Buffer;->size:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public final getBytesLeft()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sub-long/2addr v0, v2

    .line 15
    return-wide v0
.end method

.method public final peekHeader()Lokhttp3/tls/internal/der/DerHeader;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_c

    .line 8
    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    iget-wide v7, v0, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 16
    .line 17
    cmp-long v1, v5, v7

    .line 18
    .line 19
    sget-object v5, Lokhttp3/tls/internal/der/DerReader;->END_OF_DATA:Lokhttp3/tls/internal/der/DerHeader;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    :goto_0
    move-wide/from16 v19, v3

    .line 24
    .line 25
    move-object v1, v5

    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    const-wide/16 v9, -0x1

    .line 31
    .line 32
    cmp-long v1, v7, v9

    .line 33
    .line 34
    iget-object v6, v0, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v6}, Lokio/RealBufferedSource;->exhausted()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readByte()B

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    and-int/lit16 v8, v1, 0xc0

    .line 50
    .line 51
    and-int/lit8 v5, v1, 0x20

    .line 52
    .line 53
    const/16 v7, 0x20

    .line 54
    .line 55
    const/4 v9, 0x1

    .line 56
    if-ne v5, v7, :cond_2

    .line 57
    .line 58
    move v11, v9

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v5, 0x0

    .line 61
    move v11, v5

    .line 62
    :goto_1
    const/16 v5, 0x1f

    .line 63
    .line 64
    and-int/2addr v1, v5

    .line 65
    if-ne v1, v5, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/DerReader;->readVariableLengthLong()J

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    int-to-long v12, v1

    .line 73
    :goto_2
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readByte()B

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    and-int/lit16 v5, v1, 0xff

    .line 78
    .line 79
    const/16 v7, 0x80

    .line 80
    .line 81
    if-eq v5, v7, :cond_a

    .line 82
    .line 83
    and-int/lit16 v5, v1, 0x80

    .line 84
    .line 85
    if-ne v5, v7, :cond_9

    .line 86
    .line 87
    and-int/lit8 v1, v1, 0x7f

    .line 88
    .line 89
    const/16 v5, 0x8

    .line 90
    .line 91
    if-gt v1, v5, :cond_8

    .line 92
    .line 93
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readByte()B

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    int-to-long v14, v7

    .line 98
    const-wide/16 v16, 0xff

    .line 99
    .line 100
    and-long v16, v14, v16

    .line 101
    .line 102
    cmp-long v7, v16, v3

    .line 103
    .line 104
    if-eqz v7, :cond_7

    .line 105
    .line 106
    if-ne v1, v9, :cond_4

    .line 107
    .line 108
    const-wide/16 v18, 0x80

    .line 109
    .line 110
    and-long v14, v14, v18

    .line 111
    .line 112
    cmp-long v7, v14, v3

    .line 113
    .line 114
    if-eqz v7, :cond_7

    .line 115
    .line 116
    :cond_4
    :goto_3
    if-ge v9, v1, :cond_5

    .line 117
    .line 118
    shl-long v14, v16, v5

    .line 119
    .line 120
    invoke-virtual {v6}, Lokio/RealBufferedSource;->readByte()B

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    and-int/lit16 v7, v7, 0xff

    .line 125
    .line 126
    move-wide/from16 v19, v3

    .line 127
    .line 128
    const/16 v18, 0x0

    .line 129
    .line 130
    int-to-long v2, v7

    .line 131
    add-long v16, v14, v2

    .line 132
    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    .line 135
    move-wide/from16 v3, v19

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    move-wide/from16 v19, v3

    .line 139
    .line 140
    const/16 v18, 0x0

    .line 141
    .line 142
    cmp-long v1, v16, v19

    .line 143
    .line 144
    if-ltz v1, :cond_6

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 148
    .line 149
    const-string v1, "length > Long.MAX_VALUE"

    .line 150
    .line 151
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    .line 156
    .line 157
    const-string v1, "invalid encoding for length"

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0

    .line 163
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 164
    .line 165
    const-string v1, "length encoded with more than 8 bytes is not supported"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_9
    move-wide/from16 v19, v3

    .line 172
    .line 173
    const/16 v18, 0x0

    .line 174
    .line 175
    and-int/lit8 v1, v1, 0x7f

    .line 176
    .line 177
    int-to-long v1, v1

    .line 178
    move-wide/from16 v16, v1

    .line 179
    .line 180
    :goto_4
    new-instance v7, Lokhttp3/tls/internal/der/DerHeader;

    .line 181
    .line 182
    move-wide v9, v12

    .line 183
    move-wide/from16 v12, v16

    .line 184
    .line 185
    invoke-direct/range {v7 .. v13}, Lokhttp3/tls/internal/der/DerHeader;-><init>(IJZJ)V

    .line 186
    .line 187
    .line 188
    move-object v1, v7

    .line 189
    :goto_5
    iput-object v1, v0, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    .line 193
    .line 194
    const-string v1, "indefinite length not permitted for DER"

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_b
    const/16 v18, 0x0

    .line 201
    .line 202
    const-string v0, "Failed requirement."

    .line 203
    .line 204
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v18

    .line 208
    :cond_c
    move-wide/from16 v19, v3

    .line 209
    .line 210
    const/16 v18, 0x0

    .line 211
    .line 212
    :goto_6
    iget v0, v1, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 213
    .line 214
    if-nez v0, :cond_d

    .line 215
    .line 216
    iget-wide v2, v1, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 217
    .line 218
    cmp-long v0, v2, v19

    .line 219
    .line 220
    if-nez v0, :cond_d

    .line 221
    .line 222
    return-object v18

    .line 223
    :cond_d
    return-object v1
.end method

.method public final readUtf8String()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 16
    .line 17
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    new-instance p0, Ljava/net/ProtocolException;

    .line 27
    .line 28
    const-string v0, "constructed strings not supported for DER"

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final readVariableLengthLong()J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v2, p0, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 4
    .line 5
    invoke-virtual {v2}, Lokio/RealBufferedSource;->readByte()B

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-long v2, v2

    .line 10
    const-wide/16 v4, 0xff

    .line 11
    .line 12
    and-long/2addr v4, v2

    .line 13
    const-wide/16 v6, 0x80

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v6, v8, v6

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    const-wide/16 v4, 0x7f

    .line 22
    .line 23
    and-long/2addr v2, v4

    .line 24
    add-long/2addr v0, v2

    .line 25
    const/4 v2, 0x7

    .line 26
    shl-long/2addr v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-long/2addr v0, v4

    .line 29
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/16 v5, 0x3e

    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerReader;->path:Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string v1, " / "

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
