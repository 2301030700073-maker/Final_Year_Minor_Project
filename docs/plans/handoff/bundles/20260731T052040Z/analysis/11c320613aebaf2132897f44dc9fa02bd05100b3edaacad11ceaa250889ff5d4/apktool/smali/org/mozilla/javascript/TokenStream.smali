.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Parser$CurrentPositionReporter;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1

.field private static final NUMERIC_SEPARATOR:C = '_'

.field private static final REPORT_NUMBER_FORMAT_ERROR:I = -0x2


# instance fields
.field private final allStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bigInt:Ljava/math/BigInteger;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isBinary:Z

.field private isHex:Z

.field private isOctal:Z

.field private isOldOctal:Z

.field private lastLineEnd:I

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field private rawString:Ljava/lang/StringBuilder;

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private tokenStartLastLineEnd:I

.field private tokenStartLineno:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v1, 0x80

    .line 16
    .line 17
    new-array v1, v1, [C

    .line 18
    .line 19
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Ljava/util/HashMap;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    new-array v1, v1, [I

    .line 30
    .line 31
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 35
    .line 36
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 40
    .line 41
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 42
    .line 43
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 44
    .line 45
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 46
    .line 47
    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 54
    .line 55
    .line 56
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    .line 57
    .line 58
    const/16 p1, 0x200

    .line 59
    .line 60
    new-array p1, p1, [C

    .line 61
    .line 62
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 63
    .line 64
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    .line 69
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 70
    .line 71
    .line 72
    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 79
    .line 80
    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 81
    .line 82
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 83
    .line 84
    return-void
.end method

.method private addToString(I)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int v2, v0, v1

    .line 8
    .line 9
    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    if-lt v2, v4, :cond_0

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    mul-int/lit8 v4, v4, 0x2

    .line 16
    .line 17
    new-array v4, v4, [C

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static {v3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 24
    .line 25
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v1, v4, :cond_1

    .line 29
    .line 30
    int-to-char p1, p1

    .line 31
    aput-char p1, v3, v0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    aput-char v1, v3, v0

    .line 39
    .line 40
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 41
    .line 42
    add-int/2addr v0, v4

    .line 43
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    aput-char p1, v1, v0

    .line 48
    .line 49
    :goto_0
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 50
    .line 51
    return-void
.end method

.method private canUngetChar()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    aget p0, p0, v0

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    return v1
.end method

.method private final charAt(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-lt p1, v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_2
    if-lt p1, v2, :cond_4

    .line 20
    .line 21
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 22
    .line 23
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 31
    .line 32
    sub-int/2addr v1, v0

    .line 33
    sub-int/2addr p1, v1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    return v0

    .line 36
    :cond_4
    :goto_0
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 37
    .line 38
    aget-char p0, p0, p1

    .line 39
    .line 40
    return p0
.end method

.method private static convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "\\u"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    rsub-int/lit8 v0, v0, 0x4

    .line 35
    .line 36
    if-ge v2, v0, :cond_0

    .line 37
    .line 38
    const/16 v0, 0x30

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private fillSourceBuffer()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 27
    .line 28
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 29
    .line 30
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 31
    .line 32
    sub-int/2addr v3, v1

    .line 33
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 37
    .line 38
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 39
    .line 40
    sub-int/2addr v0, v1

    .line 41
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 42
    .line 43
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 44
    .line 45
    sub-int/2addr v0, v1

    .line 46
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 47
    .line 48
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 52
    .line 53
    array-length v1, v0

    .line 54
    mul-int/lit8 v1, v1, 0x2

    .line 55
    .line 56
    new-array v1, v1, [C

    .line 57
    .line 58
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 59
    .line 60
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 64
    .line 65
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    .line 66
    .line 67
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 68
    .line 69
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 70
    .line 71
    array-length v4, v1

    .line 72
    sub-int/2addr v4, v3

    .line 73
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-gez v0, :cond_3

    .line 78
    .line 79
    return v2

    .line 80
    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 81
    .line 82
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0
.end method

.method private getChar()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result p0

    return p0
.end method

.method private getChar(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result p0

    return p0
.end method

.method private getChar(ZZ)I
    .locals 6

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 10
    .line 11
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 15
    .line 16
    aget p0, p1, v0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 20
    .line 21
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 27
    .line 28
    if-ne v2, v4, :cond_1

    .line 29
    .line 30
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 34
    .line 35
    add-int/2addr v4, v1

    .line 36
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v4, v2

    .line 49
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 53
    .line 54
    if-ne v2, v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 63
    .line 64
    return v3

    .line 65
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 66
    .line 67
    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 69
    .line 70
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 71
    .line 72
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 73
    .line 74
    add-int/lit8 v4, v2, 0x1

    .line 75
    .line 76
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 77
    .line 78
    aget-char v0, v0, v2

    .line 79
    .line 80
    :goto_1
    const/16 v2, 0xd

    .line 81
    .line 82
    const/16 v4, 0xa

    .line 83
    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 87
    .line 88
    if-ltz v5, :cond_5

    .line 89
    .line 90
    if-ne v5, v2, :cond_4

    .line 91
    .line 92
    if-ne v0, v4, :cond_4

    .line 93
    .line 94
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 98
    .line 99
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 100
    .line 101
    sub-int/2addr v3, v1

    .line 102
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 103
    .line 104
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 105
    .line 106
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 107
    .line 108
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 109
    .line 110
    add-int/2addr v3, v1

    .line 111
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 112
    .line 113
    :cond_5
    const/16 v3, 0x7f

    .line 114
    .line 115
    if-gt v0, v3, :cond_7

    .line 116
    .line 117
    if-eq v0, v4, :cond_6

    .line 118
    .line 119
    if-ne v0, v2, :cond_a

    .line 120
    .line 121
    :cond_6
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 122
    .line 123
    return v4

    .line 124
    :cond_7
    const v2, 0xfeff

    .line 125
    .line 126
    .line 127
    if-ne v0, v2, :cond_8

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    if-eqz p1, :cond_9

    .line 131
    .line 132
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_a

    .line 144
    .line 145
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 146
    .line 147
    return v4

    .line 148
    :cond_a
    :goto_2
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private getCharIgnoreLineEnd(Z)I
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(ZZ)I

    move-result p0

    return p0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2
    .line 3
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private getTemplateLiteralChar()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    if-ne v1, v2, :cond_3

    .line 9
    .line 10
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 11
    .line 12
    const/16 v4, 0xd

    .line 13
    .line 14
    if-eq v3, v4, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x2028

    .line 17
    .line 18
    if-eq v3, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x2029

    .line 21
    .line 22
    if-eq v3, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 28
    .line 29
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v3, v2, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 40
    .line 41
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 46
    .line 47
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 52
    .line 53
    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 54
    .line 55
    int-to-char v0, v1

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    return v1
.end method

.method private internString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0, p1, p1}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    return-object p0
.end method

.method private static isAlpha(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gt p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x41

    .line 8
    .line 9
    if-gt v0, p0, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    const/16 v0, 0x61

    .line 14
    .line 15
    if-gt v0, p0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x7a

    .line 18
    .line 19
    if-gt p0, v0, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    return v1
.end method

.method private static isDigit(I)Z
    .locals 1

    .line 44
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isDigit(II)Z
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x10

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isHexDigit(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    :cond_1
    const/16 v0, 0x8

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isOctalDigit(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_2
    const/4 v0, 0x2

    .line 32
    if-ne p0, v0, :cond_4

    .line 33
    .line 34
    invoke-static {p1}, Lorg/mozilla/javascript/TokenStream;->isDualDigit(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    :cond_3
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_4
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method private static isDualDigit(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-eq v0, p0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x31

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

.method private static isHexDigit(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-le p0, v0, :cond_2

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x61

    .line 10
    .line 11
    if-gt v0, p0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x66

    .line 14
    .line 15
    if-le p0, v0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/16 v0, 0x41

    .line 18
    .line 19
    if-gt v0, p0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x46

    .line 22
    .line 23
    if-gt p0, v0, :cond_3

    .line 24
    .line 25
    :cond_2
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_3
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private static isJSFormatChar(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    int-to-char p0, p0

    .line 6
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private static isJSSpace(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0xc

    .line 6
    .line 7
    if-gt p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    if-eq p0, v3, :cond_1

    .line 18
    .line 19
    const/16 v0, 0xb

    .line 20
    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v2

    .line 25
    :cond_1
    :goto_0
    return v1

    .line 26
    :cond_2
    const/16 v0, 0xa0

    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    const v0, 0xfeff

    .line 31
    .line 32
    .line 33
    if-eq p0, v0, :cond_4

    .line 34
    .line 35
    int-to-char p0, p0

    .line 36
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ne p0, v3, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    return v2

    .line 44
    :cond_4
    :goto_1
    return v1
.end method

.method public static isKeyword(Ljava/lang/String;IZ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private isMarkingComment()Z
    .locals 1

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private static isOctalDigit(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x37

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

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

.method private static isValidIdentifierName(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)Lj$/util/stream/IntStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lj$/util/stream/IntStream;->toArray()[I

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v2, v0, :cond_2

    .line 14
    .line 15
    aget v4, p0, v2

    .line 16
    .line 17
    add-int/lit8 v5, v3, 0x1

    .line 18
    .line 19
    const/16 v6, 0x24

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    if-eq v4, v6, :cond_1

    .line 24
    .line 25
    const/16 v3, 0x5f

    .line 26
    .line 27
    if-eq v4, v3, :cond_1

    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    if-eq v4, v6, :cond_1

    .line 37
    .line 38
    const/16 v3, 0x200c

    .line 39
    .line 40
    if-eq v4, v3, :cond_1

    .line 41
    .line 42
    const/16 v3, 0x200d

    .line 43
    .line 44
    if-eq v4, v3, :cond_1

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    move v3, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 p0, 0x1

    .line 58
    return p0
.end method

.method private markCommentStart()V
    .locals 1

    .line 24
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 16
    .line 17
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 8
    .line 9
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private matchTemplateLiteralChar(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetTemplateLiteralChar(I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private peekChar()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 6
    .line 7
    .line 8
    return v0
.end method

.method private peekTemplateLiteralChar()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetTemplateLiteralChar(I)V

    .line 6
    .line 7
    .line 8
    return v0
.end method

.method private readCDATA()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x5d

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x3e

    .line 33
    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 57
    .line 58
    const-string v1, "msg.XML.bad.form"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method private readDigits(II)I
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    :goto_0
    const/16 v1, 0x5f

    .line 19
    .line 20
    if-ne p2, v1, :cond_4

    .line 21
    .line 22
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    if-eq p2, v2, :cond_3

    .line 29
    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    const/4 p0, -0x2

    .line 48
    return p0

    .line 49
    :cond_4
    invoke-static {p1, p2}, Lorg/mozilla/javascript/TokenStream;->isDigit(II)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-ne p2, v0, :cond_0

    .line 63
    .line 64
    return v0

    .line 65
    :cond_5
    return p2
.end method

.method private readEntity()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, -0x1

    .line 8
    if-eq v0, v3, :cond_3

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 11
    .line 12
    .line 13
    const/16 v3, 0x3c

    .line 14
    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/16 v3, 0x3e

    .line 18
    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 41
    .line 42
    const-string v1, "msg.XML.bad.form"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method private readPI()Z
    .locals 2

    .line 1
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x3f

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x3e

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 39
    .line 40
    const-string v1, "msg.XML.bad.form"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method private readQuotedString(I)Z
    .locals 2

    .line 1
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 9
    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 22
    .line 23
    const-string v0, "msg.XML.bad.form"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return p1
.end method

.method private readXmlComment()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2d

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x3e

    .line 33
    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 57
    .line 58
    const-string v1, "msg.XML.bad.form"

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method private skipLine()V
    .locals 2

    .line 1
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 17
    .line 18
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 19
    .line 20
    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;IZ)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForJS(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/TokenStream;->stringToKeywordForES(Ljava/lang/String;Z)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    const/16 v2, 0x1f

    .line 11
    .line 12
    const/16 v3, 0x1e

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, -0x1

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    const-string v0, "default"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    const/16 v6, 0x2d

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_1
    const-string v0, "function"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v6, 0x2c

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :sswitch_2
    const-string v0, "instanceof"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 v6, 0x2b

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :sswitch_3
    const-string v0, "debugger"

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_3
    const/16 v6, 0x2a

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :sswitch_4
    const-string v0, "interface"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_4

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_4
    const/16 v6, 0x29

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :sswitch_5
    const-string/jumbo v0, "yield"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_5

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_5
    const/16 v6, 0x28

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :sswitch_6
    const-string/jumbo v0, "while"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_6

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_6
    const/16 v6, 0x27

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :sswitch_7
    const-string/jumbo v0, "throw"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_7

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_7
    const/16 v6, 0x26

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :sswitch_8
    const-string/jumbo v0, "super"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-nez p0, :cond_8

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_8
    const/16 v6, 0x25

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :sswitch_9
    const-string v0, "false"

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_9

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_9
    const/16 v6, 0x24

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :sswitch_a
    const-string v0, "const"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-nez p0, :cond_a

    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_a
    const/16 v6, 0x23

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :sswitch_b
    const-string v0, "class"

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_b

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_b
    const/16 v6, 0x22

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :sswitch_c
    const-string v0, "catch"

    .line 195
    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-nez p0, :cond_c

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_c
    const/16 v6, 0x21

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :sswitch_d
    const-string v0, "break"

    .line 209
    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    if-nez p0, :cond_d

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_d
    move v6, v1

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :sswitch_e
    const-string v0, "await"

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    if-nez p0, :cond_e

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_e
    move v6, v2

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :sswitch_f
    const-string/jumbo v0, "with"

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    if-nez p0, :cond_f

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_f
    move v6, v3

    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :sswitch_10
    const-string/jumbo v0, "void"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-nez p0, :cond_10

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_10
    const/16 v6, 0x1d

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :sswitch_11
    const-string/jumbo v0, "true"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-nez p0, :cond_11

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_11
    const/16 v6, 0x1c

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :sswitch_12
    const-string/jumbo v0, "this"

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    if-nez p0, :cond_12

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_12
    const/16 v6, 0x1b

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :sswitch_13
    const-string v0, "null"

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    if-nez p0, :cond_13

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_13
    const/16 v6, 0x1a

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :sswitch_14
    const-string v0, "enum"

    .line 308
    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    if-nez p0, :cond_14

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_14
    const/16 v6, 0x19

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :sswitch_15
    const-string v0, "else"

    .line 322
    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    if-nez p0, :cond_15

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_15
    const/16 v6, 0x18

    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :sswitch_16
    const-string v0, "case"

    .line 336
    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    if-nez p0, :cond_16

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :cond_16
    const/16 v6, 0x17

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :sswitch_17
    const-string/jumbo v0, "var"

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    if-nez p0, :cond_17

    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_17
    const/16 v6, 0x16

    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :sswitch_18
    const-string/jumbo v0, "try"

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result p0

    .line 371
    if-nez p0, :cond_18

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_18
    const/16 v6, 0x15

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :sswitch_19
    const-string v0, "new"

    .line 380
    .line 381
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    if-nez p0, :cond_19

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_19
    const/16 v6, 0x14

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :sswitch_1a
    const-string v0, "let"

    .line 394
    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result p0

    .line 399
    if-nez p0, :cond_1a

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :cond_1a
    const/16 v6, 0x13

    .line 404
    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :sswitch_1b
    const-string v0, "for"

    .line 408
    .line 409
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result p0

    .line 413
    if-nez p0, :cond_1b

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_1b
    const/16 v6, 0x12

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :sswitch_1c
    const-string v0, "in"

    .line 422
    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    if-nez p0, :cond_1c

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :cond_1c
    const/16 v6, 0x11

    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :sswitch_1d
    const-string v0, "if"

    .line 436
    .line 437
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    if-nez p0, :cond_1d

    .line 442
    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_1d
    const/16 v6, 0x10

    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :sswitch_1e
    const-string v0, "do"

    .line 450
    .line 451
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result p0

    .line 455
    if-nez p0, :cond_1e

    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_1e
    const/16 v6, 0xf

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :sswitch_1f
    const-string v0, "private"

    .line 464
    .line 465
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result p0

    .line 469
    if-nez p0, :cond_1f

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :cond_1f
    const/16 v6, 0xe

    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :sswitch_20
    const-string v0, "continue"

    .line 478
    .line 479
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result p0

    .line 483
    if-nez p0, :cond_20

    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :cond_20
    const/16 v6, 0xd

    .line 488
    .line 489
    goto/16 :goto_0

    .line 490
    .line 491
    :sswitch_21
    const-string v0, "protected"

    .line 492
    .line 493
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    if-nez p0, :cond_21

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :cond_21
    const/16 v6, 0xc

    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :sswitch_22
    const-string v0, "package"

    .line 506
    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p0

    .line 511
    if-nez p0, :cond_22

    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_22
    const/16 v6, 0xb

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :sswitch_23
    const-string v0, "finally"

    .line 520
    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result p0

    .line 525
    if-nez p0, :cond_23

    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_23
    const/16 v6, 0xa

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :sswitch_24
    const-string/jumbo v0, "typeof"

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result p0

    .line 540
    if-nez p0, :cond_24

    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_24
    const/16 v6, 0x9

    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :sswitch_25
    const-string/jumbo v0, "switch"

    .line 549
    .line 550
    .line 551
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    if-nez p0, :cond_25

    .line 556
    .line 557
    goto/16 :goto_0

    .line 558
    .line 559
    :cond_25
    const/16 v6, 0x8

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :sswitch_26
    const-string/jumbo v0, "static"

    .line 564
    .line 565
    .line 566
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result p0

    .line 570
    if-nez p0, :cond_26

    .line 571
    .line 572
    goto :goto_0

    .line 573
    :cond_26
    const/4 v6, 0x7

    .line 574
    goto :goto_0

    .line 575
    :sswitch_27
    const-string v0, "implements"

    .line 576
    .line 577
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result p0

    .line 581
    if-nez p0, :cond_27

    .line 582
    .line 583
    goto :goto_0

    .line 584
    :cond_27
    const/4 v6, 0x6

    .line 585
    goto :goto_0

    .line 586
    :sswitch_28
    const-string v0, "return"

    .line 587
    .line 588
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result p0

    .line 592
    if-nez p0, :cond_28

    .line 593
    .line 594
    goto :goto_0

    .line 595
    :cond_28
    const/4 v6, 0x5

    .line 596
    goto :goto_0

    .line 597
    :sswitch_29
    const-string v0, "public"

    .line 598
    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    if-nez p0, :cond_29

    .line 604
    .line 605
    goto :goto_0

    .line 606
    :cond_29
    move v6, v4

    .line 607
    goto :goto_0

    .line 608
    :sswitch_2a
    const-string v0, "import"

    .line 609
    .line 610
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result p0

    .line 614
    if-nez p0, :cond_2a

    .line 615
    .line 616
    goto :goto_0

    .line 617
    :cond_2a
    const/4 v6, 0x3

    .line 618
    goto :goto_0

    .line 619
    :sswitch_2b
    const-string v0, "export"

    .line 620
    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p0

    .line 625
    if-nez p0, :cond_2b

    .line 626
    .line 627
    goto :goto_0

    .line 628
    :cond_2b
    const/4 v6, 0x2

    .line 629
    goto :goto_0

    .line 630
    :sswitch_2c
    const-string v0, "extends"

    .line 631
    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result p0

    .line 636
    if-nez p0, :cond_2c

    .line 637
    .line 638
    goto :goto_0

    .line 639
    :cond_2c
    const/4 v6, 0x1

    .line 640
    goto :goto_0

    .line 641
    :sswitch_2d
    const-string v0, "delete"

    .line 642
    .line 643
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result p0

    .line 647
    if-nez p0, :cond_2d

    .line 648
    .line 649
    goto :goto_0

    .line 650
    :cond_2d
    move v6, v5

    .line 651
    :goto_0
    const/16 p0, 0x8c

    .line 652
    .line 653
    packed-switch v6, :pswitch_data_0

    .line 654
    .line 655
    .line 656
    :cond_2e
    move v1, v5

    .line 657
    goto/16 :goto_2

    .line 658
    .line 659
    :pswitch_0
    const/16 v1, 0x81

    .line 660
    .line 661
    goto/16 :goto_2

    .line 662
    .line 663
    :pswitch_1
    const/16 v1, 0x7a

    .line 664
    .line 665
    goto/16 :goto_2

    .line 666
    .line 667
    :pswitch_2
    const/16 v1, 0x3a

    .line 668
    .line 669
    goto/16 :goto_2

    .line 670
    .line 671
    :pswitch_3
    const/16 v1, 0xae

    .line 672
    .line 673
    goto/16 :goto_2

    .line 674
    .line 675
    :pswitch_4
    if-eqz p1, :cond_2e

    .line 676
    .line 677
    :goto_1
    :pswitch_5
    move v1, p0

    .line 678
    goto/16 :goto_2

    .line 679
    .line 680
    :pswitch_6
    const/16 v1, 0x4e

    .line 681
    .line 682
    goto/16 :goto_2

    .line 683
    .line 684
    :pswitch_7
    const/16 v1, 0x82

    .line 685
    .line 686
    goto/16 :goto_2

    .line 687
    .line 688
    :pswitch_8
    const/16 v1, 0x37

    .line 689
    .line 690
    goto/16 :goto_2

    .line 691
    .line 692
    :pswitch_9
    const/16 v1, 0x4f

    .line 693
    .line 694
    goto/16 :goto_2

    .line 695
    .line 696
    :pswitch_a
    const/16 v1, 0x31

    .line 697
    .line 698
    goto/16 :goto_2

    .line 699
    .line 700
    :pswitch_b
    const/16 v1, 0xa8

    .line 701
    .line 702
    goto/16 :goto_2

    .line 703
    .line 704
    :pswitch_c
    const/16 v1, 0x89

    .line 705
    .line 706
    goto/16 :goto_2

    .line 707
    .line 708
    :pswitch_d
    const/16 v1, 0x85

    .line 709
    .line 710
    goto/16 :goto_2

    .line 711
    .line 712
    :pswitch_e
    const/16 v1, 0x88

    .line 713
    .line 714
    goto/16 :goto_2

    .line 715
    .line 716
    :pswitch_f
    const/16 v1, 0x8b

    .line 717
    .line 718
    goto/16 :goto_2

    .line 719
    .line 720
    :pswitch_10
    const/16 v1, 0x32

    .line 721
    .line 722
    goto :goto_2

    .line 723
    :pswitch_11
    const/16 v1, 0x30

    .line 724
    .line 725
    goto :goto_2

    .line 726
    :pswitch_12
    const/16 v1, 0x2f

    .line 727
    .line 728
    goto :goto_2

    .line 729
    :pswitch_13
    const/16 v1, 0x7e

    .line 730
    .line 731
    goto :goto_2

    .line 732
    :pswitch_14
    const/16 v1, 0x80

    .line 733
    .line 734
    goto :goto_2

    .line 735
    :pswitch_15
    const/16 v1, 0x87

    .line 736
    .line 737
    goto :goto_2

    .line 738
    :pswitch_16
    const/16 v1, 0x5a

    .line 739
    .line 740
    goto :goto_2

    .line 741
    :pswitch_17
    move v1, v3

    .line 742
    goto :goto_2

    .line 743
    :pswitch_18
    const/16 v1, 0xa7

    .line 744
    .line 745
    goto :goto_2

    .line 746
    :pswitch_19
    const/16 v1, 0x84

    .line 747
    .line 748
    goto :goto_2

    .line 749
    :pswitch_1a
    const/16 v1, 0x39

    .line 750
    .line 751
    goto :goto_2

    .line 752
    :pswitch_1b
    const/16 v1, 0x7d

    .line 753
    .line 754
    goto :goto_2

    .line 755
    :pswitch_1c
    const/16 v1, 0x83

    .line 756
    .line 757
    goto :goto_2

    .line 758
    :pswitch_1d
    if-eqz p1, :cond_2e

    .line 759
    .line 760
    goto :goto_1

    .line 761
    :pswitch_1e
    const/16 v1, 0x86

    .line 762
    .line 763
    goto :goto_2

    .line 764
    :pswitch_1f
    if-eqz p1, :cond_2e

    .line 765
    .line 766
    goto :goto_1

    .line 767
    :pswitch_20
    if-eqz p1, :cond_2e

    .line 768
    .line 769
    goto :goto_1

    .line 770
    :pswitch_21
    const/16 v1, 0x8a

    .line 771
    .line 772
    goto :goto_2

    .line 773
    :pswitch_22
    const/16 v1, 0x7f

    .line 774
    .line 775
    goto :goto_2

    .line 776
    :pswitch_23
    if-eqz p1, :cond_2e

    .line 777
    .line 778
    goto :goto_1

    .line 779
    :pswitch_24
    if-eqz p1, :cond_2e

    .line 780
    .line 781
    goto :goto_1

    .line 782
    :pswitch_25
    move v1, v4

    .line 783
    goto :goto_2

    .line 784
    :pswitch_26
    if-eqz p1, :cond_2e

    .line 785
    .line 786
    goto :goto_1

    .line 787
    :pswitch_27
    move v1, v2

    .line 788
    :goto_2
    :pswitch_28
    if-nez v1, :cond_2f

    .line 789
    .line 790
    return v5

    .line 791
    :cond_2f
    and-int/lit16 p0, v1, 0xff

    .line 792
    .line 793
    return p0

    .line 794
    nop

    .line 795
    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_28
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
        :pswitch_5
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static stringToKeywordForJS(Ljava/lang/String;)I
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3a

    .line 9
    .line 10
    const/16 v2, 0x39

    .line 11
    .line 12
    const/16 v3, 0x37

    .line 13
    .line 14
    const/16 v4, 0x32

    .line 15
    .line 16
    const/16 v5, 0x31

    .line 17
    .line 18
    const/16 v6, 0x30

    .line 19
    .line 20
    const/16 v7, 0x2f

    .line 21
    .line 22
    const/16 v8, 0x20

    .line 23
    .line 24
    const/16 v9, 0x1f

    .line 25
    .line 26
    const/16 v10, 0x1e

    .line 27
    .line 28
    const/4 v11, 0x4

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, -0x1

    .line 31
    sparse-switch v0, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_0
    const-string v0, "abstract"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    const/16 v13, 0x3c

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :sswitch_1
    const-string v0, "default"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_1
    const/16 v13, 0x3b

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :sswitch_2
    const-string v0, "function"

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_2
    move v13, v1

    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :sswitch_3
    const-string/jumbo v0, "transient"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_3

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_3
    move v13, v2

    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :sswitch_4
    const-string v0, "instanceof"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-nez p0, :cond_4

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_4
    const/16 v13, 0x38

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :sswitch_5
    const-string v0, "debugger"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-nez p0, :cond_5

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_5
    move v13, v3

    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :sswitch_6
    const-string v0, "interface"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-nez p0, :cond_6

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_6
    const/16 v13, 0x36

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :sswitch_7
    const-string/jumbo v0, "yield"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_7

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_7
    const/16 v13, 0x35

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :sswitch_8
    const-string/jumbo v0, "while"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-nez p0, :cond_8

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_8
    const/16 v13, 0x34

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :sswitch_9
    const-string/jumbo v0, "throw"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_9

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_9
    const/16 v13, 0x33

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :sswitch_a
    const-string/jumbo v0, "super"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-nez p0, :cond_a

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_a
    move v13, v4

    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :sswitch_b
    const-string/jumbo v0, "short"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-nez p0, :cond_b

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_b
    move v13, v5

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :sswitch_c
    const-string v0, "float"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-nez p0, :cond_c

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_c
    move v13, v6

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :sswitch_d
    const-string v0, "final"

    .line 219
    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-nez p0, :cond_d

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_d
    move v13, v7

    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :sswitch_e
    const-string v0, "false"

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-nez p0, :cond_e

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_e
    const/16 v13, 0x2e

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :sswitch_f
    const-string v0, "const"

    .line 246
    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-nez p0, :cond_f

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_f
    const/16 v13, 0x2d

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :sswitch_10
    const-string v0, "class"

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    if-nez p0, :cond_10

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_10
    const/16 v13, 0x2c

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :sswitch_11
    const-string v0, "catch"

    .line 274
    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-nez p0, :cond_11

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_11
    const/16 v13, 0x2b

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :sswitch_12
    const-string v0, "break"

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-nez p0, :cond_12

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_12
    const/16 v13, 0x2a

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :sswitch_13
    const-string v0, "boolean"

    .line 302
    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-nez p0, :cond_13

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_13
    const/16 v13, 0x29

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :sswitch_14
    const-string/jumbo v0, "with"

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-nez p0, :cond_14

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_14
    const/16 v13, 0x28

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :sswitch_15
    const-string/jumbo v0, "void"

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-nez p0, :cond_15

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_15
    const/16 v13, 0x27

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :sswitch_16
    const-string/jumbo v0, "true"

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p0

    .line 352
    if-nez p0, :cond_16

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_16
    const/16 v13, 0x26

    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :sswitch_17
    const-string/jumbo v0, "this"

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p0

    .line 367
    if-nez p0, :cond_17

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_17
    const/16 v13, 0x25

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :sswitch_18
    const-string v0, "null"

    .line 376
    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-nez p0, :cond_18

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :cond_18
    const/16 v13, 0x24

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :sswitch_19
    const-string v0, "long"

    .line 390
    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result p0

    .line 395
    if-nez p0, :cond_19

    .line 396
    .line 397
    goto/16 :goto_0

    .line 398
    .line 399
    :cond_19
    const/16 v13, 0x23

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :sswitch_1a
    const-string v0, "goto"

    .line 404
    .line 405
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    if-nez p0, :cond_1a

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_1a
    const/16 v13, 0x22

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :sswitch_1b
    const-string v0, "enum"

    .line 418
    .line 419
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    if-nez p0, :cond_1b

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_1b
    const/16 v13, 0x21

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :sswitch_1c
    const-string v0, "else"

    .line 432
    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    if-nez p0, :cond_1c

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_1c
    move v13, v8

    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :sswitch_1d
    const-string v0, "char"

    .line 445
    .line 446
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    if-nez p0, :cond_1d

    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :cond_1d
    move v13, v9

    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :sswitch_1e
    const-string v0, "case"

    .line 458
    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p0

    .line 463
    if-nez p0, :cond_1e

    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :cond_1e
    move v13, v10

    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :sswitch_1f
    const-string v0, "byte"

    .line 471
    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    if-nez p0, :cond_1f

    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :cond_1f
    const/16 v13, 0x1d

    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :sswitch_20
    const-string/jumbo v0, "var"

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    if-nez p0, :cond_20

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :cond_20
    const/16 v13, 0x1c

    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :sswitch_21
    const-string/jumbo v0, "try"

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    if-nez p0, :cond_21

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :cond_21
    const/16 v13, 0x1b

    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :sswitch_22
    const-string v0, "new"

    .line 515
    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    if-nez p0, :cond_22

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :cond_22
    const/16 v13, 0x1a

    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :sswitch_23
    const-string v0, "let"

    .line 529
    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    if-nez p0, :cond_23

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :cond_23
    const/16 v13, 0x19

    .line 539
    .line 540
    goto/16 :goto_0

    .line 541
    .line 542
    :sswitch_24
    const-string v0, "int"

    .line 543
    .line 544
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result p0

    .line 548
    if-nez p0, :cond_24

    .line 549
    .line 550
    goto/16 :goto_0

    .line 551
    .line 552
    :cond_24
    const/16 v13, 0x18

    .line 553
    .line 554
    goto/16 :goto_0

    .line 555
    .line 556
    :sswitch_25
    const-string v0, "for"

    .line 557
    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p0

    .line 562
    if-nez p0, :cond_25

    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :cond_25
    const/16 v13, 0x17

    .line 567
    .line 568
    goto/16 :goto_0

    .line 569
    .line 570
    :sswitch_26
    const-string v0, "in"

    .line 571
    .line 572
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    if-nez p0, :cond_26

    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :cond_26
    const/16 v13, 0x16

    .line 581
    .line 582
    goto/16 :goto_0

    .line 583
    .line 584
    :sswitch_27
    const-string v0, "if"

    .line 585
    .line 586
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result p0

    .line 590
    if-nez p0, :cond_27

    .line 591
    .line 592
    goto/16 :goto_0

    .line 593
    .line 594
    :cond_27
    const/16 v13, 0x15

    .line 595
    .line 596
    goto/16 :goto_0

    .line 597
    .line 598
    :sswitch_28
    const-string v0, "do"

    .line 599
    .line 600
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result p0

    .line 604
    if-nez p0, :cond_28

    .line 605
    .line 606
    goto/16 :goto_0

    .line 607
    .line 608
    :cond_28
    const/16 v13, 0x14

    .line 609
    .line 610
    goto/16 :goto_0

    .line 611
    .line 612
    :sswitch_29
    const-string v0, "private"

    .line 613
    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result p0

    .line 618
    if-nez p0, :cond_29

    .line 619
    .line 620
    goto/16 :goto_0

    .line 621
    .line 622
    :cond_29
    const/16 v13, 0x13

    .line 623
    .line 624
    goto/16 :goto_0

    .line 625
    .line 626
    :sswitch_2a
    const-string v0, "continue"

    .line 627
    .line 628
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    move-result p0

    .line 632
    if-nez p0, :cond_2a

    .line 633
    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_2a
    const/16 v13, 0x12

    .line 637
    .line 638
    goto/16 :goto_0

    .line 639
    .line 640
    :sswitch_2b
    const-string v0, "protected"

    .line 641
    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result p0

    .line 646
    if-nez p0, :cond_2b

    .line 647
    .line 648
    goto/16 :goto_0

    .line 649
    .line 650
    :cond_2b
    const/16 v13, 0x11

    .line 651
    .line 652
    goto/16 :goto_0

    .line 653
    .line 654
    :sswitch_2c
    const-string v0, "package"

    .line 655
    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result p0

    .line 660
    if-nez p0, :cond_2c

    .line 661
    .line 662
    goto/16 :goto_0

    .line 663
    .line 664
    :cond_2c
    const/16 v13, 0x10

    .line 665
    .line 666
    goto/16 :goto_0

    .line 667
    .line 668
    :sswitch_2d
    const-string v0, "finally"

    .line 669
    .line 670
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result p0

    .line 674
    if-nez p0, :cond_2d

    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :cond_2d
    const/16 v13, 0xf

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :sswitch_2e
    const-string/jumbo v0, "typeof"

    .line 683
    .line 684
    .line 685
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result p0

    .line 689
    if-nez p0, :cond_2e

    .line 690
    .line 691
    goto/16 :goto_0

    .line 692
    .line 693
    :cond_2e
    const/16 v13, 0xe

    .line 694
    .line 695
    goto/16 :goto_0

    .line 696
    .line 697
    :sswitch_2f
    const-string/jumbo v0, "throws"

    .line 698
    .line 699
    .line 700
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result p0

    .line 704
    if-nez p0, :cond_2f

    .line 705
    .line 706
    goto/16 :goto_0

    .line 707
    .line 708
    :cond_2f
    const/16 v13, 0xd

    .line 709
    .line 710
    goto/16 :goto_0

    .line 711
    .line 712
    :sswitch_30
    const-string/jumbo v0, "switch"

    .line 713
    .line 714
    .line 715
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result p0

    .line 719
    if-nez p0, :cond_30

    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :cond_30
    const/16 v13, 0xc

    .line 724
    .line 725
    goto/16 :goto_0

    .line 726
    .line 727
    :sswitch_31
    const-string/jumbo v0, "static"

    .line 728
    .line 729
    .line 730
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    move-result p0

    .line 734
    if-nez p0, :cond_31

    .line 735
    .line 736
    goto/16 :goto_0

    .line 737
    .line 738
    :cond_31
    const/16 v13, 0xb

    .line 739
    .line 740
    goto/16 :goto_0

    .line 741
    .line 742
    :sswitch_32
    const-string v0, "implements"

    .line 743
    .line 744
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result p0

    .line 748
    if-nez p0, :cond_32

    .line 749
    .line 750
    goto/16 :goto_0

    .line 751
    .line 752
    :cond_32
    const/16 v13, 0xa

    .line 753
    .line 754
    goto/16 :goto_0

    .line 755
    .line 756
    :sswitch_33
    const-string v0, "return"

    .line 757
    .line 758
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result p0

    .line 762
    if-nez p0, :cond_33

    .line 763
    .line 764
    goto/16 :goto_0

    .line 765
    .line 766
    :cond_33
    const/16 v13, 0x9

    .line 767
    .line 768
    goto/16 :goto_0

    .line 769
    .line 770
    :sswitch_34
    const-string v0, "public"

    .line 771
    .line 772
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result p0

    .line 776
    if-nez p0, :cond_34

    .line 777
    .line 778
    goto/16 :goto_0

    .line 779
    .line 780
    :cond_34
    const/16 v13, 0x8

    .line 781
    .line 782
    goto/16 :goto_0

    .line 783
    .line 784
    :sswitch_35
    const-string v0, "native"

    .line 785
    .line 786
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result p0

    .line 790
    if-nez p0, :cond_35

    .line 791
    .line 792
    goto :goto_0

    .line 793
    :cond_35
    const/4 v13, 0x7

    .line 794
    goto :goto_0

    .line 795
    :sswitch_36
    const-string v0, "import"

    .line 796
    .line 797
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result p0

    .line 801
    if-nez p0, :cond_36

    .line 802
    .line 803
    goto :goto_0

    .line 804
    :cond_36
    const/4 v13, 0x6

    .line 805
    goto :goto_0

    .line 806
    :sswitch_37
    const-string v0, "export"

    .line 807
    .line 808
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result p0

    .line 812
    if-nez p0, :cond_37

    .line 813
    .line 814
    goto :goto_0

    .line 815
    :cond_37
    const/4 v13, 0x5

    .line 816
    goto :goto_0

    .line 817
    :sswitch_38
    const-string v0, "extends"

    .line 818
    .line 819
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 820
    .line 821
    .line 822
    move-result p0

    .line 823
    if-nez p0, :cond_38

    .line 824
    .line 825
    goto :goto_0

    .line 826
    :cond_38
    move v13, v11

    .line 827
    goto :goto_0

    .line 828
    :sswitch_39
    const-string v0, "double"

    .line 829
    .line 830
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result p0

    .line 834
    if-nez p0, :cond_39

    .line 835
    .line 836
    goto :goto_0

    .line 837
    :cond_39
    const/4 v13, 0x3

    .line 838
    goto :goto_0

    .line 839
    :sswitch_3a
    const-string v0, "delete"

    .line 840
    .line 841
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result p0

    .line 845
    if-nez p0, :cond_3a

    .line 846
    .line 847
    goto :goto_0

    .line 848
    :cond_3a
    const/4 v13, 0x2

    .line 849
    goto :goto_0

    .line 850
    :sswitch_3b
    const-string/jumbo v0, "synchronized"

    .line 851
    .line 852
    .line 853
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result p0

    .line 857
    if-nez p0, :cond_3b

    .line 858
    .line 859
    goto :goto_0

    .line 860
    :cond_3b
    const/4 v13, 0x1

    .line 861
    goto :goto_0

    .line 862
    :sswitch_3c
    const-string/jumbo v0, "volatile"

    .line 863
    .line 864
    .line 865
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    move-result p0

    .line 869
    if-nez p0, :cond_3c

    .line 870
    .line 871
    goto :goto_0

    .line 872
    :cond_3c
    move v13, v12

    .line 873
    :goto_0
    const/16 p0, 0x8c

    .line 874
    .line 875
    packed-switch v13, :pswitch_data_0

    .line 876
    .line 877
    .line 878
    move v1, v12

    .line 879
    goto/16 :goto_1

    .line 880
    .line 881
    :pswitch_0
    move v1, p0

    .line 882
    goto/16 :goto_1

    .line 883
    .line 884
    :pswitch_1
    const/16 v1, 0x81

    .line 885
    .line 886
    goto/16 :goto_1

    .line 887
    .line 888
    :pswitch_2
    const/16 v1, 0x7a

    .line 889
    .line 890
    goto/16 :goto_1

    .line 891
    .line 892
    :pswitch_3
    const/16 v1, 0xae

    .line 893
    .line 894
    goto/16 :goto_1

    .line 895
    .line 896
    :pswitch_4
    const/16 v1, 0x4e

    .line 897
    .line 898
    goto/16 :goto_1

    .line 899
    .line 900
    :pswitch_5
    const/16 v1, 0x82

    .line 901
    .line 902
    goto/16 :goto_1

    .line 903
    .line 904
    :pswitch_6
    move v1, v3

    .line 905
    goto/16 :goto_1

    .line 906
    .line 907
    :pswitch_7
    move v1, v5

    .line 908
    goto/16 :goto_1

    .line 909
    .line 910
    :pswitch_8
    const/16 v1, 0xa8

    .line 911
    .line 912
    goto :goto_1

    .line 913
    :pswitch_9
    const/16 v1, 0x89

    .line 914
    .line 915
    goto :goto_1

    .line 916
    :pswitch_a
    const/16 v1, 0x85

    .line 917
    .line 918
    goto :goto_1

    .line 919
    :pswitch_b
    const/16 v1, 0x88

    .line 920
    .line 921
    goto :goto_1

    .line 922
    :pswitch_c
    const/16 v1, 0x8b

    .line 923
    .line 924
    goto :goto_1

    .line 925
    :pswitch_d
    move v1, v4

    .line 926
    goto :goto_1

    .line 927
    :pswitch_e
    move v1, v6

    .line 928
    goto :goto_1

    .line 929
    :pswitch_f
    move v1, v7

    .line 930
    goto :goto_1

    .line 931
    :pswitch_10
    const/16 v1, 0x7e

    .line 932
    .line 933
    goto :goto_1

    .line 934
    :pswitch_11
    const/16 v1, 0x80

    .line 935
    .line 936
    goto :goto_1

    .line 937
    :pswitch_12
    const/16 v1, 0x87

    .line 938
    .line 939
    goto :goto_1

    .line 940
    :pswitch_13
    const/16 v1, 0x5a

    .line 941
    .line 942
    goto :goto_1

    .line 943
    :pswitch_14
    move v1, v10

    .line 944
    goto :goto_1

    .line 945
    :pswitch_15
    const/16 v1, 0xa7

    .line 946
    .line 947
    goto :goto_1

    .line 948
    :pswitch_16
    const/16 v1, 0x84

    .line 949
    .line 950
    goto :goto_1

    .line 951
    :pswitch_17
    move v1, v2

    .line 952
    goto :goto_1

    .line 953
    :pswitch_18
    const/16 v1, 0x7d

    .line 954
    .line 955
    goto :goto_1

    .line 956
    :pswitch_19
    const/16 v1, 0x83

    .line 957
    .line 958
    goto :goto_1

    .line 959
    :pswitch_1a
    const/16 v1, 0x86

    .line 960
    .line 961
    goto :goto_1

    .line 962
    :pswitch_1b
    const/16 v1, 0x8a

    .line 963
    .line 964
    goto :goto_1

    .line 965
    :pswitch_1c
    move v1, v8

    .line 966
    goto :goto_1

    .line 967
    :pswitch_1d
    const/16 v1, 0x7f

    .line 968
    .line 969
    goto :goto_1

    .line 970
    :pswitch_1e
    move v1, v11

    .line 971
    goto :goto_1

    .line 972
    :pswitch_1f
    move v1, v9

    .line 973
    :goto_1
    :pswitch_20
    if-nez v1, :cond_3d

    .line 974
    .line 975
    return v12

    .line 976
    :cond_3d
    and-int/lit16 p0, v1, 0xff

    .line 977
    .line 978
    return p0

    .line 979
    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_20
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final substring(II)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sub-int/2addr p2, p1

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private ungetChar(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 19
    .line 20
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x1

    .line 23
    .line 24
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 25
    .line 26
    aput p1, v0, v1

    .line 27
    .line 28
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 33
    .line 34
    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 8
    .line 9
    aput p1, v0, v1

    .line 10
    .line 11
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 16
    .line 17
    return-void
.end method

.method private ungetTemplateLiteralChar(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final eof()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 15
    .line 16
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 17
    .line 18
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 32
    .line 33
    .line 34
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 42
    .line 43
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    sub-int/2addr v3, v4

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final getBigInt()Ljava/math/BigInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->bigInt:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCursor()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2
    .line 3
    return p0
.end method

.method public getFirstXMLToken()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/16 v0, 0x3c

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2
    .line 3
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .line 107
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 108
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v0, -0x2

    .line 109
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    add-int/lit8 v2, v0, -0x2

    goto :goto_2

    .line 110
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    .line 111
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 112
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int v2, v1, v0

    .line 114
    :cond_3
    :goto_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {p0, v0, v2}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLine(I[I)Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    sub-int/2addr v0, p1

    .line 7
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 8
    .line 9
    if-le v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-lez v0, :cond_3

    .line 17
    .line 18
    add-int/lit8 v4, p1, -0x1

    .line 19
    .line 20
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    add-int/lit8 v3, p1, -0x2

    .line 35
    .line 36
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v4, 0xd

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    add-int/lit8 v3, p1, -0x1

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v0, v1

    .line 58
    :goto_1
    if-lez p1, :cond_5

    .line 59
    .line 60
    add-int/lit8 v4, p1, -0x1

    .line 61
    .line 62
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move p1, v1

    .line 79
    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 80
    .line 81
    sub-int/2addr v4, v2

    .line 82
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    if-ltz v5, :cond_6

    .line 86
    .line 87
    move v5, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v5, v1

    .line 90
    :goto_3
    add-int/2addr v4, v5

    .line 91
    aput v4, p2, v1

    .line 92
    .line 93
    aput v0, p2, v6

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_7
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method public getLineno()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 2
    .line 3
    return p0
.end method

.method public getNextXMLToken()I
    .locals 10

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 2
    .line 3
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 4
    .line 5
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 6
    .line 7
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 8
    .line 9
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 10
    .line 11
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "msg.XML.bad.form"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, -0x1

    .line 24
    if-eq v1, v4, :cond_13

    .line 25
    .line 26
    iget-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 27
    .line 28
    const/16 v6, 0x9f

    .line 29
    .line 30
    const/16 v7, 0x7b

    .line 31
    .line 32
    const/16 v8, 0x2f

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-eqz v5, :cond_8

    .line 36
    .line 37
    const/16 v2, 0x9

    .line 38
    .line 39
    if-eq v1, v2, :cond_6

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    if-eq v1, v2, :cond_6

    .line 44
    .line 45
    const/16 v2, 0xd

    .line 46
    .line 47
    if-eq v1, v2, :cond_6

    .line 48
    .line 49
    const/16 v2, 0x20

    .line 50
    .line 51
    if-eq v1, v2, :cond_6

    .line 52
    .line 53
    const/16 v2, 0x22

    .line 54
    .line 55
    if-eq v1, v2, :cond_5

    .line 56
    .line 57
    const/16 v2, 0x27

    .line 58
    .line 59
    if-eq v1, v2, :cond_5

    .line 60
    .line 61
    const/16 v2, 0x3e

    .line 62
    .line 63
    if-eq v1, v8, :cond_4

    .line 64
    .line 65
    if-eq v1, v7, :cond_3

    .line 66
    .line 67
    const/16 v3, 0x3d

    .line 68
    .line 69
    if-eq v1, v3, :cond_2

    .line 70
    .line 71
    if-eq v1, v2, :cond_1

    .line 72
    .line 73
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 74
    .line 75
    .line 76
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 80
    .line 81
    .line 82
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 83
    .line 84
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 88
    .line 89
    .line 90
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 101
    .line 102
    return v6

    .line 103
    :cond_4
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v2, :cond_7

    .line 111
    .line 112
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 117
    .line 118
    .line 119
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 120
    .line 121
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 122
    .line 123
    sub-int/2addr v1, v9

    .line 124
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_7

    .line 135
    .line 136
    return v4

    .line 137
    :cond_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 141
    .line 142
    if-nez v1, :cond_0

    .line 143
    .line 144
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 145
    .line 146
    if-nez v1, :cond_0

    .line 147
    .line 148
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 153
    .line 154
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 155
    .line 156
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 157
    .line 158
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 159
    .line 160
    const/16 p0, 0xa2

    .line 161
    .line 162
    return p0

    .line 163
    :cond_8
    const/16 v5, 0x3c

    .line 164
    .line 165
    if-eq v1, v5, :cond_a

    .line 166
    .line 167
    if-eq v1, v7, :cond_9

    .line 168
    .line 169
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_9
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 182
    .line 183
    return v6

    .line 184
    :cond_a
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    const/16 v5, 0x21

    .line 192
    .line 193
    if-eq v1, v5, :cond_e

    .line 194
    .line 195
    if-eq v1, v8, :cond_c

    .line 196
    .line 197
    const/16 v2, 0x3f

    .line 198
    .line 199
    if-eq v1, v2, :cond_b

    .line 200
    .line 201
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 202
    .line 203
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 204
    .line 205
    add-int/2addr v1, v9

    .line 206
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_0

    .line 222
    .line 223
    return v4

    .line 224
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 229
    .line 230
    .line 231
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 232
    .line 233
    if-nez v1, :cond_d

    .line 234
    .line 235
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 236
    .line 237
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 238
    .line 239
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 240
    .line 241
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return v4

    .line 245
    :cond_d
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 246
    .line 247
    add-int/lit8 v1, v1, -0x1

    .line 248
    .line 249
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const/16 v5, 0x2d

    .line 265
    .line 266
    if-eq v1, v5, :cond_11

    .line 267
    .line 268
    const/16 v5, 0x5b

    .line 269
    .line 270
    if-eq v1, v5, :cond_f

    .line 271
    .line 272
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_0

    .line 277
    .line 278
    return v4

    .line 279
    :cond_f
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 284
    .line 285
    .line 286
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    const/16 v6, 0x43

    .line 291
    .line 292
    if-ne v1, v6, :cond_10

    .line 293
    .line 294
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const/16 v7, 0x44

    .line 299
    .line 300
    if-ne v1, v7, :cond_10

    .line 301
    .line 302
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    const/16 v8, 0x41

    .line 307
    .line 308
    if-ne v1, v8, :cond_10

    .line 309
    .line 310
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    const/16 v9, 0x54

    .line 315
    .line 316
    if-ne v1, v9, :cond_10

    .line 317
    .line 318
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-ne v1, v8, :cond_10

    .line 323
    .line 324
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-ne v1, v5, :cond_10

    .line 329
    .line 330
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 331
    .line 332
    .line 333
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 334
    .line 335
    .line 336
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 337
    .line 338
    .line 339
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 340
    .line 341
    .line 342
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 343
    .line 344
    .line 345
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_0

    .line 353
    .line 354
    return v4

    .line 355
    :cond_10
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 356
    .line 357
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 358
    .line 359
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 360
    .line 361
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    return v4

    .line 365
    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 370
    .line 371
    .line 372
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-ne v1, v5, :cond_12

    .line 377
    .line 378
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 379
    .line 380
    .line 381
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-nez v1, :cond_0

    .line 386
    .line 387
    return v4

    .line 388
    :cond_12
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 389
    .line 390
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 391
    .line 392
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 393
    .line 394
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    return v4

    .line 398
    :cond_13
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 399
    .line 400
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 401
    .line 402
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 403
    .line 404
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 405
    .line 406
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 407
    .line 408
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return v4
.end method

.method public final getNumber()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOffset()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 7
    .line 8
    if-ltz p0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :cond_0
    return v0
.end method

.method public getPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2
    .line 3
    return p0
.end method

.method public final getQuoteChar()C
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 2
    .line 3
    int-to-char p0, p0

    .line 4
    return p0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getSourceString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getToken()I
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 12
    .line 13
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 14
    .line 15
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 16
    .line 17
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 18
    .line 19
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 20
    .line 21
    add-int/lit8 v2, v1, -0x1

    .line 22
    .line 23
    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 24
    .line 25
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    const/16 v4, 0xa

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v1, v4, :cond_2

    .line 32
    .line 33
    iput-boolean v3, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 34
    .line 35
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 36
    .line 37
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 38
    .line 39
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 40
    .line 41
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 42
    .line 43
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 44
    .line 45
    add-int/lit8 v2, v1, -0x1

    .line 46
    .line 47
    iput v2, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 48
    .line 49
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 50
    .line 51
    return v5

    .line 52
    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_0

    .line 57
    .line 58
    const/16 v6, 0x2d

    .line 59
    .line 60
    if-eq v1, v6, :cond_3

    .line 61
    .line 62
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 63
    .line 64
    :cond_3
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 65
    .line 66
    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 67
    .line 68
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 69
    .line 70
    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 71
    .line 72
    iget v7, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 73
    .line 74
    add-int/lit8 v8, v7, -0x1

    .line 75
    .line 76
    iput v8, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 77
    .line 78
    iput v7, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 79
    .line 80
    const/16 v7, 0x40

    .line 81
    .line 82
    if-ne v1, v7, :cond_4

    .line 83
    .line 84
    const/16 v0, 0xa1

    .line 85
    .line 86
    return v0

    .line 87
    :cond_4
    const/16 v7, 0x24

    .line 88
    .line 89
    const/16 v8, 0x5f

    .line 90
    .line 91
    const/16 v9, 0x75

    .line 92
    .line 93
    const/16 v10, 0x5c

    .line 94
    .line 95
    if-ne v1, v10, :cond_6

    .line 96
    .line 97
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v9, :cond_5

    .line 102
    .line 103
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 104
    .line 105
    move v11, v5

    .line 106
    move v12, v11

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 109
    .line 110
    .line 111
    move v11, v3

    .line 112
    move v12, v11

    .line 113
    move v1, v10

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_8

    .line 120
    .line 121
    if-eq v1, v7, :cond_8

    .line 122
    .line 123
    if-ne v1, v8, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    move v11, v3

    .line 127
    goto :goto_1

    .line 128
    :cond_8
    :goto_0
    move v11, v5

    .line 129
    :goto_1
    if-eqz v11, :cond_9

    .line 130
    .line 131
    iput v3, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 132
    .line 133
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 134
    .line 135
    .line 136
    :cond_9
    move v12, v3

    .line 137
    :goto_2
    const-string v13, "msg.illegal.character"

    .line 138
    .line 139
    const v14, 0x10ffff

    .line 140
    .line 141
    .line 142
    const/16 v15, 0x7d

    .line 143
    .line 144
    move/from16 v16, v8

    .line 145
    .line 146
    const/16 v8, 0x7b

    .line 147
    .line 148
    move/from16 v17, v4

    .line 149
    .line 150
    const/4 v4, 0x4

    .line 151
    const-string v3, "msg.invalid.escape"

    .line 152
    .line 153
    const/16 v6, 0xc8

    .line 154
    .line 155
    if-eqz v11, :cond_20

    .line 156
    .line 157
    move v1, v12

    .line 158
    :goto_3
    if-eqz v12, :cond_12

    .line 159
    .line 160
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_e

    .line 165
    .line 166
    const/4 v11, 0x0

    .line 167
    :cond_a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-ne v12, v15, :cond_b

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    invoke-static {v12, v11}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-gez v11, :cond_a

    .line 179
    .line 180
    :goto_4
    if-ltz v11, :cond_d

    .line 181
    .line 182
    if-le v11, v14, :cond_c

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_c
    move/from16 v19, v4

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_d
    :goto_5
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 189
    .line 190
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_a

    .line 194
    :cond_e
    const/4 v11, 0x0

    .line 195
    const/4 v12, 0x0

    .line 196
    :goto_6
    move/from16 v19, v4

    .line 197
    .line 198
    if-eq v11, v4, :cond_f

    .line 199
    .line 200
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-static {v4, v12}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-gez v12, :cond_10

    .line 209
    .line 210
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 211
    .line 212
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_f
    move v11, v12

    .line 216
    goto :goto_7

    .line 217
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 218
    .line 219
    move/from16 v4, v19

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :goto_7
    if-gez v11, :cond_11

    .line 223
    .line 224
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 225
    .line 226
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return v2

    .line 230
    :cond_11
    invoke-direct {v0, v11}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 231
    .line 232
    .line 233
    move/from16 v4, v19

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    goto :goto_3

    .line 237
    :cond_12
    move/from16 v19, v4

    .line 238
    .line 239
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-ne v4, v10, :cond_14

    .line 244
    .line 245
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-ne v1, v9, :cond_13

    .line 250
    .line 251
    move v1, v5

    .line 252
    move v12, v1

    .line 253
    :goto_8
    move/from16 v4, v19

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_13
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 257
    .line 258
    invoke-virtual {v0, v13, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    return v2

    .line 262
    :cond_14
    if-eq v4, v2, :cond_16

    .line 263
    .line 264
    const v11, 0xfeff

    .line 265
    .line 266
    .line 267
    if-eq v4, v11, :cond_16

    .line 268
    .line 269
    invoke-static {v4}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-nez v11, :cond_15

    .line 274
    .line 275
    if-eq v4, v7, :cond_15

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_15
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_16
    :goto_9
    move v12, v4

    .line 283
    :goto_a
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 284
    .line 285
    .line 286
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    const/16 v5, 0x2c

    .line 291
    .line 292
    if-eqz v1, :cond_18

    .line 293
    .line 294
    iget-object v7, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 295
    .line 296
    iget-object v7, v7, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 297
    .line 298
    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-lt v7, v6, :cond_17

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_17
    iget-object v7, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 306
    .line 307
    iget-object v7, v7, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 308
    .line 309
    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 314
    .line 315
    invoke-virtual {v8}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    invoke-static {v4, v7, v8}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_1e

    .line 324
    .line 325
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    goto :goto_e

    .line 330
    :cond_18
    :goto_b
    iget-object v7, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 331
    .line 332
    iget-object v7, v7, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 333
    .line 334
    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 339
    .line 340
    invoke-virtual {v8}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    invoke-static {v4, v7, v8}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_1e

    .line 349
    .line 350
    const/16 v8, 0xa7

    .line 351
    .line 352
    if-eq v7, v8, :cond_19

    .line 353
    .line 354
    const/16 v9, 0x4e

    .line 355
    .line 356
    if-ne v7, v9, :cond_1b

    .line 357
    .line 358
    :cond_19
    iget-object v9, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 359
    .line 360
    iget-object v9, v9, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 361
    .line 362
    invoke-virtual {v9}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    const/16 v10, 0xaa

    .line 367
    .line 368
    if-ge v9, v10, :cond_1b

    .line 369
    .line 370
    if-ne v7, v8, :cond_1a

    .line 371
    .line 372
    const-string v7, "let"

    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_1a
    const-string/jumbo v7, "yield"

    .line 376
    .line 377
    .line 378
    :goto_c
    iput-object v7, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 379
    .line 380
    move v7, v5

    .line 381
    :cond_1b
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    iput-object v8, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 386
    .line 387
    const/16 v8, 0x8c

    .line 388
    .line 389
    if-eq v7, v8, :cond_1c

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_1c
    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 393
    .line 394
    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 395
    .line 396
    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    if-lt v8, v6, :cond_1d

    .line 401
    .line 402
    goto :goto_d

    .line 403
    :cond_1d
    iget-object v8, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 404
    .line 405
    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 406
    .line 407
    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-nez v8, :cond_1e

    .line 412
    .line 413
    :goto_d
    return v7

    .line 414
    :cond_1e
    :goto_e
    if-eqz v1, :cond_1f

    .line 415
    .line 416
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 417
    .line 418
    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 419
    .line 420
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-lt v1, v6, :cond_1f

    .line 425
    .line 426
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isValidIdentifierName(Ljava/lang/String;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_1f

    .line 431
    .line 432
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 433
    .line 434
    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    return v2

    .line 438
    :cond_1f
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 443
    .line 444
    return v5

    .line 445
    :cond_20
    move/from16 v19, v4

    .line 446
    .line 447
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    const/16 v7, 0x6e

    .line 452
    .line 453
    const/16 v11, 0x62

    .line 454
    .line 455
    const/16 v20, 0x10

    .line 456
    .line 457
    const/16 v21, 0x65

    .line 458
    .line 459
    const/16 v22, 0x2

    .line 460
    .line 461
    const/16 v14, 0x78

    .line 462
    .line 463
    const/16 v15, 0x30

    .line 464
    .line 465
    const/16 v8, 0x2e

    .line 466
    .line 467
    if-nez v4, :cond_21

    .line 468
    .line 469
    if-ne v1, v8, :cond_22

    .line 470
    .line 471
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eqz v4, :cond_22

    .line 480
    .line 481
    :cond_21
    const/4 v4, 0x0

    .line 482
    goto/16 :goto_21

    .line 483
    .line 484
    :cond_22
    const/16 v4, 0x22

    .line 485
    .line 486
    const/16 v27, 0xc

    .line 487
    .line 488
    move/from16 v28, v9

    .line 489
    .line 490
    const/16 v9, 0x72

    .line 491
    .line 492
    const/16 v29, 0x9

    .line 493
    .line 494
    const/16 v12, 0xd

    .line 495
    .line 496
    if-eq v1, v4, :cond_5c

    .line 497
    .line 498
    const/16 v4, 0x27

    .line 499
    .line 500
    if-ne v1, v4, :cond_23

    .line 501
    .line 502
    goto/16 :goto_14

    .line 503
    .line 504
    :cond_23
    const/16 v3, 0x23

    .line 505
    .line 506
    const/16 v4, 0x21

    .line 507
    .line 508
    const/16 v15, 0xaf

    .line 509
    .line 510
    if-ne v1, v3, :cond_24

    .line 511
    .line 512
    iget v3, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 513
    .line 514
    if-ne v3, v5, :cond_24

    .line 515
    .line 516
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    if-ne v3, v4, :cond_24

    .line 521
    .line 522
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 523
    .line 524
    iget-boolean v3, v3, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    .line 525
    .line 526
    if-nez v3, :cond_24

    .line 527
    .line 528
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 529
    .line 530
    .line 531
    return v15

    .line 532
    :cond_24
    const/16 v3, 0x3d

    .line 533
    .line 534
    if-eq v1, v4, :cond_59

    .line 535
    .line 536
    const/16 v12, 0x5b

    .line 537
    .line 538
    if-eq v1, v12, :cond_58

    .line 539
    .line 540
    const/16 v10, 0x60

    .line 541
    .line 542
    if-eq v1, v10, :cond_57

    .line 543
    .line 544
    move/from16 v23, v10

    .line 545
    .line 546
    const/16 v10, 0x25

    .line 547
    .line 548
    if-eq v1, v10, :cond_55

    .line 549
    .line 550
    const/16 v10, 0x26

    .line 551
    .line 552
    if-eq v1, v10, :cond_51

    .line 553
    .line 554
    const/16 v10, 0x5d

    .line 555
    .line 556
    if-eq v1, v10, :cond_50

    .line 557
    .line 558
    const/16 v10, 0x5e

    .line 559
    .line 560
    if-eq v1, v10, :cond_4e

    .line 561
    .line 562
    move/from16 v24, v10

    .line 563
    .line 564
    const/16 v10, 0x2a

    .line 565
    .line 566
    move/from16 v25, v12

    .line 567
    .line 568
    const/16 v12, 0x3e

    .line 569
    .line 570
    packed-switch v1, :pswitch_data_0

    .line 571
    .line 572
    .line 573
    packed-switch v1, :pswitch_data_1

    .line 574
    .line 575
    .line 576
    packed-switch v1, :pswitch_data_2

    .line 577
    .line 578
    .line 579
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 580
    .line 581
    invoke-virtual {v0, v13, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    .line 582
    .line 583
    .line 584
    return v2

    .line 585
    :pswitch_0
    const/16 v0, 0x1b

    .line 586
    .line 587
    return v0

    .line 588
    :pswitch_1
    return v16

    .line 589
    :pswitch_2
    const/16 v1, 0x7c

    .line 590
    .line 591
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-eqz v1, :cond_26

    .line 596
    .line 597
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_25

    .line 602
    .line 603
    return v21

    .line 604
    :cond_25
    return v28

    .line 605
    :cond_26
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-eqz v0, :cond_27

    .line 610
    .line 611
    const/16 v0, 0x64

    .line 612
    .line 613
    return v0

    .line 614
    :cond_27
    return v29

    .line 615
    :pswitch_3
    return v24

    .line 616
    :pswitch_4
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 617
    .line 618
    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 619
    .line 620
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    if-lt v1, v6, :cond_2b

    .line 625
    .line 626
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    if-ne v1, v8, :cond_29

    .line 631
    .line 632
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 633
    .line 634
    .line 635
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    if-nez v1, :cond_28

    .line 644
    .line 645
    const/16 v0, 0xba

    .line 646
    .line 647
    return v0

    .line 648
    :cond_28
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 649
    .line 650
    .line 651
    goto :goto_f

    .line 652
    :cond_29
    const/16 v1, 0x3f

    .line 653
    .line 654
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_2b

    .line 659
    .line 660
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_2a

    .line 665
    .line 666
    return v9

    .line 667
    :cond_2a
    const/16 v0, 0xb9

    .line 668
    .line 669
    return v0

    .line 670
    :cond_2b
    :goto_f
    const/16 v0, 0x73

    .line 671
    .line 672
    return v0

    .line 673
    :pswitch_5
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_2f

    .line 678
    .line 679
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    if-eqz v1, :cond_2d

    .line 684
    .line 685
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-eqz v0, :cond_2c

    .line 690
    .line 691
    const/16 v0, 0x6b

    .line 692
    .line 693
    return v0

    .line 694
    :cond_2c
    const/16 v0, 0x14

    .line 695
    .line 696
    return v0

    .line 697
    :cond_2d
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    if-eqz v0, :cond_2e

    .line 702
    .line 703
    const/16 v0, 0x6a

    .line 704
    .line 705
    return v0

    .line 706
    :cond_2e
    const/16 v0, 0x13

    .line 707
    .line 708
    return v0

    .line 709
    :cond_2f
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-eqz v0, :cond_30

    .line 714
    .line 715
    const/16 v0, 0x11

    .line 716
    .line 717
    return v0

    .line 718
    :cond_30
    return v20

    .line 719
    :pswitch_6
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    if-eqz v1, :cond_32

    .line 724
    .line 725
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-eqz v0, :cond_31

    .line 730
    .line 731
    const/16 v0, 0x33

    .line 732
    .line 733
    return v0

    .line 734
    :cond_31
    return v27

    .line 735
    :cond_32
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-eqz v0, :cond_33

    .line 740
    .line 741
    const/16 v0, 0xb2

    .line 742
    .line 743
    return v0

    .line 744
    :cond_33
    const/16 v0, 0x63

    .line 745
    .line 746
    return v0

    .line 747
    :pswitch_7
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_36

    .line 752
    .line 753
    const/16 v1, 0x2d

    .line 754
    .line 755
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_35

    .line 760
    .line 761
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    if-eqz v2, :cond_34

    .line 766
    .line 767
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 768
    .line 769
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 770
    .line 771
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 772
    .line 773
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 774
    .line 775
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 776
    .line 777
    add-int/lit8 v1, v1, -0x4

    .line 778
    .line 779
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 780
    .line 781
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 782
    .line 783
    .line 784
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    .line 785
    .line 786
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 787
    .line 788
    return v15

    .line 789
    :cond_34
    const/16 v1, 0x2d

    .line 790
    .line 791
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 792
    .line 793
    .line 794
    :cond_35
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 795
    .line 796
    .line 797
    :cond_36
    const/16 v1, 0x3c

    .line 798
    .line 799
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-eqz v1, :cond_38

    .line 804
    .line 805
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-eqz v0, :cond_37

    .line 810
    .line 811
    const/16 v0, 0x69

    .line 812
    .line 813
    return v0

    .line 814
    :cond_37
    const/16 v0, 0x12

    .line 815
    .line 816
    return v0

    .line 817
    :cond_38
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    if-eqz v0, :cond_39

    .line 822
    .line 823
    const/16 v0, 0xf

    .line 824
    .line 825
    return v0

    .line 826
    :cond_39
    const/16 v0, 0xe

    .line 827
    .line 828
    return v0

    .line 829
    :pswitch_8
    return v25

    .line 830
    :pswitch_9
    const/16 v1, 0x3a

    .line 831
    .line 832
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-eqz v0, :cond_3a

    .line 837
    .line 838
    const/16 v0, 0x9e

    .line 839
    .line 840
    return v0

    .line 841
    :cond_3a
    const/16 v0, 0x74

    .line 842
    .line 843
    return v0

    .line 844
    :pswitch_a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    .line 845
    .line 846
    .line 847
    const/16 v1, 0x2f

    .line 848
    .line 849
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    if-eqz v1, :cond_3b

    .line 854
    .line 855
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 856
    .line 857
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 858
    .line 859
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 860
    .line 861
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 862
    .line 863
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 864
    .line 865
    add-int/lit8 v1, v1, -0x2

    .line 866
    .line 867
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 868
    .line 869
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 870
    .line 871
    .line 872
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    .line 873
    .line 874
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 875
    .line 876
    return v15

    .line 877
    :cond_3b
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    if-eqz v1, :cond_41

    .line 882
    .line 883
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lastLineEnd:I

    .line 884
    .line 885
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 886
    .line 887
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 888
    .line 889
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 890
    .line 891
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 892
    .line 893
    add-int/lit8 v1, v1, -0x2

    .line 894
    .line 895
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 896
    .line 897
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 898
    .line 899
    .line 900
    move-result v1

    .line 901
    if-eqz v1, :cond_3c

    .line 902
    .line 903
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    .line 904
    .line 905
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 906
    .line 907
    :goto_10
    move v1, v5

    .line 908
    goto :goto_12

    .line 909
    :cond_3c
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    .line 910
    .line 911
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 912
    .line 913
    :goto_11
    const/4 v1, 0x0

    .line 914
    :cond_3d
    :goto_12
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    if-ne v3, v2, :cond_3e

    .line 919
    .line 920
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 921
    .line 922
    sub-int/2addr v1, v5

    .line 923
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 924
    .line 925
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 926
    .line 927
    const-string v1, "msg.unterminated.comment"

    .line 928
    .line 929
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    return v15

    .line 933
    :cond_3e
    if-ne v3, v10, :cond_3f

    .line 934
    .line 935
    goto :goto_10

    .line 936
    :cond_3f
    const/16 v4, 0x2f

    .line 937
    .line 938
    if-ne v3, v4, :cond_40

    .line 939
    .line 940
    if-eqz v1, :cond_3d

    .line 941
    .line 942
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 943
    .line 944
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 945
    .line 946
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 947
    .line 948
    return v15

    .line 949
    :cond_40
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 950
    .line 951
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 952
    .line 953
    goto :goto_11

    .line 954
    :cond_41
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    if-eqz v0, :cond_42

    .line 959
    .line 960
    const/16 v0, 0x6f

    .line 961
    .line 962
    return v0

    .line 963
    :cond_42
    const/16 v0, 0x18

    .line 964
    .line 965
    return v0

    .line 966
    :pswitch_b
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 967
    .line 968
    .line 969
    move-result v1

    .line 970
    if-eqz v1, :cond_44

    .line 971
    .line 972
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 973
    .line 974
    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 975
    .line 976
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 977
    .line 978
    .line 979
    move-result v1

    .line 980
    const/16 v2, 0xb4

    .line 981
    .line 982
    if-lt v1, v2, :cond_43

    .line 983
    .line 984
    invoke-direct {v0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    if-eqz v0, :cond_43

    .line 989
    .line 990
    const/16 v0, 0xb8

    .line 991
    .line 992
    return v0

    .line 993
    :cond_43
    const/16 v0, 0x9d

    .line 994
    .line 995
    return v0

    .line 996
    :cond_44
    const/16 v1, 0x28

    .line 997
    .line 998
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    if-eqz v0, :cond_45

    .line 1003
    .line 1004
    const/16 v0, 0xa0

    .line 1005
    .line 1006
    return v0

    .line 1007
    :cond_45
    const/16 v0, 0x79

    .line 1008
    .line 1009
    return v0

    .line 1010
    :pswitch_c
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-eqz v1, :cond_46

    .line 1015
    .line 1016
    const/16 v14, 0x6d

    .line 1017
    .line 1018
    goto :goto_13

    .line 1019
    :cond_46
    const/16 v1, 0x2d

    .line 1020
    .line 1021
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_47

    .line 1026
    .line 1027
    iget-boolean v1, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 1028
    .line 1029
    if-nez v1, :cond_48

    .line 1030
    .line 1031
    invoke-direct {v0, v12}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    if-eqz v1, :cond_48

    .line 1036
    .line 1037
    const-string v1, "--"

    .line 1038
    .line 1039
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 1043
    .line 1044
    .line 1045
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    .line 1046
    .line 1047
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 1048
    .line 1049
    return v15

    .line 1050
    :cond_47
    const/16 v14, 0x16

    .line 1051
    .line 1052
    :cond_48
    :goto_13
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 1053
    .line 1054
    return v14

    .line 1055
    :pswitch_d
    return v11

    .line 1056
    :pswitch_e
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1057
    .line 1058
    .line 1059
    move-result v1

    .line 1060
    if-eqz v1, :cond_49

    .line 1061
    .line 1062
    const/16 v0, 0x6c

    .line 1063
    .line 1064
    return v0

    .line 1065
    :cond_49
    const/16 v1, 0x2b

    .line 1066
    .line 1067
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v0

    .line 1071
    if-eqz v0, :cond_4a

    .line 1072
    .line 1073
    const/16 v0, 0x77

    .line 1074
    .line 1075
    return v0

    .line 1076
    :cond_4a
    const/16 v0, 0x15

    .line 1077
    .line 1078
    return v0

    .line 1079
    :pswitch_f
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1080
    .line 1081
    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    if-lt v1, v6, :cond_4c

    .line 1088
    .line 1089
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v1

    .line 1093
    if-eqz v1, :cond_4c

    .line 1094
    .line 1095
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v0

    .line 1099
    if-eqz v0, :cond_4b

    .line 1100
    .line 1101
    const/16 v0, 0x71

    .line 1102
    .line 1103
    return v0

    .line 1104
    :cond_4b
    const/16 v0, 0x51

    .line 1105
    .line 1106
    return v0

    .line 1107
    :cond_4c
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v0

    .line 1111
    if-eqz v0, :cond_4d

    .line 1112
    .line 1113
    return v7

    .line 1114
    :cond_4d
    const/16 v0, 0x17

    .line 1115
    .line 1116
    return v0

    .line 1117
    :pswitch_10
    const/16 v0, 0x61

    .line 1118
    .line 1119
    return v0

    .line 1120
    :pswitch_11
    return v23

    .line 1121
    :cond_4e
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v0

    .line 1125
    if-eqz v0, :cond_4f

    .line 1126
    .line 1127
    const/16 v0, 0x66

    .line 1128
    .line 1129
    return v0

    .line 1130
    :cond_4f
    return v17

    .line 1131
    :cond_50
    return v10

    .line 1132
    :cond_51
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v1

    .line 1136
    if-eqz v1, :cond_53

    .line 1137
    .line 1138
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    if-eqz v0, :cond_52

    .line 1143
    .line 1144
    const/16 v0, 0x68

    .line 1145
    .line 1146
    return v0

    .line 1147
    :cond_52
    const/16 v0, 0x76

    .line 1148
    .line 1149
    return v0

    .line 1150
    :cond_53
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v0

    .line 1154
    if-eqz v0, :cond_54

    .line 1155
    .line 1156
    const/16 v0, 0x67

    .line 1157
    .line 1158
    return v0

    .line 1159
    :cond_54
    const/16 v0, 0xb

    .line 1160
    .line 1161
    return v0

    .line 1162
    :cond_55
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v0

    .line 1166
    if-eqz v0, :cond_56

    .line 1167
    .line 1168
    const/16 v0, 0x70

    .line 1169
    .line 1170
    return v0

    .line 1171
    :cond_56
    const/16 v0, 0x19

    .line 1172
    .line 1173
    return v0

    .line 1174
    :cond_57
    const/16 v0, 0xb4

    .line 1175
    .line 1176
    return v0

    .line 1177
    :cond_58
    return v10

    .line 1178
    :cond_59
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v1

    .line 1182
    if-eqz v1, :cond_5b

    .line 1183
    .line 1184
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-eqz v0, :cond_5a

    .line 1189
    .line 1190
    const/16 v0, 0x34

    .line 1191
    .line 1192
    return v0

    .line 1193
    :cond_5a
    return v12

    .line 1194
    :cond_5b
    const/16 v0, 0x1a

    .line 1195
    .line 1196
    return v0

    .line 1197
    :cond_5c
    :goto_14
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 1198
    .line 1199
    const/4 v1, 0x0

    .line 1200
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1201
    .line 1202
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd(Z)I

    .line 1203
    .line 1204
    .line 1205
    move-result v4

    .line 1206
    :goto_15
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 1207
    .line 1208
    if-eq v4, v1, :cond_75

    .line 1209
    .line 1210
    if-ne v4, v2, :cond_5e

    .line 1211
    .line 1212
    :cond_5d
    move v1, v5

    .line 1213
    goto :goto_17

    .line 1214
    :cond_5e
    move/from16 v1, v17

    .line 1215
    .line 1216
    if-ne v4, v1, :cond_60

    .line 1217
    .line 1218
    iget v13, v0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1219
    .line 1220
    if-eq v13, v1, :cond_5d

    .line 1221
    .line 1222
    if-eq v13, v12, :cond_5d

    .line 1223
    .line 1224
    const/16 v1, 0x2028

    .line 1225
    .line 1226
    if-eq v13, v1, :cond_5f

    .line 1227
    .line 1228
    const/16 v1, 0x2029

    .line 1229
    .line 1230
    if-eq v13, v1, :cond_5f

    .line 1231
    .line 1232
    goto :goto_16

    .line 1233
    :cond_5f
    move v4, v13

    .line 1234
    :cond_60
    :goto_16
    const/4 v1, 0x0

    .line 1235
    :goto_17
    if-eqz v1, :cond_61

    .line 1236
    .line 1237
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1238
    .line 1239
    .line 1240
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1241
    .line 1242
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1243
    .line 1244
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1245
    .line 1246
    const-string v1, "msg.unterminated.string.lit"

    .line 1247
    .line 1248
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    return v2

    .line 1252
    :cond_61
    if-ne v4, v10, :cond_74

    .line 1253
    .line 1254
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    const/16 v4, 0xa

    .line 1259
    .line 1260
    if-eq v1, v4, :cond_73

    .line 1261
    .line 1262
    if-eq v1, v11, :cond_72

    .line 1263
    .line 1264
    const/16 v4, 0x66

    .line 1265
    .line 1266
    if-eq v1, v4, :cond_71

    .line 1267
    .line 1268
    if-eq v1, v7, :cond_70

    .line 1269
    .line 1270
    if-eq v1, v9, :cond_6f

    .line 1271
    .line 1272
    if-eq v1, v14, :cond_6c

    .line 1273
    .line 1274
    packed-switch v1, :pswitch_data_3

    .line 1275
    .line 1276
    .line 1277
    if-gt v15, v1, :cond_63

    .line 1278
    .line 1279
    const/16 v4, 0x38

    .line 1280
    .line 1281
    if-ge v1, v4, :cond_63

    .line 1282
    .line 1283
    add-int/lit8 v1, v1, -0x30

    .line 1284
    .line 1285
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1286
    .line 1287
    .line 1288
    move-result v13

    .line 1289
    if-gt v15, v13, :cond_62

    .line 1290
    .line 1291
    if-ge v13, v4, :cond_62

    .line 1292
    .line 1293
    mul-int/lit8 v1, v1, 0x8

    .line 1294
    .line 1295
    add-int/2addr v1, v13

    .line 1296
    sub-int/2addr v1, v15

    .line 1297
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1298
    .line 1299
    .line 1300
    move-result v13

    .line 1301
    if-gt v15, v13, :cond_62

    .line 1302
    .line 1303
    if-ge v13, v4, :cond_62

    .line 1304
    .line 1305
    const/16 v4, 0x1f

    .line 1306
    .line 1307
    if-gt v1, v4, :cond_62

    .line 1308
    .line 1309
    mul-int/lit8 v1, v1, 0x8

    .line 1310
    .line 1311
    add-int/2addr v1, v13

    .line 1312
    sub-int/2addr v1, v15

    .line 1313
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1314
    .line 1315
    .line 1316
    move-result v13

    .line 1317
    :cond_62
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1318
    .line 1319
    .line 1320
    :cond_63
    :goto_18
    move/from16 v13, v28

    .line 1321
    .line 1322
    :goto_19
    const/16 v26, 0x7b

    .line 1323
    .line 1324
    goto/16 :goto_20

    .line 1325
    .line 1326
    :pswitch_12
    const/16 v1, 0xb

    .line 1327
    .line 1328
    goto :goto_18

    .line 1329
    :pswitch_13
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1330
    .line 1331
    move/from16 v13, v28

    .line 1332
    .line 1333
    invoke-direct {v0, v13}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1334
    .line 1335
    .line 1336
    const/16 v4, 0x7b

    .line 1337
    .line 1338
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v16

    .line 1342
    if-eqz v16, :cond_67

    .line 1343
    .line 1344
    const/4 v4, 0x0

    .line 1345
    :goto_1a
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1346
    .line 1347
    .line 1348
    move-result v9

    .line 1349
    const/16 v10, 0x7d

    .line 1350
    .line 1351
    if-ne v9, v10, :cond_64

    .line 1352
    .line 1353
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1354
    .line 1355
    .line 1356
    goto :goto_1b

    .line 1357
    :cond_64
    invoke-static {v9, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1358
    .line 1359
    .line 1360
    move-result v4

    .line 1361
    if-gez v4, :cond_66

    .line 1362
    .line 1363
    :goto_1b
    const v10, 0x10ffff

    .line 1364
    .line 1365
    .line 1366
    if-ltz v4, :cond_65

    .line 1367
    .line 1368
    if-le v4, v10, :cond_6b

    .line 1369
    .line 1370
    :cond_65
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1371
    .line 1372
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    move v4, v9

    .line 1376
    move/from16 v28, v13

    .line 1377
    .line 1378
    const/16 v9, 0x72

    .line 1379
    .line 1380
    const/16 v10, 0x5c

    .line 1381
    .line 1382
    const/16 v17, 0xa

    .line 1383
    .line 1384
    goto/16 :goto_15

    .line 1385
    .line 1386
    :cond_66
    const v10, 0x10ffff

    .line 1387
    .line 1388
    .line 1389
    invoke-direct {v0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1390
    .line 1391
    .line 1392
    const/16 v10, 0x5c

    .line 1393
    .line 1394
    goto :goto_1a

    .line 1395
    :cond_67
    move/from16 v10, v19

    .line 1396
    .line 1397
    const/4 v4, 0x0

    .line 1398
    const/4 v9, 0x0

    .line 1399
    :goto_1c
    if-eq v4, v10, :cond_6a

    .line 1400
    .line 1401
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1402
    .line 1403
    .line 1404
    move-result v10

    .line 1405
    invoke-static {v10, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1406
    .line 1407
    .line 1408
    move-result v9

    .line 1409
    if-gez v9, :cond_69

    .line 1410
    .line 1411
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1412
    .line 1413
    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 1414
    .line 1415
    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-lt v1, v6, :cond_68

    .line 1420
    .line 1421
    iget-object v1, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1422
    .line 1423
    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    :cond_68
    move v4, v10

    .line 1427
    :goto_1d
    move/from16 v28, v13

    .line 1428
    .line 1429
    :goto_1e
    const/16 v9, 0x72

    .line 1430
    .line 1431
    const/16 v10, 0x5c

    .line 1432
    .line 1433
    const/16 v17, 0xa

    .line 1434
    .line 1435
    const/16 v19, 0x4

    .line 1436
    .line 1437
    goto/16 :goto_15

    .line 1438
    .line 1439
    :cond_69
    invoke-direct {v0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1440
    .line 1441
    .line 1442
    add-int/lit8 v4, v4, 0x1

    .line 1443
    .line 1444
    const/4 v10, 0x4

    .line 1445
    goto :goto_1c

    .line 1446
    :cond_6a
    move v4, v9

    .line 1447
    :cond_6b
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1448
    .line 1449
    move v1, v4

    .line 1450
    goto/16 :goto_19

    .line 1451
    .line 1452
    :pswitch_14
    move/from16 v13, v28

    .line 1453
    .line 1454
    move/from16 v1, v29

    .line 1455
    .line 1456
    goto/16 :goto_19

    .line 1457
    .line 1458
    :cond_6c
    move/from16 v13, v28

    .line 1459
    .line 1460
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1461
    .line 1462
    .line 1463
    move-result v4

    .line 1464
    const/4 v1, 0x0

    .line 1465
    invoke-static {v4, v1}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1466
    .line 1467
    .line 1468
    move-result v9

    .line 1469
    if-gez v9, :cond_6d

    .line 1470
    .line 1471
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1472
    .line 1473
    .line 1474
    goto :goto_1d

    .line 1475
    :cond_6d
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1476
    .line 1477
    .line 1478
    move-result v1

    .line 1479
    invoke-static {v1, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1480
    .line 1481
    .line 1482
    move-result v9

    .line 1483
    if-gez v9, :cond_6e

    .line 1484
    .line 1485
    invoke-direct {v0, v14}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1486
    .line 1487
    .line 1488
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1489
    .line 1490
    .line 1491
    :goto_1f
    move v4, v1

    .line 1492
    goto :goto_1d

    .line 1493
    :cond_6e
    move v1, v9

    .line 1494
    goto/16 :goto_19

    .line 1495
    .line 1496
    :cond_6f
    move/from16 v13, v28

    .line 1497
    .line 1498
    move v1, v12

    .line 1499
    goto/16 :goto_19

    .line 1500
    .line 1501
    :cond_70
    move/from16 v13, v28

    .line 1502
    .line 1503
    const/16 v1, 0xa

    .line 1504
    .line 1505
    goto/16 :goto_19

    .line 1506
    .line 1507
    :cond_71
    move/from16 v13, v28

    .line 1508
    .line 1509
    move/from16 v1, v27

    .line 1510
    .line 1511
    goto/16 :goto_19

    .line 1512
    .line 1513
    :cond_72
    move/from16 v13, v28

    .line 1514
    .line 1515
    const/16 v1, 0x8

    .line 1516
    .line 1517
    goto/16 :goto_19

    .line 1518
    .line 1519
    :cond_73
    move/from16 v13, v28

    .line 1520
    .line 1521
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1522
    .line 1523
    .line 1524
    move-result v4

    .line 1525
    goto :goto_1e

    .line 1526
    :cond_74
    move/from16 v13, v28

    .line 1527
    .line 1528
    const/16 v26, 0x7b

    .line 1529
    .line 1530
    move v1, v4

    .line 1531
    :goto_20
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1532
    .line 1533
    .line 1534
    const/4 v4, 0x0

    .line 1535
    invoke-direct {v0, v4}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    .line 1536
    .line 1537
    .line 1538
    move-result v1

    .line 1539
    goto :goto_1f

    .line 1540
    :cond_75
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v1

    .line 1544
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->internString(Ljava/lang/String;)Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v1

    .line 1548
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1549
    .line 1550
    iget v1, v0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1551
    .line 1552
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1553
    .line 1554
    iput v1, v0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1555
    .line 1556
    return v8

    .line 1557
    :goto_21
    iput v4, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1558
    .line 1559
    iput-boolean v4, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    .line 1560
    .line 1561
    iput-boolean v4, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 1562
    .line 1563
    iput-boolean v4, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    .line 1564
    .line 1565
    iput-boolean v4, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 1566
    .line 1567
    iget-object v3, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1568
    .line 1569
    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 1570
    .line 1571
    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    .line 1572
    .line 1573
    .line 1574
    move-result v3

    .line 1575
    if-lt v3, v6, :cond_76

    .line 1576
    .line 1577
    move v3, v5

    .line 1578
    goto :goto_22

    .line 1579
    :cond_76
    const/4 v3, 0x0

    .line 1580
    :goto_22
    if-ne v1, v15, :cond_7d

    .line 1581
    .line 1582
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1583
    .line 1584
    .line 1585
    move-result v1

    .line 1586
    if-eq v1, v14, :cond_7e

    .line 1587
    .line 1588
    const/16 v4, 0x58

    .line 1589
    .line 1590
    if-ne v1, v4, :cond_77

    .line 1591
    .line 1592
    goto :goto_24

    .line 1593
    :cond_77
    if-eqz v3, :cond_79

    .line 1594
    .line 1595
    const/16 v4, 0x6f

    .line 1596
    .line 1597
    if-eq v1, v4, :cond_78

    .line 1598
    .line 1599
    const/16 v4, 0x4f

    .line 1600
    .line 1601
    if-ne v1, v4, :cond_79

    .line 1602
    .line 1603
    :cond_78
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 1604
    .line 1605
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1606
    .line 1607
    .line 1608
    move-result v1

    .line 1609
    :goto_23
    const/16 v4, 0x8

    .line 1610
    .line 1611
    goto :goto_25

    .line 1612
    :cond_79
    if-eqz v3, :cond_7b

    .line 1613
    .line 1614
    if-eq v1, v11, :cond_7a

    .line 1615
    .line 1616
    const/16 v4, 0x42

    .line 1617
    .line 1618
    if-ne v1, v4, :cond_7b

    .line 1619
    .line 1620
    :cond_7a
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    .line 1621
    .line 1622
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1623
    .line 1624
    .line 1625
    move-result v1

    .line 1626
    move/from16 v4, v22

    .line 1627
    .line 1628
    goto :goto_25

    .line 1629
    :cond_7b
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 1630
    .line 1631
    .line 1632
    move-result v4

    .line 1633
    if-eqz v4, :cond_7c

    .line 1634
    .line 1635
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    .line 1636
    .line 1637
    goto :goto_23

    .line 1638
    :cond_7c
    invoke-direct {v0, v15}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1639
    .line 1640
    .line 1641
    :cond_7d
    const/16 v4, 0xa

    .line 1642
    .line 1643
    goto :goto_25

    .line 1644
    :cond_7e
    :goto_24
    iput-boolean v5, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 1645
    .line 1646
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1647
    .line 1648
    .line 1649
    move-result v1

    .line 1650
    move/from16 v4, v20

    .line 1651
    .line 1652
    :goto_25
    iget v6, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1653
    .line 1654
    const/4 v9, -0x2

    .line 1655
    const-string v10, "msg.caught.nfe"

    .line 1656
    .line 1657
    const/16 v11, 0xa

    .line 1658
    .line 1659
    if-eq v4, v11, :cond_84

    .line 1660
    .line 1661
    move/from16 v11, v20

    .line 1662
    .line 1663
    if-eq v4, v11, :cond_84

    .line 1664
    .line 1665
    const/16 v11, 0x8

    .line 1666
    .line 1667
    if-ne v4, v11, :cond_7f

    .line 1668
    .line 1669
    iget-boolean v11, v0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    .line 1670
    .line 1671
    if-eqz v11, :cond_84

    .line 1672
    .line 1673
    :cond_7f
    move/from16 v11, v22

    .line 1674
    .line 1675
    if-ne v4, v11, :cond_80

    .line 1676
    .line 1677
    goto :goto_28

    .line 1678
    :cond_80
    :goto_26
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v11

    .line 1682
    if-eqz v11, :cond_85

    .line 1683
    .line 1684
    const/16 v11, 0x38

    .line 1685
    .line 1686
    if-lt v1, v11, :cond_83

    .line 1687
    .line 1688
    iget-object v4, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1689
    .line 1690
    if-ne v1, v11, :cond_81

    .line 1691
    .line 1692
    const-string v11, "8"

    .line 1693
    .line 1694
    goto :goto_27

    .line 1695
    :cond_81
    const-string v11, "9"

    .line 1696
    .line 1697
    :goto_27
    const-string v12, "msg.bad.octal.literal"

    .line 1698
    .line 1699
    invoke-virtual {v4, v12, v11}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    .line 1701
    .line 1702
    const/16 v4, 0xa

    .line 1703
    .line 1704
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    .line 1705
    .line 1706
    .line 1707
    move-result v1

    .line 1708
    if-ne v1, v9, :cond_82

    .line 1709
    .line 1710
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1711
    .line 1712
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    return v2

    .line 1716
    :cond_82
    const/16 v4, 0xa

    .line 1717
    .line 1718
    goto :goto_29

    .line 1719
    :cond_83
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1720
    .line 1721
    .line 1722
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1723
    .line 1724
    .line 1725
    move-result v1

    .line 1726
    goto :goto_26

    .line 1727
    :cond_84
    :goto_28
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    .line 1728
    .line 1729
    .line 1730
    move-result v1

    .line 1731
    if-ne v1, v9, :cond_85

    .line 1732
    .line 1733
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1734
    .line 1735
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    return v2

    .line 1739
    :cond_85
    :goto_29
    iget v11, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1740
    .line 1741
    if-ne v11, v6, :cond_87

    .line 1742
    .line 1743
    iget-boolean v6, v0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    .line 1744
    .line 1745
    if-nez v6, :cond_86

    .line 1746
    .line 1747
    iget-boolean v6, v0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 1748
    .line 1749
    if-nez v6, :cond_86

    .line 1750
    .line 1751
    iget-boolean v6, v0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 1752
    .line 1753
    if-eqz v6, :cond_87

    .line 1754
    .line 1755
    :cond_86
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1756
    .line 1757
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    return v2

    .line 1761
    :cond_87
    if-eqz v3, :cond_88

    .line 1762
    .line 1763
    if-ne v1, v7, :cond_88

    .line 1764
    .line 1765
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1766
    .line 1767
    .line 1768
    move-result v1

    .line 1769
    move v3, v5

    .line 1770
    goto :goto_2b

    .line 1771
    :cond_88
    const/16 v11, 0xa

    .line 1772
    .line 1773
    if-ne v4, v11, :cond_90

    .line 1774
    .line 1775
    if-eq v1, v8, :cond_89

    .line 1776
    .line 1777
    move/from16 v3, v21

    .line 1778
    .line 1779
    if-eq v1, v3, :cond_89

    .line 1780
    .line 1781
    const/16 v3, 0x45

    .line 1782
    .line 1783
    if-ne v1, v3, :cond_90

    .line 1784
    .line 1785
    :cond_89
    if-ne v1, v8, :cond_8a

    .line 1786
    .line 1787
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1788
    .line 1789
    .line 1790
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1791
    .line 1792
    .line 1793
    move-result v1

    .line 1794
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    .line 1795
    .line 1796
    .line 1797
    move-result v1

    .line 1798
    if-ne v1, v9, :cond_8a

    .line 1799
    .line 1800
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1801
    .line 1802
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1803
    .line 1804
    .line 1805
    return v2

    .line 1806
    :cond_8a
    const/16 v3, 0x65

    .line 1807
    .line 1808
    if-eq v1, v3, :cond_8c

    .line 1809
    .line 1810
    const/16 v3, 0x45

    .line 1811
    .line 1812
    if-ne v1, v3, :cond_8b

    .line 1813
    .line 1814
    goto :goto_2a

    .line 1815
    :cond_8b
    const/4 v3, 0x0

    .line 1816
    const/4 v5, 0x0

    .line 1817
    goto :goto_2b

    .line 1818
    :cond_8c
    :goto_2a
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1819
    .line 1820
    .line 1821
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1822
    .line 1823
    .line 1824
    move-result v1

    .line 1825
    const/16 v3, 0x2b

    .line 1826
    .line 1827
    if-eq v1, v3, :cond_8d

    .line 1828
    .line 1829
    const/16 v3, 0x2d

    .line 1830
    .line 1831
    if-ne v1, v3, :cond_8e

    .line 1832
    .line 1833
    :cond_8d
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1834
    .line 1835
    .line 1836
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    :cond_8e
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    .line 1841
    .line 1842
    .line 1843
    move-result v3

    .line 1844
    if-nez v3, :cond_8f

    .line 1845
    .line 1846
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1847
    .line 1848
    const-string v1, "msg.missing.exponent"

    .line 1849
    .line 1850
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1851
    .line 1852
    .line 1853
    return v2

    .line 1854
    :cond_8f
    invoke-direct {v0, v4, v1}, Lorg/mozilla/javascript/TokenStream;->readDigits(II)I

    .line 1855
    .line 1856
    .line 1857
    move-result v1

    .line 1858
    if-ne v1, v9, :cond_8b

    .line 1859
    .line 1860
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1861
    .line 1862
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1863
    .line 1864
    .line 1865
    return v2

    .line 1866
    :cond_90
    const/4 v3, 0x0

    .line 1867
    :goto_2b
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1868
    .line 1869
    .line 1870
    invoke-direct {v0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v1

    .line 1874
    iput-object v1, v0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1875
    .line 1876
    move/from16 v6, v16

    .line 1877
    .line 1878
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1879
    .line 1880
    .line 1881
    move-result v7

    .line 1882
    if-eq v7, v2, :cond_93

    .line 1883
    .line 1884
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 1885
    .line 1886
    .line 1887
    move-result-object v1

    .line 1888
    add-int/lit8 v8, v7, 0x1

    .line 1889
    .line 1890
    :goto_2c
    array-length v9, v1

    .line 1891
    if-ge v8, v9, :cond_92

    .line 1892
    .line 1893
    aget-char v9, v1, v8

    .line 1894
    .line 1895
    if-eq v9, v6, :cond_91

    .line 1896
    .line 1897
    add-int/lit8 v11, v7, 0x1

    .line 1898
    .line 1899
    aput-char v9, v1, v7

    .line 1900
    .line 1901
    move v7, v11

    .line 1902
    :cond_91
    add-int/lit8 v8, v8, 0x1

    .line 1903
    .line 1904
    goto :goto_2c

    .line 1905
    :cond_92
    new-instance v6, Ljava/lang/String;

    .line 1906
    .line 1907
    const/4 v8, 0x0

    .line 1908
    invoke-direct {v6, v1, v8, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1909
    .line 1910
    .line 1911
    move-object v1, v6

    .line 1912
    :cond_93
    if-eqz v3, :cond_94

    .line 1913
    .line 1914
    new-instance v2, Ljava/math/BigInteger;

    .line 1915
    .line 1916
    invoke-direct {v2, v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1917
    .line 1918
    .line 1919
    iput-object v2, v0, Lorg/mozilla/javascript/TokenStream;->bigInt:Ljava/math/BigInteger;

    .line 1920
    .line 1921
    const/16 v0, 0x59

    .line 1922
    .line 1923
    return v0

    .line 1924
    :cond_94
    const/16 v11, 0xa

    .line 1925
    .line 1926
    if-ne v4, v11, :cond_95

    .line 1927
    .line 1928
    if-nez v5, :cond_95

    .line 1929
    .line 1930
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1931
    .line 1932
    .line 1933
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    goto :goto_2d

    .line 1935
    :catch_0
    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 1936
    .line 1937
    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    return v2

    .line 1941
    :cond_95
    const/4 v8, 0x0

    .line 1942
    invoke-static {v1, v8, v4}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    .line 1943
    .line 1944
    .line 1945
    move-result-wide v1

    .line 1946
    :goto_2d
    iput-wide v1, v0, Lorg/mozilla/javascript/TokenStream;->number:D

    .line 1947
    .line 1948
    const/16 v18, 0x2d

    .line 1949
    .line 1950
    return v18

    .line 1951
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getTokenBeg()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2
    .line 3
    return p0
.end method

.method public getTokenColumn()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2
    .line 3
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLastLineEnd:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    return v0
.end method

.method public getTokenEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2
    .line 3
    return p0
.end method

.method public getTokenLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 2
    .line 3
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public getTokenStartLineno()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/TokenStream;->tokenStartLineno:I

    .line 2
    .line 3
    return p0
.end method

.method public final isNumericBinary()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->isBinary:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isNumericHex()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isNumericOctal()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isNumericOldOctal()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->isOldOctal:Z

    .line 2
    .line 3
    return p0
.end method

.method public isXMLAttribute()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 2
    .line 3
    return p0
.end method

.method public readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public readRegExp(I)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 5
    .line 6
    const/16 v2, 0x6f

    .line 7
    .line 8
    const-string v3, "msg.unterminated.re.lit"

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x3d

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v2, 0x18

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v2, 0x2a

    .line 31
    .line 32
    if-ne p1, v2, :cond_2

    .line 33
    .line 34
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 35
    .line 36
    sub-int/2addr p1, v4

    .line 37
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 38
    .line 39
    new-instance p1, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 42
    .line 43
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 44
    .line 45
    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    :goto_0
    move p1, v1

    .line 57
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/16 v5, 0x2f

    .line 62
    .line 63
    if-ne v2, v5, :cond_a

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 70
    .line 71
    :goto_2
    const/16 v2, 0x67

    .line 72
    .line 73
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/16 v2, 0x69

    .line 84
    .line 85
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_5

    .line 90
    .line 91
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/16 v2, 0x6d

    .line 96
    .line 97
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/16 v2, 0x73

    .line 108
    .line 109
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    const/16 v2, 0x79

    .line 120
    .line 121
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 132
    .line 133
    add-int/2addr v0, v2

    .line 134
    add-int/lit8 v0, v0, 0x2

    .line 135
    .line 136
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 137
    .line 138
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 149
    .line 150
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-string v3, "msg.invalid.re.flag"

    .line 163
    .line 164
    invoke-virtual {v0, v3, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    new-instance v0, Ljava/lang/String;

    .line 168
    .line 169
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 170
    .line 171
    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 175
    .line 176
    new-instance v0, Ljava/lang/String;

    .line 177
    .line 178
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 179
    .line 180
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 181
    .line 182
    sub-int/2addr v2, p1

    .line 183
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    .line 187
    .line 188
    return-void

    .line 189
    :cond_a
    :goto_3
    const/16 v5, 0xa

    .line 190
    .line 191
    if-eq v2, v5, :cond_10

    .line 192
    .line 193
    const/4 v6, -0x1

    .line 194
    if-ne v2, v6, :cond_b

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    const/16 v7, 0x5c

    .line 198
    .line 199
    if-ne v2, v7, :cond_d

    .line 200
    .line 201
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eq v2, v5, :cond_c

    .line 209
    .line 210
    if-ne v2, v6, :cond_f

    .line 211
    .line 212
    :cond_c
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 213
    .line 214
    .line 215
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 216
    .line 217
    sub-int/2addr p1, v4

    .line 218
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 219
    .line 220
    new-instance p1, Ljava/lang/String;

    .line 221
    .line 222
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 223
    .line 224
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 225
    .line 226
    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 227
    .line 228
    .line 229
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 230
    .line 231
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 232
    .line 233
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_d
    const/16 v5, 0x5b

    .line 238
    .line 239
    if-ne v2, v5, :cond_e

    .line 240
    .line 241
    move p1, v4

    .line 242
    goto :goto_4

    .line 243
    :cond_e
    const/16 v5, 0x5d

    .line 244
    .line 245
    if-ne v2, v5, :cond_f

    .line 246
    .line 247
    move p1, v1

    .line 248
    :cond_f
    :goto_4
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_10
    :goto_5
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 254
    .line 255
    .line 256
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 257
    .line 258
    sub-int/2addr p1, v4

    .line 259
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 260
    .line 261
    new-instance p1, Ljava/lang/String;

    .line 262
    .line 263
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 264
    .line 265
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 266
    .line 267
    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 268
    .line 269
    .line 270
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 271
    .line 272
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 273
    .line 274
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public readTemplateLiteral(Z)I
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    .line 6
    .line 7
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 8
    .line 9
    move v0, v1

    .line 10
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v2, v5, :cond_1d

    .line 18
    .line 19
    const/16 v6, 0x24

    .line 20
    .line 21
    const/16 v7, 0x7b

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    if-eq v2, v6, :cond_1a

    .line 25
    .line 26
    const/16 v6, 0x5c

    .line 27
    .line 28
    const/16 v9, 0x60

    .line 29
    .line 30
    if-eq v2, v6, :cond_3

    .line 31
    .line 32
    if-eq v2, v9, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v1, v4

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_1
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 56
    .line 57
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 58
    .line 59
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 60
    .line 61
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 62
    .line 63
    const/16 p0, 0xb4

    .line 64
    .line 65
    return p0

    .line 66
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/16 v3, 0xa

    .line 71
    .line 72
    if-eq v2, v3, :cond_0

    .line 73
    .line 74
    const/16 v6, 0x62

    .line 75
    .line 76
    if-eq v2, v6, :cond_18

    .line 77
    .line 78
    const/16 v6, 0x66

    .line 79
    .line 80
    if-eq v2, v6, :cond_17

    .line 81
    .line 82
    const/16 v6, 0x6e

    .line 83
    .line 84
    if-eq v2, v6, :cond_16

    .line 85
    .line 86
    const/16 v3, 0x72

    .line 87
    .line 88
    if-eq v2, v3, :cond_15

    .line 89
    .line 90
    const/16 v3, 0x78

    .line 91
    .line 92
    const-string v6, "msg.syntax"

    .line 93
    .line 94
    if-eq v2, v3, :cond_11

    .line 95
    .line 96
    const/16 v3, 0x2028

    .line 97
    .line 98
    if-eq v2, v3, :cond_0

    .line 99
    .line 100
    const/16 v3, 0x2029

    .line 101
    .line 102
    if-eq v2, v3, :cond_0

    .line 103
    .line 104
    packed-switch v2, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    packed-switch v2, :pswitch_data_1

    .line 108
    .line 109
    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :pswitch_0
    const/16 v2, 0xb

    .line 113
    .line 114
    goto/16 :goto_a

    .line 115
    .line 116
    :pswitch_1
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_a

    .line 121
    .line 122
    move v2, v1

    .line 123
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ne v3, v9, :cond_4

    .line 128
    .line 129
    move v2, v5

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-ne v3, v5, :cond_5

    .line 136
    .line 137
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 138
    .line 139
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v5

    .line 143
    :cond_5
    const/16 v7, 0x7d

    .line 144
    .line 145
    if-ne v3, v7, :cond_9

    .line 146
    .line 147
    :goto_3
    if-ltz v2, :cond_7

    .line 148
    .line 149
    const v3, 0x10ffff

    .line 150
    .line 151
    .line 152
    if-le v2, v3, :cond_6

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    const v3, 0xffff

    .line 156
    .line 157
    .line 158
    if-le v2, v3, :cond_19

    .line 159
    .line 160
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 165
    .line 166
    .line 167
    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 177
    .line 178
    :goto_5
    move v0, v4

    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_8
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 182
    .line 183
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return v5

    .line 187
    :cond_9
    invoke-static {v3, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    goto :goto_2

    .line 192
    :cond_a
    move v2, v1

    .line 193
    move v3, v2

    .line 194
    :goto_6
    const/4 v7, 0x4

    .line 195
    if-ge v2, v7, :cond_c

    .line 196
    .line 197
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-ne v7, v9, :cond_b

    .line 202
    .line 203
    move v2, v5

    .line 204
    goto :goto_7

    .line 205
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    invoke-static {v7, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_c
    move v2, v3

    .line 217
    :goto_7
    if-gez v2, :cond_19

    .line 218
    .line 219
    if-eqz p1, :cond_d

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_d
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 223
    .line 224
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return v5

    .line 228
    :pswitch_2
    const/16 v2, 0x9

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :pswitch_3
    if-eqz p1, :cond_e

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_e
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 235
    .line 236
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return v5

    .line 240
    :pswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/16 v3, 0x30

    .line 245
    .line 246
    if-lt v2, v3, :cond_10

    .line 247
    .line 248
    const/16 v3, 0x39

    .line 249
    .line 250
    if-gt v2, v3, :cond_10

    .line 251
    .line 252
    if-eqz p1, :cond_f

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_f
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 256
    .line 257
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return v5

    .line 261
    :cond_10
    move v2, v1

    .line 262
    goto :goto_a

    .line 263
    :cond_11
    move v2, v1

    .line 264
    move v3, v2

    .line 265
    :goto_8
    if-ge v2, v8, :cond_13

    .line 266
    .line 267
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekTemplateLiteralChar()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-ne v7, v9, :cond_12

    .line 272
    .line 273
    move v2, v5

    .line 274
    goto :goto_9

    .line 275
    :cond_12
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getTemplateLiteralChar()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    invoke-static {v7, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    add-int/lit8 v2, v2, 0x1

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_13
    move v2, v3

    .line 287
    :goto_9
    if-gez v2, :cond_19

    .line 288
    .line 289
    if-eqz p1, :cond_14

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_14
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 293
    .line 294
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return v5

    .line 298
    :cond_15
    const/16 v2, 0xd

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_16
    move v2, v3

    .line 302
    goto :goto_a

    .line 303
    :cond_17
    const/16 v2, 0xc

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_18
    const/16 v2, 0x8

    .line 307
    .line 308
    :cond_19
    :goto_a
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_1a
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->matchTemplateLiteralChar(I)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_1c

    .line 318
    .line 319
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->rawString:Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    sub-int/2addr v1, v8

    .line 326
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 327
    .line 328
    .line 329
    if-eqz v0, :cond_1b

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_1b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    :goto_b
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 337
    .line 338
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 339
    .line 340
    sub-int/2addr p1, v4

    .line 341
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 342
    .line 343
    const/16 p0, 0xb6

    .line 344
    .line 345
    return p0

    .line 346
    :cond_1c
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_1d
    if-eqz v0, :cond_1e

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_1e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    :goto_c
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 359
    .line 360
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 361
    .line 362
    sub-int/2addr p1, v4

    .line 363
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 364
    .line 365
    iget-object p0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 366
    .line 367
    const-string p1, "msg.unexpected.eof"

    .line 368
    .line 369
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return v5

    .line 373
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tokenToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method
