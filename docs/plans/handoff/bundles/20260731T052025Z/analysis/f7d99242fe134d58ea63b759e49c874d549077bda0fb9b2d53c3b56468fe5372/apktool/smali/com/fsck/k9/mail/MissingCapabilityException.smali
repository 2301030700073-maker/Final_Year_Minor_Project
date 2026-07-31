.class public final Lcom/fsck/k9/mail/MissingCapabilityException;
.super Lnet/thunderbird/core/common/exception/MessagingException;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final capabilityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Missing capability: "

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lnet/thunderbird/core/common/exception/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/fsck/k9/mail/MissingCapabilityException;->capabilityName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
