.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$2:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$3:Landroid/net/Uri;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$2:Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$3:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;->f$1:Z

    .line 8
    .line 9
    invoke-static {v2, p0, v0, v1, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$Z2Lxl3FQmIf3l5Ej_RhT5oEspik(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;Landroid/view/MenuItem;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method
