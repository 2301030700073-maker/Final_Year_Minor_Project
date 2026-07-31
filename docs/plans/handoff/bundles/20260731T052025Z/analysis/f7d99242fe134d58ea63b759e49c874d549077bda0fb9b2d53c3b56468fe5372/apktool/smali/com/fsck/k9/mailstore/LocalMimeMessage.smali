.class public final Lcom/fsck/k9/mailstore/LocalMimeMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LocalPart;


# instance fields
.field public final accountUuid:Ljava/lang/String;

.field public final message:Lcom/fsck/k9/mailstore/LocalMessage;

.field public final messagePartId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->accountUuid:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->messagePartId:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAccountUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->accountUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessage()Lcom/fsck/k9/mailstore/LocalMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPartId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/mailstore/LocalMimeMessage;->messagePartId:J

    .line 2
    .line 3
    return-wide v0
.end method
