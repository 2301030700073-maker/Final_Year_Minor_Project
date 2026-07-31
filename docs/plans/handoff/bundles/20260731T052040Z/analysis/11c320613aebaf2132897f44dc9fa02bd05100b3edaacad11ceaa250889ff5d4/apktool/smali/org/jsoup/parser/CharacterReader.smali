.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final BufferPool:Lorg/jsoup/parser/TokenData;

.field public static final StringPool:Lorg/jsoup/parser/TokenData;


# instance fields
.field public bufLength:I

.field public bufMark:I

.field public bufPos:I

.field public charBuf:[C

.field public consumed:I

.field public fillPoint:I

.field public lastIcIndex:I

.field public lastIcSeq:Ljava/lang/String;

.field public lineNumberOffset:I

.field public newlinePositions:Ljava/util/ArrayList;

.field public readFully:Z

.field public reader:Ljava/io/Reader;

.field public stringCache:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/util/function/Supplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/parser/TokenData;

    .line 13
    .line 14
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/util/function/Supplier;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/parser/TokenData;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 15
    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 17
    .line 18
    sget-object p1, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/parser/TokenData;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->borrow()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, [C

    .line 25
    .line 26
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 27
    .line 28
    sget-object p1, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->borrow()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-le p3, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    if-ge p3, v0, :cond_1

    .line 13
    .line 14
    const-string p0, ""

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    add-int v0, p3, p2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, p2

    .line 21
    move v3, v1

    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    mul-int/lit8 v3, v3, 0x1f

    .line 25
    .line 26
    aget-char v4, p0, v2

    .line 27
    .line 28
    add-int/2addr v3, v4

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    and-int/lit16 v0, v3, 0x1ff

    .line 33
    .line 34
    aget-object v2, p1, v0

    .line 35
    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne p3, v3, :cond_5

    .line 43
    .line 44
    move v4, p2

    .line 45
    move v3, p3

    .line 46
    :goto_1
    add-int/lit8 v5, v3, -0x1

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    add-int/lit8 v3, v4, 0x1

    .line 51
    .line 52
    aget-char v4, p0, v4

    .line 53
    .line 54
    add-int/lit8 v6, v1, 0x1

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eq v4, v1, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v4, v3

    .line 64
    move v3, v5

    .line 65
    move v1, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    return-object v2

    .line 68
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 71
    .line 72
    .line 73
    aput-object v1, p1, v0

    .line 74
    .line 75
    return-object v1
.end method


# virtual methods
.method public final advance()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    return-void
.end method

.method public final bufferUp()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_5

    .line 10
    .line 11
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 21
    .line 22
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 31
    .line 32
    invoke-static {v4, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 36
    .line 37
    :goto_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 38
    .line 39
    const/16 v1, 0x800

    .line 40
    .line 41
    if-ge v0, v1, :cond_4

    .line 42
    .line 43
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 44
    .line 45
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 46
    .line 47
    array-length v4, v3

    .line 48
    sub-int/2addr v4, v0

    .line 49
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/Reader;->read([CII)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 63
    .line 64
    add-int/2addr v1, v0

    .line 65
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Ljava/io/UncheckedIOException;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_4
    :goto_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 76
    .line 77
    const/16 v1, 0x400

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 90
    .line 91
    :cond_5
    :goto_2
    return-void
.end method

.method public final close()V
    .locals 6

    .line 1
    sget-object v0, Lorg/jsoup/parser/CharacterReader;->StringPool:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/CharacterReader;->BufferPool:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 16
    .line 17
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 28
    .line 29
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 39
    .line 40
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 41
    .line 42
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 51
    .line 52
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 58
    .line 59
    throw v2

    .line 60
    :catch_0
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 61
    .line 62
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 73
    .line 74
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenData;->release(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0
.end method

.method public final consume()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const v1, 0xffff

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 15
    .line 16
    aget-char v1, v1, v0

    .line 17
    .line 18
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 21
    .line 22
    return v1
.end method

.method public final consumeData()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    aget-char v4, v2, v3

    .line 14
    .line 15
    const/16 v5, 0x26

    .line 16
    .line 17
    if-eq v4, v5, :cond_0

    .line 18
    .line 19
    const/16 v5, 0x3c

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_1
    if-eqz v4, :cond_1

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 34
    .line 35
    if-le v3, v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 38
    .line 39
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 40
    .line 41
    sub-int/2addr v3, v0

    .line 42
    invoke-static {v1, p0, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const-string p0, ""

    .line 48
    .line 49
    :goto_2
    return-object p0
.end method

.method public final consumeLetterSequence()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    aget-char v4, v2, v3

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 25
    .line 26
    if-le v3, v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 29
    .line 30
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 31
    .line 32
    sub-int/2addr v3, v0

    .line 33
    invoke-static {v1, p0, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, ""

    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method public final consumeMatching(Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v2, p1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    aget-char v3, v1, v2

    .line 14
    .line 15
    const/16 v4, 0x9

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    const/16 v4, 0xc

    .line 24
    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    .line 27
    const/16 v4, 0xd

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    const/16 v4, 0x20

    .line 32
    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    const/16 v4, 0x2f

    .line 36
    .line 37
    if-eq v3, v4, :cond_0

    .line 38
    .line 39
    const/16 v4, 0x3e

    .line 40
    .line 41
    if-eq v3, v4, :cond_0

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v3, 0x0

    .line 46
    :goto_1
    if-eqz v3, :cond_1

    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 52
    .line 53
    if-le v2, p1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 56
    .line 57
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 58
    .line 59
    sub-int/2addr v2, p1

    .line 60
    invoke-static {v0, p0, p1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    const-string p0, ""

    .line 66
    .line 67
    return-object p0
.end method

.method public final consumeTo(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 12
    .line 13
    aget-char v1, v1, v0

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 18
    .line 19
    sub-int/2addr v0, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v2

    .line 25
    :goto_1
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 28
    .line 29
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 30
    .line 31
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 38
    .line 39
    add-int/2addr v1, v0

    .line 40
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final varargs consumeToAny([C)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    aget-char v4, v2, v3

    .line 14
    .line 15
    array-length v5, p1

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    if-ge v6, v5, :cond_1

    .line 18
    .line 19
    aget-char v7, p1, v6

    .line 20
    .line 21
    if-ne v4, v7, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_2
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 31
    .line 32
    if-le v3, v0, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 35
    .line 36
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 37
    .line 38
    sub-int/2addr v3, v0

    .line 39
    invoke-static {p1, p0, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_3
    const-string p0, ""

    .line 45
    .line 46
    return-object p0
.end method

.method public final varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 9
    .line 10
    move v3, v0

    .line 11
    :goto_0
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    aget-char v4, v2, v3

    .line 14
    .line 15
    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-gez v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 25
    .line 26
    if-le v3, v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 29
    .line 30
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 31
    .line 32
    sub-int/2addr v3, v0

    .line 33
    invoke-static {p1, p0, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const-string p0, ""

    .line 39
    .line 40
    return-object p0
.end method

.method public final consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 5
    .line 6
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 7
    .line 8
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 9
    .line 10
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 11
    .line 12
    sub-int/2addr v3, v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 18
    .line 19
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 20
    .line 21
    return-object v0
.end method

.method public final current()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const p0, 0xffff

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 15
    .line 16
    aget-char p0, p0, v0

    .line 17
    .line 18
    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    .line 6
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 7
    .line 8
    if-lt v0, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final lineNumIndex(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, -0x1

    .line 14
    if-ge p0, p1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    add-int/lit8 p0, p0, -0x2

    .line 21
    .line 22
    :cond_0
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final matchConsume(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 12
    .line 13
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 28
    .line 29
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 30
    .line 31
    add-int/2addr v5, v1

    .line 32
    aget-char v4, v4, v5

    .line 33
    .line 34
    if-eq v3, v4, :cond_1

    .line 35
    .line 36
    :goto_1
    return v2

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-int/2addr p1, v0

    .line 47
    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0
.end method

.method public final matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr p1, v0

    .line 14
    iput p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final matches(C)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 8
    .line 9
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 10
    .line 11
    aget-char p0, v0, p0

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final varargs matchesAny([C)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 13
    .line 14
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 15
    .line 16
    aget-char p0, v0, p0

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    aget-char v3, p1, v2

    .line 23
    .line 24
    if-ne v3, p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    return v1
.end method

.method public final matchesAsciiAlpha()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 10
    .line 11
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    aget-char p0, v0, p0

    .line 14
    .line 15
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 9
    .line 10
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    if-ge v1, v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 25
    .line 26
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 27
    .line 28
    add-int/2addr v5, v1

    .line 29
    aget-char v4, v4, v5

    .line 30
    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eq v3, v4, :cond_2

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public final nextIndexOf(Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 16
    .line 17
    aget-char v2, v2, v1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    :goto_1
    add-int/2addr v1, v3

    .line 23
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 24
    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 28
    .line 29
    aget-char v2, v2, v1

    .line 30
    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    add-int/2addr v4, v2

    .line 41
    sub-int/2addr v4, v3

    .line 42
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 43
    .line 44
    if-ge v1, v5, :cond_2

    .line 45
    .line 46
    if-gt v4, v5, :cond_2

    .line 47
    .line 48
    move v5, v2

    .line 49
    :goto_2
    if-ge v5, v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 56
    .line 57
    aget-char v7, v7, v5

    .line 58
    .line 59
    if-ne v6, v7, :cond_1

    .line 60
    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    if-ne v5, v4, :cond_2

    .line 67
    .line 68
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 69
    .line 70
    sub-int/2addr v1, p0

    .line 71
    return v1

    .line 72
    :cond_2
    move v1, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 p0, -0x1

    .line 75
    return p0
.end method

.method public final pos()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 2
    .line 3
    iget p0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 4
    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public final posLineCol()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 21
    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/2addr v1, v2

    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v2, v4

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ":"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v2, v3, :cond_3

    .line 51
    .line 52
    :cond_2
    :goto_1
    add-int/2addr v1, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    sub-int/2addr v1, p0

    .line 67
    goto :goto_1

    .line 68
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method public final rewindToMark()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 7
    .line 8
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/io/UncheckedIOException;

    .line 12
    .line 13
    new-instance v0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string v1, "Mark invalid"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final scanBufferForNewlines()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 33
    .line 34
    add-int/2addr v2, v0

    .line 35
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 36
    .line 37
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 48
    .line 49
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 50
    .line 51
    if-ge v0, v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 54
    .line 55
    aget-char v1, v1, v0

    .line 56
    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    if-ne v1, v2, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->consumed:I

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    add-int/2addr v2, v0

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 18
    .line 19
    .line 20
    return-object v2
.end method

.method public final unconsume()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/io/UncheckedIOException;

    .line 11
    .line 12
    new-instance v0, Ljava/io/IOException;

    .line 13
    .line 14
    const-string v1, "WTF: No buffer left to unconsume."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
