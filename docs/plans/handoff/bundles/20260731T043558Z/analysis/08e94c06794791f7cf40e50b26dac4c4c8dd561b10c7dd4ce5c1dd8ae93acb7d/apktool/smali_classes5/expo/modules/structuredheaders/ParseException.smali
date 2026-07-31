.class public Lexpo/modules/structuredheaders/ParseException;
.super Ljava/lang/IllegalArgumentException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = -0x487ba31a3c917d29L


# instance fields
.field private final data:Ljava/lang/String;

.field private final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iput p3, p0, Lexpo/modules/structuredheaders/ParseException;->position:I

    .line 28
    iput-object p2, p0, Lexpo/modules/structuredheaders/ParseException;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/CharBuffer;)V
    .locals 2

    .line 68
    invoke-static {p2}, Lexpo/modules/structuredheaders/ParseException;->asString(Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/CharBuffer;Ljava/lang/Throwable;)V
    .locals 1

    .line 56
    invoke-static {p2}, Lexpo/modules/structuredheaders/ParseException;->asString(Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result p2

    invoke-direct {p0, p1, v0, p2, p3}, Lexpo/modules/structuredheaders/ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method private static asString(Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 115
    :goto_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/structuredheaders/ParseException;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lexpo/modules/structuredheaders/ParseException;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 101
    :goto_0
    iget v2, p0, Lexpo/modules/structuredheaders/ParseException;->position:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2d

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lexpo/modules/structuredheaders/ParseException;->position:I

    iget-object v2, p0, Lexpo/modules/structuredheaders/ParseException;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lexpo/modules/structuredheaders/ParseException;->data:Ljava/lang/String;

    iget v2, p0, Lexpo/modules/structuredheaders/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(0x%02x) "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 86
    iget v0, p0, Lexpo/modules/structuredheaders/ParseException;->position:I

    return v0
.end method
