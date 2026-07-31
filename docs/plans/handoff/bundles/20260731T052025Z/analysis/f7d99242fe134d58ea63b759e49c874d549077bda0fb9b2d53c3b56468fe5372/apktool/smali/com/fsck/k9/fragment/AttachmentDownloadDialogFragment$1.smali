.class public final Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic val$dialog:Landroid/app/ProgressDialog;

.field public final synthetic val$sizeUnit:I


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 5
    .line 6
    iput p2, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->val$sizeUnit:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateProgress(I)V
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    iget p1, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->val$sizeUnit:I

    .line 3
    .line 4
    invoke-static {p1}, Lcoil3/size/ViewSizeResolver$-CC;->getSize(I)J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    div-long/2addr v0, v2

    .line 9
    long-to-int p1, v0

    .line 10
    iget-object p0, p0, Lcom/fsck/k9/fragment/AttachmentDownloadDialogFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
