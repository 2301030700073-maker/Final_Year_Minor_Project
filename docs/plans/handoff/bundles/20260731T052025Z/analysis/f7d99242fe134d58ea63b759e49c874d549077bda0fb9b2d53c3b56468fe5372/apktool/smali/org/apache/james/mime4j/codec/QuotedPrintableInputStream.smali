.class public Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field public static final _recyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field public final blanks:Lde/cketti/changelog/XmlParser;

.field public closed:Z

.field public final decodedBuf:Lde/cketti/changelog/XmlParser;

.field public final encoded:[B

.field public final in:Ljava/io/InputStream;

.field public lastWasCR:Z

.field public limit:I

.field public final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field public pos:I

.field public final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 51
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    new-array v0, p3, [B

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->singleByte:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-static {}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v1, 0x800

    .line 23
    .line 24
    invoke-virtual {p1, p3, v1}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    .line 29
    .line 30
    new-instance p3, Lde/cketti/changelog/XmlParser;

    .line 31
    .line 32
    const/16 v1, 0x200

    .line 33
    .line 34
    invoke-direct {p3, p1, v1}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/apache/james/mime4j/util/BufferRecycler;I)V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 38
    .line 39
    new-instance p3, Lde/cketti/changelog/XmlParser;

    .line 40
    .line 41
    invoke-direct {p3, p1, v1}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/apache/james/mime4j/util/BufferRecycler;I)V

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lde/cketti/changelog/XmlParser;

    .line 45
    .line 46
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 47
    .line 48
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 49
    .line 50
    return-void
.end method

