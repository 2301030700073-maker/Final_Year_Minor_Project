.class public final Lcom/fsck/k9/mailstore/AttachmentViewInfo;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final inlineAttachment:Z

.field public final internalUri:Landroid/net/Uri;

.field public isContentAvailable:Z

.field public final mimeType:Ljava/lang/String;

.field public final part:Lcom/fsck/k9/mail/Part;

.field public final size:J

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;ZLcom/fsck/k9/mail/Part;Z)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 12
    .line 13
    iput-object p5, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 14
    .line 15
    iput-boolean p6, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 16
    .line 17
    iput-object p7, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 18
    .line 19
    iput-boolean p8, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->isContentAvailable:Z

    .line 20
    .line 21
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->uri:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->filename:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final isSupportedImage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/helper/FileHelper;->isSupportedImageType(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    const-string v1, "application/octet-stream"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/fsck/k9/helper/FileHelper;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/fsck/k9/helper/FileHelper;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/fsck/k9/helper/FileHelper;->isSupportedImageType(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 36
    return p0
.end method
