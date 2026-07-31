.class public Lexpo/modules/structuredheaders/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static EOD:C = '\uffff'


# instance fields
.field private final input:Ljava/nio/CharBuffer;

.field private final startPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 63
    const-string v1, "fieldLines must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 64
    const-string v4, "field line must not be null"

    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 66
    invoke-static {v3}, Lexpo/modules/structuredheaders/Parser;->checkASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lexpo/modules/structuredheaders/Parser;->checkASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    .line 80
    :cond_4
    new-instance p1, Lexpo/modules/structuredheaders/ParseException;

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "Empty input"

    invoke-direct {p1, v2, v0, v1}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    move-object v1, v2

    .line 82
    :cond_6
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    .line 83
    iput-object v0, p0, Lexpo/modules/structuredheaders/Parser;->startPositions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "input must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method private advance()V
    .locals 2

    .line 834
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private assertEmpty(Ljava/lang/String;)V
    .locals 2

    .line 828
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 829
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object p1

    throw p1
.end method

.method private backout()V
    .locals 2

    .line 838
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static checkASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v2, Lexpo/modules/structuredheaders/ParseException;

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v4, v1, p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 90
    const-string v3, "Invalid character in field line at position %d: \'%c\' (0x%04x) (input: %s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_1
    return-object p0
.end method

.method private checkNextChar(C)Z
    .locals 2

    .line 842
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkNextChar(Ljava/lang/String;)Z
    .locals 2

    .line 846
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;
    .locals 2

    .line 886
    new-instance v0, Lexpo/modules/structuredheaders/ParseException;

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-direct {v0, p1, v1}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/nio/CharBuffer;)V

    return-object v0
.end method

