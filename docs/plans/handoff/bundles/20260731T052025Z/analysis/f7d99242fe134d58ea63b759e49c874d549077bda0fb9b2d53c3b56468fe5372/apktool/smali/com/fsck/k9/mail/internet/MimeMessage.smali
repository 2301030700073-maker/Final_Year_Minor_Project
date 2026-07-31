.class public Lcom/fsck/k9/mail/internet/MimeMessage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mail/Part;
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field public deliveredTo:[Lcom/fsck/k9/mail/Address;

.field public mBcc:[Lcom/fsck/k9/mail/Address;

.field public mBody:Lcom/fsck/k9/mail/Body;

.field public mCc:[Lcom/fsck/k9/mail/Address;

.field public mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mFlags:Ljava/util/EnumSet;

.field public mFrom:[Lcom/fsck/k9/mail/Address;

.field public final mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

.field public mInternalDate:Ljava/util/Date;

.field public mMessageId:Ljava/lang/String;

.field public mReferences:[Ljava/lang/String;

.field public mReplyTo:[Lcom/fsck/k9/mail/Address;

.field public mSentDate:Ljava/util/Date;

.field public mSize:I

.field public mTo:[Lcom/fsck/k9/mail/Address;

.field public mUid:Ljava/lang/String;

.field public serverExtra:Ljava/lang/String;

.field public xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

.field public xOriginalTo:[Lcom/fsck/k9/mail/Address;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 11
    .line 12
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    invoke-direct {v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 19
    .line 20
    iput-boolean p1, v0, Lcom/fsck/k9/mailstore/LocalFolder$8;->val$includeDeleted:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final addSentDate(Ljava/util/Date;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 8
    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v0, "UTC"

    .line 21
    .line 22
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 36
    .line 37
    const-string v1, "Date"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 43
    .line 44
    return-void
.end method

.method public final calculateSize()J
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/filter/CountingOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/OutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    new-instance v1, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v1}, Lcom/fsck/k9/mail/Part;->writeTo(Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/fsck/k9/mail/filter/EOLConvertingOutputStream;->flush()V

    .line 15
    .line 16
    .line 17
    iget-wide v1, v0, Lcom/fsck/k9/mail/filter/CountingOutputStream;->mCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    .line 21
    .line 22
    return-wide v1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    const-string v1, "Failed to calculate a message size"

    .line 38
    .line 39
    invoke-static {p0, v1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    return-wide v0
.end method

.method public final getBody()Lcom/fsck/k9/mail/Body;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "text/plain"

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public final getDisposition()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Content-Disposition"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getFrom()[Lcom/fsck/k9/mail/Address;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-string v0, "From"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    :cond_0
    const-string v0, "Sender"

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    sget-object v1, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 54
    .line 55
    :cond_2
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 56
    .line 57
    return-object p0
.end method

.method public final getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final getMessageId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Message-ID"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lcom/fsck/k9/mail/internet/JisSupport;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fsck/k9/mail/MimeType;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p0, "text/plain"

    .line 24
    .line 25
    return-object p0
.end method

.method public final getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_8

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_6

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p1, v1, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p1, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "X-Envelope-To"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 51
    .line 52
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_1
    const-string p0, "Unrecognized recipient type."

    .line 56
    .line 57
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return-object p0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    const-string p1, "Delivered-To"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 89
    .line 90
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 94
    .line 95
    if-nez p1, :cond_5

    .line 96
    .line 97
    const-string p1, "X-Original-To"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 120
    .line 121
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_6
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 125
    .line 126
    if-nez p1, :cond_7

    .line 127
    .line 128
    const-string p1, "BCC"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 151
    .line 152
    :cond_7
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_8
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 156
    .line 157
    if-nez p1, :cond_9

    .line 158
    .line 159
    const-string p1, "CC"

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 182
    .line 183
    :cond_9
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_a
    iget-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 187
    .line 188
    if-nez p1, :cond_b

    .line 189
    .line 190
    const-string p1, "To"

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 207
    .line 208
    invoke-static {p1}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 213
    .line 214
    :cond_b
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 215
    .line 216
    return-object p0
.end method

.method public final getReplyTo()[Lcom/fsck/k9/mail/Address;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Reply-to"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 32
    .line 33
    return-object p0
.end method

.method public final getSentDate()Ljava/util/Date;
    .locals 3

    .line 1
    const-string v0, "Date: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    const-string v1, "Date"

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
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    .line 30
    .line 31
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseField(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)Lorg/apache/james/mime4j/stream/RawField;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lorg/apache/james/mime4j/field/DefaultFieldParser;->PARSER:Lorg/apache/james/mime4j/field/DefaultFieldParser;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->parse(Lorg/apache/james/mime4j/stream/Field;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->getDate()Ljava/util/Date;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v2, "Couldn\'t parse Date header field"

    .line 64
    .line 65
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 69
    .line 70
    return-object p0
.end method

.method public final getServerExtra()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->serverExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Subject"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->unfold(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-static {v0, p0}, Lcom/fsck/k9/mail/internet/JisSupport;->decodeEncodedWords(Ljava/lang/String;Lcom/fsck/k9/mail/internet/MimeMessage;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public hasAttachments()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isMimeType(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final olderThan(Ljava/util/Date;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 11
    .line 12
    :cond_1
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final parse(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalFolder$8;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xOriginalTo:[Lcom/fsck/k9/mail/Address;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->deliveredTo:[Lcom/fsck/k9/mail/Address;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->xEnvelopeTo:[Lcom/fsck/k9/mail/Address;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReferences:[Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 34
    .line 35
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-direct {v0, v1, v1, v1}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(III)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 47
    .line 48
    new-instance v2, Lokio/AsyncTimeout$Companion;

    .line 49
    .line 50
    const/16 v3, 0x12

    .line 51
    .line 52
    invoke-direct {v2, v3}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;Lokio/AsyncTimeout$Companion;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, v1, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 59
    .line 60
    :try_start_0
    new-instance p0, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/filter/FixedLengthInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Lorg/jsoup/internal/SoftPool;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Lnet/thunderbird/core/common/exception/MessagingException;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public final setBody(Lcom/fsck/k9/mail/Body;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/fsck/k9/mail/Body;->setEncoding(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "Content-Transfer-Encoding"

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 8
    .line 9
    const-string v2, "From"

    .line 10
    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 19
    .line 20
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 25
    .line 26
    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setServerExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->serverExtra:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Subject"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/fsck/k9/mail/internet/JisSupport;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final usesAnyUnicodeAddresses()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const/16 v4, 0x80

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    aget-object v6, v0, v3

    .line 14
    .line 15
    iget-object v6, v6, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    sub-int/2addr v7, v5

    .line 22
    :goto_1
    if-ltz v7, :cond_0

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-ge v8, v4, :cond_0

    .line 29
    .line 30
    add-int/lit8 v7, v7, -0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    if-ltz v7, :cond_1

    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Lcom/fsck/k9/mail/Message$RecipientType;->values()[Lcom/fsck/k9/mail/Message$RecipientType;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    array-length v1, v0

    .line 44
    move v3, v2

    .line 45
    :goto_2
    if-ge v3, v1, :cond_6

    .line 46
    .line 47
    aget-object v6, v0, v3

    .line 48
    .line 49
    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    array-length v7, v6

    .line 54
    move v8, v2

    .line 55
    :goto_3
    if-ge v8, v7, :cond_5

    .line 56
    .line 57
    aget-object v9, v6, v8

    .line 58
    .line 59
    iget-object v9, v9, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    sub-int/2addr v10, v5

    .line 66
    :goto_4
    if-ltz v10, :cond_3

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-ge v11, v4, :cond_3

    .line 73
    .line 74
    add-int/lit8 v10, v10, -0x1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    if-ltz v10, :cond_4

    .line 78
    .line 79
    :goto_5
    return v5

    .line 80
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    return v2
.end method

.method public final writeHeaderTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->writeTo(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/BufferedWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x400

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mailstore/LocalFolder$8;->writeTo(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBody:Lcom/fsck/k9/mail/Body;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
