.class public abstract Lcom/fsck/k9/message/MessageBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

.field public attachments:Ljava/util/ArrayList;

.field public bcc:[Lcom/fsck/k9/mail/Address;

.field public final boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

.field public final callbackLock:Ljava/lang/Object;

.field public cc:[Lcom/fsck/k9/mail/Address;

.field public cursorPosition:I

.field public hideTimeZone:Z

.field public identity:Lnet/thunderbird/core/android/account/Identity;

.field public identityChanged:Z

.field public inReplyTo:Ljava/lang/String;

.field public inlineAttachments:Ljava/util/LinkedHashMap;

.field public isDraft:Z

.field public isPgpInlineEnabled:Z

.field public isReplyAfterQuote:Z

.field public isSignatureBeforeQuotedText:Z

.field public messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

.field public queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public queuedPendingIntent:Landroid/app/PendingIntent;

.field public queuedRequestCode:I

.field public quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

.field public quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

.field public quotedText:Ljava/lang/String;

.field public quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

.field public references:Ljava/lang/String;

.field public replyTo:[Lcom/fsck/k9/mail/Address;

.field public requestReadReceipt:Z

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

.field public sentDate:Ljava/util/Date;

.field public final settingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public signature:Ljava/lang/String;

.field public signatureChanged:Z

.field public subject:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public to:[Lcom/fsck/k9/mail/Address;


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/VerboseLogger;Lcom/fsck/k9/mail/BoundaryGenerator;Lcom/fsck/k9/resources/K9CoreResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/fsck/k9/message/MessageBuilder;->boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/fsck/k9/message/MessageBuilder;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/fsck/k9/message/MessageBuilder;->settingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 16
    .line 17
    return-void
.end method

.method public static addContentDisposition(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "filename"

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lkotlin/Pair;

    .line 17
    .line 18
    invoke-direct {v1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p3, Lkotlin/Pair;

    .line 30
    .line 31
    const-string v0, "size"

    .line 32
    .line 33
    invoke-direct {p3, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    new-array p2, p2, [Lkotlin/Pair;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    aput-object v1, p2, v0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput-object p3, p2, v0

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_0
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "Content-Disposition"

    .line 54
    .line 55
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static addContentType(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "name"

    .line 8
    .line 9
    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 21
    .line 22
    const-string v1, "Content-Type"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_5

    .line 32
    .line 33
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const-string v1, "8bit"

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string p2, "multipart/signed"

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_3

    .line 49
    .line 50
    const-string p2, "message/rfc822"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/JisSupport;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->isMultipart(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v1, "base64"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    const-string v1, "7bit"

    .line 70
    .line 71
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mBody:Lcom/fsck/k9/mail/Body;

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    const-string p0, "Content-Transfer-Encoding"

    .line 79
    .line 80
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method


# virtual methods
.method public final addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/fsck/k9/message/Attachment;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/fsck/k9/activity/misc/Attachment;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 23
    .line 24
    sget-object v2, Lcom/fsck/k9/message/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 25
    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/fsck/k9/mailstore/TempFileBody;

    .line 30
    .line 31
    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/fsck/k9/activity/misc/Attachment;->fileName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v1, v3}, Lcom/fsck/k9/mailstore/TempFileBody;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, v0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3, v2}, Lcom/fsck/k9/message/MessageBuilder;->addContentType(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "attachment"

    .line 50
    .line 51
    iget-object v0, v0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-static {v1, v3, v2, v0}, Lcom/fsck/k9/message/MessageBuilder;->addContentDisposition(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public final build()Lcom/fsck/k9/mail/internet/MimeMessage;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->sentDate:Ljava/util/Date;

    .line 10
    .line 11
    iget-boolean v4, v0, Lcom/fsck/k9/message/MessageBuilder;->hideTimeZone:Z

    .line 12
    .line 13
    invoke-virtual {v1, v3, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;Z)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/fsck/k9/mail/Address;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 19
    .line 20
    iget-object v5, v4, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v4, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    invoke-direct {v3, v6, v5, v4}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, Lcom/fsck/k9/message/MessageBuilder;->to:[Lcom/fsck/k9/mail/Address;

    .line 35
    .line 36
    iget-object v5, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    array-length v6, v4

    .line 41
    if-lez v6, :cond_0

    .line 42
    .line 43
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v6, "To"

    .line 48
    .line 49
    invoke-virtual {v5, v6, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v4, v0, Lcom/fsck/k9/message/MessageBuilder;->cc:[Lcom/fsck/k9/mail/Address;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    array-length v6, v4

    .line 57
    if-lez v6, :cond_1

    .line 58
    .line 59
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v6, "CC"

    .line 64
    .line 65
    invoke-virtual {v5, v6, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v4, v0, Lcom/fsck/k9/message/MessageBuilder;->bcc:[Lcom/fsck/k9/mail/Address;

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    array-length v6, v4

    .line 73
    if-lez v6, :cond_2

    .line 74
    .line 75
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v6, "BCC"

    .line 80
    .line 81
    invoke-virtual {v5, v6, v4}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v4, v0, Lcom/fsck/k9/message/MessageBuilder;->subject:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean v4, v0, Lcom/fsck/k9/message/MessageBuilder;->requestReadReceipt:Z

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    const-string v4, "Disposition-Notification-To"

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v4, v6}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v4, "X-Confirm-Reading-To"

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v4, v6}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v4, "Return-Receipt-To"

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v5, v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->settingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 121
    .line 122
    check-cast v3, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getSettings()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-object v3, v3, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 129
    .line 130
    iget-boolean v3, v3, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideUserAgent:Z

    .line 131
    .line 132
    if-nez v3, :cond_4

    .line 133
    .line 134
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 135
    .line 136
    iget-object v3, v3, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 137
    .line 138
    const v4, 0x7f120444

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    const-string v4, "User-Agent"

    .line 149
    .line 150
    invoke-static {v4, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v5, v4, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->replyTo:[Lcom/fsck/k9/mail/Address;

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    const-string v6, "Reply-to"

    .line 161
    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    array-length v7, v3

    .line 165
    if-nez v7, :cond_5

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iput-object v3, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    :goto_0
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v4, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 182
    .line 183
    :goto_1
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->inReplyTo:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    const-string v6, "In-Reply-To"

    .line 188
    .line 189
    invoke-virtual {v5, v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_7
    iget-object v3, v0, Lcom/fsck/k9/message/MessageBuilder;->references:Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v3, :cond_9

    .line 195
    .line 196
    const-string v6, "\\s+"

    .line 197
    .line 198
    const-string v7, " "

    .line 199
    .line 200
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    const/16 v7, 0x3d9

    .line 209
    .line 210
    if-lt v6, v7, :cond_8

    .line 211
    .line 212
    const/16 v8, 0x3c

    .line 213
    .line 214
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    add-int/lit8 v10, v9, 0x1

    .line 219
    .line 220
    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->indexOf(II)I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    add-int/2addr v10, v6

    .line 233
    sub-int/2addr v10, v7

    .line 234
    invoke-virtual {v3, v8, v10}, Ljava/lang/String;->indexOf(II)I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    :cond_8
    const-string v6, "References"

    .line 247
    .line 248
    invoke-virtual {v5, v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 263
    .line 264
    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    if-eqz v6, :cond_a

    .line 276
    .line 277
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Lcom/fsck/k9/mail/Address;

    .line 282
    .line 283
    if-eqz v6, :cond_a

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    goto :goto_2

    .line 290
    :cond_a
    move-object v6, v4

    .line 291
    :goto_2
    if-nez v6, :cond_c

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getReplyTo()[Lcom/fsck/k9/mail/Address;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-eqz v6, :cond_b

    .line 298
    .line 299
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    check-cast v6, Lcom/fsck/k9/mail/Address;

    .line 304
    .line 305
    if-eqz v6, :cond_b

    .line 306
    .line 307
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Address;->getHostname()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    goto :goto_3

    .line 312
    :cond_b
    move-object v6, v4

    .line 313
    :goto_3
    if-nez v6, :cond_c

    .line 314
    .line 315
    const-string v6, "fallback.k9mail.app"

    .line 316
    .line 317
    :cond_c
    const-string v7, "@"

    .line 318
    .line 319
    const-string v8, ">"

    .line 320
    .line 321
    const-string v9, "<"

    .line 322
    .line 323
    invoke-static {v9, v3, v7, v6, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    const-string v6, "Message-ID"

    .line 328
    .line 329
    invoke-virtual {v5, v6, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iput-object v3, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 333
    .line 334
    iget-boolean v3, v0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 335
    .line 336
    if-eqz v3, :cond_d

    .line 337
    .line 338
    iget-boolean v3, v0, Lcom/fsck/k9/message/MessageBuilder;->isPgpInlineEnabled:Z

    .line 339
    .line 340
    if-eqz v3, :cond_d

    .line 341
    .line 342
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lnet/thunderbird/core/common/mail/Flag;

    .line 343
    .line 344
    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 345
    .line 346
    .line 347
    :cond_d
    iget-boolean v3, v0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 348
    .line 349
    if-eqz v3, :cond_e

    .line 350
    .line 351
    sget-object v3, Lnet/thunderbird/core/common/mail/Flag;->DRAFT:Lnet/thunderbird/core/common/mail/Flag;

    .line 352
    .line 353
    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 354
    .line 355
    .line 356
    :cond_e
    iget-boolean v3, v0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 357
    .line 358
    iget-object v6, v0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 359
    .line 360
    invoke-virtual {v0, v3, v6}, Lcom/fsck/k9/message/MessageBuilder;->buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v6, v3, Lcom/fsck/k9/mail/internet/TextBody;->text:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v7, v0, Lcom/fsck/k9/message/MessageBuilder;->attachments:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    iget-object v8, v0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 373
    .line 374
    sget-object v9, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 375
    .line 376
    const-string v10, "text/plain"

    .line 377
    .line 378
    sget-object v11, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 379
    .line 380
    if-ne v8, v9, :cond_13

    .line 381
    .line 382
    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    const-string v8, "alternative"

    .line 387
    .line 388
    invoke-virtual {v4, v8}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-boolean v8, v0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 392
    .line 393
    invoke-virtual {v0, v8, v11}, Lcom/fsck/k9/message/MessageBuilder;->buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    invoke-static {v8, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 402
    .line 403
    .line 404
    const-string v9, "text/html"

    .line 405
    .line 406
    invoke-static {v3, v9}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    iget-object v10, v0, Lcom/fsck/k9/message/MessageBuilder;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 411
    .line 412
    if-eqz v10, :cond_11

    .line 413
    .line 414
    invoke-interface {v10}, Ljava/util/Map;->size()I

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    if-lez v10, :cond_11

    .line 419
    .line 420
    new-instance v10, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 421
    .line 422
    iget-object v11, v0, Lcom/fsck/k9/message/MessageBuilder;->boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 423
    .line 424
    invoke-virtual {v11}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    const-string v12, "multipart/related"

    .line 429
    .line 430
    invoke-direct {v10, v12, v11}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10, v9}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 434
    .line 435
    .line 436
    iget-object v9, v0, Lcom/fsck/k9/message/MessageBuilder;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 437
    .line 438
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v11

    .line 450
    if-eqz v11, :cond_10

    .line 451
    .line 452
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    check-cast v11, Ljava/lang/String;

    .line 457
    .line 458
    iget-object v12, v0, Lcom/fsck/k9/message/MessageBuilder;->inlineAttachments:Ljava/util/LinkedHashMap;

    .line 459
    .line 460
    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v12

    .line 464
    check-cast v12, Lcom/fsck/k9/message/Attachment;

    .line 465
    .line 466
    move-object v13, v12

    .line 467
    check-cast v13, Lcom/fsck/k9/activity/misc/Attachment;

    .line 468
    .line 469
    iget-object v13, v13, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 470
    .line 471
    sget-object v14, Lcom/fsck/k9/message/Attachment$LoadingState;->COMPLETE:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 472
    .line 473
    if-eq v13, v14, :cond_f

    .line 474
    .line 475
    goto :goto_4

    .line 476
    :cond_f
    new-instance v13, Lcom/fsck/k9/mailstore/TempFileBody;

    .line 477
    .line 478
    check-cast v12, Lcom/fsck/k9/activity/misc/Attachment;

    .line 479
    .line 480
    iget-object v14, v12, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 481
    .line 482
    iget-object v15, v12, Lcom/fsck/k9/activity/misc/Attachment;->fileName:Ljava/lang/String;

    .line 483
    .line 484
    invoke-direct {v13, v15}, Lcom/fsck/k9/mailstore/TempFileBody;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-static {v13}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    iget-object v15, v12, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 492
    .line 493
    invoke-static {v13, v15, v14}, Lcom/fsck/k9/message/MessageBuilder;->addContentType(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    const-string v15, "inline"

    .line 497
    .line 498
    iget-object v12, v12, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 499
    .line 500
    invoke-static {v13, v15, v14, v12}, Lcom/fsck/k9/message/MessageBuilder;->addContentDisposition(Lcom/fsck/k9/mail/internet/MimeBodyPart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 501
    .line 502
    .line 503
    const-string v12, "Content-ID"

    .line 504
    .line 505
    iget-object v14, v13, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 506
    .line 507
    invoke-virtual {v14, v12, v11}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 511
    .line 512
    .line 513
    goto :goto_4

    .line 514
    :cond_10
    invoke-static {v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 519
    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_11
    invoke-virtual {v4, v9}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 523
    .line 524
    .line 525
    :goto_5
    if-nez v7, :cond_12

    .line 526
    .line 527
    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v7, v4}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v7}, Lcom/fsck/k9/message/MessageBuilder;->addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 542
    .line 543
    .line 544
    goto :goto_6

    .line 545
    :cond_12
    invoke-static {v1, v4}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 546
    .line 547
    .line 548
    :goto_6
    move-object v4, v8

    .line 549
    goto :goto_7

    .line 550
    :cond_13
    if-ne v8, v11, :cond_15

    .line 551
    .line 552
    if-nez v7, :cond_14

    .line 553
    .line 554
    invoke-virtual {v0}, Lcom/fsck/k9/message/MessageBuilder;->createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    invoke-static {v3, v10}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v7}, Lcom/fsck/k9/message/MessageBuilder;->addAttachmentsToMessage(Lcom/fsck/k9/mail/internet/MimeMultipart;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 569
    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_14
    invoke-static {v1, v3}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 573
    .line 574
    .line 575
    :cond_15
    :goto_7
    iget-boolean v7, v0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 576
    .line 577
    if-eqz v7, :cond_1f

    .line 578
    .line 579
    iget v7, v0, Lcom/fsck/k9/message/MessageBuilder;->cursorPosition:I

    .line 580
    .line 581
    iget-object v8, v0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 582
    .line 583
    iget-boolean v9, v0, Lcom/fsck/k9/message/MessageBuilder;->identityChanged:Z

    .line 584
    .line 585
    iget-object v10, v0, Lcom/fsck/k9/message/MessageBuilder;->messageFormat:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 586
    .line 587
    iget-object v11, v0, Lcom/fsck/k9/message/MessageBuilder;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 588
    .line 589
    iget-object v12, v0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 590
    .line 591
    iget-object v13, v0, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 592
    .line 593
    iget-object v14, v0, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 594
    .line 595
    iget-object v15, v0, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    .line 596
    .line 597
    iget-boolean v0, v0, Lcom/fsck/k9/message/MessageBuilder;->signatureChanged:Z

    .line 598
    .line 599
    move/from16 v16, v2

    .line 600
    .line 601
    new-instance v2, Landroid/net/Uri$Builder;

    .line 602
    .line 603
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 604
    .line 605
    .line 606
    move/from16 p0, v0

    .line 607
    .line 608
    iget-object v0, v3, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    .line 609
    .line 610
    move-object/from16 v17, v0

    .line 611
    .line 612
    const/16 v18, 0x0

    .line 613
    .line 614
    const-string v0, "o"

    .line 615
    .line 616
    move-object/from16 v19, v1

    .line 617
    .line 618
    const-string v1, "l"

    .line 619
    .line 620
    move-object/from16 v20, v6

    .line 621
    .line 622
    if-eqz v17, :cond_16

    .line 623
    .line 624
    iget-object v6, v3, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 625
    .line 626
    if-eqz v6, :cond_16

    .line 627
    .line 628
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v6

    .line 632
    invoke-virtual {v2, v1, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 633
    .line 634
    .line 635
    iget-object v1, v3, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 642
    .line 643
    .line 644
    goto :goto_8

    .line 645
    :cond_16
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 654
    .line 655
    .line 656
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 661
    .line 662
    .line 663
    :goto_8
    if-eqz v12, :cond_17

    .line 664
    .line 665
    iget v0, v12, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 666
    .line 667
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    const-string v1, "fo"

    .line 672
    .line 673
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 674
    .line 675
    .line 676
    :cond_17
    if-eqz v4, :cond_19

    .line 677
    .line 678
    iget-object v0, v4, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    .line 679
    .line 680
    iget-object v1, v4, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 681
    .line 682
    const-string v3, "po"

    .line 683
    .line 684
    const-string v4, "pl"

    .line 685
    .line 686
    if-eqz v0, :cond_18

    .line 687
    .line 688
    if-eqz v1, :cond_18

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 702
    .line 703
    .line 704
    goto :goto_9

    .line 705
    :cond_18
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 714
    .line 715
    .line 716
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 721
    .line 722
    .line 723
    :cond_19
    :goto_9
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    const-string v1, "qs"

    .line 728
    .line 729
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    const-string v1, "f"

    .line 737
    .line 738
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 739
    .line 740
    .line 741
    iget-boolean v0, v8, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 742
    .line 743
    if-eqz v0, :cond_1a

    .line 744
    .line 745
    if-eqz p0, :cond_1a

    .line 746
    .line 747
    const-string v0, "s"

    .line 748
    .line 749
    invoke-virtual {v2, v0, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 750
    .line 751
    .line 752
    :cond_1a
    if-eqz v9, :cond_1b

    .line 753
    .line 754
    iget-object v0, v8, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 755
    .line 756
    const-string v1, ""

    .line 757
    .line 758
    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    check-cast v0, Ljava/lang/String;

    .line 763
    .line 764
    const-string v1, "n"

    .line 765
    .line 766
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 767
    .line 768
    .line 769
    iget-object v0, v8, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 770
    .line 771
    const-string v1, "e"

    .line 772
    .line 773
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 774
    .line 775
    .line 776
    :cond_1b
    if-eqz v11, :cond_1c

    .line 777
    .line 778
    invoke-virtual {v11}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    const-string v1, "m"

    .line 783
    .line 784
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 785
    .line 786
    .line 787
    :cond_1c
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    const-string v1, "p"

    .line 792
    .line 793
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    const-string v1, "q"

    .line 801
    .line 802
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 803
    .line 804
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    const-string v1, "!"

    .line 808
    .line 809
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    const/16 v2, 0x35

    .line 832
    .line 833
    if-gt v1, v2, :cond_1d

    .line 834
    .line 835
    :goto_a
    move/from16 v1, v16

    .line 836
    .line 837
    goto :goto_c

    .line 838
    :cond_1d
    add-int/lit8 v3, v1, -0x36

    .line 839
    .line 840
    const/16 v4, 0x47

    .line 841
    .line 842
    div-int/2addr v3, v4

    .line 843
    add-int/lit8 v3, v3, 0x1

    .line 844
    .line 845
    mul-int/lit8 v3, v3, 0x3

    .line 846
    .line 847
    add-int/2addr v3, v1

    .line 848
    new-instance v6, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 851
    .line 852
    .line 853
    move/from16 v3, v18

    .line 854
    .line 855
    invoke-virtual {v6, v0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    :goto_b
    if-ge v2, v1, :cond_1e

    .line 859
    .line 860
    const-string v3, "\r\n "

    .line 861
    .line 862
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    sub-int v3, v1, v2

    .line 866
    .line 867
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 868
    .line 869
    .line 870
    move-result v3

    .line 871
    add-int/2addr v3, v2

    .line 872
    invoke-virtual {v6, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    move v2, v3

    .line 876
    goto :goto_b

    .line 877
    :cond_1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    goto :goto_a

    .line 882
    :goto_c
    new-array v1, v1, [Ljava/lang/Object;

    .line 883
    .line 884
    const/16 v18, 0x0

    .line 885
    .line 886
    aput-object v0, v1, v18

    .line 887
    .line 888
    const-string v2, "Generated identity: %s"

    .line 889
    .line 890
    invoke-static {v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    .line 892
    .line 893
    const-string v1, "X-K9mail-Identity"

    .line 894
    .line 895
    invoke-virtual {v5, v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    return-object v19

    .line 899
    :cond_1f
    move-object/from16 v19, v1

    .line 900
    .line 901
    return-object v19
.end method

.method public final buildAsync(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance p1, Lcom/fsck/k9/message/MessageBuilder$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/message/MessageBuilder$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-array p0, v0, [Ljava/lang/Void;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public abstract buildMessageInternal()V
.end method

.method public abstract buildMessageOnActivityResult(Landroid/content/Intent;)V
.end method

.method public final buildText(ZLcom/fsck/k9/message/SimpleMessageFormat;)Lcom/fsck/k9/mail/internet/TextBody;
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/message/TextBodyBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->text:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 13
    .line 14
    iput-boolean v3, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 15
    .line 16
    iput-boolean v3, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedTextMode:Lcom/fsck/k9/message/QuotedTextMode;

    .line 23
    .line 24
    sget-object v5, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    .line 25
    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v4, v2

    .line 32
    :goto_1
    iget-object v5, p0, Lcom/fsck/k9/message/MessageBuilder;->quoteStyle:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 33
    .line 34
    sget-object v6, Lnet/thunderbird/core/android/account/QuoteStyle;->PREFIX:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 35
    .line 36
    if-ne v5, v6, :cond_2

    .line 37
    .line 38
    iget-boolean v5, p0, Lcom/fsck/k9/message/MessageBuilder;->isReplyAfterQuote:Z

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    move v5, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v5, v3

    .line 45
    :goto_2
    iput-boolean v3, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 46
    .line 47
    sget-object v6, Lcom/fsck/k9/message/SimpleMessageFormat;->HTML:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    if-ne p2, v6, :cond_3

    .line 52
    .line 53
    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedHtmlContent:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    iput-boolean v2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 58
    .line 59
    iput-object v4, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 60
    .line 61
    iput-boolean v5, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 62
    .line 63
    :cond_3
    sget-object v4, Lcom/fsck/k9/message/SimpleMessageFormat;->TEXT:Lcom/fsck/k9/message/SimpleMessageFormat;

    .line 64
    .line 65
    if-ne p2, v4, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lez v4, :cond_4

    .line 74
    .line 75
    iput-boolean v2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 76
    .line 77
    iget-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->quotedText:Ljava/lang/String;

    .line 78
    .line 79
    iput-object v4, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    .line 80
    .line 81
    iput-boolean v5, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 82
    .line 83
    :cond_4
    xor-int/lit8 v4, p1, 0x1

    .line 84
    .line 85
    iput-boolean v4, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 86
    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 90
    .line 91
    iget-boolean p1, p1, Lnet/thunderbird/core/android/account/Identity;->signatureUse:Z

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    iput-boolean v2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 96
    .line 97
    iget-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->signature:Ljava/lang/String;

    .line 98
    .line 99
    iput-object p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/fsck/k9/message/MessageBuilder;->isSignatureBeforeQuotedText:Z

    .line 102
    .line 103
    iput-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    iput-boolean v3, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 107
    .line 108
    :goto_3
    const/4 p1, 0x2

    .line 109
    const-string v4, ""

    .line 110
    .line 111
    if-ne p2, v6, :cond_17

    .line 112
    .line 113
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 114
    .line 115
    sget-object v5, Lcom/fsck/k9/message/html/HTMLTag;->DIV:Lcom/fsck/k9/message/html/HTMLTag;

    .line 116
    .line 117
    if-eqz p2, :cond_13

    .line 118
    .line 119
    iget-object p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedTextHtml:Lcom/fsck/k9/message/quote/InsertableHtmlContent;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/fsck/k9/message/MessageBuilder;->settingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 122
    .line 123
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 130
    .line 131
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 132
    .line 133
    if-eqz p0, :cond_8

    .line 134
    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v6, "InsertableHtmlContent{headerInsertionPoint="

    .line 138
    .line 139
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget v6, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->headerInsertionPoint:I

    .line 143
    .line 144
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v6, ", footerInsertionPoint="

    .line 148
    .line 149
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v6, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 153
    .line 154
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v6, ", insertionLocation="

    .line 158
    .line 159
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v6, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertionLocation:I

    .line 163
    .line 164
    if-eq v6, v2, :cond_7

    .line 165
    .line 166
    if-eq v6, p1, :cond_6

    .line 167
    .line 168
    const-string v6, "null"

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    const-string v6, "AFTER_QUOTE"

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_7
    const-string v6, "BEFORE_QUOTE"

    .line 175
    .line 176
    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, ", quotedContent="

    .line 180
    .line 181
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v6, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v6, ", userContent="

    .line 190
    .line 191
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v6, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v6, ", compiledResult="

    .line 200
    .line 201
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const/16 v6, 0x7d

    .line 212
    .line 213
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    new-array v6, v2, [Ljava/lang/Object;

    .line 221
    .line 222
    aput-object p0, v6, v3

    .line 223
    .line 224
    const-string p0, "insertable: %s"

    .line 225
    .line 226
    invoke-static {p0, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v5}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    iget-boolean v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 241
    .line 242
    if-eqz v6, :cond_c

    .line 243
    .line 244
    iget-boolean v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 245
    .line 246
    if-nez v6, :cond_9

    .line 247
    .line 248
    iget-boolean v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 249
    .line 250
    if-eqz v6, :cond_c

    .line 251
    .line 252
    :cond_9
    iget-object v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 253
    .line 254
    if-eqz v6, :cond_b

    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-nez v6, :cond_a

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    iget-object v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {v6, v5}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    goto :goto_6

    .line 273
    :cond_b
    :goto_5
    move-object v6, v4

    .line 274
    :goto_6
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    :cond_c
    iget-boolean v6, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 279
    .line 280
    if-eqz v6, :cond_d

    .line 281
    .line 282
    iput p1, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertionLocation:I

    .line 283
    .line 284
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 285
    .line 286
    if-eqz p1, :cond_e

    .line 287
    .line 288
    const-string p1, "<br clear=\"all\">"

    .line 289
    .line 290
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    const/16 v3, 0x10

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_d
    iput v2, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertionLocation:I

    .line 298
    .line 299
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mInsertSeparator:Z

    .line 300
    .line 301
    if-eqz p1, :cond_e

    .line 302
    .line 303
    const-string p1, "<br><br>"

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    :cond_e
    :goto_7
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 310
    .line 311
    if-eqz p1, :cond_11

    .line 312
    .line 313
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 314
    .line 315
    if-nez p1, :cond_11

    .line 316
    .line 317
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 318
    .line 319
    if-nez p1, :cond_11

    .line 320
    .line 321
    iget-object p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 322
    .line 323
    if-eqz p1, :cond_10

    .line 324
    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_f

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_f
    iget-object p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-static {p1, v5}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    :cond_10
    :goto_8
    iget-object p1, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->quotedContent:Ljava/lang/StringBuilder;

    .line 342
    .line 343
    iget v0, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 344
    .line 345
    invoke-virtual {p1, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget p1, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    add-int/2addr v0, p1

    .line 355
    iput v0, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 356
    .line 357
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iput-object p1, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->userContent:Ljava/lang/StringBuilder;

    .line 366
    .line 367
    iget p0, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->insertionLocation:I

    .line 368
    .line 369
    if-ne p0, v2, :cond_12

    .line 370
    .line 371
    iget p0, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->headerInsertionPoint:I

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_12
    iget p0, p2, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->footerInsertionPoint:I

    .line 375
    .line 376
    :goto_9
    add-int/2addr p0, v3

    .line 377
    invoke-virtual {p2}, Lcom/fsck/k9/message/quote/InsertableHtmlContent;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    goto :goto_b

    .line 382
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {v1, v5}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 394
    .line 395
    if-eqz p1, :cond_16

    .line 396
    .line 397
    iget-object p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 398
    .line 399
    if-eqz p1, :cond_15

    .line 400
    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-nez p1, :cond_14

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_14
    iget-object p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignature:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {p1, v5}, Landroidx/work/OperationKt;->textToHtmlFragment(Ljava/lang/String;Lcom/fsck/k9/message/html/HTMLTag;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    :cond_15
    :goto_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    :cond_16
    const-string p1, "<!DOCTYPE html><html><body>"

    .line 422
    .line 423
    const-string p2, "</body></html>"

    .line 424
    .line 425
    invoke-static {p1, p0, p2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    const/16 p0, 0x1b

    .line 430
    .line 431
    :goto_b
    new-instance p2, Lcom/fsck/k9/mail/internet/TextBody;

    .line 432
    .line 433
    invoke-direct {p2, p1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    iput-object p1, p2, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    .line 441
    .line 442
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    iput-object p0, p2, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 447
    .line 448
    return-object p2

    .line 449
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 450
    .line 451
    .line 452
    move-result p0

    .line 453
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mIncludeQuotedText:Z

    .line 454
    .line 455
    if-eqz p2, :cond_1e

    .line 456
    .line 457
    iget-object p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    .line 458
    .line 459
    if-eqz p2, :cond_19

    .line 460
    .line 461
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 462
    .line 463
    .line 464
    move-result p2

    .line 465
    if-nez p2, :cond_18

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_18
    iget-object v4, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mQuotedText:Ljava/lang/String;

    .line 469
    .line 470
    :cond_19
    :goto_c
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 471
    .line 472
    if-eqz p2, :cond_1b

    .line 473
    .line 474
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 475
    .line 476
    if-nez p2, :cond_1a

    .line 477
    .line 478
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 479
    .line 480
    if-eqz p2, :cond_1b

    .line 481
    .line 482
    :cond_1a
    invoke-virtual {v0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    :cond_1b
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 491
    .line 492
    if-eqz p2, :cond_1c

    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 495
    .line 496
    .line 497
    move-result p2

    .line 498
    add-int/lit8 v3, p2, 0x2

    .line 499
    .line 500
    const-string p1, "\r\n"

    .line 501
    .line 502
    invoke-static {v4, p1, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    goto :goto_d

    .line 507
    :cond_1c
    const-string p1, "\r\n\r\n"

    .line 508
    .line 509
    invoke-static {v1, p1, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    :goto_d
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 514
    .line 515
    if-eqz p2, :cond_1d

    .line 516
    .line 517
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mReplyAfterQuote:Z

    .line 518
    .line 519
    if-nez p2, :cond_1d

    .line 520
    .line 521
    iget-boolean p2, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mSignatureBeforeQuotedText:Z

    .line 522
    .line 523
    if-nez p2, :cond_1d

    .line 524
    .line 525
    invoke-virtual {v0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    :cond_1d
    move-object v1, p1

    .line 534
    goto :goto_e

    .line 535
    :cond_1e
    iget-boolean p1, v0, Lcom/fsck/k9/message/TextBodyBuilder;->mAppendSignature:Z

    .line 536
    .line 537
    if-eqz p1, :cond_1f

    .line 538
    .line 539
    invoke-virtual {v0}, Lcom/fsck/k9/message/TextBodyBuilder;->getSignature()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    :cond_1f
    :goto_e
    new-instance p1, Lcom/fsck/k9/mail/internet/TextBody;

    .line 548
    .line 549
    invoke-direct {p1, v1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    iput-object p0, p1, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageLength:Ljava/lang/Integer;

    .line 557
    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    iput-object p0, p1, Lcom/fsck/k9/mail/internet/TextBody;->composedMessageOffset:Ljava/lang/Integer;

    .line 563
    .line 564
    return-object p1
.end method

.method public final createMimeMultipart()Lcom/fsck/k9/mail/internet/MimeMultipart;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/message/MessageBuilder;->boundaryGenerator:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final deliverResult()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string p0, "Keeping message builder result in queue for later delivery"

    .line 10
    .line 11
    new-array v1, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/fsck/k9/message/MessageBuilder;->isDraft:Z

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/fsck/k9/activity/MessageCompose;->onMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    const-string v5, "Error sending message"

    .line 38
    .line 39
    new-array v6, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v3, v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v5, 0x1

    .line 49
    new-array v6, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v3, v6, v2

    .line 52
    .line 53
    const v3, 0x7f120589

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 65
    .line 66
    .line 67
    iput-boolean v2, v1, Lcom/fsck/k9/activity/MessageCompose;->sendMessageHasBeenTriggered:Z

    .line 68
    .line 69
    iput-object v4, v1, Lcom/fsck/k9/activity/MessageCompose;->currentMessageBuilder:Lcom/fsck/k9/message/MessageBuilder;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    iget v5, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedRequestCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    or-int/lit16 v5, v5, 0x800

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v1, v3, v5}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    :try_start_2
    const-string v3, "Error starting pending intent from builder!"

    .line 95
    .line 96
    new-array v2, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static {v1, v3, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iput-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedPendingIntent:Landroid/app/PendingIntent;

    .line 102
    .line 103
    :cond_3
    :goto_1
    iput-object v4, p0, Lcom/fsck/k9/message/MessageBuilder;->asyncCallback:Lcom/fsck/k9/activity/MessageCompose;

    .line 104
    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0
.end method

.method public final queueMessageBuildException(Lnet/thunderbird/core/common/exception/MessagingException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedException:Lnet/thunderbird/core/common/exception/MessagingException;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final queueMessageBuildSuccess(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/MessageBuilder;->callbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/message/MessageBuilder;->queuedMimeMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method
