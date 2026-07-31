.class public final Lcom/fsck/k9/provider/RawMessageProvider$1;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic val$message:Lcom/fsck/k9/mailstore/LocalMessage;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/provider/RawMessageProvider$1;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/fsck/k9/provider/RawMessageProvider$1;->val$message:Lcom/fsck/k9/mailstore/LocalMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/io/IOException;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
