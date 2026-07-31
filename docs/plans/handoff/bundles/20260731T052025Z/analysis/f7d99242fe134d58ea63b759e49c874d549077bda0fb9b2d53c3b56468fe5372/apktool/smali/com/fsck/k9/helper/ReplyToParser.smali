.class public final Lcom/fsck/k9/helper/ReplyToParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static getRecipientsToReplyAllTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;
    .locals 9

    .line 1
    invoke-static {p0, p1}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, [Lcom/fsck/k9/mail/Address;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    array-length v4, v3

    .line 33
    const/4 v5, 0x0

    .line 34
    move v6, v5

    .line 35
    :goto_0
    if-ge v6, v4, :cond_1

    .line 36
    .line 37
    aget-object v7, v3, v6

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1, v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    array-length v4, v3

    .line 67
    move v6, v5

    .line 68
    :goto_1
    if-ge v6, v4, :cond_3

    .line 69
    .line 70
    aget-object v7, v3, v6

    .line 71
    .line 72
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-nez v8, :cond_2

    .line 77
    .line 78
    invoke-virtual {p1, v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    sget-object v3, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    array-length v3, p0

    .line 100
    :goto_2
    if-ge v5, v3, :cond_5

    .line 101
    .line 102
    aget-object v4, p0, v5

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity(Lcom/fsck/k9/mail/Address;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 126
    .line 127
    invoke-direct {p0, v2, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 128
    .line 129
    .line 130
    return-object p0
.end method

.method public static getRecipientsToReplyTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/fsck/k9/helper/ListHeaders;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    const-string v1, "List-Post"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-ge v2, v4, :cond_0

    .line 19
    .line 20
    new-array v1, v3, [Lcom/fsck/k9/mail/Address;

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    array-length v5, v1

    .line 29
    move v6, v3

    .line 30
    :goto_0
    if-ge v6, v5, :cond_5

    .line 31
    .line 32
    aget-object v7, v1, v6

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    if-eqz v7, :cond_3

    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object v9, Lcom/fsck/k9/helper/ListHeaders;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    .line 46
    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-nez v9, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v7}, Lcom/fsck/k9/helper/MailTo;->parse(Landroid/net/Uri;)Lcom/fsck/k9/helper/MailTo;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    iget-object v7, v7, Lcom/fsck/k9/helper/MailTo;->toAddresses:[Lcom/fsck/k9/mail/Address;

    .line 70
    .line 71
    array-length v9, v7

    .line 72
    if-lt v9, v4, :cond_3

    .line 73
    .line 74
    aget-object v8, v7, v3

    .line 75
    .line 76
    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    new-array v1, v1, [Lcom/fsck/k9/mail/Address;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, [Lcom/fsck/k9/mail/Address;

    .line 95
    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    array-length v3, v0

    .line 101
    if-lez v3, :cond_6

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    array-length v0, v1

    .line 105
    if-lez v0, :cond_7

    .line 106
    .line 107
    move-object v0, v1

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    move-object v0, v2

    .line 110
    :goto_3
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_8

    .line 115
    .line 116
    sget-object p1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_8
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 123
    .line 124
    invoke-direct {p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>([Lcom/fsck/k9/mail/Address;)V

    .line 125
    .line 126
    .line 127
    return-object p0
.end method
