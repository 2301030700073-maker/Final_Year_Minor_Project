.class public abstract Lnet/thunderbird/core/common/mail/BaseParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public currentIndex:I

.field public final endIndex:I

.field public final input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lnet/thunderbird/core/common/mail/BaseParser;->endIndex:I

    .line 10
    .line 11
    iput p2, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final endReached()Z
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    iget p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->endIndex:I

    .line 4
    .line 5
    if-lt v0, p0, :cond_0

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

.method public final expect(C)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Expected \'"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "\' ("

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ")"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 48
    .line 49
    iget-object p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 50
    .line 51
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedCharacter:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 52
    .line 53
    invoke-direct {v0, p1, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final peek()C
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->endIndex:I

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 15
    .line 16
    const-string v1, "End of input reached unexpectedly"

    .line 17
    .line 18
    sget-object v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final read()C
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->endIndex:I

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    new-instance p0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 21
    .line 22
    const-string v0, "End of input reached unexpectedly"

    .line 23
    .line 24
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1, v2}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method
