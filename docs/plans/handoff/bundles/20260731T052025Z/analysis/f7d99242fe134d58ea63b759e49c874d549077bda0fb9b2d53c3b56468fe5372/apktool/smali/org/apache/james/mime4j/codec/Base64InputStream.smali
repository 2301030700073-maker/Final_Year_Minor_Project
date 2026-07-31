.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# static fields
.field public static final BASE64_DECODE:[I

.field public static final _recyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field public closed:Z

.field public final decodedBuf:Lde/cketti/changelog/XmlParser;

.field public final encoded:[B

.field public eof:Z

.field public final in:Ljava/io/InputStream;

.field public final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field public position:I

.field public final singleByte:[B

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    const/16 v0, 0x100

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    sget-object v3, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    aput v4, v3, v2

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    .line 27
    .line 28
    const/16 v2, 0x40

    .line 29
    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 33
    .line 34
    aget-byte v0, v0, v1

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    aput v1, v2, v0

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 53
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

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
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lorg/apache/james/mime4j/codec/Base64InputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/16 v1, 0x600

    .line 23
    .line 24
    invoke-virtual {v0, p3, v1}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 29
    .line 30
    new-instance p3, Lde/cketti/changelog/XmlParser;

    .line 31
    .line 32
    invoke-static {}, Lorg/apache/james/mime4j/codec/Base64InputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x200

    .line 37
    .line 38
    invoke-direct {p3, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(Lorg/apache/james/mime4j/util/BufferRecycler;I)V

    .line 39
    .line 40
    .line 41
    iput-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 44
    .line 45
    iput-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public static getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->_recyclerRef:Ljava/lang/ThreadLocal;

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
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 8
    .line 9
    invoke-static {}, Lorg/apache/james/mime4j/codec/Base64InputStream;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 14
    .line 15
    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 19
    .line 20
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 23
    .line 24
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, [B

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final read()I
    .locals 5

    .line 43
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-nez v0, :cond_2

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    if-ne v3, v2, :cond_0

    .line 45
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 46
    :cond_2
    const-string p0, "Stream has been closed"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final read([B)I
    .locals 2

    .line 38
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    array-length v0, p1

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result p0

    return p0

    .line 42
    :cond_1
    const-string p0, "Stream has been closed"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    return v1
.end method

.method public final read([BII)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    if-ltz p3, :cond_1

    .line 12
    .line 13
    add-int v0, p2, p3

    .line 14
    .line 15
    array-length v2, p1

    .line 16
    if-gt v0, v2, :cond_1

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_2
    const-string p0, "Stream has been closed"

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1
.end method

.method public final read0([BII)I
    .locals 12

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodedBuf:Lde/cketti/changelog/XmlParser;

    .line 4
    .line 5
    iget v2, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    iget-object v2, v1, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, [B

    .line 17
    .line 18
    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Lde/cketti/changelog/XmlParser;->remove(I)V

    .line 22
    .line 23
    .line 24
    add-int/2addr p3, p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p3, p2

    .line 27
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-ne p3, p2, :cond_1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    sub-int/2addr p3, p2

    .line 36
    return p3

    .line 37
    :cond_2
    move v2, v3

    .line 38
    move v5, v2

    .line 39
    :cond_3
    if-ge p3, v0, :cond_16

    .line 40
    .line 41
    :cond_4
    :goto_1
    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 42
    .line 43
    iget v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 44
    .line 45
    iget-object v8, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 46
    .line 47
    iget-object v9, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 48
    .line 49
    const/4 v10, 0x1

    .line 50
    if-ne v6, v7, :cond_9

    .line 51
    .line 52
    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 53
    .line 54
    array-length v7, v8

    .line 55
    invoke-virtual {v6, v8, v3, v7}, Ljava/io/InputStream;->read([BII)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ne v6, v4, :cond_8

    .line 60
    .line 61
    iput-boolean v10, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    instance-of p0, v9, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 69
    .line 70
    if-nez p0, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const-string p0, "Unexpected end of BASE64 stream"

    .line 74
    .line 75
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v3

    .line 79
    :cond_6
    :goto_2
    if-ne p3, p2, :cond_7

    .line 80
    .line 81
    :goto_3
    return v4

    .line 82
    :cond_7
    sub-int/2addr p3, p2

    .line 83
    return p3

    .line 84
    :cond_8
    if-lez v6, :cond_4

    .line 85
    .line 86
    iput v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 87
    .line 88
    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_9
    :goto_4
    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 92
    .line 93
    iget v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 94
    .line 95
    if-ge v6, v7, :cond_3

    .line 96
    .line 97
    if-ge p3, v0, :cond_3

    .line 98
    .line 99
    add-int/lit8 v7, v6, 0x1

    .line 100
    .line 101
    iput v7, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 102
    .line 103
    aget-byte v6, v8, v6

    .line 104
    .line 105
    and-int/lit16 v6, v6, 0xff

    .line 106
    .line 107
    const/16 v7, 0x3d

    .line 108
    .line 109
    const/4 v11, 0x4

    .line 110
    if-ne v6, v7, :cond_10

    .line 111
    .line 112
    iput-boolean v10, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    .line 113
    .line 114
    const/4 p0, 0x2

    .line 115
    if-ne v2, p0, :cond_b

    .line 116
    .line 117
    ushr-int/lit8 p0, v5, 0x4

    .line 118
    .line 119
    int-to-byte p0, p0

    .line 120
    if-ge p3, v0, :cond_a

    .line 121
    .line 122
    add-int/lit8 v0, p3, 0x1

    .line 123
    .line 124
    aput-byte p0, p1, p3

    .line 125
    .line 126
    :goto_5
    move p3, v0

    .line 127
    goto :goto_6

    .line 128
    :cond_a
    invoke-virtual {v1, p0}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_b
    const/4 v4, 0x3

    .line 133
    if-ne v2, v4, :cond_e

    .line 134
    .line 135
    ushr-int/lit8 v2, v5, 0xa

    .line 136
    .line 137
    int-to-byte v2, v2

    .line 138
    ushr-int/lit8 p0, v5, 0x2

    .line 139
    .line 140
    and-int/lit16 p0, p0, 0xff

    .line 141
    .line 142
    int-to-byte p0, p0

    .line 143
    add-int/lit8 v3, v0, -0x1

    .line 144
    .line 145
    if-ge p3, v3, :cond_c

    .line 146
    .line 147
    add-int/lit8 v0, p3, 0x1

    .line 148
    .line 149
    aput-byte v2, p1, p3

    .line 150
    .line 151
    add-int/lit8 p3, p3, 0x2

    .line 152
    .line 153
    aput-byte p0, p1, v0

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_c
    if-ge p3, v0, :cond_d

    .line 157
    .line 158
    add-int/lit8 v0, p3, 0x1

    .line 159
    .line 160
    aput-byte v2, p1, p3

    .line 161
    .line 162
    invoke-virtual {v1, p0}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_d
    invoke-virtual {v1, v2}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p0}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_e
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    instance-of p0, v9, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 177
    .line 178
    if-nez p0, :cond_f

    .line 179
    .line 180
    :goto_6
    sub-int/2addr p3, p2

    .line 181
    return p3

    .line 182
    :cond_f
    const-string p0, "Unexpected padding character"

    .line 183
    .line 184
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return v3

    .line 188
    :cond_10
    sget-object v7, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    .line 189
    .line 190
    aget v7, v7, v6

    .line 191
    .line 192
    if-gez v7, :cond_12

    .line 193
    .line 194
    const/16 v7, 0xd

    .line 195
    .line 196
    if-eq v6, v7, :cond_9

    .line 197
    .line 198
    const/16 v7, 0xa

    .line 199
    .line 200
    if-eq v6, v7, :cond_9

    .line 201
    .line 202
    const/16 v7, 0x20

    .line 203
    .line 204
    if-eq v6, v7, :cond_9

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    instance-of v6, v9, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 210
    .line 211
    if-nez v6, :cond_11

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_11
    const-string p0, "Unexpected base64 byte"

    .line 215
    .line 216
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$4(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return v3

    .line 220
    :cond_12
    shl-int/lit8 v5, v5, 0x6

    .line 221
    .line 222
    or-int/2addr v5, v7

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 224
    .line 225
    if-ne v2, v11, :cond_9

    .line 226
    .line 227
    ushr-int/lit8 v2, v5, 0x10

    .line 228
    .line 229
    int-to-byte v2, v2

    .line 230
    ushr-int/lit8 v6, v5, 0x8

    .line 231
    .line 232
    int-to-byte v6, v6

    .line 233
    int-to-byte v7, v5

    .line 234
    add-int/lit8 v11, v0, -0x2

    .line 235
    .line 236
    if-ge p3, v11, :cond_13

    .line 237
    .line 238
    add-int/lit8 v11, p3, 0x1

    .line 239
    .line 240
    aput-byte v2, p1, p3

    .line 241
    .line 242
    add-int/lit8 v2, p3, 0x2

    .line 243
    .line 244
    aput-byte v6, p1, v11

    .line 245
    .line 246
    add-int/lit8 p3, p3, 0x3

    .line 247
    .line 248
    aput-byte v7, p1, v2

    .line 249
    .line 250
    move v2, v3

    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_13
    add-int/lit8 p0, v0, -0x1

    .line 254
    .line 255
    if-ge p3, p0, :cond_14

    .line 256
    .line 257
    add-int/lit8 p0, p3, 0x1

    .line 258
    .line 259
    aput-byte v2, p1, p3

    .line 260
    .line 261
    aput-byte v6, p1, p0

    .line 262
    .line 263
    invoke-virtual {v1, v7}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_14
    if-ge p3, v0, :cond_15

    .line 268
    .line 269
    aput-byte v2, p1, p3

    .line 270
    .line 271
    invoke-virtual {v1, v6}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v7}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_15
    invoke-virtual {v1, v2}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v6}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v7}, Lde/cketti/changelog/XmlParser;->append(I)V

    .line 285
    .line 286
    .line 287
    :goto_7
    sub-int/2addr v0, p2

    .line 288
    return v0

    .line 289
    :cond_16
    sub-int/2addr v0, p2

    .line 290
    return v0
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
