.class public final Lcom/fsck/k9/mail/store/imap/ImapResponse;
.super Lcom/fsck/k9/mail/store/imap/ImapList;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

.field public final isContinuationRequested:Z

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->callback:Lcom/fsck/k9/mail/store/imap/ImapResponseCallback;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final isTagged()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->isContinuationRequested:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "+"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/mail/store/imap/ImapResponse;->tag:Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "#"

    .line 15
    .line 16
    const-string v2, "# "

    .line 17
    .line 18
    invoke-static {v1, v0, v2, p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
