.class public final Lnet/thunderbird/core/common/mail/EmailAddressParser;
.super Lnet/thunderbird/core/common/mail/BaseParser;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final config:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lnet/thunderbird/core/common/mail/BaseParser;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/common/mail/EmailAddressParser;->config:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final appendAtom(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Lnet/thunderbird/core/common/mail/TokensKt;->isAtext(C)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    iput v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 31
    .line 32
    if-eq v0, p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v2, v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 39
    .line 40
    const-string p1, "Expected \'Dot-string\'"

    .line 41
    .line 42
    sget-object v0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidDotString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 43
    .line 44
    invoke-direct {p0, p1, v0, v2}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
