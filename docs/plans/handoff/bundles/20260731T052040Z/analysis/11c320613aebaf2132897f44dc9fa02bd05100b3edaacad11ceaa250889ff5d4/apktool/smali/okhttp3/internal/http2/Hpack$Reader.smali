.class public final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public dynamicTable:[Lokhttp3/internal/http2/Header;

.field public dynamicTableByteCount:I

.field public headerCount:I

.field public final headerList:Ljava/util/ArrayList;

.field public headerListByteCount:J

.field public maxDynamicTableByteCount:I

.field public nextHeaderIndex:I

.field public final source:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Lokio/RealBufferedSource;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/RealBufferedSource;

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    .line 25
    .line 26
    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 27
    .line 28
    const/4 p1, 0x7

    .line 29
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final addHeader(Lokhttp3/internal/http2/Header;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokio/ByteString;->getSize$okio()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object p1, p1, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 13
    .line 14
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/2addr p1, v0

    .line 19
    iget-wide v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerListByteCount:J

    .line 20
    .line 21
    int-to-long v2, p1

    .line 22
    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerListByteCount:J

    .line 24
    .line 25
    const-wide/32 p0, 0x40000

    .line 26
    .line 27
    .line 28
    cmp-long p0, v0, p0

    .line 29
    .line 30
    if-gtz p0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string p0, "header byte count limit of 262144 exceeded"

    .line 34
    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final evictToRecoverBytes(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget v2, v2, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 23
    .line 24
    sub-int/2addr p1, v2

    .line 25
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 26
    .line 27
    sub-int/2addr v3, v2

    .line 28
    iput v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 29
    .line 30
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 42
    .line 43
    add-int/lit8 v1, v2, 0x1

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    add-int/2addr v2, v0

    .line 48
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 49
    .line 50
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 54
    .line 55
    add-int/2addr p1, v0

    .line 56
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 57
    .line 58
    :cond_1
    return v0
.end method

.method public final getName(I)Lokio/ByteString;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    if-gt p1, v1, :cond_0

    .line 9
    .line 10
    aget-object p0, v0, p1

    .line 11
    .line 12
    iget-object p0, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    sub-int v0, p1, v0

    .line 19
    .line 20
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    if-ltz v1, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 28
    .line 29
    array-length v0, p0

    .line 30
    if-ge v1, v0, :cond_1

    .line 31
    .line 32
    aget-object p0, p0, v1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Header index too large "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->addHeader(Lokhttp3/internal/http2/Header;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 5
    .line 6
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Lcom/google/common/base/Joiner;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 23
    .line 24
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 25
    .line 26
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 30
    .line 31
    add-int/2addr v3, v0

    .line 32
    sub-int/2addr v3, v1

    .line 33
    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    if-le v1, v4, :cond_1

    .line 44
    .line 45
    array-length v1, v3

    .line 46
    mul-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 49
    .line 50
    array-length v4, v3

    .line 51
    array-length v5, v3

    .line 52
    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 56
    .line 57
    array-length v2, v2

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 61
    .line 62
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 63
    .line 64
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 65
    .line 66
    add-int/lit8 v2, v1, -0x1

    .line 67
    .line 68
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 69
    .line 70
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 71
    .line 72
    aput-object p1, v2, v1

    .line 73
    .line 74
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 75
    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 79
    .line 80
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 81
    .line 82
    add-int/2addr p1, v0

    .line 83
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 84
    .line 85
    return-void
.end method

.method public final readByteString()Lokio/ByteString;
    .locals 11

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/RealBufferedSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readByte()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 8
    .line 9
    and-int/lit16 v2, v1, 0xff

    .line 10
    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    and-int/2addr v1, v3

    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v4

    .line 20
    :goto_0
    const/16 v3, 0x7f

    .line 21
    .line 22
    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-long v2, v2

    .line 27
    iget-wide v5, p0, Lokhttp3/internal/http2/Hpack$Reader;->headerListByteCount:J

    .line 28
    .line 29
    add-long/2addr v5, v2

    .line 30
    const-wide/32 v7, 0x40000

    .line 31
    .line 32
    .line 33
    cmp-long p0, v5, v7

    .line 34
    .line 35
    if-gtz p0, :cond_7

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    new-instance p0, Lokio/Buffer;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lokhttp3/internal/http2/Huffman;->CODES:[I

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v1, Lokhttp3/internal/http2/Huffman;->root:Lokhttp3/internal/http2/Huffman$Node;

    .line 50
    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    move-object v8, v1

    .line 54
    move-wide v6, v5

    .line 55
    move v5, v4

    .line 56
    :goto_1
    cmp-long v9, v6, v2

    .line 57
    .line 58
    if-gez v9, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lokio/RealBufferedSource;->readByte()B

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    sget-object v10, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 65
    .line 66
    and-int/lit16 v9, v9, 0xff

    .line 67
    .line 68
    shl-int/lit8 v4, v4, 0x8

    .line 69
    .line 70
    or-int/2addr v4, v9

    .line 71
    add-int/lit8 v5, v5, 0x8

    .line 72
    .line 73
    :goto_2
    const/16 v9, 0x8

    .line 74
    .line 75
    if-lt v5, v9, :cond_2

    .line 76
    .line 77
    add-int/lit8 v9, v5, -0x8

    .line 78
    .line 79
    ushr-int v9, v4, v9

    .line 80
    .line 81
    and-int/lit16 v9, v9, 0xff

    .line 82
    .line 83
    iget-object v8, v8, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v8, [Lokhttp3/internal/http2/Huffman$Node;

    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    aget-object v8, v8, v9

    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v9, v8, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, [Lokhttp3/internal/http2/Huffman$Node;

    .line 98
    .line 99
    if-nez v9, :cond_1

    .line 100
    .line 101
    iget v9, v8, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 102
    .line 103
    invoke-virtual {p0, v9}, Lokio/Buffer;->writeByte(I)V

    .line 104
    .line 105
    .line 106
    iget v8, v8, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 107
    .line 108
    sub-int/2addr v5, v8

    .line 109
    move-object v8, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_1
    add-int/lit8 v5, v5, -0x8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    const-wide/16 v9, 0x1

    .line 115
    .line 116
    add-long/2addr v6, v9

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    :goto_3
    if-lez v5, :cond_5

    .line 119
    .line 120
    rsub-int/lit8 v0, v5, 0x8

    .line 121
    .line 122
    shl-int v0, v4, v0

    .line 123
    .line 124
    and-int/lit16 v0, v0, 0xff

    .line 125
    .line 126
    iget-object v2, v8, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v2, [Lokhttp3/internal/http2/Huffman$Node;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    aget-object v0, v2, v0

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget v2, v0, Lokhttp3/internal/http2/Huffman$Node;->terminalBitCount:I

    .line 139
    .line 140
    iget-object v3, v0, Lokhttp3/internal/http2/Huffman$Node;->children:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v3, [Lokhttp3/internal/http2/Huffman$Node;

    .line 143
    .line 144
    if-nez v3, :cond_5

    .line 145
    .line 146
    if-le v2, v5, :cond_4

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_4
    iget v0, v0, Lokhttp3/internal/http2/Huffman$Node;->symbol:I

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)V

    .line 152
    .line 153
    .line 154
    sub-int/2addr v5, v2

    .line 155
    move-object v8, v1

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    :goto_4
    iget-wide v0, p0, Lokio/Buffer;->size:J

    .line 158
    .line 159
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :cond_6
    invoke-virtual {v0, v2, v3}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_7
    const-string p0, "header byte count limit of 262144 exceeded"

    .line 170
    .line 171
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 p0, 0x0

    .line 175
    return-object p0
.end method

.method public final readInt(II)I
    .locals 9

    .line 1
    and-int/2addr p1, p2

    .line 2
    if-ge p1, p2, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    int-to-long p1, p2

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x5

    .line 10
    const-string v4, "HPACK integer overflow"

    .line 11
    .line 12
    if-eq v1, v3, :cond_3

    .line 13
    .line 14
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->source:Lokio/RealBufferedSource;

    .line 15
    .line 16
    invoke-virtual {v3}, Lokio/RealBufferedSource;->readByte()B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sget-object v5, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    and-int/lit8 v5, v3, 0x7f

    .line 25
    .line 26
    int-to-long v5, v5

    .line 27
    shl-long/2addr v5, v2

    .line 28
    const-wide/32 v7, 0x7fffffff

    .line 29
    .line 30
    .line 31
    sub-long/2addr v7, p1

    .line 32
    cmp-long v7, v5, v7

    .line 33
    .line 34
    if-gtz v7, :cond_2

    .line 35
    .line 36
    add-long/2addr p1, v5

    .line 37
    and-int/lit16 v3, v3, 0x80

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x7

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    long-to-int p0, p1

    .line 45
    return p0

    .line 46
    :cond_2
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v0

    .line 50
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v0
.end method