.method public static convert(I)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-lt p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x46

    .line 16
    .line 17
    if-gt p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-lt p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public static getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 18
    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/apache/james/mime4j/util/BufferRecycler;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 3
    .line 4
    invoke-static {}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 14
    .line 15
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 18
    .line 19
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, [B

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lde/cketti/changelog/XmlParser;

    .line 28
    .line 29
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 32
    .line 33
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, [B

    .line 36
    .line 37
    invoke-virtual {v0, v2, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final peek(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    .line 9
    .line 10
    aget-byte p0, p0, v0

    .line 11
    .line 12
    and-int/lit16 p0, p0, 0xff

    .line 13
    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public final read()I
    .locals 5

    .line 505
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    if-nez v0, :cond_2

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    if-ne v3, v2, :cond_0

    .line 507
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 508
    :cond_2
    const-string p0, "Stream has been closed"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([BII)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p2

    .line 4
    .line 5
    iget-boolean v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    if-nez v1, :cond_23

    .line 9
    .line 10
    add-int v4, v6, p3

    .line 11
    .line 12
    iget-object v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 13
    .line 14
    iget v2, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    sub-int v3, v4, v6

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, v1, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, [B

    .line 27
    .line 28
    move-object/from16 v5, p1

    .line 29
    .line 30
    invoke-static {v3, v7, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lde/cketti/changelog/XmlParser;->remove(I)V

    .line 34
    .line 35
    .line 36
    add-int v1, v6, v2

    .line 37
    .line 38
    :goto_0
    move v2, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move-object/from16 v5, p1

    .line 41
    .line 42
    move v1, v6

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    if-ge v1, v4, :cond_22

    .line 45
    .line 46
    iget v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 47
    .line 48
    iget v8, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 49
    .line 50
    sub-int v9, v3, v8

    .line 51
    .line 52
    const/4 v10, 0x3

    .line 53
    const/4 v11, 0x1

    .line 54
    iget-object v12, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->encoded:[B

    .line 55
    .line 56
    const/4 v13, -0x1

    .line 57
    if-ge v9, v10, :cond_5

    .line 58
    .line 59
    if-ge v8, v3, :cond_1

    .line 60
    .line 61
    invoke-static {v12, v8, v12, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    iget v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 65
    .line 66
    iget v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 67
    .line 68
    sub-int/2addr v2, v3

    .line 69
    iput v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 70
    .line 71
    iput v7, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 75
    .line 76
    iput v7, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 77
    .line 78
    :goto_2
    array-length v2, v12

    .line 79
    iget v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 80
    .line 81
    sub-int/2addr v2, v3

    .line 82
    if-lez v2, :cond_2

    .line 83
    .line 84
    iget-object v8, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    .line 85
    .line 86
    invoke-virtual {v8, v12, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-lez v2, :cond_3

    .line 91
    .line 92
    iget v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 93
    .line 94
    add-int/2addr v3, v2

    .line 95
    iput v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    move v2, v7

    .line 99
    :cond_3
    :goto_3
    if-ne v2, v13, :cond_4

    .line 100
    .line 101
    move v2, v11

    .line 102
    goto :goto_4

    .line 103
    :cond_4
    move v2, v7

    .line 104
    :cond_5
    :goto_4
    move v8, v2

    .line 105
    iget v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 106
    .line 107
    iget v3, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 108
    .line 109
    sub-int/2addr v2, v3

    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    if-eqz v8, :cond_7

    .line 113
    .line 114
    if-ne v1, v6, :cond_6

    .line 115
    .line 116
    return v13

    .line 117
    :cond_6
    sub-int/2addr v1, v6

    .line 118
    return v1

    .line 119
    :cond_7
    move v3, v1

    .line 120
    :goto_5
    iget v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 121
    .line 122
    iget v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 123
    .line 124
    if-ge v1, v2, :cond_21

    .line 125
    .line 126
    if-ge v3, v4, :cond_21

    .line 127
    .line 128
    add-int/lit8 v2, v1, 0x1

    .line 129
    .line 130
    iput v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 131
    .line 132
    aget-byte v1, v12, v1

    .line 133
    .line 134
    and-int/lit16 v9, v1, 0xff

    .line 135
    .line 136
    iget-boolean v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 137
    .line 138
    iget-object v10, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 139
    .line 140
    const/16 v14, 0xa

    .line 141
    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    if-eq v9, v14, :cond_9

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    instance-of v1, v10, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 150
    .line 151
    if-nez v1, :cond_8

    .line 152
    .line 153
    const/16 v1, 0xd

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    move-object/from16 v2, p1

    .line 157
    .line 158
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    move v3, v1

    .line 163
    goto :goto_6

    .line 164
    :cond_8
    const-string v0, "Found CR without LF"

    .line 165
    .line 166
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return v7

    .line 170
    :cond_9
    if-nez v1, :cond_b

    .line 171
    .line 172
    if-ne v9, v14, :cond_b

    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    instance-of v1, v10, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 178
    .line 179
    if-nez v1, :cond_a

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_a
    const-string v0, "Found LF without CR"

    .line 183
    .line 184
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return v7

    .line 188
    :cond_b
    :goto_6
    const/16 v15, 0xd

    .line 189
    .line 190
    if-ne v9, v15, :cond_c

    .line 191
    .line 192
    iput-boolean v11, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 193
    .line 194
    :goto_7
    move-object/from16 v5, p1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_c
    iput-boolean v7, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 198
    .line 199
    const/16 v1, 0x3d

    .line 200
    .line 201
    iget-object v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lde/cketti/changelog/XmlParser;

    .line 202
    .line 203
    if-ne v9, v14, :cond_f

    .line 204
    .line 205
    iget v5, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 206
    .line 207
    if-nez v5, :cond_d

    .line 208
    .line 209
    const/16 v1, 0xd

    .line 210
    .line 211
    const/4 v5, 0x0

    .line 212
    move-object v9, v2

    .line 213
    move-object/from16 v2, p1

    .line 214
    .line 215
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    const/16 v1, 0xa

    .line 220
    .line 221
    move-object/from16 v0, p0

    .line 222
    .line 223
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    goto :goto_8

    .line 228
    :cond_d
    move-object v9, v2

    .line 229
    invoke-virtual {v9, v7}, Lde/cketti/changelog/XmlParser;->byteAt(I)B

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eq v0, v1, :cond_e

    .line 234
    .line 235
    const/16 v1, 0xd

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    move-object/from16 v0, p0

    .line 239
    .line 240
    move-object/from16 v2, p1

    .line 241
    .line 242
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    const/16 v1, 0xa

    .line 247
    .line 248
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    goto :goto_8

    .line 253
    :cond_e
    move-object/from16 v0, p0

    .line 254
    .line 255
    :goto_8
    iput v7, v9, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 256
    .line 257
    goto/16 :goto_f

    .line 258
    .line 259
    :cond_f
    if-ne v9, v1, :cond_1e

    .line 260
    .line 261
    iget v5, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 262
    .line 263
    iget v13, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 264
    .line 265
    sub-int v15, v5, v13

    .line 266
    .line 267
    const/4 v14, 0x2

    .line 268
    if-ge v15, v14, :cond_10

    .line 269
    .line 270
    if-nez v8, :cond_10

    .line 271
    .line 272
    add-int/lit8 v13, v13, -0x1

    .line 273
    .line 274
    iput v13, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 275
    .line 276
    :goto_9
    move-object/from16 v5, p1

    .line 277
    .line 278
    move v1, v3

    .line 279
    move v2, v8

    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_10
    if-ge v13, v5, :cond_11

    .line 283
    .line 284
    aget-byte v5, v12, v13

    .line 285
    .line 286
    add-int/lit8 v13, v13, 0x1

    .line 287
    .line 288
    iput v13, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 289
    .line 290
    and-int/lit16 v5, v5, 0xff

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_11
    const/4 v5, -0x1

    .line 294
    :goto_a
    if-ne v5, v1, :cond_14

    .line 295
    .line 296
    move v1, v5

    .line 297
    const/4 v5, 0x1

    .line 298
    move-object v13, v2

    .line 299
    move-object/from16 v2, p1

    .line 300
    .line 301
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    move v14, v1

    .line 306
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-virtual {v0, v11}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    const/16 v5, 0xa

    .line 315
    .line 316
    if-eq v1, v5, :cond_13

    .line 317
    .line 318
    const/16 v9, 0xd

    .line 319
    .line 320
    if-ne v1, v9, :cond_12

    .line 321
    .line 322
    if-ne v2, v5, :cond_12

    .line 323
    .line 324
    goto :goto_b

    .line 325
    :cond_12
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_f

    .line 329
    .line 330
    :cond_13
    :goto_b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13, v14}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_f

    .line 337
    .line 338
    :cond_14
    move-object v13, v2

    .line 339
    move v14, v5

    .line 340
    int-to-char v1, v14

    .line 341
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_1a

    .line 346
    .line 347
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->peek(I)I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    const/16 v2, 0xd

    .line 352
    .line 353
    const/16 v15, 0xa

    .line 354
    .line 355
    if-ne v14, v2, :cond_15

    .line 356
    .line 357
    if-eq v1, v15, :cond_16

    .line 358
    .line 359
    :cond_15
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    instance-of v5, v10, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 363
    .line 364
    if-nez v5, :cond_19

    .line 365
    .line 366
    :cond_16
    if-ne v1, v15, :cond_18

    .line 367
    .line 368
    if-ne v14, v2, :cond_17

    .line 369
    .line 370
    move v1, v11

    .line 371
    goto :goto_c

    .line 372
    :cond_17
    move v1, v7

    .line 373
    :goto_c
    iput-boolean v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->lastWasCR:Z

    .line 374
    .line 375
    :cond_18
    const/4 v1, -0x1

    .line 376
    const/4 v5, 0x1

    .line 377
    move-object/from16 v2, p1

    .line 378
    .line 379
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eq v14, v15, :cond_20

    .line 384
    .line 385
    invoke-virtual {v13, v9}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v13, v14}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_f

    .line 392
    .line 393
    :cond_19
    const-string v0, "Non-standard soft line break"

    .line 394
    .line 395
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return v7

    .line 399
    :cond_1a
    iget v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 400
    .line 401
    iget v2, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->limit:I

    .line 402
    .line 403
    if-ge v1, v2, :cond_1b

    .line 404
    .line 405
    aget-byte v2, v12, v1

    .line 406
    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    .line 409
    iput v1, v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pos:I

    .line 410
    .line 411
    and-int/lit16 v1, v2, 0xff

    .line 412
    .line 413
    move v9, v1

    .line 414
    goto :goto_d

    .line 415
    :cond_1b
    const/4 v9, -0x1

    .line 416
    :goto_d
    invoke-static {v14}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->convert(I)I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-static {v9}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->convert(I)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-ltz v1, :cond_1d

    .line 425
    .line 426
    if-gez v2, :cond_1c

    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_1c
    shl-int/lit8 v1, v1, 0x4

    .line 430
    .line 431
    or-int/2addr v1, v2

    .line 432
    const/4 v5, 0x1

    .line 433
    move-object/from16 v2, p1

    .line 434
    .line 435
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    goto :goto_f

    .line 440
    :cond_1d
    :goto_e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    const/16 v1, 0x3d

    .line 444
    .line 445
    const/4 v5, 0x1

    .line 446
    move-object/from16 v0, p0

    .line 447
    .line 448
    move-object/from16 v2, p1

    .line 449
    .line 450
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    const/4 v5, 0x0

    .line 455
    move v1, v14

    .line 456
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    move v1, v9

    .line 461
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    goto :goto_f

    .line 466
    :cond_1e
    move-object v13, v2

    .line 467
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_1f

    .line 472
    .line 473
    invoke-virtual {v13, v9}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 474
    .line 475
    .line 476
    goto :goto_f

    .line 477
    :cond_1f
    const/4 v5, 0x1

    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move-object/from16 v2, p1

    .line 481
    .line 482
    move v1, v9

    .line 483
    invoke-virtual/range {v0 .. v5}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->transfer(I[BIIZ)I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    move v3, v1

    .line 488
    :cond_20
    :goto_f
    const/4 v13, -0x1

    .line 489
    move-object/from16 v0, p0

    .line 490
    .line 491
    goto/16 :goto_7

    .line 492
    .line 493
    :cond_21
    move-object/from16 v0, p0

    .line 494
    .line 495
    goto/16 :goto_9

    .line 496
    .line 497
    :cond_22
    sub-int/2addr v4, v6

    .line 498
    return v4

    .line 499
    :cond_23
    const-string v0, "Stream has been closed"

    .line 500
    .line 501
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    return v7
.end method

.method public final transfer(I[BIIZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->blanks:Lde/cketti/changelog/XmlParser;

    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    iget v3, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 9
    .line 10
    if-lez v3, :cond_1

    .line 11
    .line 12
    sub-int p0, p4, p3

    .line 13
    .line 14
    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget-object p5, v2, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p5, [B

    .line 21
    .line 22
    invoke-static {p5, v1, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    add-int/2addr p3, p0

    .line 26
    iget p5, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 27
    .line 28
    sub-int/2addr p5, p0

    .line 29
    if-lez p5, :cond_0

    .line 30
    .line 31
    iget-object v3, v2, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, [B

    .line 34
    .line 35
    invoke-virtual {v0, v3, p0, p5}, Lde/cketti/changelog/XmlParser;->append([BII)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput v1, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget v3, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 42
    .line 43
    if-lez v3, :cond_4

    .line 44
    .line 45
    if-nez p5, :cond_4

    .line 46
    .line 47
    new-instance p5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    mul-int/lit8 v3, v3, 0x3

    .line 50
    .line 51
    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .line 53
    .line 54
    move p5, v1

    .line 55
    :goto_0
    iget v3, v2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 56
    .line 57
    if-ge p5, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, p5}, Lde/cketti/changelog/XmlParser;->byteAt(I)B

    .line 60
    .line 61
    .line 62
    add-int/lit8 p5, p5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object p0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    instance-of p0, p0, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 71
    .line 72
    if-nez p0, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string p0, "ignored blanks"

    .line 76
    .line 77
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :cond_4
    :goto_1
    const/4 p0, -0x1

    .line 82
    if-eq p1, p0, :cond_6

    .line 83
    .line 84
    if-ge p3, p4, :cond_5

    .line 85
    .line 86
    add-int/lit8 p0, p3, 0x1

    .line 87
    .line 88
    int-to-byte p1, p1

    .line 89
    aput-byte p1, p2, p3

    .line 90
    .line 91
    return p0

    .line 92
    :cond_5
    invoke-virtual {v0, p1}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    return p3
.end method

.method public synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