.method private complaint(Ljava/lang/String;Ljava/lang/Throwable;)Lexpo/modules/structuredheaders/ParseException;
    .locals 2

    .line 890
    new-instance v0, Lexpo/modules/structuredheaders/ParseException;

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-direct {v0, p1, v1, p2}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/nio/CharBuffer;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static format(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    .line 896
    const-string v0, "HTAB"

    goto :goto_0

    .line 898
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s (\\u%04x)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private get()C
    .locals 1

    .line 850
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    return v0
.end method

.method private getOrEOD()C
    .locals 1

    .line 854
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->get()C

    move-result v0

    goto :goto_0

    :cond_0
    sget-char v0, Lexpo/modules/structuredheaders/Parser;->EOD:C

    :goto_0
    return v0
.end method

.method private hasRemaining()Z
    .locals 1

    .line 858
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method private internalParseBareBoolean()Lexpo/modules/structuredheaders/BooleanItem;
    .locals 3

    .line 280
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    .line 282
    sget-char v1, Lexpo/modules/structuredheaders/Parser;->EOD:C

    const-string v2, "Missing data in Boolean"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_4

    .line 289
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    .line 291
    sget-char v1, Lexpo/modules/structuredheaders/Parser;->EOD:C

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    const/16 v2, 0x31

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 295
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Expected \'0\' or \'1\' in Boolean, found \'%c\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 298
    :goto_1
    invoke-static {v0}, Lexpo/modules/structuredheaders/BooleanItem;->valueOf(Z)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v0

    return-object v0

    .line 292
    :cond_3
    invoke-direct {p0, v2}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 285
    :cond_4
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 286
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Boolean must start with question mark, got \'%c\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 283
    :cond_5
    invoke-direct {p0, v2}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareByteSequence()Lexpo/modules/structuredheaders/ByteSequenceItem;
    .locals 6

    .line 242
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 249
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 250
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->get()C

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {v4}, Lexpo/modules/structuredheaders/Parser;->isBase64Char(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Byte Sequence Character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_2
    if-eqz v3, :cond_3

    .line 266
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/structuredheaders/ByteSequenceItem;->valueOf([B)Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;Ljava/lang/Throwable;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 262
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Byte Sequence must end with COLON: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Byte Sequence must start with colon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareInnerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_6

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 424
    :cond_0
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 425
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 427
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 429
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    const/4 v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseItem()Lexpo/modules/structuredheaders/Item;

    move-result-object v2

    .line 433
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v2

    .line 436
    sget-char v4, Lexpo/modules/structuredheaders/Parser;->EOD:C

    if-eq v2, v4, :cond_3

    const/16 v4, 0x20

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected SP or \')\' in Inner List, got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lexpo/modules/structuredheaders/Parser;->format(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 437
    :cond_3
    const-string v0, "Missing data in Inner List"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_4
    if-eqz v1, :cond_5

    return-object v0

    .line 446
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inner List must end with \')\': "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 418
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inner List must start with \'(\': "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/NumberItem<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x2d

    .line 102
    invoke-direct {p0, v1}, Lexpo/modules/structuredheaders/Parser;->checkNextChar(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 107
    :goto_0
    const-string v3, "0123456789"

    invoke-direct {p0, v3}, Lexpo/modules/structuredheaders/Parser;->checkNextChar(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    move v5, v3

    .line 112
    :cond_1
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v3, :cond_7

    .line 113
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v6

    .line 114
    invoke-static {v6}, Lexpo/modules/structuredheaders/Utils;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v7, 0xc

    if-gt v5, v7, :cond_3

    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    move v5, v2

    goto :goto_1

    .line 119
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal position for decimal point in Decimal after \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_4
    move v3, v2

    .line 127
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v5, :cond_5

    const/16 v7, 0x10

    goto :goto_2

    :cond_5
    const/16 v7, 0xf

    :goto_2
    if-le v6, v7, :cond_1

    .line 128
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_6

    const-string v2, "Decimal"

    goto :goto_3

    :cond_6
    const-string v2, "Integer"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " characters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_7
    if-nez v5, :cond_8

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 135
    invoke-static {v0, v1}, Lexpo/modules/structuredheaders/IntegerItem;->valueOf(J)Lexpo/modules/structuredheaders/IntegerItem;

    move-result-object v0

    return-object v0

    .line 137
    :cond_8
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    if-lt v4, v2, :cond_c

    if-ne v4, v2, :cond_9

    .line 144
    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const/4 v2, 0x2

    if-ne v4, v2, :cond_a

    .line 146
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const/4 v2, 0x3

    if-gt v4, v2, :cond_b

    .line 152
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    int-to-long v0, v1

    mul-long/2addr v0, v2

    .line 154
    invoke-static {v0, v1}, Lexpo/modules/structuredheaders/DecimalItem;->valueOf(J)Lexpo/modules/structuredheaders/DecimalItem;

    move-result-object v0

    return-object v0

    .line 148
    :cond_b
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of fractional digits is 3, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 141
    :cond_c
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 142
    const-string v0, "Decimal must not end in \'.\'"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 108
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal start for Integer or Decimal: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareItem()Lexpo/modules/structuredheaders/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v0

    .line 365
    invoke-static {v0}, Lexpo/modules/structuredheaders/Utils;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 368
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareString()Lexpo/modules/structuredheaders/StringItem;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 370
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareBoolean()Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x2a

    if-eq v0, v1, :cond_5

    .line 371
    invoke-static {v0}, Lexpo/modules/structuredheaders/Utils;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    .line 374
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareByteSequence()Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object v0

    return-object v0

    .line 376
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start character in Bare Item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lexpo/modules/structuredheaders/Parser;->format(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 372
    :cond_5
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareToken()Lexpo/modules/structuredheaders/TokenItem;

    move-result-object v0

    return-object v0

    .line 366
    :cond_6
    :goto_1
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;

    move-result-object v0

    return-object v0

    .line 361
    :cond_7
    const-string v0, "Empty string found when parsing Bare Item"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareString()Lexpo/modules/structuredheaders/StringItem;
    .locals 5

    .line 166
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_8

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 172
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    iget-object v2, p0, Lexpo/modules/structuredheaders/Parser;->startPositions:Ljava/util/List;

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 177
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->get()C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 179
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v2

    .line 180
    sget-char v4, Lexpo/modules/structuredheaders/Parser;->EOD:C

    if-eq v2, v4, :cond_2

    if-eq v2, v1, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 186
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incomplete escape sequence at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    if-ne v2, v1, :cond_4

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/structuredheaders/StringItem;->valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v3, 0x20

    if-lt v2, v3, :cond_5

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_5

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid character in String at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 174
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String crosses field line boundary at position "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 198
    :cond_7
    const-string v0, "Closing DQUOTE missing"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 167
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String must start with double quote: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseBareToken()Lexpo/modules/structuredheaders/TokenItem;
    .locals 4

    .line 209
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 210
    invoke-static {v0}, Lexpo/modules/structuredheaders/Utils;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Token must start with ALPHA or *: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 214
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 218
    :goto_1
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 219
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_3

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    .line 220
    const-string v3, "\"(),;<=>?@[\\]{}"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_2

    .line 223
    :cond_2
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 228
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexpo/modules/structuredheaders/TokenItem;->valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/TokenItem;

    move-result-object v0

    return-object v0
.end method

.method private internalParseBoolean()Lexpo/modules/structuredheaders/BooleanItem;
    .locals 2

    .line 302
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareBoolean()Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v0

    .line 303
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lexpo/modules/structuredheaders/BooleanItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v0

    return-object v0
.end method

.method private internalParseByteSequence()Lexpo/modules/structuredheaders/ByteSequenceItem;
    .locals 2

    .line 273
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareByteSequence()Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object v0

    .line 274
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Lexpo/modules/structuredheaders/ByteSequenceItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object v0

    return-object v0
.end method

.method private internalParseDictionary()Lexpo/modules/structuredheaders/Dictionary;
    .locals 6

    .line 460
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 463
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 467
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseKey()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v3

    const/16 v4, 0x3d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 470
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    .line 471
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseItemOrInnerList()Lexpo/modules/structuredheaders/ListElement;

    move-result-object v3

    goto :goto_1

    .line 473
    :cond_0
    invoke-static {v5}, Lexpo/modules/structuredheaders/BooleanItem;->valueOf(Z)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v3

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lexpo/modules/structuredheaders/BooleanItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v3

    .line 476
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingOWS()V

    .line 479
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->get()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    .line 485
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingOWS()V

    .line 486
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    const-string v0, "Found trailing COMMA in Dictionary"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 482
    :cond_2
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected COMMA in Dictionary, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lexpo/modules/structuredheaders/Parser;->format(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    move v1, v5

    goto :goto_0

    .line 494
    :cond_4
    invoke-static {v0}, Lexpo/modules/structuredheaders/Dictionary;->valueOf(Ljava/util/Map;)Lexpo/modules/structuredheaders/Dictionary;

    move-result-object v0

    return-object v0
.end method

.method private internalParseInnerList()Lexpo/modules/structuredheaders/InnerList;
    .locals 2

    .line 453
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareInnerList()Ljava/util/List;

    move-result-object v0

    .line 454
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 455
    invoke-static {v0}, Lexpo/modules/structuredheaders/InnerList;->valueOf(Ljava/util/List;)Lexpo/modules/structuredheaders/InnerList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lexpo/modules/structuredheaders/InnerList;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/InnerList;

    move-result-object v0

    return-object v0
.end method

.method private internalParseIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/NumberItem<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;

    move-result-object v0

    .line 160
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 161
    invoke-interface {v0, v1}, Lexpo/modules/structuredheaders/NumberItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/NumberItem;

    move-result-object v0

    return-object v0
.end method

.method private internalParseItem()Lexpo/modules/structuredheaders/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareItem()Lexpo/modules/structuredheaders/Item;

    move-result-object v0

    .line 382
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 383
    invoke-interface {v0, v1}, Lexpo/modules/structuredheaders/Item;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;

    move-result-object v0

    return-object v0
.end method

.method private internalParseItemOrInnerList()Lexpo/modules/structuredheaders/ListElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseInnerList()Lexpo/modules/structuredheaders/InnerList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseItem()Lexpo/modules/structuredheaders/Item;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private internalParseKey()Ljava/lang/String;
    .locals 5

    .line 309
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->getOrEOD()C

    move-result v0

    .line 310
    sget-char v1, Lexpo/modules/structuredheaders/Parser;->EOD:C

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 312
    invoke-static {v0}, Lexpo/modules/structuredheaders/Utils;->isLcAlpha(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key must start with LCALPHA or \'*\': "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lexpo/modules/structuredheaders/Parser;->format(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 317
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 321
    :goto_1
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 322
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v3

    .line 323
    invoke-static {v3}, Lexpo/modules/structuredheaders/Utils;->isLcAlpha(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lexpo/modules/structuredheaders/Utils;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 324
    :cond_3
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    goto :goto_1

    .line 331
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :cond_5
    const-string v0, "Missing data in Key"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0
.end method

.method private internalParseOuterList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseItemOrInnerList()Lexpo/modules/structuredheaders/ListElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingOWS()V

    .line 396
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->get()C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 404
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingOWS()V

    .line 405
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    const-string v0, "Found trailing COMMA in List"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    .line 401
    :cond_2
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->backout()V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected COMMA in List, got: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lexpo/modules/structuredheaders/Parser;->format(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    return-object v0
.end method

.method private internalParseParameters()Lexpo/modules/structuredheaders/Parameters;
    .locals 6

    .line 336
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 339
    :goto_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 340
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v2

    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v1, v4

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    .line 345
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 346
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseKey()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v4}, Lexpo/modules/structuredheaders/BooleanItem;->valueOf(Z)Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object v3

    .line 348
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->peek()C

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    .line 349
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    .line 350
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareItem()Lexpo/modules/structuredheaders/Item;

    move-result-object v3

    .line 352
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_2
    invoke-static {v0}, Lexpo/modules/structuredheaders/Parameters;->valueOf(Ljava/util/Map;)Lexpo/modules/structuredheaders/Parameters;

    move-result-object v0

    return-object v0
.end method

.method private internalParseString()Lexpo/modules/structuredheaders/StringItem;
    .locals 2

    .line 202
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareString()Lexpo/modules/structuredheaders/StringItem;

    move-result-object v0

    .line 203
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lexpo/modules/structuredheaders/StringItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object v0

    return-object v0
.end method

.method private internalParseToken()Lexpo/modules/structuredheaders/TokenItem;
    .locals 2

    .line 232
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareToken()Lexpo/modules/structuredheaders/TokenItem;

    move-result-object v0

    .line 233
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lexpo/modules/structuredheaders/TokenItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/TokenItem;

    move-result-object v0

    return-object v0
.end method

.method private static isBase64Char(C)Z
    .locals 1

    .line 238
    invoke-static {p0}, Lexpo/modules/structuredheaders/Utils;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lexpo/modules/structuredheaders/Utils;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private length()I
    .locals 1

    .line 862
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    return v0
.end method

.method public static parseBareItem(Ljava/lang/String;)Lexpo/modules/structuredheaders/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 684
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseBareItem()Lexpo/modules/structuredheaders/Item;

    move-result-object p0

    .line 686
    const-string v1, "Extra characters in string parsed as Bare Item"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseBoolean(Ljava/lang/String;)Lexpo/modules/structuredheaders/BooleanItem;
    .locals 2

    .line 817
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 818
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseBoolean()Lexpo/modules/structuredheaders/BooleanItem;

    move-result-object p0

    .line 819
    const-string v1, "Extra characters at position %d in string parsed as Boolean: \'%s\'"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseByteSequence(Ljava/lang/String;)Lexpo/modules/structuredheaders/ByteSequenceItem;
    .locals 2

    .line 798
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 799
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseByteSequence()Lexpo/modules/structuredheaders/ByteSequenceItem;

    move-result-object p0

    .line 800
    const-string v1, "Extra characters in string parsed as Byte Sequence"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method protected static parseDecimal(Ljava/lang/String;)Lexpo/modules/structuredheaders/DecimalItem;
    .locals 3

    .line 511
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;

    move-result-object v1

    .line 513
    instance-of v2, v1, Lexpo/modules/structuredheaders/DecimalItem;

    if-eqz v2, :cond_0

    .line 516
    const-string p0, "Extra characters in string parsed as Decimal"

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    .line 517
    check-cast v1, Lexpo/modules/structuredheaders/DecimalItem;

    return-object v1

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String parsed as Decimal \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' is an Integer"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object p0

    throw p0
.end method

.method public static parseDictionary(Ljava/lang/String;)Lexpo/modules/structuredheaders/Dictionary;
    .locals 2

    .line 646
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseDictionary()Lexpo/modules/structuredheaders/Dictionary;

    move-result-object p0

    .line 648
    const-string v1, "Extra characters in string parsed as Dictionary"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseInnerList(Ljava/lang/String;)Lexpo/modules/structuredheaders/InnerList;
    .locals 2

    .line 627
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 628
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseInnerList()Lexpo/modules/structuredheaders/InnerList;

    move-result-object p0

    .line 629
    const-string v1, "Extra characters in string parsed as Inner List"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method protected static parseInteger(Ljava/lang/String;)Lexpo/modules/structuredheaders/IntegerItem;
    .locals 3

    .line 500
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 501
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;

    move-result-object v1

    .line 502
    instance-of v2, v1, Lexpo/modules/structuredheaders/IntegerItem;

    if-eqz v2, :cond_0

    .line 505
    const-string p0, "Extra characters in string parsed as Integer"

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    .line 506
    check-cast v1, Lexpo/modules/structuredheaders/IntegerItem;

    return-object v1

    .line 503
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String parsed as Integer \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' is a Decimal"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;->complaint(Ljava/lang/String;)Lexpo/modules/structuredheaders/ParseException;

    move-result-object p0

    throw p0
.end method

.method public static parseIntegerOrDecimal(Ljava/lang/String;)Lexpo/modules/structuredheaders/NumberItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/structuredheaders/NumberItem<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 741
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseIntegerOrDecimal()Lexpo/modules/structuredheaders/NumberItem;

    move-result-object p0

    .line 743
    const-string v1, "Extra characters in string parsed as Integer or Decimal"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseItem(Ljava/lang/String;)Lexpo/modules/structuredheaders/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 665
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Parser;->parseItem()Lexpo/modules/structuredheaders/Item;

    move-result-object p0

    .line 667
    const-string v1, "Extra characters in string parsed as Item"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseItemOrInnerList(Ljava/lang/String;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexpo/modules/structuredheaders/Parametrizable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 608
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseItemOrInnerList()Lexpo/modules/structuredheaders/ListElement;

    move-result-object p0

    .line 610
    const-string v1, "Extra characters in string parsed as Item or Inner List"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseKey()Ljava/lang/String;

    move-result-object p0

    .line 724
    const-string v1, "Extra characters in string parsed as Key"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseList(Ljava/lang/String;)Lexpo/modules/structuredheaders/OuterList;
    .locals 2

    .line 589
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseOuterList()Ljava/util/List;

    move-result-object p0

    .line 591
    const-string v1, "Extra characters in string parsed as List"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    .line 592
    invoke-static {p0}, Lexpo/modules/structuredheaders/OuterList;->valueOf(Ljava/util/List;)Lexpo/modules/structuredheaders/OuterList;

    move-result-object p0

    return-object p0
.end method

.method public static parseParameters(Ljava/lang/String;)Lexpo/modules/structuredheaders/Parameters;
    .locals 2

    .line 703
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseParameters()Lexpo/modules/structuredheaders/Parameters;

    move-result-object p0

    .line 705
    const-string v1, "Extra characters in string parsed as Parameters"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseString(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;
    .locals 2

    .line 760
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseString()Lexpo/modules/structuredheaders/StringItem;

    move-result-object p0

    .line 762
    const-string v1, "Extra characters in string parsed as String"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method public static parseToken(Ljava/lang/String;)Lexpo/modules/structuredheaders/TokenItem;
    .locals 2

    .line 779
    new-instance v0, Lexpo/modules/structuredheaders/Parser;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/Parser;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-direct {v0}, Lexpo/modules/structuredheaders/Parser;->internalParseToken()Lexpo/modules/structuredheaders/TokenItem;

    move-result-object p0

    .line 781
    const-string v1, "Extra characters in string parsed as Token"

    invoke-direct {v0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object p0
.end method

.method private peek()C
    .locals 2

    .line 866
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    sget-char v0, Lexpo/modules/structuredheaders/Parser;->EOD:C

    :goto_0
    return v0
.end method

.method private position()I
    .locals 1

    .line 870
    iget-object v0, p0, Lexpo/modules/structuredheaders/Parser;->input:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    return v0
.end method

.method private removeLeadingOWS()V
    .locals 1

    .line 880
    :goto_0
    const-string v0, " \t"

    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->checkNextChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeLeadingSP()V
    .locals 1

    :goto_0
    const/16 v0, 0x20

    .line 874
    invoke-direct {p0, v0}, Lexpo/modules/structuredheaders/Parser;->checkNextChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->advance()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public parseDictionary()Lexpo/modules/structuredheaders/Dictionary;
    .locals 2

    .line 550
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 551
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseDictionary()Lexpo/modules/structuredheaders/Dictionary;

    move-result-object v0

    .line 552
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 553
    const-string v1, "Extra characters in string parsed as Dictionary"

    invoke-direct {p0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseItem()Lexpo/modules/structuredheaders/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/structuredheaders/Item<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 568
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseItem()Lexpo/modules/structuredheaders/Item;

    move-result-object v0

    .line 569
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 570
    const-string v1, "Extra characters in string parsed as Item"

    invoke-direct {p0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseList()Lexpo/modules/structuredheaders/OuterList;
    .locals 2

    .line 533
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 534
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->internalParseOuterList()Ljava/util/List;

    move-result-object v0

    .line 535
    invoke-direct {p0}, Lexpo/modules/structuredheaders/Parser;->removeLeadingSP()V

    .line 536
    const-string v1, "Extra characters in string parsed as List"

    invoke-direct {p0, v1}, Lexpo/modules/structuredheaders/Parser;->assertEmpty(Ljava/lang/String;)V

    .line 537
    invoke-static {v0}, Lexpo/modules/structuredheaders/OuterList;->valueOf(Ljava/util/List;)Lexpo/modules/structuredheaders/OuterList;

    move-result-object v0

    return-object v0
.end method
