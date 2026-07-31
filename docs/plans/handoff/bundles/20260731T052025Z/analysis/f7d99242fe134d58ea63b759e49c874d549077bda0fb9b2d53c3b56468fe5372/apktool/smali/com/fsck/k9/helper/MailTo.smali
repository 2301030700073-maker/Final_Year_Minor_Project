.class public final Lcom/fsck/k9/helper/MailTo;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;


# instance fields
.field public final bccAddresses:[Lcom/fsck/k9/mail/Address;

.field public final body:Ljava/lang/String;

.field public final ccAddresses:[Lcom/fsck/k9/mail/Address;

.field public final inReplyToMessageId:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final toAddresses:[Lcom/fsck/k9/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    .line 3
    .line 4
    sput-object v0, Lcom/fsck/k9/helper/MailTo;->EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>([Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/helper/MailTo;->toAddresses:[Lcom/fsck/k9/mail/Address;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/helper/MailTo;->ccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/helper/MailTo;->bccAddresses:[Lcom/fsck/k9/mail/Address;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/helper/MailTo;->inReplyToMessageId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/helper/MailTo;->subject:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/helper/MailTo;->body:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static getFirstParameterValue(Landroidx/work/Configuration$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/work/Configuration$Builder;->getQueryParameters(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    return-object p0
.end method

.method public static parse(Landroid/net/Uri;)Lcom/fsck/k9/helper/MailTo;
    .locals 12

    .line 1
    const/4 v1, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const-string v0, "mailto"

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v2, 0x3f

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, -0x1

    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :cond_0
    new-instance v3, Landroidx/work/Configuration$Builder;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, "foo://bar?"

    .line 44
    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/16 v4, 0x17

    .line 64
    .line 65
    invoke-direct {v3, v4, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "to"

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroidx/work/Configuration$Builder;->getQueryParameters(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    invoke-virtual {v2, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    const-string v0, "cc"

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Landroidx/work/Configuration$Builder;->getQueryParameters(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v4, "bcc"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroidx/work/Configuration$Builder;->getQueryParameters(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v2}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/ArrayList;)[Lcom/fsck/k9/mail/Address;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-static {v0}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/ArrayList;)[Lcom/fsck/k9/mail/Address;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v4}, Lcom/fsck/k9/helper/MailTo;->toAddressArray(Ljava/util/ArrayList;)[Lcom/fsck/k9/mail/Address;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v0, "subject"

    .line 117
    .line 118
    invoke-static {v3, v0}, Lcom/fsck/k9/helper/MailTo;->getFirstParameterValue(Landroidx/work/Configuration$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-string v0, "body"

    .line 123
    .line 124
    invoke-static {v3, v0}, Lcom/fsck/k9/helper/MailTo;->getFirstParameterValue(Landroidx/work/Configuration$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    const-string v0, "in-reply-to"

    .line 129
    .line 130
    invoke-static {v3, v0}, Lcom/fsck/k9/helper/MailTo;->getFirstParameterValue(Landroidx/work/Configuration$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    .line 136
    :try_start_0
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->parseList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/fsck/k9/mail/internet/MimeHeaderParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    move-object v9, v0

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v2, "Ignoring invalid in-reply-to value within the mailto: link."

    .line 150
    .line 151
    new-array p0, p0, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-static {v0, v2, p0}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    move-object v9, v1

    .line 157
    :goto_0
    new-instance v5, Lcom/fsck/k9/helper/MailTo;

    .line 158
    .line 159
    invoke-direct/range {v5 .. v11}, Lcom/fsck/k9/helper/MailTo;-><init>([Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;[Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v5

    .line 163
    :cond_3
    const-string p0, "Not a mailto scheme"

    .line 164
    .line 165
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_4
    const-string p0, "Argument \'uri\' must not be null"

    .line 170
    .line 171
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v1
.end method

.method public static toAddressArray(Ljava/util/ArrayList;)[Lcom/fsck/k9/mail/Address;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/fsck/k9/helper/MailTo;->EMPTY_ADDRESS_LIST:[Lcom/fsck/k9/mail/Address;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x2c

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    add-int/lit8 p0, p0, -0x1

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
