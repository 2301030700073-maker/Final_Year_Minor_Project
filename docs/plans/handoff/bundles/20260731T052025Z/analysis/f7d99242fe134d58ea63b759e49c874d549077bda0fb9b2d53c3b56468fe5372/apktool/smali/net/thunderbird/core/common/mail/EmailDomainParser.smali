.class public final Lnet/thunderbird/core/common/mail/EmailDomainParser;
.super Lnet/thunderbird/core/common/mail/BaseParser;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final expectLetDig()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x41

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x5b

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x61

    .line 21
    .line 22
    if-gt v1, v0, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x7b

    .line 25
    .line 26
    if-ge v0, v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v1, 0x30

    .line 30
    .line 31
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x3a

    .line 34
    .line 35
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    :goto_0
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 45
    .line 46
    iget-object p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "Expected \'Let-dig\'"

    .line 49
    .line 50
    sget-object v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedCharacter:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final expectSubDomain()V
    .locals 5

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->expectLetDig()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    move v2, v1

    .line 8
    :goto_1
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2d

    .line 19
    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/16 v4, 0x41

    .line 28
    .line 29
    if-gt v4, v3, :cond_1

    .line 30
    .line 31
    const/16 v4, 0x5b

    .line 32
    .line 33
    if-ge v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/16 v4, 0x61

    .line 37
    .line 38
    if-gt v4, v3, :cond_2

    .line 39
    .line 40
    const/16 v4, 0x7b

    .line 41
    .line 42
    if-ge v3, v4, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v4, 0x30

    .line 46
    .line 47
    if-gt v4, v3, :cond_3

    .line 48
    .line 49
    const/16 v4, 0x3a

    .line 50
    .line 51
    if-ge v3, v4, :cond_3

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->expectLetDig()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->expectLetDig()V

    .line 60
    .line 61
    .line 62
    :cond_4
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 63
    .line 64
    sub-int/2addr v1, v0

    .line 65
    const/16 v0, 0x3f

    .line 66
    .line 67
    if-gt v1, v0, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 71
    .line 72
    iget-object p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "DNS labels exceeds maximum length of 63 characters"

    .line 75
    .line 76
    sget-object v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->DnsLabelLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 77
    .line 78
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public final readDomain$1()Lnet/thunderbird/core/common/mail/EmailDomain;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->expectSubDomain()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x2e

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->expectSubDomain()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v1, p0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 28
    .line 29
    iget-object p0, p0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0xfd

    .line 40
    .line 41
    if-gt v1, v2, :cond_1

    .line 42
    .line 43
    new-instance p0, Lnet/thunderbird/core/common/mail/EmailDomain;

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lnet/thunderbird/core/common/mail/EmailDomain;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 50
    .line 51
    const-string v1, "Domain exceeds maximum length of 253 characters"

    .line 52
    .line 53
    sget-object v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->DomainLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method
