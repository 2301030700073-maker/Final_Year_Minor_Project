.class public final Lcom/fsck/k9/mail/store/pop3/Pop3Message;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSize:I

    .line 9
    .line 10
    return-void
.end method
