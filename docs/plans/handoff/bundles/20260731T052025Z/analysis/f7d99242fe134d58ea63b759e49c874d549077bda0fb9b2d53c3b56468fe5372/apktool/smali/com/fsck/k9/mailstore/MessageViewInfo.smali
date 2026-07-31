.class public final Lcom/fsck/k9/mailstore/MessageViewInfo;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

.field public final attachments:Ljava/util/List;

.field public final cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final extraAttachments:Ljava/util/List;

.field public final extraText:Ljava/lang/String;

.field public final isMessageIncomplete:Z

.field public final isSubjectEncrypted:Z

.field public final message:Lcom/fsck/k9/mail/internet/MimeMessage;

.field public final preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

.field public final rootPart:Lcom/fsck/k9/mail/Part;

.field public final subject:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final textPlainFormatted:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->subject:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isSubjectEncrypted:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->textPlainFormatted:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 21
    .line 22
    iput-object p8, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 29
    .line 30
    return-void
.end method

.method public static createWithErrorState(Lcom/fsck/k9/mail/internet/MimeMessage;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 16

    .line 1
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/internet/TextBody;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 9
    .line 10
    const-string v1, "text/plain"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v5, v0, v1, v2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v2, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 21
    .line 22
    const/4 v14, 0x0

    .line 23
    const/4 v15, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    move-object/from16 v3, p0

    .line 32
    .line 33
    move/from16 v4, p1

    .line 34
    .line 35
    invoke-direct/range {v2 .. v15}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method


# virtual methods
.method public final withSubject(Ljava/lang/String;Z)Lcom/fsck/k9/mailstore/MessageViewInfo;
    .locals 14

    .line 1
    new-instance v0, Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 2
    .line 3
    iget-object v12, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 4
    .line 5
    iget-object v13, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->preferredUnsubscribeUri:Lcom/fsck/k9/helper/UnsubscribeUri;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 10
    .line 11
    iget-object v3, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->rootPart:Lcom/fsck/k9/mail/Part;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->textPlainFormatted:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    move/from16 v5, p2

    .line 27
    .line 28
    invoke-direct/range {v0 .. v13}, Lcom/fsck/k9/mailstore/MessageViewInfo;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;ZLcom/fsck/k9/mail/Part;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;Lcom/fsck/k9/mailstore/AttachmentResolver;Ljava/lang/String;Ljava/util/List;Lcom/fsck/k9/helper/UnsubscribeUri;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
