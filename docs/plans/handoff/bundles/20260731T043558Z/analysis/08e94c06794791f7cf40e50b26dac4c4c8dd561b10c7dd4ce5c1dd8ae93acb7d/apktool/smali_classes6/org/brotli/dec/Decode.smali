.class final Lorg/brotli/dec/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field private static final CODE_LENGTH_CODES:I = 0x12

.field private static final CODE_LENGTH_CODE_ORDER:[I

.field private static final CODE_LENGTH_REPEAT_CODE:I = 0x10

.field private static final DEFAULT_CODE_LENGTH:I = 0x8

.field private static final DISTANCE_CONTEXT_BITS:I = 0x2

.field private static final DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

.field private static final DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

.field private static final FIXED_TABLE:[I

.field private static final HUFFMAN_TABLE_BITS:I = 0x8

.field private static final HUFFMAN_TABLE_MASK:I = 0xff

.field private static final LITERAL_CONTEXT_BITS:I = 0x6

.field private static final NUM_BLOCK_LENGTH_CODES:I = 0x1a

.field private static final NUM_DISTANCE_SHORT_CODES:I = 0x10

.field private static final NUM_INSERT_AND_COPY_CODES:I = 0x2c0

.field private static final NUM_LITERAL_CODES:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    .line 40
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    const/16 v0, 0x10

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    .line 49
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyUncompressedData(Lorg/brotli/dec/State;)V
    .locals 5

    .line 545
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 546
    iget-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 549
    iget v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 550
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/BitReader;)V

    .line 551
    iput v3, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 555
    :cond_0
    iget v2, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v4, p0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 556
    iget v4, p0, Lorg/brotli/dec/State;->pos:I

    invoke-static {v0, v1, v4, v2}, Lorg/brotli/dec/BitReader;->copyBytes(Lorg/brotli/dec/BitReader;[BII)V

    .line 557
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 558
    iget v1, p0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/brotli/dec/State;->pos:I

    .line 559
    iget v1, p0, Lorg/brotli/dec/State;->pos:I

    iget v2, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 560
    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 561
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v0, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 562
    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    const/16 v0, 0xc

    .line 563
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 567
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/BitReader;)V

    .line 568
    iput v3, p0, Lorg/brotli/dec/State;->runningState:I

    return-void
.end method

.method private static decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V
    .locals 7

    .line 349
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 350
    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    mul-int/lit8 v2, p1, 0x2

    .line 352
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 353
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v3

    .line 355
    iget-object v5, p0, Lorg/brotli/dec/State;->blockLength:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v6, v4, v0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/BitReader;)I

    move-result v0

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 359
    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 361
    aget v3, v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x2

    .line 365
    :goto_0
    iget-object v0, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v0, v0, p1

    if-lt v3, v0, :cond_2

    .line 366
    iget-object p0, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_2
    add-int/lit8 p0, v2, 0x1

    .line 368
    aget p1, v1, p0

    aput p1, v1, v2

    .line 369
    aput v3, v1, p0

    return-void
.end method

.method private static decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x1

    .line 384
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 385
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->treeCommandOffset:I

    return-void
.end method

