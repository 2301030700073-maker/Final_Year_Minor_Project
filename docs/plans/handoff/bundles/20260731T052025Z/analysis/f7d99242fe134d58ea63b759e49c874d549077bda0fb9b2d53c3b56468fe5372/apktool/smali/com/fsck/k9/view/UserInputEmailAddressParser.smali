.class public final Lcom/fsck/k9/view/UserInputEmailAddressParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/fsck/k9/mail/K9MailLib;->parseUnencoded(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_5

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, v3, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v5}, Lokhttp3/Cookie$Companion;->isASCII(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    sget-object v4, Lnet/thunderbird/core/common/net/HostNameUtils;->HOST_PATTERN:Lkotlin/text/Regex;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4}, Lnet/thunderbird/core/common/net/HostNameUtils;->isLegalHostNameOrIP(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget-object v4, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v6, v3

    .line 71
    check-cast v6, Lcom/fsck/k9/mail/Address;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance p0, Lcom/fsck/k9/view/NonAsciiEmailAddressException;

    .line 75
    .line 76
    invoke-direct {p0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    return-object v0
.end method
