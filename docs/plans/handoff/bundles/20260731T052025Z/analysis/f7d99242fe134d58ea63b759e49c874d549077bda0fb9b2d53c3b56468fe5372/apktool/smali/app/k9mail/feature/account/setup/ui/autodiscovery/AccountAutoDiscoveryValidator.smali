.class public final Lapp/k9mail/feature/account/setup/ui/autodiscovery/AccountAutoDiscoveryValidator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final validateEmailAddress(Ljava/lang/String;)Lnet/thunderbird/core/outcome/Outcome;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$NotAllowed;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$NotAllowed;

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 14
    .line 15
    sget-object p1, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$EmptyEmailAddress;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$EmptyEmailAddress;

    .line 16
    .line 17
    invoke-direct {p0, p1, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    :try_start_0
    sget-object v0, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->LIMITED:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lnet/thunderbird/core/common/mail/TokensKt;->parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lnet/thunderbird/core/common/mail/EmailAddress;->warnings:Lkotlin/collections/builders/SetBuilder;

    .line 28
    .line 29
    iget-object v0, v0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lorg/minidns/util/Hex;->getValidationSuccess()Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 45
    .line 46
    invoke-direct {v0, p0, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/mail/EmailAddressParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :goto_0
    const/4 v2, 0x1

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    aput-object p1, v2, v3

    .line 55
    .line 56
    const-string v3, "Error parsing email address: %s"

    .line 57
    .line 58
    invoke-static {v0, v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Lnet/thunderbird/core/common/mail/EmailAddressParserException;->error:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    const/16 p0, 0x40

    .line 71
    .line 72
    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    sget-object p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidOrNotSupported;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidOrNotSupported;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sget-object p0, Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidEmailAddress;->INSTANCE:Lapp/k9mail/feature/account/setup/domain/usecase/ValidateEmailAddress$ValidateEmailAddressError$InvalidEmailAddress;

    .line 82
    .line 83
    :goto_1
    :pswitch_0
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 84
    .line 85
    invoke-direct {p1, p0, v1}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
