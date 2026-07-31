.class public abstract Lorg/apache/james/mime4j/codec/DecoderUtil;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final _recyclerRef:Ljava/lang/ThreadLocal;


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
    sput-object v0, Lorg/apache/james/mime4j/codec/DecoderUtil;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public static appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 15
    .line 16
    .line 17
    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-object p2, v2

    .line 20
    :goto_0
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/nio/charset/Charset;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, p2

    .line 34
    :goto_1
    new-instance p2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public static decodeByteAryB(Ljava/lang/String;)[B
    .locals 7

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/codec/Base64InputStream;

    .line 4
    .line 5
    new-instance v2, Lorg/apache/james/mime4j/io/TextInputStream;

    .line 6
    .line 7
    sget-object v3, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-direct {v2, p0, v3}, Lorg/apache/james/mime4j/io/TextInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/apache/james/mime4j/codec/DecoderUtil;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ltz p0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0, v3, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    move v2, v3

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, -0x1

    .line 36
    if-eq v4, v5, :cond_1

    .line 37
    .line 38
    add-int/lit8 v5, v2, 0x1

    .line 39
    .line 40
    array-length v6, p0

    .line 41
    if-le v5, v6, :cond_0

    .line 42
    .line 43
    array-length v6, p0

    .line 44
    shl-int/lit8 v6, v6, 0x1

    .line 45
    .line 46
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v0, v3, v6}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {p0, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 58
    .line 59
    .line 60
    move-object p0, v6

    .line 61
    :cond_0
    int-to-byte v4, v4

    .line 62
    aput-byte v4, p0, v2

    .line 63
    .line 64
    move v2, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-array v4, v2, [B

    .line 67
    .line 68
    if-lez v2, :cond_2

    .line 69
    .line 70
    invoke-static {p0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 77
    .line 78
    .line 79
    return-object v4

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 85
    .line 86
    .line 87
    throw v2

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    const-string v0, "Buffer capacity may not be negative"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/Error;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public static decodeByteAryQ(Ljava/lang/String;)[B
    .locals 7

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/16 v2, 0x80

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/16 v5, 0x5f

    .line 23
    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    const-string v4, "=20"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    .line 43
    .line 44
    new-instance v3, Lorg/apache/james/mime4j/io/TextInputStream;

    .line 45
    .line 46
    sget-object v4, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-direct {v3, p0, v4}, Lorg/apache/james/mime4j/io/TextInputStream;-><init>(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v3, v0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lorg/apache/james/mime4j/codec/DecoderUtil;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-ltz p0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0, v2, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    move v3, v2

    .line 69
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->read()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, -0x1

    .line 74
    if-eq v4, v5, :cond_3

    .line 75
    .line 76
    add-int/lit8 v5, v3, 0x1

    .line 77
    .line 78
    array-length v6, p0

    .line 79
    if-le v5, v6, :cond_2

    .line 80
    .line 81
    array-length v6, p0

    .line 82
    shl-int/lit8 v6, v6, 0x1

    .line 83
    .line 84
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-virtual {v0, v2, v6}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {p0, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 96
    .line 97
    .line 98
    move-object p0, v6

    .line 99
    :cond_2
    int-to-byte v4, v4

    .line 100
    aput-byte v4, p0, v3

    .line 101
    .line 102
    move v3, v5

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-array v4, v3, [B

    .line 105
    .line 106
    if-lez v3, :cond_4

    .line 107
    .line 108
    invoke-static {p0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 115
    .line 116
    .line 117
    return-object v4

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, p0}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 123
    .line 124
    .line 125
    throw v3

    .line 126
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string v0, "Buffer capacity may not be negative"

    .line 129
    .line 130
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    new-instance v0, Ljava/lang/Error;

    .line 136
    .line 137
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, ""

    .line 15
    .line 16
    move-object v4, v3

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ge v2, v5, :cond_12

    .line 22
    .line 23
    const-string v5, "=?"

    .line 24
    .line 25
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gez v5, :cond_1

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto/16 :goto_b

    .line 34
    .line 35
    :cond_0
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v1, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto/16 :goto_a

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v6, v5, 0x2

    .line 48
    .line 49
    const/16 v7, 0x3f

    .line 50
    .line 51
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    add-int/lit8 v9, v8, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->indexOf(II)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    add-int/lit8 v10, v7, 0x1

    .line 62
    .line 63
    const-string v11, "?="

    .line 64
    .line 65
    invoke-virtual {p0, v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-ltz v8, :cond_11

    .line 70
    .line 71
    if-ltz v7, :cond_11

    .line 72
    .line 73
    if-gez v11, :cond_2

    .line 74
    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :cond_2
    if-ne v7, v11, :cond_3

    .line 78
    .line 79
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v11, v11, 0x2

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v1, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :goto_1
    move v2, v11

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-static {v12}, Lokhttp3/Cookie$Companion;->isWhitespace(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    :cond_4
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_6

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_6

    .line 144
    .line 145
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_7

    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_7

    .line 159
    .line 160
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_8

    .line 168
    .line 169
    add-int/lit8 v3, v11, 0x2

    .line 170
    .line 171
    move v4, v3

    .line 172
    move-object v3, v2

    .line 173
    move v2, v4

    .line 174
    move-object v4, v6

    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_8
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 178
    .line 179
    const/4 v4, 0x0

    .line 180
    :try_start_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 181
    .line 182
    .line 183
    move-result-object v8
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_2

    .line 185
    :catch_0
    move-object v8, v4

    .line 186
    :goto_2
    if-nez v8, :cond_9

    .line 187
    .line 188
    move-object v8, v4

    .line 189
    goto :goto_3

    .line 190
    :cond_9
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Ljava/nio/charset/Charset;

    .line 195
    .line 196
    if-eqz v3, :cond_a

    .line 197
    .line 198
    move-object v8, v3

    .line 199
    :cond_a
    :goto_3
    if-nez v8, :cond_b

    .line 200
    .line 201
    const-string v3, "Mime charser \'"

    .line 202
    .line 203
    const-string v8, "\' doesn\'t have a corresponding Java charset"

    .line 204
    .line 205
    filled-new-array {v3, v2, v8}, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v2, v6, v7, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_4
    move-object v3, v4

    .line 213
    goto :goto_7

    .line 214
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_c

    .line 219
    .line 220
    const-string v3, "Missing encoded text in encoded word"

    .line 221
    .line 222
    filled-new-array {v3}, [Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v2, v6, v7, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_c
    :try_start_1
    const-string v3, "Q"

    .line 231
    .line 232
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_d

    .line 237
    .line 238
    invoke-static {v7}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeByteAryQ(Ljava/lang/String;)[B

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    goto :goto_7

    .line 243
    :catch_1
    move-exception v3

    .line 244
    goto :goto_5

    .line 245
    :catch_2
    move-exception v3

    .line 246
    goto :goto_6

    .line 247
    :cond_d
    const-string v3, "B"

    .line 248
    .line 249
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_e

    .line 254
    .line 255
    invoke-static {v7}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeByteAryB(Ljava/lang/String;)[B

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    goto :goto_7

    .line 260
    :cond_e
    const-string v3, "Warning: Unknown encoding in encoded word"

    .line 261
    .line 262
    filled-new-array {v3}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v2, v6, v7, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const-string v8, ") encoded word"

    .line 275
    .line 276
    const-string v9, "Could not decode ("

    .line 277
    .line 278
    filled-new-array {v9, v3, v8}, [Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v2, v6, v7, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    const-string v8, ") in encoded word"

    .line 291
    .line 292
    const-string v9, "Unsupported encoding ("

    .line 293
    .line 294
    filled-new-array {v9, v3, v8}, [Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-static {v2, v6, v7, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto :goto_4

    .line 302
    :goto_7
    if-eqz v3, :cond_f

    .line 303
    .line 304
    array-length v5, v3

    .line 305
    if-lez v5, :cond_10

    .line 306
    .line 307
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :catch_3
    move-exception p0

    .line 312
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    return-object v4

    .line 316
    :cond_f
    add-int/lit8 v3, v11, 0x2

    .line 317
    .line 318
    invoke-virtual {v1, p0, v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    :cond_10
    :goto_8
    add-int/lit8 v11, v11, 0x2

    .line 322
    .line 323
    move-object v3, v2

    .line 324
    move-object v4, v6

    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_11
    :goto_9
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    move v2, v6

    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_12
    :goto_a
    invoke-static {v0, v1, v3}, Lorg/apache/james/mime4j/codec/DecoderUtil;->appendStringBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    :goto_b
    return-object p0
.end method

.method public static getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/DecoderUtil;->_recyclerRef:Ljava/lang/ThreadLocal;

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

.method public static varargs monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 2
    .line 3
    instance-of v0, v0, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const-string v1, "=?"

    .line 8
    .line 9
    const-string v2, "?"

    .line 10
    .line 11
    invoke-static {v1, p0, v2, p1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "?="

    .line 16
    .line 17
    invoke-static {p0, p2, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    array-length p2, p3

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, p2, :cond_0

    .line 29
    .line 30
    aget-object v2, p3, v1

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p2, " ("

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, ")"

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    :goto_1
    return-void
.end method
