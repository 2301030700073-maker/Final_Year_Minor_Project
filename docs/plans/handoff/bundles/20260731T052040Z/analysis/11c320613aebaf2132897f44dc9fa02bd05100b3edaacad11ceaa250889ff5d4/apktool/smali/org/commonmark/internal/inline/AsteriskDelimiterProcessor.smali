.class public final Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field public final delimiterChar:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;->delimiterChar:C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getClosingCharacter()C
    .locals 0

    .line 1
    iget-char p0, p0, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;->delimiterChar:C

    .line 2
    .line 3
    return p0
.end method

.method public final getDelimiterUse(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)I
    .locals 1

    .line 1
    iget-boolean p0, p1, Lorg/commonmark/internal/Delimiter;->canClose:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p2, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget p0, p2, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 10
    .line 11
    rem-int/lit8 v0, p0, 0x3

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p1, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    rem-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    iget p0, p1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-lt p0, p1, :cond_2

    .line 28
    .line 29
    iget p0, p2, Lorg/commonmark/internal/Delimiter;->length:I

    .line 30
    .line 31
    if-lt p0, p1, :cond_2

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final getMinLength()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getOpeningCharacter()C
    .locals 0

    .line 1
    iget-char p0, p0, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;->delimiterChar:C

    .line 2
    .line 3
    return p0
.end method

.method public final process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 1

    .line 1
    iget-char p0, p0, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;->delimiterChar:C

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    if-ne p3, p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lorg/commonmark/node/Emphasis;

    .line 10
    .line 11
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lorg/commonmark/node/StrongEmphasis;

    .line 16
    .line 17
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p3, p1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p3, Lorg/commonmark/node/Node;

    .line 23
    .line 24
    :goto_1
    if-eqz p3, :cond_1

    .line 25
    .line 26
    if-eq p3, p2, :cond_1

    .line 27
    .line 28
    iget-object v0, p3, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lorg/commonmark/node/Node;

    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 33
    .line 34
    .line 35
    move-object p3, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->unlink()V

    .line 38
    .line 39
    .line 40
    iget-object p2, p1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lorg/commonmark/node/Node;

    .line 43
    .line 44
    iput-object p2, p0, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iput-object p0, p2, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 49
    .line 50
    :cond_2
    iput-object p1, p0, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object p0, p1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, p1, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lorg/commonmark/node/Node;

    .line 57
    .line 58
    iput-object p1, p0, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object p2, p0, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p2, Lorg/commonmark/node/Node;

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    iput-object p0, p1, Lorg/commonmark/node/Node;->lastChild:Ljava/lang/Object;

    .line 67
    .line 68
    :cond_3
    return-void
.end method
