.class public final Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
.super Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final HEX_CHARS:[C


# instance fields
.field public _entityBuffer:[C

.field public _outputBuffer:[C

.field public final _outputEnd:I

.field public _outputHead:I

.field public _outputTail:I

.field public final _quoteChar:C

.field public final _writer:Landroidx/fragment/app/LogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 2
    .line 3
    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [C

    .line 8
    .line 9
    sput-object v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcoil3/ImageLoader$Builder;ILandroidx/fragment/app/LogWriter;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;-><init>(Lcoil3/ImageLoader$Builder;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 5
    .line 6
    iget-object p2, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, [C

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    if-nez p2, :cond_3

    .line 12
    .line 13
    iget-object p2, p1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 16
    .line 17
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    aget v0, v0, v1

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object p2, p2, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 27
    .line 28
    invoke-virtual {p2, v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, [C

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    array-length p3, p2

    .line 37
    if-ge p3, v0, :cond_2

    .line 38
    .line 39
    :cond_1
    new-array p2, v0, [C

    .line 40
    .line 41
    :cond_2
    iput-object p2, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 44
    .line 45
    array-length p1, p2

    .line 46
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 47
    .line 48
    const/16 p1, 0x22

    .line 49
    .line 50
    iput-char p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    const-string p0, "Trying to call same allocXxx() method second time"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p3
.end method

.method public static _readMore(Lokio/Buffer$inputStream$1;[BIII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge p2, p3, :cond_0

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    add-int/lit8 v2, p2, 0x1

    .line 7
    .line 8
    aget-byte p2, p1, p2

    .line 9
    .line 10
    aput-byte p2, p1, v0

    .line 11
    .line 12
    move v0, v1

    .line 13
    move p2, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    array-length p2, p1

    .line 16
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_1
    sub-int p3, p2, v0

    .line 21
    .line 22
    if-nez p3, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lokio/Buffer$inputStream$1;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-gez p3, :cond_3

    .line 30
    .line 31
    :goto_1
    return v0

    .line 32
    :cond_3
    add-int/2addr v0, p3

    .line 33
    const/4 p3, 0x3

    .line 34
    if-lt v0, p3, :cond_1

    .line 35
    .line 36
    return v0
.end method


# virtual methods
.method public final _allocateEntityBuffer()[C
    .locals 5

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x5c

    .line 7
    .line 8
    aput-char v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    aput-char v2, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    const/16 v3, 0x75

    .line 15
    .line 16
    aput-char v3, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    const/16 v4, 0x30

    .line 20
    .line 21
    aput-char v4, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    aput-char v4, v0, v1

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    aput-char v2, v0, v1

    .line 29
    .line 30
    const/16 v1, 0x9

    .line 31
    .line 32
    aput-char v3, v0, v1

    .line 33
    .line 34
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 35
    .line 36
    return-object v0
.end method

.method public final _appendCharacterEscape(CI)V
    .locals 6

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 4
    .line 5
    if-ltz p2, :cond_1

    .line 6
    .line 7
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-le p1, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 17
    .line 18
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 19
    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 21
    .line 22
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 23
    .line 24
    aput-char v0, p1, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 29
    .line 30
    int-to-char p0, p2

    .line 31
    aput-char p0, p1, v2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v2, -0x2

    .line 35
    if-eq p2, v2, :cond_4

    .line 36
    .line 37
    iget p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 38
    .line 39
    add-int/lit8 p2, p2, 0x5

    .line 40
    .line 41
    if-lt p2, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 49
    .line 50
    add-int/lit8 v2, p2, 0x1

    .line 51
    .line 52
    aput-char v0, v1, p2

    .line 53
    .line 54
    add-int/lit8 v0, p2, 0x2

    .line 55
    .line 56
    const/16 v3, 0x75

    .line 57
    .line 58
    aput-char v3, v1, v2

    .line 59
    .line 60
    sget-object v2, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    .line 61
    .line 62
    const/16 v3, 0xff

    .line 63
    .line 64
    if-le p1, v3, :cond_3

    .line 65
    .line 66
    shr-int/lit8 v3, p1, 0x8

    .line 67
    .line 68
    and-int/lit16 v4, v3, 0xff

    .line 69
    .line 70
    add-int/lit8 v5, p2, 0x3

    .line 71
    .line 72
    shr-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    aget-char v4, v2, v4

    .line 75
    .line 76
    aput-char v4, v1, v0

    .line 77
    .line 78
    add-int/lit8 p2, p2, 0x4

    .line 79
    .line 80
    and-int/lit8 v0, v3, 0xf

    .line 81
    .line 82
    aget-char v0, v2, v0

    .line 83
    .line 84
    aput-char v0, v1, v5

    .line 85
    .line 86
    and-int/lit16 p1, p1, 0xff

    .line 87
    .line 88
    int-to-char p1, p1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v3, p2, 0x3

    .line 91
    .line 92
    const/16 v4, 0x30

    .line 93
    .line 94
    aput-char v4, v1, v0

    .line 95
    .line 96
    add-int/lit8 p2, p2, 0x4

    .line 97
    .line 98
    aput-char v4, v1, v3

    .line 99
    .line 100
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 101
    .line 102
    shr-int/lit8 v3, p1, 0x4

    .line 103
    .line 104
    aget-char v3, v2, v3

    .line 105
    .line 106
    aput-char v3, v1, p2

    .line 107
    .line 108
    add-int/lit8 p2, p2, 0x2

    .line 109
    .line 110
    and-int/lit8 p1, p1, 0xf

    .line 111
    .line 112
    aget-char p1, v2, p1

    .line 113
    .line 114
    aput-char p1, v1, v0

    .line 115
    .line 116
    iput p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    const/4 p0, 0x0

    .line 120
    throw p0
.end method

.method public final _flushBuffer()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 10
    .line 11
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 16
    .line 17
    invoke-virtual {v2, p0, v1, v0}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final _prependOrWriteCharacterEscape([CIICI)I
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0x5c

    .line 201
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    if-ltz p5, :cond_2

    const/4 p4, 0x1

    if-le p2, p4, :cond_0

    if-ge p2, p3, :cond_0

    add-int/lit8 p0, p2, -0x2

    .line 202
    aput-char v1, p1, p0

    add-int/lit8 p2, p2, -0x1

    int-to-char p3, p5

    .line 203
    aput-char p3, p1, p2

    return p0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    if-nez p1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object p1

    :cond_1
    int-to-char p0, p5

    .line 206
    aput-char p0, p1, p4

    const/4 p0, 0x0

    .line 207
    invoke-virtual {v2, p1, p0, v0}, Landroidx/fragment/app/LogWriter;->write([CII)V

    return p2

    :cond_2
    const/4 v3, -0x2

    if-eq p5, v3, :cond_7

    const/4 p5, 0x5

    .line 208
    sget-object v4, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    const/16 v5, 0xff

    if-le p2, p5, :cond_4

    if-ge p2, p3, :cond_4

    add-int/lit8 p0, p2, -0x6

    add-int/lit8 p3, p2, -0x5

    .line 209
    aput-char v1, p1, p0

    add-int/lit8 p0, p2, -0x4

    const/16 p5, 0x75

    .line 210
    aput-char p5, p1, p3

    if-le p4, v5, :cond_3

    shr-int/lit8 p3, p4, 0x8

    and-int/lit16 p5, p3, 0xff

    add-int/lit8 v0, p2, -0x3

    shr-int/lit8 p5, p5, 0x4

    .line 211
    aget-char p5, v4, p5

    aput-char p5, p1, p0

    add-int/2addr p2, v3

    and-int/lit8 p0, p3, 0xf

    .line 212
    aget-char p0, v4, p0

    aput-char p0, p1, v0

    and-int/lit16 p0, p4, 0xff

    int-to-char p4, p0

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p2, -0x3

    const/16 p5, 0x30

    .line 213
    aput-char p5, p1, p0

    add-int/2addr p2, v3

    .line 214
    aput-char p5, p1, p3

    :goto_0
    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 p3, p4, 0x4

    .line 215
    aget-char p3, v4, p3

    aput-char p3, p1, p2

    and-int/lit8 p3, p4, 0xf

    .line 216
    aget-char p3, v4, p3

    aput-char p3, p1, p0

    add-int/lit8 p2, p2, -0x4

    return p2

    .line 217
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    if-nez p1, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    move-result-object p1

    .line 219
    :cond_5
    iget p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iput p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    const/4 p0, 0x6

    if-le p4, v5, :cond_6

    shr-int/lit8 p3, p4, 0x8

    and-int/lit16 p5, p3, 0xff

    and-int/lit16 v0, p4, 0xff

    shr-int/lit8 p5, p5, 0x4

    .line 220
    aget-char p5, v4, p5

    const/16 v1, 0xa

    aput-char p5, p1, v1

    and-int/lit8 p3, p3, 0xf

    .line 221
    aget-char p3, v4, p3

    const/16 p5, 0xb

    aput-char p3, p1, p5

    shr-int/lit8 p3, v0, 0x4

    .line 222
    aget-char p3, v4, p3

    const/16 p5, 0xc

    aput-char p3, p1, p5

    and-int/lit8 p3, p4, 0xf

    .line 223
    aget-char p3, v4, p3

    const/16 p4, 0xd

    aput-char p3, p1, p4

    const/16 p3, 0x8

    .line 224
    invoke-virtual {v2, p1, p3, p0}, Landroidx/fragment/app/LogWriter;->write([CII)V

    return p2

    :cond_6
    shr-int/lit8 p3, p4, 0x4

    .line 225
    aget-char p3, v4, p3

    aput-char p3, p1, p0

    and-int/lit8 p3, p4, 0xf

    .line 226
    aget-char p3, v4, p3

    const/4 p4, 0x7

    aput-char p3, p1, p4

    .line 227
    invoke-virtual {v2, p1, v0, p0}, Landroidx/fragment/app/LogWriter;->write([CII)V

    return p2

    :cond_7
    const/4 p0, 0x0

    .line 228
    throw p0
.end method

.method public final _prependOrWriteCharacterEscape(CI)V
    .locals 6

    .line 1
    const/16 v0, 0x5c

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ltz p2, :cond_2

    .line 7
    .line 8
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-lt p1, v2, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, p1, -0x2

    .line 14
    .line 15
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 16
    .line 17
    iget-object p0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 18
    .line 19
    sub-int/2addr p1, v3

    .line 20
    aput-char v0, p0, v1

    .line 21
    .line 22
    int-to-char p2, p2

    .line 23
    aput-char p2, p0, p1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 35
    .line 36
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 37
    .line 38
    int-to-char p0, p2

    .line 39
    aput-char p0, p1, v3

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-virtual {v1, p1, p0, v2}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v3, -0x2

    .line 47
    if-eq p2, v3, :cond_7

    .line 48
    .line 49
    iget p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 50
    .line 51
    sget-object v3, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->HEX_CHARS:[C

    .line 52
    .line 53
    const/4 v4, 0x6

    .line 54
    const/16 v5, 0xff

    .line 55
    .line 56
    if-lt p2, v4, :cond_4

    .line 57
    .line 58
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 59
    .line 60
    add-int/lit8 v4, p2, -0x6

    .line 61
    .line 62
    iput v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 63
    .line 64
    aput-char v0, v1, v4

    .line 65
    .line 66
    add-int/lit8 p0, p2, -0x5

    .line 67
    .line 68
    const/16 v0, 0x75

    .line 69
    .line 70
    aput-char v0, v1, p0

    .line 71
    .line 72
    if-le p1, v5, :cond_3

    .line 73
    .line 74
    shr-int/lit8 p0, p1, 0x8

    .line 75
    .line 76
    and-int/lit16 v0, p0, 0xff

    .line 77
    .line 78
    add-int/lit8 v4, p2, -0x4

    .line 79
    .line 80
    shr-int/lit8 v0, v0, 0x4

    .line 81
    .line 82
    aget-char v0, v3, v0

    .line 83
    .line 84
    aput-char v0, v1, v4

    .line 85
    .line 86
    add-int/lit8 p2, p2, -0x3

    .line 87
    .line 88
    and-int/lit8 p0, p0, 0xf

    .line 89
    .line 90
    aget-char p0, v3, p0

    .line 91
    .line 92
    aput-char p0, v1, p2

    .line 93
    .line 94
    and-int/lit16 p0, p1, 0xff

    .line 95
    .line 96
    int-to-char p1, p0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    add-int/lit8 p0, p2, -0x4

    .line 99
    .line 100
    const/16 v0, 0x30

    .line 101
    .line 102
    aput-char v0, v1, p0

    .line 103
    .line 104
    add-int/lit8 p2, p2, -0x3

    .line 105
    .line 106
    aput-char v0, v1, p2

    .line 107
    .line 108
    :goto_0
    add-int/lit8 p0, p2, 0x1

    .line 109
    .line 110
    shr-int/lit8 v0, p1, 0x4

    .line 111
    .line 112
    aget-char v0, v3, v0

    .line 113
    .line 114
    aput-char v0, v1, p0

    .line 115
    .line 116
    add-int/2addr p2, v2

    .line 117
    and-int/lit8 p0, p1, 0xf

    .line 118
    .line 119
    aget-char p0, v3, p0

    .line 120
    .line 121
    aput-char p0, v1, p2

    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_entityBuffer:[C

    .line 125
    .line 126
    if-nez p2, :cond_5

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_allocateEntityBuffer()[C

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 133
    .line 134
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 135
    .line 136
    if-le p1, v5, :cond_6

    .line 137
    .line 138
    shr-int/lit8 p0, p1, 0x8

    .line 139
    .line 140
    and-int/lit16 v0, p0, 0xff

    .line 141
    .line 142
    and-int/lit16 v2, p1, 0xff

    .line 143
    .line 144
    shr-int/lit8 v0, v0, 0x4

    .line 145
    .line 146
    aget-char v0, v3, v0

    .line 147
    .line 148
    const/16 v5, 0xa

    .line 149
    .line 150
    aput-char v0, p2, v5

    .line 151
    .line 152
    and-int/lit8 p0, p0, 0xf

    .line 153
    .line 154
    aget-char p0, v3, p0

    .line 155
    .line 156
    const/16 v0, 0xb

    .line 157
    .line 158
    aput-char p0, p2, v0

    .line 159
    .line 160
    shr-int/lit8 p0, v2, 0x4

    .line 161
    .line 162
    aget-char p0, v3, p0

    .line 163
    .line 164
    const/16 v0, 0xc

    .line 165
    .line 166
    aput-char p0, p2, v0

    .line 167
    .line 168
    and-int/lit8 p0, p1, 0xf

    .line 169
    .line 170
    aget-char p0, v3, p0

    .line 171
    .line 172
    const/16 p1, 0xd

    .line 173
    .line 174
    aput-char p0, p2, p1

    .line 175
    .line 176
    const/16 p0, 0x8

    .line 177
    .line 178
    invoke-virtual {v1, p2, p0, v4}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_6
    shr-int/lit8 p0, p1, 0x4

    .line 183
    .line 184
    aget-char p0, v3, p0

    .line 185
    .line 186
    aput-char p0, p2, v4

    .line 187
    .line 188
    and-int/lit8 p0, p1, 0xf

    .line 189
    .line 190
    aget-char p0, v3, p0

    .line 191
    .line 192
    const/4 p1, 0x7

    .line 193
    aput-char p0, p2, p1

    .line 194
    .line 195
    invoke-virtual {v1, p2, v2, v4}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    const/4 p0, 0x0

    .line 200
    throw p0
.end method

.method public final _verifyValueWrite(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x5

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    const/4 v6, 0x2

    .line 10
    if-ne v1, v6, :cond_1

    .line 11
    .line 12
    iget-boolean v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 13
    .line 14
    if-nez v7, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iput-boolean v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 19
    .line 20
    iget v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 21
    .line 22
    add-int/2addr v7, v5

    .line 23
    iput v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 24
    .line 25
    move v0, v6

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 28
    .line 29
    if-ne v1, v5, :cond_3

    .line 30
    .line 31
    add-int/lit8 v8, v7, 0x1

    .line 32
    .line 33
    iput v8, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 34
    .line 35
    if-gez v7, :cond_2

    .line 36
    .line 37
    :goto_0
    move v0, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v0, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    add-int/2addr v7, v5

    .line 42
    iput v7, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 43
    .line 44
    if-nez v7, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    move v0, v2

    .line 48
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    const/16 v9, 0x2c

    .line 52
    .line 53
    const/16 v10, 0x3a

    .line 54
    .line 55
    if-eqz v7, :cond_f

    .line 56
    .line 57
    if-eqz v0, :cond_c

    .line 58
    .line 59
    if-eq v0, v5, :cond_b

    .line 60
    .line 61
    if-eq v0, v6, :cond_9

    .line 62
    .line 63
    if-eq v0, v2, :cond_6

    .line 64
    .line 65
    if-eq v0, v3, :cond_5

    .line 66
    .line 67
    sget p0, Lcom/fasterxml/jackson/core/util/VersionUtil;->$r8$clinit:I

    .line 68
    .line 69
    const-string p0, "Internal error: this code path should never get executed"

    .line 70
    .line 71
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_reportCantWriteValueExpectName(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v8

    .line 79
    :cond_6
    check-cast v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 80
    .line 81
    iget-object p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 82
    .line 83
    if-eqz p1, :cond_12

    .line 84
    .line 85
    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 88
    .line 89
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    add-int v3, v1, v2

    .line 96
    .line 97
    array-length v5, v0

    .line 98
    if-le v3, v5, :cond_7

    .line 99
    .line 100
    const/4 v2, -0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_7
    invoke-virtual {p1, v4, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 103
    .line 104
    .line 105
    :goto_2
    if-gez v2, :cond_8

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_8
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 112
    .line 113
    add-int/2addr p1, v2

    .line 114
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 115
    .line 116
    return-void

    .line 117
    :cond_9
    check-cast v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 118
    .line 119
    iget-boolean p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    .line 120
    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    iget-object p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectFieldValueSeparatorWithSpaces:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_a
    sget p1, Lcom/fasterxml/jackson/core/PrettyPrinter;->$r8$clinit:I

    .line 130
    .line 131
    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_b
    check-cast v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 136
    .line 137
    sget p1, Lcom/fasterxml/jackson/core/PrettyPrinter;->$r8$clinit:I

    .line 138
    .line 139
    invoke-virtual {p0, v9}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 140
    .line 141
    .line 142
    iget-object p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 143
    .line 144
    iget v0, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 145
    .line 146
    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_c
    if-ne v1, v5, :cond_d

    .line 151
    .line 152
    check-cast v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 153
    .line 154
    iget-object p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 155
    .line 156
    iget v0, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 157
    .line 158
    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_d
    if-ne v1, v6, :cond_e

    .line 163
    .line 164
    check-cast v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 165
    .line 166
    iget-object p1, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 167
    .line 168
    iget v0, v7, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 169
    .line 170
    invoke-virtual {p1, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 171
    .line 172
    .line 173
    :cond_e
    return-void

    .line 174
    :cond_f
    if-eq v0, v5, :cond_14

    .line 175
    .line 176
    if-eq v0, v6, :cond_13

    .line 177
    .line 178
    if-eq v0, v2, :cond_11

    .line 179
    .line 180
    if-eq v0, v3, :cond_10

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_reportCantWriteValueExpectName(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v8

    .line 187
    :cond_11
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_rootValueSeparator:Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 188
    .line 189
    if-eqz p1, :cond_12

    .line 190
    .line 191
    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_12
    :goto_3
    return-void

    .line 197
    :cond_13
    move v9, v10

    .line 198
    :cond_14
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 199
    .line 200
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 201
    .line 202
    if-lt p1, v0, :cond_15

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 205
    .line 206
    .line 207
    :cond_15
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 208
    .line 209
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 210
    .line 211
    add-int/lit8 v1, v0, 0x1

    .line 212
    .line 213
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 214
    .line 215
    aput-char v9, p1, v0

    .line 216
    .line 217
    return-void
.end method

.method public final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Lokio/Buffer$inputStream$1;[B)I
    .locals 12

    .line 138
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    add-int/lit8 v0, v0, -0x6

    .line 139
    iget v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    const/4 v2, 0x2

    shr-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, -0x3

    move v5, v3

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    const/4 v8, 0x3

    if-le v5, v4, :cond_5

    .line 140
    array-length v4, p3

    invoke-static {p2, p3, v5, v6, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Lokio/Buffer$inputStream$1;[BIII)I

    move-result v6

    if-ge v6, v8, :cond_4

    if-lez v6, :cond_3

    .line 141
    iget p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le p2, v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 143
    :cond_1
    aget-byte p2, p3, v3

    shl-int/lit8 p2, p2, 0x10

    const/4 v0, 0x1

    if-ge v0, v6, :cond_2

    .line 144
    aget-byte p3, p3, v0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v7, v2

    .line 145
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, p2, v2, p3, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    :cond_3
    return v7

    :cond_4
    add-int/lit8 v4, v6, -0x3

    move v5, v3

    .line 146
    :cond_5
    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-le v9, v0, :cond_6

    .line 147
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    :cond_6
    add-int/lit8 v9, v5, 0x1

    .line 148
    aget-byte v10, p3, v5

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v11, v5, 0x2

    .line 149
    aget-byte v9, p3, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v5, v8

    .line 150
    aget-byte v8, p3, v11

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x3

    .line 151
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-virtual {p1, v9, v8, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk([CII)I

    move-result v8

    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v10, 0x5c

    aput-char v10, v1, v8

    add-int/lit8 v8, v8, 0x2

    .line 153
    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 v8, 0x6e

    aput-char v8, v1, v9

    .line 154
    iget v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    shr-int/2addr v1, v2

    goto :goto_0
.end method

.method public final _writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Lokio/Buffer$inputStream$1;[BI)I
    .locals 11

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x6

    .line 4
    .line 5
    iget v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    shr-int/2addr v1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x3

    .line 11
    move v5, v3

    .line 12
    move v6, v5

    .line 13
    :cond_0
    :goto_0
    if-le p4, v2, :cond_4

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    if-le v5, v4, :cond_2

    .line 17
    .line 18
    invoke-static {p2, p3, v5, v6, p4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Lokio/Buffer$inputStream$1;[BIII)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-ge v6, v7, :cond_1

    .line 23
    .line 24
    move v5, v3

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 v4, v6, -0x3

    .line 27
    .line 28
    move v5, v3

    .line 29
    :cond_2
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 30
    .line 31
    if-le v8, v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 34
    .line 35
    .line 36
    :cond_3
    add-int/lit8 v8, v5, 0x1

    .line 37
    .line 38
    aget-byte v9, p3, v5

    .line 39
    .line 40
    shl-int/lit8 v9, v9, 0x8

    .line 41
    .line 42
    add-int/lit8 v10, v5, 0x2

    .line 43
    .line 44
    aget-byte v8, p3, v8

    .line 45
    .line 46
    and-int/lit16 v8, v8, 0xff

    .line 47
    .line 48
    or-int/2addr v8, v9

    .line 49
    shl-int/lit8 v8, v8, 0x8

    .line 50
    .line 51
    add-int/2addr v5, v7

    .line 52
    aget-byte v7, p3, v10

    .line 53
    .line 54
    and-int/lit16 v7, v7, 0xff

    .line 55
    .line 56
    or-int/2addr v7, v8

    .line 57
    add-int/lit8 p4, p4, -0x3

    .line 58
    .line 59
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 60
    .line 61
    iget v9, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 62
    .line 63
    invoke-virtual {p1, v8, v7, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk([CII)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 68
    .line 69
    add-int/lit8 v1, v1, -0x1

    .line 70
    .line 71
    if-gtz v1, :cond_0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 74
    .line 75
    add-int/lit8 v8, v7, 0x1

    .line 76
    .line 77
    iput v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 78
    .line 79
    const/16 v9, 0x5c

    .line 80
    .line 81
    aput-char v9, v1, v7

    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x2

    .line 84
    .line 85
    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 86
    .line 87
    const/16 v7, 0x6e

    .line 88
    .line 89
    aput-char v7, v1, v8

    .line 90
    .line 91
    iget v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 92
    .line 93
    shr-int/2addr v1, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    :goto_1
    if-lez p4, :cond_7

    .line 96
    .line 97
    invoke-static {p2, p3, v5, v6, p4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_readMore(Lokio/Buffer$inputStream$1;[BIII)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-lez p2, :cond_7

    .line 102
    .line 103
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 104
    .line 105
    if-le v1, v0, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 108
    .line 109
    .line 110
    :cond_5
    aget-byte v0, p3, v3

    .line 111
    .line 112
    shl-int/lit8 v0, v0, 0x10

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    if-ge v1, p2, :cond_6

    .line 116
    .line 117
    aget-byte p2, p3, v1

    .line 118
    .line 119
    and-int/lit16 p2, p2, 0xff

    .line 120
    .line 121
    shl-int/lit8 p2, p2, 0x8

    .line 122
    .line 123
    or-int/2addr v0, p2

    .line 124
    goto :goto_2

    .line 125
    :cond_6
    move v2, v1

    .line 126
    :goto_2
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 127
    .line 128
    iget p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 129
    .line 130
    invoke-virtual {p1, v0, v2, p2, p3}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 135
    .line 136
    sub-int/2addr p4, v2

    .line 137
    :cond_7
    return p4
.end method

.method public final _writeNull()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 15
    .line 16
    const/16 v2, 0x6e

    .line 17
    .line 18
    aput-char v2, v1, v0

    .line 19
    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    const/16 v3, 0x75

    .line 23
    .line 24
    aput-char v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v0, 0x2

    .line 27
    .line 28
    const/16 v3, 0x6c

    .line 29
    .line 30
    aput-char v3, v1, v2

    .line 31
    .line 32
    add-int/lit8 v2, v0, 0x3

    .line 33
    .line 34
    aput-char v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x4

    .line 37
    .line 38
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 39
    .line 40
    return-void
.end method

.method public final _writeQuotedRaw(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 11
    .line 12
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 17
    .line 18
    iget-char v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 19
    .line 20
    aput-char v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 26
    .line 27
    if-lt p1, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 33
    .line 34
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 35
    .line 36
    add-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 39
    .line 40
    aput-char v3, p1, v0

    .line 41
    .line 42
    return-void
.end method

.method public final _writeString(Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v7, v0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_outputEscapes:[I

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 13
    .line 14
    iget v11, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 15
    .line 16
    if-le v1, v11, :cond_b

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    move v1, v9

    .line 26
    :goto_0
    add-int v2, v1, v11

    .line 27
    .line 28
    if-le v2, v12, :cond_0

    .line 29
    .line 30
    sub-int v2, v12, v1

    .line 31
    .line 32
    move v3, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v3, v11

    .line 35
    :goto_1
    add-int v13, v1, v3

    .line 36
    .line 37
    iget-object v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 38
    .line 39
    invoke-virtual {v6, v1, v13, v2, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 40
    .line 41
    .line 42
    iget v14, v0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 43
    .line 44
    if-eqz v14, :cond_5

    .line 45
    .line 46
    array-length v1, v7

    .line 47
    add-int/lit8 v2, v14, 0x1

    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v15

    .line 53
    move v1, v9

    .line 54
    move v2, v1

    .line 55
    move v4, v2

    .line 56
    :goto_2
    if-ge v1, v3, :cond_9

    .line 57
    .line 58
    :goto_3
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 59
    .line 60
    move/from16 v16, v4

    .line 61
    .line 62
    aget-char v4, v5, v1

    .line 63
    .line 64
    if-ge v4, v15, :cond_1

    .line 65
    .line 66
    aget v16, v7, v4

    .line 67
    .line 68
    if-eqz v16, :cond_2

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_1
    if-le v4, v14, :cond_2

    .line 72
    .line 73
    const/16 v16, -0x1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    if-lt v1, v3, :cond_4

    .line 79
    .line 80
    :goto_4
    sub-int v8, v1, v2

    .line 81
    .line 82
    if-lez v8, :cond_3

    .line 83
    .line 84
    invoke-virtual {v10, v5, v2, v8}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 85
    .line 86
    .line 87
    if-lt v1, v3, :cond_3

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 91
    .line 92
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 93
    .line 94
    move/from16 v5, v16

    .line 95
    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    move v4, v2

    .line 101
    move v2, v1

    .line 102
    move v1, v4

    .line 103
    move v4, v5

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move/from16 v4, v16

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    array-length v8, v7

    .line 109
    move v1, v9

    .line 110
    move v2, v1

    .line 111
    :goto_5
    if-ge v1, v3, :cond_9

    .line 112
    .line 113
    :cond_6
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 114
    .line 115
    aget-char v5, v4, v1

    .line 116
    .line 117
    if-ge v5, v8, :cond_7

    .line 118
    .line 119
    aget v14, v7, v5

    .line 120
    .line 121
    if-eqz v14, :cond_7

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    if-lt v1, v3, :cond_6

    .line 127
    .line 128
    :goto_6
    sub-int v14, v1, v2

    .line 129
    .line 130
    if-lez v14, :cond_8

    .line 131
    .line 132
    invoke-virtual {v10, v4, v2, v14}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 133
    .line 134
    .line 135
    if-lt v1, v3, :cond_8

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .line 139
    .line 140
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 141
    .line 142
    move v4, v5

    .line 143
    aget v5, v7, v4

    .line 144
    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape([CIICI)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    move/from16 v17, v2

    .line 150
    .line 151
    move v2, v1

    .line 152
    move/from16 v1, v17

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_9
    :goto_7
    if-lt v13, v12, :cond_a

    .line 156
    .line 157
    goto/16 :goto_b

    .line 158
    .line 159
    :cond_a
    move v1, v13

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_b
    iget v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 163
    .line 164
    add-int/2addr v2, v1

    .line 165
    if-le v2, v11, :cond_c

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 168
    .line 169
    .line 170
    :cond_c
    iget-object v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 171
    .line 172
    iget v3, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 173
    .line 174
    invoke-virtual {v6, v9, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 175
    .line 176
    .line 177
    iget v2, v0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 178
    .line 179
    iget v3, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 180
    .line 181
    if-eqz v2, :cond_11

    .line 182
    .line 183
    add-int/2addr v3, v1

    .line 184
    array-length v1, v7

    .line 185
    add-int/lit8 v4, v2, 0x1

    .line 186
    .line 187
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    :goto_8
    iget v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 192
    .line 193
    if-ge v4, v3, :cond_15

    .line 194
    .line 195
    :cond_d
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 196
    .line 197
    iget v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 198
    .line 199
    aget-char v6, v4, v5

    .line 200
    .line 201
    if-ge v6, v1, :cond_e

    .line 202
    .line 203
    aget v8, v7, v6

    .line 204
    .line 205
    if-eqz v8, :cond_10

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :cond_e
    if-le v6, v2, :cond_10

    .line 209
    .line 210
    const/4 v8, -0x1

    .line 211
    :goto_9
    iget v9, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 212
    .line 213
    sub-int/2addr v5, v9

    .line 214
    if-lez v5, :cond_f

    .line 215
    .line 216
    invoke-virtual {v10, v4, v9, v5}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 217
    .line 218
    .line 219
    :cond_f
    iget v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 220
    .line 221
    add-int/lit8 v4, v4, 0x1

    .line 222
    .line 223
    iput v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 224
    .line 225
    invoke-virtual {v0, v6, v8}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    .line 226
    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 230
    .line 231
    iput v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 232
    .line 233
    if-lt v5, v3, :cond_d

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_11
    add-int/2addr v3, v1

    .line 237
    array-length v1, v7

    .line 238
    :goto_a
    iget v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 239
    .line 240
    if-ge v2, v3, :cond_15

    .line 241
    .line 242
    :cond_12
    iget-object v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 243
    .line 244
    iget v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 245
    .line 246
    aget-char v5, v2, v4

    .line 247
    .line 248
    if-ge v5, v1, :cond_14

    .line 249
    .line 250
    aget v5, v7, v5

    .line 251
    .line 252
    if-eqz v5, :cond_14

    .line 253
    .line 254
    iget v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 255
    .line 256
    sub-int/2addr v4, v5

    .line 257
    if-lez v4, :cond_13

    .line 258
    .line 259
    invoke-virtual {v10, v2, v5, v4}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 260
    .line 261
    .line 262
    :cond_13
    iget-object v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 263
    .line 264
    iget v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 265
    .line 266
    add-int/lit8 v5, v4, 0x1

    .line 267
    .line 268
    iput v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 269
    .line 270
    aget-char v2, v2, v4

    .line 271
    .line 272
    aget v4, v7, v2

    .line 273
    .line 274
    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_prependOrWriteCharacterEscape(CI)V

    .line 275
    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 279
    .line 280
    iput v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 281
    .line 282
    if-lt v4, v3, :cond_12

    .line 283
    .line 284
    :cond_15
    :goto_b
    return-void
.end method

.method public final close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 15
    .line 16
    iget v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndArray()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeEndObject()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 36
    .line 37
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_ioContext:Lcoil3/ImageLoader$Builder;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 63
    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    iput-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 68
    .line 69
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, [C

    .line 72
    .line 73
    if-eq v2, p0, :cond_5

    .line 74
    .line 75
    array-length v4, v2

    .line 76
    array-length p0, p0

    .line 77
    if-lt v4, p0, :cond_4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    const-string p0, "Trying to release buffer smaller than original"

    .line 81
    .line 82
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    :goto_2
    iput-object v3, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object p0, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 93
    .line 94
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
    .locals 9

    .line 1
    const-string/jumbo v0, "write a binary value"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 8
    .line 9
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 17
    .line 18
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 19
    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 23
    .line 24
    iget-char v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 25
    .line 26
    aput-char v3, v0, v2

    .line 27
    .line 28
    add-int/2addr p4, p3

    .line 29
    add-int/lit8 v0, p4, -0x3

    .line 30
    .line 31
    add-int/lit8 v2, v1, -0x6

    .line 32
    .line 33
    iget v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    :goto_0
    shr-int/2addr v4, v5

    .line 37
    :cond_1
    if-gt p3, v0, :cond_3

    .line 38
    .line 39
    iget v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 40
    .line 41
    if-le v6, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 44
    .line 45
    .line 46
    :cond_2
    add-int/lit8 v6, p3, 0x1

    .line 47
    .line 48
    aget-byte v7, p2, p3

    .line 49
    .line 50
    shl-int/lit8 v7, v7, 0x8

    .line 51
    .line 52
    add-int/lit8 v8, p3, 0x2

    .line 53
    .line 54
    aget-byte v6, p2, v6

    .line 55
    .line 56
    and-int/lit16 v6, v6, 0xff

    .line 57
    .line 58
    or-int/2addr v6, v7

    .line 59
    shl-int/lit8 v6, v6, 0x8

    .line 60
    .line 61
    add-int/lit8 p3, p3, 0x3

    .line 62
    .line 63
    aget-byte v7, p2, v8

    .line 64
    .line 65
    and-int/lit16 v7, v7, 0xff

    .line 66
    .line 67
    or-int/2addr v6, v7

    .line 68
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 69
    .line 70
    iget v8, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 71
    .line 72
    invoke-virtual {p1, v7, v6, v8}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk([CII)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 77
    .line 78
    add-int/lit8 v4, v4, -0x1

    .line 79
    .line 80
    if-gtz v4, :cond_1

    .line 81
    .line 82
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 83
    .line 84
    add-int/lit8 v7, v6, 0x1

    .line 85
    .line 86
    iput v7, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 87
    .line 88
    const/16 v8, 0x5c

    .line 89
    .line 90
    aput-char v8, v4, v6

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x2

    .line 93
    .line 94
    iput v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 95
    .line 96
    const/16 v6, 0x6e

    .line 97
    .line 98
    aput-char v6, v4, v7

    .line 99
    .line 100
    iget v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    sub-int/2addr p4, p3

    .line 104
    if-lez p4, :cond_6

    .line 105
    .line 106
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 107
    .line 108
    if-le v0, v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 111
    .line 112
    .line 113
    :cond_4
    add-int/lit8 v0, p3, 0x1

    .line 114
    .line 115
    aget-byte p3, p2, p3

    .line 116
    .line 117
    shl-int/lit8 p3, p3, 0x10

    .line 118
    .line 119
    if-ne p4, v5, :cond_5

    .line 120
    .line 121
    aget-byte p2, p2, v0

    .line 122
    .line 123
    and-int/lit16 p2, p2, 0xff

    .line 124
    .line 125
    shl-int/lit8 p2, p2, 0x8

    .line 126
    .line 127
    or-int/2addr p3, p2

    .line 128
    :cond_5
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 129
    .line 130
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 131
    .line 132
    invoke-virtual {p1, p3, p4, p2, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(II[CI)I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 137
    .line 138
    :cond_6
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 139
    .line 140
    if-lt p1, v1, :cond_7

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 143
    .line 144
    .line 145
    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 146
    .line 147
    iget p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 148
    .line 149
    add-int/lit8 p3, p2, 0x1

    .line 150
    .line 151
    iput p3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 152
    .line 153
    aput-char v3, p1, p2

    .line 154
    .line 155
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "write a boolean value"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x5

    .line 10
    .line 11
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 21
    .line 22
    const/16 v2, 0x65

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x74

    .line 27
    .line 28
    aput-char p1, v1, v0

    .line 29
    .line 30
    add-int/lit8 p1, v0, 0x1

    .line 31
    .line 32
    const/16 v3, 0x72

    .line 33
    .line 34
    aput-char v3, v1, p1

    .line 35
    .line 36
    add-int/lit8 p1, v0, 0x2

    .line 37
    .line 38
    const/16 v3, 0x75

    .line 39
    .line 40
    aput-char v3, v1, p1

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x3

    .line 43
    .line 44
    aput-char v2, v1, v0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 p1, 0x66

    .line 48
    .line 49
    aput-char p1, v1, v0

    .line 50
    .line 51
    add-int/lit8 p1, v0, 0x1

    .line 52
    .line 53
    const/16 v3, 0x61

    .line 54
    .line 55
    aput-char v3, v1, p1

    .line 56
    .line 57
    add-int/lit8 p1, v0, 0x2

    .line 58
    .line 59
    const/16 v3, 0x6c

    .line 60
    .line 61
    aput-char v3, v1, p1

    .line 62
    .line 63
    add-int/lit8 p1, v0, 0x3

    .line 64
    .line 65
    const/16 v3, 0x73

    .line 66
    .line 67
    aput-char v3, v1, p1

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x4

    .line 70
    .line 71
    aput-char v2, v1, v0

    .line 72
    .line 73
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 76
    .line 77
    return-void
.end method

.method public final writeEndArray()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 9
    .line 10
    const/16 v3, 0x5d

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 15
    .line 16
    add-int/2addr v0, v2

    .line 17
    check-cast v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isInline()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    iget v5, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 28
    .line 29
    sub-int/2addr v5, v2

    .line 30
    iput v5, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 31
    .line 32
    :cond_0
    if-lez v0, :cond_1

    .line 33
    .line 34
    iget v0, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 35
    .line 36
    invoke-virtual {v4, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v0, 0x20

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 50
    .line 51
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 52
    .line 53
    if-lt v0, v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 59
    .line 60
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 61
    .line 62
    add-int/lit8 v2, v1, 0x1

    .line 63
    .line 64
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 65
    .line 66
    aput-char v3, v0, v1

    .line 67
    .line 68
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->typeDesc()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "Current context not Array but "

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    throw p0
.end method

.method public final writeEndObject()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2
    .line 3
    iget v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 9
    .line 10
    const/16 v2, 0x7d

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    check-cast v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isInline()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    iget v4, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 29
    .line 30
    add-int/lit8 v4, v4, -0x1

    .line 31
    .line 32
    iput v4, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 33
    .line 34
    :cond_0
    if-lez v0, :cond_1

    .line 35
    .line 36
    iget v0, v1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 37
    .line 38
    invoke-virtual {v3, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0x20

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 52
    .line 53
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 54
    .line 55
    if-lt v0, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 61
    .line 62
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 63
    .line 64
    add-int/lit8 v3, v1, 0x1

    .line 65
    .line 66
    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 67
    .line 68
    aput-char v2, v0, v1

    .line 69
    .line 70
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_parent:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->typeDesc()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "Current context not Object but "

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    throw p0
.end method

.method public final writeFieldName(Lcom/fasterxml/jackson/core/io/SerializedString;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_e

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 20
    .line 21
    const/16 v4, 0x2c

    .line 22
    .line 23
    iget v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 24
    .line 25
    iget-char v6, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 26
    .line 27
    if-eqz v3, :cond_5

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 37
    .line 38
    iget v1, v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    check-cast v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 45
    .line 46
    iget-object v0, v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 47
    .line 48
    iget v1, v3, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/SerializedString;->asQuotedChars()[C

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_cfgUnqNames:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    array-length v0, p1

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CI)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 67
    .line 68
    if-lt v0, v5, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 74
    .line 75
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 76
    .line 77
    add-int/lit8 v2, v1, 0x1

    .line 78
    .line 79
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 80
    .line 81
    aput-char v6, v0, v1

    .line 82
    .line 83
    array-length v0, p1

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CI)V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 88
    .line 89
    if-lt p1, v5, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 95
    .line 96
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 97
    .line 98
    add-int/lit8 v1, v0, 0x1

    .line 99
    .line 100
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 101
    .line 102
    aput-char v6, p1, v0

    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    iget v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 106
    .line 107
    add-int/2addr v3, v2

    .line 108
    if-lt v3, v5, :cond_6

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 111
    .line 112
    .line 113
    :cond_6
    if-eqz v0, :cond_7

    .line 114
    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 116
    .line 117
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 118
    .line 119
    add-int/lit8 v3, v2, 0x1

    .line 120
    .line 121
    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 122
    .line 123
    aput-char v4, v0, v2

    .line 124
    .line 125
    :cond_7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_cfgUnqNames:Z

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/SerializedString;->asQuotedChars()[C

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    array-length v0, p1

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CI)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 139
    .line 140
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 141
    .line 142
    add-int/lit8 v3, v2, 0x1

    .line 143
    .line 144
    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 145
    .line 146
    aput-char v6, v0, v2

    .line 147
    .line 148
    iget-object v2, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 149
    .line 150
    if-nez v2, :cond_9

    .line 151
    .line 152
    sget-object v2, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .line 153
    .line 154
    iget-object v4, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iput-object v2, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 164
    .line 165
    :cond_9
    array-length v4, v2

    .line 166
    add-int v7, v3, v4

    .line 167
    .line 168
    array-length v8, v0

    .line 169
    if-le v7, v8, :cond_a

    .line 170
    .line 171
    const/4 v4, -0x1

    .line 172
    goto :goto_2

    .line 173
    :cond_a
    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    :goto_2
    if-gez v4, :cond_c

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/SerializedString;->asQuotedChars()[C

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    array-length v0, p1

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw([CI)V

    .line 184
    .line 185
    .line 186
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 187
    .line 188
    if-lt p1, v5, :cond_b

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 191
    .line 192
    .line 193
    :cond_b
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 194
    .line 195
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 196
    .line 197
    add-int/lit8 v1, v0, 0x1

    .line 198
    .line 199
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 200
    .line 201
    aput-char v6, p1, v0

    .line 202
    .line 203
    return-void

    .line 204
    :cond_c
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 205
    .line 206
    add-int/2addr p1, v4

    .line 207
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 208
    .line 209
    if-lt p1, v5, :cond_d

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 212
    .line 213
    .line 214
    :cond_d
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 215
    .line 216
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 217
    .line 218
    add-int/lit8 v1, v0, 0x1

    .line 219
    .line 220
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 221
    .line 222
    aput-char v6, p1, v0

    .line 223
    .line 224
    return-void

    .line 225
    :cond_e
    const-string p1, "Can not write a field name, expecting a value"

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const/4 p0, 0x0

    .line 231
    throw p0
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    const/16 v3, 0x2c

    iget v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget-char v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    if-eqz v2, :cond_5

    if-eqz v0, :cond_1

    .line 234
    check-cast v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 235
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 236
    iget-object v0, v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget v1, v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    goto :goto_1

    .line 237
    :cond_1
    check-cast v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 238
    iget-object v0, v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    iget v1, v2, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeIndentation(Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;I)V

    .line 239
    :goto_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_cfgUnqNames:Z

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    return-void

    .line 241
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt v0, v4, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v0, v1

    .line 244
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 245
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt p1, v4, :cond_4

    .line 246
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 247
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, p1, v0

    return-void

    .line 248
    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr v2, v1

    if-lt v2, v4, :cond_6

    .line 249
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    :cond_6
    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, v0, v1

    .line 251
    :cond_7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_cfgUnqNames:Z

    if-eqz v0, :cond_8

    .line 252
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, v0, v1

    .line 254
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 255
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt p1, v4, :cond_9

    .line 256
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 257
    :cond_9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v5, p1, v0

    return-void

    .line 258
    :cond_a
    const-string p1, "Can not write a field name, expecting a value"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final writeNull()V
    .locals 1

    .line 1
    const-string/jumbo v0, "write a null"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final writeNumber(D)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    .line 78
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 82
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeNumber(F)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_2

    .line 85
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/GeneratorBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeNumber(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "write a number"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    .line 8
    .line 9
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0xd

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 23
    .line 24
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 29
    .line 30
    iget-char v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 31
    .line 32
    aput-char v3, v0, v1

    .line 33
    .line 34
    invoke-static {v0, p1, v2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt([CII)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 39
    .line 40
    add-int/lit8 v1, p1, 0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 43
    .line 44
    aput-char v3, v0, p1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0xb

    .line 50
    .line 51
    if-lt v0, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 57
    .line 58
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 59
    .line 60
    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt([CII)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 65
    .line 66
    return-void
.end method

.method public final writeNumber(J)V
    .locals 4

    .line 67
    const-string/jumbo v0, "write a number"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_cfgNumbersAsStrings:Z

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-eqz v0, :cond_1

    .line 69
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    if-lt v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget-char v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    aput-char v3, v0, v1

    .line 72
    invoke-static {p1, p2, v0, v2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result p1

    .line 73
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, p2, p1

    return-void

    .line 74
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    if-lt v0, v1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputLong(J[CI)I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    return-void
.end method

.method public final writeRaw(C)V
    .locals 3

    .line 87
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final writeRaw(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 6
    .line 7
    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 8
    .line 9
    sub-int v3, v2, v1

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 17
    .line 18
    sub-int v3, v2, v1

    .line 19
    .line 20
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-lt v3, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v5, v0, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 26
    .line 27
    .line 28
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    sub-int v0, v2, v1

    .line 35
    .line 36
    invoke-virtual {p1, v5, v0, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr v1, v0

    .line 52
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 53
    .line 54
    if-le v1, v2, :cond_2

    .line 55
    .line 56
    add-int v4, v0, v2

    .line 57
    .line 58
    invoke-virtual {p1, v0, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 59
    .line 60
    .line 61
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 62
    .line 63
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v1, v2

    .line 69
    move v0, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    add-int v2, v0, v1

    .line 72
    .line 73
    invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    .line 75
    .line 76
    iput v5, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputHead:I

    .line 77
    .line 78
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 79
    .line 80
    return-void
.end method

.method public final writeRaw([CI)V
    .locals 3

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 81
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 86
    iget-object p0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    invoke-virtual {p0, p1, v1, p2}, Landroidx/fragment/app/LogWriter;->write([CII)V

    return-void
.end method

.method public final writeStartArray()V
    .locals 6

    .line 100
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 102
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 103
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    check-cast v4, Lcoil3/ImageLoader$Builder;

    if-nez v4, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v2, Lcoil3/ImageLoader$Builder;

    iget-object v4, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    const/16 v5, 0x16

    invoke-direct {v2, v5, v4}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 105
    :goto_0
    invoke-direct {v1, v3, v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;)V

    iput-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_1
    iput v3, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    const/4 v0, -0x1

    .line 107
    iput v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 108
    iput-object v2, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 110
    iget-object v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    check-cast v0, Lcoil3/ImageLoader$Builder;

    if-eqz v0, :cond_2

    .line 111
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 112
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 113
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 114
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-eqz v0, :cond_3

    .line 116
    check-cast v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void

    .line 117
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    const/16 p0, 0x5b

    aput-char p0, v0, v1

    return-void
.end method

.method public final writeStartArray(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, "start an array"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lcoil3/ImageLoader$Builder;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 26
    .line 27
    iget-object v4, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 30
    .line 31
    const/16 v5, 0x16

    .line 32
    .line 33
    invoke-direct {v2, v5, v4}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {v1, v3, v0, v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v3, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    iput v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 46
    .line 47
    iput-object v2, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 51
    .line 52
    iput-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    check-cast p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 79
    .line 80
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 81
    .line 82
    if-lt p1, v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 88
    .line 89
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 90
    .line 91
    add-int/lit8 v1, v0, 0x1

    .line 92
    .line 93
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 94
    .line 95
    const/16 p0, 0x5b

    .line 96
    .line 97
    aput-char p0, p1, v0

    .line 98
    .line 99
    return-void
.end method

.method public final writeStartArray$1(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, "start an array"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lcoil3/ImageLoader$Builder;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 26
    .line 27
    iget-object v4, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 30
    .line 31
    const/16 v5, 0x16

    .line 32
    .line 33
    invoke-direct {v2, v5, v4}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {v1, v3, v0, v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v3, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    iput v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 46
    .line 47
    iput-object v2, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 51
    .line 52
    iput-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    check-cast p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 79
    .line 80
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 81
    .line 82
    if-lt p1, v0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 88
    .line 89
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 90
    .line 91
    add-int/lit8 v1, v0, 0x1

    .line 92
    .line 93
    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 94
    .line 95
    const/16 p0, 0x5b

    .line 96
    .line 97
    aput-char p0, p1, v0

    .line 98
    .line 99
    return-void
.end method

.method public final writeStartObject()V
    .locals 6

    .line 114
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 116
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    check-cast v4, Lcoil3/ImageLoader$Builder;

    if-nez v4, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Lcoil3/ImageLoader$Builder;

    iget-object v4, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    const/16 v5, 0x16

    invoke-direct {v2, v5, v4}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 119
    :goto_0
    invoke-direct {v1, v3, v0, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;)V

    iput-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_1
    iput v3, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    const/4 v0, -0x1

    .line 121
    iput v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 122
    iput-object v2, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 124
    iget-object v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    check-cast v0, Lcoil3/ImageLoader$Builder;

    if-eqz v0, :cond_2

    .line 125
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 126
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 127
    iput-object v2, v0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 128
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    const/16 v1, 0x7b

    if-eqz v0, :cond_4

    .line 130
    check-cast v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 131
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 132
    iget-object p0, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isInline()Z

    move-result p0

    if-nez p0, :cond_3

    .line 133
    iget p0, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    :cond_3
    return-void

    .line 134
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v2, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v1, v0, v2

    return-void
.end method

.method public final writeStartObject(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-string v0, "start an object"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Lcoil3/ImageLoader$Builder;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 26
    .line 27
    iget-object v4, v4, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;

    .line 30
    .line 31
    const/16 v5, 0x16

    .line 32
    .line 33
    invoke-direct {v2, v5, v4}, Lcoil3/ImageLoader$Builder;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-direct {v1, v3, v0, v2, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ILcom/fasterxml/jackson/core/json/JsonWriteContext;Lcoil3/ImageLoader$Builder;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iput v3, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_type:I

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    iput v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 46
    .line 47
    iput-object v2, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentName:Ljava/io/Serializable;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_gotName:Z

    .line 51
    .line 52
    iput-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_currentValue:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_dups:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lcoil3/ImageLoader$Builder;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 61
    .line 62
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v2, p1, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/GeneratorBase;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 69
    .line 70
    const/16 v0, 0x7b

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    check-cast p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->writeRaw(C)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isInline()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_3

    .line 86
    .line 87
    iget p0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 88
    .line 89
    add-int/lit8 p0, p0, 0x1

    .line 90
    .line 91
    iput p0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I

    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 95
    .line 96
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 97
    .line 98
    if-lt p1, v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 104
    .line 105
    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 106
    .line 107
    add-int/lit8 v2, v1, 0x1

    .line 108
    .line 109
    iput v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 110
    .line 111
    aput-char v0, p1, v1

    .line 112
    .line 113
    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 4

    .line 206
    const-string/jumbo v0, "write a string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeNull()V

    return-void

    .line 208
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    if-lt v0, v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    iget-char v3, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    aput-char v3, v0, v2

    .line 211
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writeString(Ljava/lang/String;)V

    .line 212
    iget p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    if-lt p1, v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 214
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    aput-char v3, p1, v0

    return-void
.end method

.method public final writeString([CII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "write a string"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 12
    .line 13
    iget v3, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputEnd:I

    .line 14
    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 21
    .line 22
    iget v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 23
    .line 24
    add-int/lit8 v5, v4, 0x1

    .line 25
    .line 26
    iput v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 27
    .line 28
    iget-char v5, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_quoteChar:C

    .line 29
    .line 30
    aput-char v5, v2, v4

    .line 31
    .line 32
    iget v2, v0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_maximumNonEscapedChar:I

    .line 33
    .line 34
    iget-object v4, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_writer:Landroidx/fragment/app/LogWriter;

    .line 35
    .line 36
    const/16 v6, 0x20

    .line 37
    .line 38
    iget-object v7, v0, Lcom/fasterxml/jackson/core/json/JsonGeneratorImpl;->_outputEscapes:[I

    .line 39
    .line 40
    if-eqz v2, :cond_8

    .line 41
    .line 42
    add-int v8, p3, p2

    .line 43
    .line 44
    array-length v9, v7

    .line 45
    add-int/lit8 v10, v2, 0x1

    .line 46
    .line 47
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const/4 v10, 0x0

    .line 52
    move v11, v10

    .line 53
    move/from16 v10, p2

    .line 54
    .line 55
    :goto_0
    if-ge v10, v8, :cond_f

    .line 56
    .line 57
    move v12, v10

    .line 58
    :cond_1
    aget-char v13, v1, v12

    .line 59
    .line 60
    if-ge v13, v9, :cond_2

    .line 61
    .line 62
    aget v11, v7, v13

    .line 63
    .line 64
    if-eqz v11, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-le v13, v2, :cond_3

    .line 68
    .line 69
    const/4 v11, -0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 72
    .line 73
    if-lt v12, v8, :cond_1

    .line 74
    .line 75
    :goto_1
    sub-int v14, v12, v10

    .line 76
    .line 77
    if-ge v14, v6, :cond_5

    .line 78
    .line 79
    iget v15, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 80
    .line 81
    add-int/2addr v15, v14

    .line 82
    if-le v15, v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 85
    .line 86
    .line 87
    :cond_4
    if-lez v14, :cond_6

    .line 88
    .line 89
    iget-object v15, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 90
    .line 91
    iget v6, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 92
    .line 93
    invoke-static {v1, v10, v15, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    iget v6, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 97
    .line 98
    add-int/2addr v6, v14

    .line 99
    iput v6, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1, v10, v14}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_2
    if-lt v12, v8, :cond_7

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_7
    add-int/lit8 v10, v12, 0x1

    .line 112
    .line 113
    invoke-virtual {v0, v13, v11}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    .line 114
    .line 115
    .line 116
    const/16 v6, 0x20

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    add-int v2, p3, p2

    .line 120
    .line 121
    array-length v6, v7

    .line 122
    move/from16 v8, p2

    .line 123
    .line 124
    :goto_3
    if-ge v8, v2, :cond_f

    .line 125
    .line 126
    move v9, v8

    .line 127
    :cond_9
    aget-char v10, v1, v9

    .line 128
    .line 129
    if-ge v10, v6, :cond_a

    .line 130
    .line 131
    aget v10, v7, v10

    .line 132
    .line 133
    if-eqz v10, :cond_a

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 137
    .line 138
    if-lt v9, v2, :cond_9

    .line 139
    .line 140
    :goto_4
    sub-int v10, v9, v8

    .line 141
    .line 142
    const/16 v11, 0x20

    .line 143
    .line 144
    if-ge v10, v11, :cond_c

    .line 145
    .line 146
    iget v12, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 147
    .line 148
    add-int/2addr v12, v10

    .line 149
    if-le v12, v3, :cond_b

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 152
    .line 153
    .line 154
    :cond_b
    if-lez v10, :cond_d

    .line 155
    .line 156
    iget-object v12, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 157
    .line 158
    iget v13, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 159
    .line 160
    invoke-static {v1, v8, v12, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    .line 162
    .line 163
    iget v8, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 164
    .line 165
    add-int/2addr v8, v10

    .line 166
    iput v8, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_c
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v1, v8, v10}, Landroidx/fragment/app/LogWriter;->write([CII)V

    .line 173
    .line 174
    .line 175
    :cond_d
    :goto_5
    if-lt v9, v2, :cond_e

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_e
    add-int/lit8 v8, v9, 0x1

    .line 179
    .line 180
    aget-char v9, v1, v9

    .line 181
    .line 182
    aget v10, v7, v9

    .line 183
    .line 184
    invoke-virtual {v0, v9, v10}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_appendCharacterEscape(CI)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_f
    :goto_6
    iget v1, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 189
    .line 190
    if-lt v1, v3, :cond_10

    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_flushBuffer()V

    .line 193
    .line 194
    .line 195
    :cond_10
    iget-object v1, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputBuffer:[C

    .line 196
    .line 197
    iget v2, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 198
    .line 199
    add-int/lit8 v3, v2, 0x1

    .line 200
    .line 201
    iput v3, v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->_outputTail:I

    .line 202
    .line 203
    aput-char v5, v1, v2

    .line 204
    .line 205
    return-void
.end method