.method private static decodeContextMap(I[BLorg/brotli/dec/BitReader;)I
    .locals 8

    .line 305
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 306
    invoke-static {p2}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 309
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/Utils;->fillWithZeroes([BII)V

    return v0

    .line 313
    :cond_0
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_2

    const/4 v3, 0x4

    .line 316
    invoke-static {p2, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/16 v4, 0x438

    .line 318
    new-array v4, v4, [I

    add-int v5, v0, v3

    .line 319
    invoke-static {v5, v4, v2, p2}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    move v5, v2

    :cond_3
    :goto_2
    if-ge v5, p0, :cond_7

    .line 321
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 322
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 323
    invoke-static {v4, v2, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v6

    if-nez v6, :cond_4

    .line 325
    aput-byte v2, p1, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-gt v6, v3, :cond_6

    shl-int v7, v1, v6

    .line 328
    invoke-static {p2, v6}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v6

    add-int/2addr v7, v6

    :goto_4
    if-eqz v7, :cond_3

    if-ge v5, p0, :cond_5

    .line 333
    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 331
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    .line 338
    aput-byte v6, p1, v5

    goto :goto_3

    .line 342
    :cond_7
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p2

    if-ne p2, v1, :cond_8

    .line 343
    invoke-static {p1, p0}, Lorg/brotli/dec/Decode;->inverseMoveToFrontTransform([BI)V

    :cond_8
    return v0
.end method

.method private static decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 3

    const/4 v0, 0x2

    .line 389
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 390
    iget-object v1, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    shl-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    return-void
.end method

.method private static decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V
    .locals 4

    const/4 v0, 0x0

    .line 373
    invoke-static {p0, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;I)V

    .line 374
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    .line 375
    iput v2, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 376
    iget-object v2, p0, Lorg/brotli/dec/State;->contextMap:[B

    iget v3, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    .line 377
    iget-object v2, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v2, v2, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget v3, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    aget v2, v2, v3

    iput v2, p0, Lorg/brotli/dec/State;->literalTree:I

    .line 378
    iget-object v2, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v0, v2, v0

    .line 379
    sget-object v2, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    aget v2, v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 380
    sget-object v2, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    add-int/2addr v0, v1

    aget v0, v2, v0

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    return-void
.end method

.method private static decodeMetaBlockLength(Lorg/brotli/dec/BitReader;Lorg/brotli/dec/State;)V
    .locals 9

    const/4 v0, 0x1

    .line 77
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    .line 78
    iput v2, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 79
    iput-boolean v2, p1, Lorg/brotli/dec/State;->isUncompressed:Z

    .line 80
    iput-boolean v2, p1, Lorg/brotli/dec/State;->isMetadata:Z

    .line 81
    iget-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 84
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    .line 85
    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_6

    .line 86
    iput-boolean v0, p1, Lorg/brotli/dec/State;->isMetadata:Z

    .line 87
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 90
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    const/16 v4, 0x8

    .line 95
    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    if-gt v1, v0, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_4
    :goto_2
    iget v5, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v3, 0x8

    shl-int/2addr v4, v7

    or-int/2addr v4, v5

    iput v4, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 88
    :cond_5
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted reserved bit"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_9

    .line 103
    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v3, :cond_8

    if-gt v3, v4, :cond_7

    goto :goto_4

    .line 105
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_8
    :goto_4
    iget v7, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v8, v1, 0x4

    shl-int/2addr v5, v8

    or-int/2addr v5, v7

    iput v5, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_9
    iget v1, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v1, v0

    iput v1, p1, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 111
    iget-boolean v1, p1, Lorg/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_b

    .line 112
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    if-ne p0, v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    iput-boolean v0, p1, Lorg/brotli/dec/State;->isUncompressed:Z

    :cond_b
    return-void
.end method

.method private static decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I
    .locals 2

    const/4 v0, 0x1

    .line 65
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 66
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static decompress(Lorg/brotli/dec/State;)V
    .locals 19

    move-object/from16 v0, p0

    .line 597
    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    if-eqz v1, :cond_23

    .line 600
    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_22

    .line 603
    iget-object v1, v0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 604
    iget v2, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 605
    iget-object v4, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    move-object v10, v4

    .line 607
    :cond_0
    :goto_0
    iget v4, v0, Lorg/brotli/dec/State;->runningState:I

    const-string v5, "Invalid metablock length"

    const/16 v6, 0xa

    if-eq v4, v6, :cond_1f

    .line 609
    iget v4, v0, Lorg/brotli/dec/State;->runningState:I

    const/16 v11, 0xc

    if-eq v4, v11, :cond_1c

    const/16 v12, 0x8

    const-string v6, "Invalid backward reference"

    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v4, :pswitch_data_0

    .line 859
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lorg/brotli/dec/State;->runningState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :pswitch_0
    iget v4, v0, Lorg/brotli/dec/State;->copyLength:I

    if-lt v4, v7, :cond_3

    iget v4, v0, Lorg/brotli/dec/State;->copyLength:I

    const/16 v5, 0x18

    if-gt v4, v5, :cond_3

    .line 795
    sget-object v4, Lorg/brotli/dec/Dictionary;->OFFSETS_BY_LENGTH:[I

    iget v5, v0, Lorg/brotli/dec/State;->copyLength:I

    aget v4, v4, v5

    .line 796
    iget v5, v0, Lorg/brotli/dec/State;->distance:I

    iget v7, v0, Lorg/brotli/dec/State;->maxDistance:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v3

    .line 797
    sget-object v7, Lorg/brotli/dec/Dictionary;->SIZE_BITS_BY_LENGTH:[I

    iget v8, v0, Lorg/brotli/dec/State;->copyLength:I

    aget v7, v7, v8

    shl-int v8, v3, v7

    sub-int/2addr v8, v3

    and-int/2addr v8, v5

    ushr-int/2addr v5, v7

    .line 801
    iget v7, v0, Lorg/brotli/dec/State;->copyLength:I

    mul-int/2addr v8, v7

    add-int v7, v4, v8

    .line 802
    sget-object v4, Lorg/brotli/dec/Transform;->TRANSFORMS:[Lorg/brotli/dec/Transform;

    array-length v4, v4

    if-ge v5, v4, :cond_2

    .line 803
    iget v6, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 804
    invoke-static {}, Lorg/brotli/dec/Dictionary;->getData()[B

    move-result-object v8

    iget v9, v0, Lorg/brotli/dec/State;->copyLength:I

    sget-object v4, Lorg/brotli/dec/Transform;->TRANSFORMS:[Lorg/brotli/dec/Transform;

    aget-object v13, v4, v5

    move-object v4, v10

    move v5, v6

    move-object v6, v8

    move v8, v9

    move-object v9, v13

    .line 803
    invoke-static/range {v4 .. v9}, Lorg/brotli/dec/Transform;->transformDictionaryWord([BI[BIILorg/brotli/dec/Transform;)I

    move-result v4

    .line 806
    iget v5, v0, Lorg/brotli/dec/State;->copyDst:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 807
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/State;->pos:I

    .line 808
    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v5, v4

    iput v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 809
    iget v4, v0, Lorg/brotli/dec/State;->copyDst:I

    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-lt v4, v5, :cond_1

    .line 810
    iput v12, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 811
    iget v4, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 812
    iput v15, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 813
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 822
    :cond_1
    iput v14, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 817
    :cond_2
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_3
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :pswitch_1
    iget v4, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v5, v0, Lorg/brotli/dec/State;->copyDst:I

    iget v6, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v5, v6

    invoke-static {v10, v4, v10, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    iput v14, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 843
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->copyUncompressedData(Lorg/brotli/dec/State;)V

    goto/16 :goto_0

    .line 832
    :goto_1
    :pswitch_3
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-lez v4, :cond_4

    .line 833
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 835
    invoke-static {v1, v12}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    .line 836
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    goto :goto_1

    .line 838
    :cond_4
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 621
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V

    .line 622
    iput v14, v0, Lorg/brotli/dec/State;->runningState:I

    .line 626
    :pswitch_5
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v4, :cond_5

    .line 627
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 630
    :cond_5
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 631
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 632
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V

    .line 634
    :cond_6
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v5, v4, v3

    sub-int/2addr v5, v3

    aput v5, v4, v3

    .line 635
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 636
    iget-object v4, v0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v4, v4, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v5, v0, Lorg/brotli/dec/State;->treeCommandOffset:I

    invoke-static {v4, v5, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v4

    ushr-int/lit8 v5, v4, 0x6

    .line 638
    iput v15, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-lt v5, v13, :cond_7

    add-int/lit8 v5, v5, -0x2

    const/4 v12, -0x1

    .line 641
    iput v12, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 643
    :cond_7
    sget-object v12, Lorg/brotli/dec/Prefix;->INSERT_RANGE_LUT:[I

    aget v12, v12, v5

    ushr-int/lit8 v16, v4, 0x3

    and-int/lit8 v16, v16, 0x7

    add-int v12, v12, v16

    .line 644
    sget-object v16, Lorg/brotli/dec/Prefix;->COPY_RANGE_LUT:[I

    aget v5, v16, v5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v5, v4

    .line 645
    sget-object v4, Lorg/brotli/dec/Prefix;->INSERT_LENGTH_OFFSET:[I

    aget v4, v4, v12

    sget-object v16, Lorg/brotli/dec/Prefix;->INSERT_LENGTH_N_BITS:[I

    aget v12, v16, v12

    .line 646
    invoke-static {v1, v12}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v12

    add-int/2addr v4, v12

    iput v4, v0, Lorg/brotli/dec/State;->insertLength:I

    .line 647
    sget-object v4, Lorg/brotli/dec/Prefix;->COPY_LENGTH_OFFSET:[I

    aget v4, v4, v5

    sget-object v12, Lorg/brotli/dec/Prefix;->COPY_LENGTH_N_BITS:[I

    aget v5, v12, v5

    .line 648
    invoke-static {v1, v5}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/State;->copyLength:I

    .line 650
    iput v15, v0, Lorg/brotli/dec/State;->j:I

    .line 651
    iput v9, v0, Lorg/brotli/dec/State;->runningState:I

    .line 655
    :pswitch_6
    iget-boolean v4, v0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    if-eqz v4, :cond_a

    .line 656
    :cond_8
    iget v4, v0, Lorg/brotli/dec/State;->j:I

    iget v5, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v4, v5, :cond_d

    .line 657
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 658
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v4, v4, v15

    if-nez v4, :cond_9

    .line 659
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 661
    :cond_9
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v5, v4, v15

    sub-int/2addr v5, v3

    aput v5, v4, v15

    .line 662
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 663
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget-object v5, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget v12, v0, Lorg/brotli/dec/State;->literalTree:I

    .line 664
    invoke-static {v5, v12, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v10, v4

    .line 665
    iget v4, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/State;->j:I

    .line 666
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/brotli/dec/State;->pos:I

    if-ne v4, v2, :cond_8

    .line 667
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 668
    iget v4, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 669
    iput v15, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 670
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_3

    .line 675
    :cond_a
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v4, v3

    and-int/2addr v4, v2

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    .line 676
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v5, v13

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    .line 677
    :goto_2
    iget v12, v0, Lorg/brotli/dec/State;->j:I

    iget v8, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v12, v8, :cond_d

    .line 678
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 679
    iget-object v8, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v8, v8, v15

    if-nez v8, :cond_b

    .line 680
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 682
    :cond_b
    iget-object v8, v0, Lorg/brotli/dec/State;->contextMap:[B

    iget v12, v0, Lorg/brotli/dec/State;->contextMapSlice:I

    sget-object v17, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v7, v0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v7, v4

    aget v7, v17, v7

    sget-object v17, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v13, v0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    add-int/2addr v13, v5

    aget v5, v17, v13

    or-int/2addr v5, v7

    add-int/2addr v12, v5

    aget-byte v5, v8, v12

    and-int/lit16 v5, v5, 0xff

    .line 685
    iget-object v7, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v8, v7, v15

    sub-int/2addr v8, v3

    aput v8, v7, v15

    .line 687
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 688
    iget-object v7, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v7, v7, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v8, v0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v8, v8, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v5, v8, v5

    invoke-static {v7, v5, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v5

    .line 690
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    int-to-byte v8, v5

    aput-byte v8, v10, v7

    .line 691
    iget v7, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/brotli/dec/State;->j:I

    .line 692
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lorg/brotli/dec/State;->pos:I

    if-ne v7, v2, :cond_c

    .line 693
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 694
    iget v4, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v4, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 695
    iput v15, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 696
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_3

    :cond_c
    const/4 v7, 0x4

    const/4 v8, 0x7

    const/4 v13, 0x2

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_2

    .line 701
    :cond_d
    :goto_3
    iget v4, v0, Lorg/brotli/dec/State;->runningState:I

    if-eq v4, v9, :cond_e

    goto/16 :goto_0

    .line 704
    :cond_e
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    iget v5, v0, Lorg/brotli/dec/State;->insertLength:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 705
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v4, :cond_f

    .line 706
    iput v14, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 709
    :cond_f
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-gez v4, :cond_12

    .line 710
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 711
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    if-nez v4, :cond_10

    .line 712
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V

    .line 714
    :cond_10
    iget-object v4, v0, Lorg/brotli/dec/State;->blockLength:[I

    aget v7, v4, v5

    sub-int/2addr v7, v3

    aput v7, v4, v5

    .line 715
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 716
    iget-object v4, v0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v4, v4, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    iget-object v5, v0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v5, v5, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    iget-object v7, v0, Lorg/brotli/dec/State;->distContextMap:[B

    iget v8, v0, Lorg/brotli/dec/State;->distContextMapSlice:I

    iget v9, v0, Lorg/brotli/dec/State;->copyLength:I

    const/4 v12, 0x4

    if-le v9, v12, :cond_11

    move v9, v14

    goto :goto_4

    :cond_11
    iget v9, v0, Lorg/brotli/dec/State;->copyLength:I

    const/4 v12, 0x2

    sub-int/2addr v9, v12

    :goto_4
    add-int/2addr v8, v9

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    invoke-static {v4, v5, v1}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 719
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    if-lt v4, v5, :cond_12

    .line 720
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    sub-int/2addr v4, v5

    iput v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 721
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v5, v0, Lorg/brotli/dec/State;->distancePostfixMask:I

    and-int/2addr v4, v5

    .line 722
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget v7, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    ushr-int/2addr v5, v7

    iput v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 723
    iget v5, v0, Lorg/brotli/dec/State;->distanceCode:I

    ushr-int/2addr v5, v3

    add-int/2addr v5, v3

    .line 724
    iget v7, v0, Lorg/brotli/dec/State;->distanceCode:I

    and-int/2addr v7, v3

    const/4 v8, 0x2

    add-int/2addr v7, v8

    shl-int/2addr v7, v5

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    .line 725
    iget v8, v0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    add-int/2addr v8, v4

    .line 726
    invoke-static {v1, v5}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    add-int/2addr v7, v4

    iget v4, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int v4, v7, v4

    add-int/2addr v8, v4

    iput v8, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 732
    :cond_12
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    iget-object v5, v0, Lorg/brotli/dec/State;->distRb:[I

    iget v7, v0, Lorg/brotli/dec/State;->distRbIdx:I

    invoke-static {v4, v5, v7}, Lorg/brotli/dec/Decode;->translateShortCodes(I[II)I

    move-result v4

    iput v4, v0, Lorg/brotli/dec/State;->distance:I

    .line 733
    iget v4, v0, Lorg/brotli/dec/State;->distance:I

    if-ltz v4, :cond_1a

    .line 737
    iget v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    iget v5, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-eq v4, v5, :cond_13

    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget v5, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-ge v4, v5, :cond_13

    .line 739
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iput v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    goto :goto_5

    .line 741
    :cond_13
    iget v4, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    iput v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 744
    :goto_5
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iput v4, v0, Lorg/brotli/dec/State;->copyDst:I

    .line 745
    iget v4, v0, Lorg/brotli/dec/State;->distance:I

    iget v5, v0, Lorg/brotli/dec/State;->maxDistance:I

    if-le v4, v5, :cond_14

    const/16 v4, 0x9

    .line 746
    iput v4, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 750
    :cond_14
    iget v4, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-lez v4, :cond_15

    .line 751
    iget-object v4, v0, Lorg/brotli/dec/State;->distRb:[I

    iget v5, v0, Lorg/brotli/dec/State;->distRbIdx:I

    and-int/2addr v5, v14

    iget v7, v0, Lorg/brotli/dec/State;->distance:I

    aput v7, v4, v5

    .line 752
    iget v4, v0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 755
    :cond_15
    iget v4, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v5, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gt v4, v5, :cond_19

    .line 758
    iput v15, v0, Lorg/brotli/dec/State;->j:I

    const/4 v4, 0x7

    .line 759
    iput v4, v0, Lorg/brotli/dec/State;->runningState:I

    .line 762
    :pswitch_7
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget v5, v0, Lorg/brotli/dec/State;->distance:I

    sub-int/2addr v4, v5

    and-int/2addr v4, v2

    .line 763
    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    .line 764
    iget v6, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v7, v0, Lorg/brotli/dec/State;->j:I

    sub-int/2addr v6, v7

    add-int v7, v4, v6

    if-ge v7, v2, :cond_17

    add-int v7, v5, v6

    if-ge v7, v2, :cond_17

    :goto_6
    if-ge v15, v6, :cond_16

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 767
    aget-byte v4, v10, v4

    aput-byte v4, v10, v5

    add-int/lit8 v15, v15, 0x1

    move v5, v7

    move v4, v8

    goto :goto_6

    .line 769
    :cond_16
    iget v4, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/State;->j:I

    .line 770
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 771
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v4, v6

    iput v4, v0, Lorg/brotli/dec/State;->pos:I

    goto :goto_7

    .line 773
    :cond_17
    iget v4, v0, Lorg/brotli/dec/State;->j:I

    iget v5, v0, Lorg/brotli/dec/State;->copyLength:I

    if-ge v4, v5, :cond_18

    .line 774
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget v5, v0, Lorg/brotli/dec/State;->pos:I

    iget v6, v0, Lorg/brotli/dec/State;->distance:I

    sub-int/2addr v5, v6

    and-int/2addr v5, v2

    aget-byte v5, v10, v5

    aput-byte v5, v10, v4

    .line 776
    iget v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 777
    iget v4, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/brotli/dec/State;->j:I

    .line 778
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lorg/brotli/dec/State;->pos:I

    if-ne v4, v2, :cond_17

    const/4 v4, 0x7

    .line 779
    iput v4, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 780
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    iput v5, v0, Lorg/brotli/dec/State;->bytesToWrite:I

    .line 781
    iput v15, v0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 782
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v4, 0x7

    .line 787
    :goto_8
    iget v5, v0, Lorg/brotli/dec/State;->runningState:I

    if-ne v5, v4, :cond_0

    .line 788
    iput v14, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 756
    :cond_19
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_1a
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :pswitch_8
    iget v2, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_1b

    .line 614
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readMetablockInfo(Lorg/brotli/dec/State;)V

    .line 616
    iget v2, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v2, v3

    .line 617
    iget-object v10, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    goto/16 :goto_0

    .line 612
    :cond_1b
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_1c
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->writeRingBuffer(Lorg/brotli/dec/State;)Z

    move-result v4

    if-nez v4, :cond_1d

    return-void

    .line 851
    :cond_1d
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    iget v5, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-lt v4, v5, :cond_1e

    .line 852
    iget v4, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    iput v4, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 854
    :cond_1e
    iget v4, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v4, v2

    iput v4, v0, Lorg/brotli/dec/State;->pos:I

    .line 855
    iget v4, v0, Lorg/brotli/dec/State;->nextRunningState:I

    iput v4, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_0

    .line 862
    :cond_1f
    iget v2, v0, Lorg/brotli/dec/State;->runningState:I

    if-ne v2, v6, :cond_21

    .line 863
    iget v2, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v2, :cond_20

    .line 866
    invoke-static {v1}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/BitReader;)V

    .line 867
    iget-object v0, v0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    invoke-static {v0, v3}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/BitReader;Z)V

    goto :goto_9

    .line 864
    :cond_20
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v5}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_9
    return-void

    .line 601
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static inverseMoveToFrontTransform([BI)V
    .locals 4

    const/16 v0, 0x100

    .line 160
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 162
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_2

    .line 165
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 166
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1

    .line 168
    invoke-static {v1, v0}, Lorg/brotli/dec/Decode;->moveToFront([II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V
    .locals 6

    .line 394
    iget v0, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    int-to-long v1, v0

    .line 395
    iget-wide v3, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 397
    iget-wide v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    long-to-int v1, v1

    iget-object v2, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    add-int/2addr v1, v2

    :goto_0
    shr-int/lit8 v2, v0, 0x1

    if-le v2, v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 401
    :cond_0
    iget-boolean v1, p0, Lorg/brotli/dec/State;->inputEnd:Z

    if-nez v1, :cond_1

    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    iget v2, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-lt v2, v1, :cond_1

    move v0, v1

    .line 405
    :cond_1
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-gt v0, v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v0, 0x25

    .line 409
    new-array v1, v1, [B

    .line 410
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 411
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v4, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 414
    :cond_3
    iget-object v2, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    if-eqz v2, :cond_5

    .line 415
    iget-object v2, p0, Lorg/brotli/dec/State;->customDictionary:[B

    array-length v2, v2

    .line 417
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-le v2, v4, :cond_4

    .line 418
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    sub-int/2addr v2, v4

    .line 419
    iget v4, p0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    goto :goto_1

    :cond_4
    move v4, v2

    move v2, v3

    .line 421
    :goto_1
    iget-object v5, p0, Lorg/brotli/dec/State;->customDictionary:[B

    invoke-static {v5, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iput v4, p0, Lorg/brotli/dec/State;->pos:I

    .line 423
    iput v4, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    .line 426
    :cond_5
    :goto_2
    iput-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 427
    iput v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    return-void
.end method

.method private static moveToFront([II)V
    .locals 2

    .line 152
    aget v0, p0, p1

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 154
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 156
    aput v0, p0, p1

    return-void
.end method

.method private static readBlockLength([IILorg/brotli/dec/BitReader;)I
    .locals 1

    .line 136
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 137
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/BitReader;)I

    move-result p0

    .line 138
    sget-object p1, Lorg/brotli/dec/Prefix;->BLOCK_LENGTH_N_BITS:[I

    aget p1, p1, p0

    .line 139
    sget-object v0, Lorg/brotli/dec/Prefix;->BLOCK_LENGTH_OFFSET:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 236
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 238
    new-array v2, v0, [I

    const/4 v3, 0x2

    .line 239
    invoke-static {v1, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    add-int/lit8 v4, v0, -0x1

    const/4 v7, 0x4

    .line 243
    new-array v7, v7, [I

    .line 244
    invoke-static {v1, v3}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v8

    add-int/2addr v8, v6

    move v9, v5

    :goto_0
    if-eqz v4, :cond_0

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    .line 252
    invoke-static {v1, v9}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v10

    rem-int/2addr v10, v0

    aput v10, v7, v4

    .line 253
    aput v3, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 255
    :cond_1
    aget v4, v7, v5

    aput v6, v2, v4

    if-eq v8, v6, :cond_d

    if-eq v8, v3, :cond_5

    const/4 v4, 0x3

    if-eq v8, v4, :cond_4

    .line 268
    aget v8, v7, v5

    aget v9, v7, v6

    if-eq v8, v9, :cond_2

    aget v10, v7, v3

    if-eq v8, v10, :cond_2

    aget v11, v7, v4

    if-eq v8, v11, :cond_2

    if-eq v9, v10, :cond_2

    if-eq v9, v11, :cond_2

    if-eq v10, v11, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    .line 270
    :goto_2
    invoke-static {v1, v6}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 271
    aget v1, v7, v3

    aput v4, v2, v1

    .line 272
    aget v1, v7, v4

    aput v4, v2, v1

    goto :goto_3

    .line 274
    :cond_3
    aget v1, v7, v5

    aput v3, v2, v1

    :goto_3
    move v6, v8

    goto :goto_6

    .line 264
    :cond_4
    aget v1, v7, v5

    aget v4, v7, v6

    if-eq v1, v4, :cond_c

    aget v3, v7, v3

    if-eq v1, v3, :cond_c

    if-eq v4, v3, :cond_c

    move v5, v6

    goto :goto_5

    .line 260
    :cond_5
    aget v1, v7, v5

    aget v3, v7, v6

    if-eq v1, v3, :cond_6

    move v5, v6

    .line 261
    :cond_6
    aput v6, v2, v3

    goto :goto_5

    :cond_7
    const/16 v3, 0x12

    .line 279
    new-array v7, v3, [I

    const/16 v8, 0x20

    move v10, v5

    move v9, v8

    :goto_4
    if-ge v4, v3, :cond_9

    if-lez v9, :cond_9

    .line 283
    sget-object v11, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    aget v11, v11, v4

    .line 284
    invoke-static/range {p3 .. p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 285
    iget-wide v12, v1, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v14, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v12, v14

    long-to-int v12, v12

    and-int/lit8 v12, v12, 0xf

    .line 287
    iget v13, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    sget-object v14, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v15, v14, v12

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v13, v15

    iput v13, v1, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 288
    aget v12, v14, v12

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 289
    aput v12, v7, v11

    if-eqz v12, :cond_8

    shr-int v11, v8, v12

    sub-int/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    if-eq v10, v6, :cond_a

    if-nez v9, :cond_b

    :cond_a
    move v5, v6

    .line 296
    :cond_b
    invoke-static {v7, v0, v2, v1}, Lorg/brotli/dec/Decode;->readHuffmanCodeLengths([II[ILorg/brotli/dec/BitReader;)V

    :cond_c
    :goto_5
    move v6, v5

    :cond_d
    :goto_6
    if-eqz v6, :cond_e

    const/16 v1, 0x8

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 301
    invoke-static {v3, v4, v1, v2, v0}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    return-void

    .line 299
    :cond_e
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readHuffmanCodeLengths([II[ILorg/brotli/dec/BitReader;)V
    .locals 11

    const/16 v0, 0x20

    .line 180
    new-array v0, v0, [I

    const/4 v1, 0x5

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 182
    invoke-static {v0, v3, v1, p0, v2}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)V

    const/16 p0, 0x8

    const v1, 0x8000

    move v4, v1

    move v2, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v2, p1, :cond_8

    if-lez v4, :cond_8

    .line 185
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 186
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/BitReader;)V

    .line 187
    iget-wide v7, p3, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v9, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    .line 188
    iget v8, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    aget v9, v0, v7

    const/16 v10, 0x10

    shr-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, p3, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 189
    aget v7, v0, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ge v7, v10, :cond_1

    add-int/lit8 v6, v2, 0x1

    .line 192
    aput v7, p2, v2

    if-eqz v7, :cond_0

    shr-int p0, v1, v7

    sub-int/2addr v4, p0

    move v2, v6

    move p0, v7

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    move v6, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v10, :cond_2

    move v7, p0

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eq v5, v7, :cond_3

    move v6, v3

    move v5, v7

    :cond_3
    if-lez v6, :cond_4

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v8

    goto :goto_3

    :cond_4
    move v7, v6

    .line 212
    :goto_3
    invoke-static {p3, v8}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v2, v6

    if-gt v8, p1, :cond_7

    move v8, v3

    :goto_4
    if-ge v8, v6, :cond_5

    add-int/lit8 v9, v2, 0x1

    .line 218
    aput v5, p2, v2

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_6
    move v6, v7

    goto :goto_0

    .line 215
    :cond_7
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v4, :cond_9

    sub-int/2addr p1, v2

    .line 229
    invoke-static {p2, v2, p1}, Lorg/brotli/dec/Utils;->fillWithZeroes([III)V

    return-void

    .line 226
    :cond_9
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V
    .locals 11

    .line 475
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 478
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    invoke-static {v0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/BitReader;)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v2

    .line 479
    iget-object v3, p0, Lorg/brotli/dec/State;->blockLength:[I

    const/high16 v6, 0x10000000

    aput v6, v3, v2

    .line 480
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    if-le v3, v5, :cond_0

    .line 481
    iget-object v3, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v3, v3, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/brotli/dec/State;->blockTypeTrees:[I

    mul-int/lit16 v5, v2, 0x438

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    const/16 v3, 0x1a

    .line 483
    iget-object v4, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v3, v4, v5, v0}, Lorg/brotli/dec/Decode;->readHuffmanCode(I[IILorg/brotli/dec/BitReader;)V

    .line 485
    iget-object v3, p0, Lorg/brotli/dec/State;->blockLength:[I

    iget-object v4, p0, Lorg/brotli/dec/State;->blockLenTrees:[I

    invoke-static {v4, v5, v0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/BitReader;)I

    move-result v4

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 491
    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v2

    iput v2, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    const/4 v2, 0x4

    .line 493
    invoke-static {v0, v2}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v6

    iget v7, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    .line 494
    iget v6, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int v6, v5, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/brotli/dec/State;->distancePostfixMask:I

    .line 495
    iget v6, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v7, 0x30

    iget v8, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 497
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/State;->contextModes:[B

    move v7, v1

    .line 498
    :goto_1
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v1

    if-ge v7, v8, :cond_3

    add-int/lit8 v8, v7, 0x60

    .line 500
    iget-object v9, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_2

    .line 502
    iget-object v9, p0, Lorg/brotli/dec/State;->contextModes:[B

    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/BitReader;I)I

    move-result v10

    shl-int/2addr v10, v5

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 504
    :cond_2
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    goto :goto_1

    .line 508
    :cond_3
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/State;->contextMap:[B

    .line 509
    iget-object v7, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v7, v7, v1

    shl-int/lit8 v7, v7, 0x6

    iget-object v8, p0, Lorg/brotli/dec/State;->contextMap:[B

    invoke-static {v7, v8, v0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/BitReader;)I

    move-result v7

    .line 511
    iput-boolean v5, p0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    move v8, v1

    .line 512
    :goto_3
    iget-object v9, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v1

    shl-int/lit8 v9, v9, 0x6

    if-ge v8, v9, :cond_5

    .line 513
    iget-object v9, p0, Lorg/brotli/dec/State;->contextMap:[B

    aget-byte v9, v9, v8

    shr-int/lit8 v10, v8, 0x6

    if-eq v9, v10, :cond_4

    .line 514
    iput-boolean v1, p0, Lorg/brotli/dec/State;->trivialLiteralContext:Z

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 520
    :cond_5
    :goto_4
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/brotli/dec/State;->distContextMap:[B

    .line 521
    iget-object v8, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v8, v8, v4

    shl-int/2addr v8, v4

    iget-object v9, p0, Lorg/brotli/dec/State;->distContextMap:[B

    invoke-static {v8, v9, v0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/BitReader;)I

    move-result v8

    .line 524
    iget-object v9, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    const/16 v10, 0x100

    invoke-static {v9, v10, v7}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 525
    iget-object v7, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v9, p0, Lorg/brotli/dec/State;->numBlockTypes:[I

    aget v9, v9, v5

    const/16 v10, 0x2c0

    invoke-static {v7, v10, v9}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 526
    iget-object v7, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v7, v6, v8}, Lorg/brotli/dec/HuffmanTreeGroup;->init(Lorg/brotli/dec/HuffmanTreeGroup;II)V

    .line 528
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 529
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 530
    iget-object v6, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    invoke-static {v6, v0}, Lorg/brotli/dec/HuffmanTreeGroup;->decode(Lorg/brotli/dec/HuffmanTreeGroup;Lorg/brotli/dec/BitReader;)V

    .line 532
    iput v1, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 533
    iput v1, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    .line 534
    sget-object v0, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    .line 535
    sget-object v0, Lorg/brotli/dec/Context;->LOOKUP_OFFSETS:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v6, v6, v1

    add-int/2addr v6, v5

    aget v0, v0, v6

    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    .line 536
    iput v1, p0, Lorg/brotli/dec/State;->literalTreeIndex:I

    .line 537
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->literalTree:I

    .line 538
    iget-object v0, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iget-object v0, v0, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->treeCommandOffset:I

    .line 540
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v6, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v7, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    aput v5, v7, v2

    aput v5, v6, v4

    aput v5, v0, v1

    .line 541
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object v2, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    iget-object p0, p0, Lorg/brotli/dec/State;->blockTypeRb:[I

    const/4 v4, 0x5

    aput v1, p0, v4

    aput v1, v2, v3

    aput v1, v0, v5

    return-void
.end method

.method private static readMetablockInfo(Lorg/brotli/dec/State;)V
    .locals 4

    .line 436
    iget-object v0, p0, Lorg/brotli/dec/State;->br:Lorg/brotli/dec/BitReader;

    .line 438
    iget-boolean v1, p0, Lorg/brotli/dec/State;->inputEnd:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    .line 439
    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 440
    iget v0, p0, Lorg/brotli/dec/State;->pos:I

    iput v0, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    const/16 v0, 0xc

    .line 442
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 447
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup0:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 448
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 449
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup1:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 450
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->codes:[I

    .line 451
    iget-object v1, p0, Lorg/brotli/dec/State;->hGroup2:Lorg/brotli/dec/HuffmanTreeGroup;

    iput-object v2, v1, Lorg/brotli/dec/HuffmanTreeGroup;->trees:[I

    .line 453
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/BitReader;)V

    .line 454
    invoke-static {v0, p0}, Lorg/brotli/dec/Decode;->decodeMetaBlockLength(Lorg/brotli/dec/BitReader;Lorg/brotli/dec/State;)V

    .line 455
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-nez v1, :cond_1

    return-void

    .line 458
    :cond_1
    iget-boolean v1, p0, Lorg/brotli/dec/State;->isUncompressed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 462
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_2

    .line 459
    :cond_3
    :goto_0
    invoke-static {v0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/BitReader;)V

    .line 460
    iget-boolean v0, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    .line 465
    :goto_2
    iget-boolean v0, p0, Lorg/brotli/dec/State;->isMetadata:Z

    if-eqz v0, :cond_5

    return-void

    .line 468
    :cond_5
    iget-wide v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    iget v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:J

    .line 469
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-ge v0, v1, :cond_6

    .line 470
    invoke-static {p0}, Lorg/brotli/dec/Decode;->maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V

    :cond_6
    return-void
.end method

.method private static readSymbol([IILorg/brotli/dec/BitReader;)I
    .locals 5

    .line 120
    iget-wide v0, p2, Lorg/brotli/dec/BitReader;->accumulator:J

    iget v2, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v1, v0, 0xff

    add-int/2addr p1, v1

    .line 122
    aget v1, p0, p1

    shr-int/lit8 v2, v1, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v4, 0x8

    if-gt v2, v4, :cond_0

    .line 125
    iget p0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    add-int/2addr p0, v2

    iput p0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    return v1

    :cond_0
    add-int/2addr p1, v1

    const/4 v1, 0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    ushr-int/2addr v0, v4

    add-int/2addr p1, v0

    .line 131
    iget v0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    aget v1, p0, p1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p2, Lorg/brotli/dec/BitReader;->bitOffset:I

    .line 132
    aget p0, p0, p1

    and-int/2addr p0, v3

    return p0
.end method

.method static setCustomDictionary(Lorg/brotli/dec/State;[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 590
    new-array p1, p1, [B

    :cond_0
    iput-object p1, p0, Lorg/brotli/dec/State;->customDictionary:[B

    return-void
.end method

.method private static translateShortCodes(I[II)I
    .locals 1

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 144
    sget-object v0, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    aget v0, v0, p0

    add-int/2addr p2, v0

    and-int/lit8 p2, p2, 0x3

    .line 146
    aget p1, p1, p2

    sget-object p2, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    aget p0, p2, p0

    add-int/2addr p1, p0

    return p1

    :cond_0
    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method private static writeRingBuffer(Lorg/brotli/dec/State;)Z
    .locals 7

    .line 573
    iget v0, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 574
    iget v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    iget v2, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 575
    iput v1, p0, Lorg/brotli/dec/State;->bytesToIgnore:I

    .line 577
    :cond_0
    iget v0, p0, Lorg/brotli/dec/State;->outputLength:I

    iget v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/brotli/dec/State;->bytesToWrite:I

    iget v3, p0, Lorg/brotli/dec/State;->bytesWritten:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v3, p0, Lorg/brotli/dec/State;->bytesWritten:I

    iget-object v4, p0, Lorg/brotli/dec/State;->output:[B

    iget v5, p0, Lorg/brotli/dec/State;->outputOffset:I

    iget v6, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    iget v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->outputUsed:I

    .line 583
    iget v2, p0, Lorg/brotli/dec/State;->bytesWritten:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->bytesWritten:I

    .line 586
    :cond_1
    iget v0, p0, Lorg/brotli/dec/State;->outputUsed:I

    iget p0, p0, Lorg/brotli/dec/State;->outputLength:I

    if-ge v0, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
