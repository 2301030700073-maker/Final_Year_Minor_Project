.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;

.field public final synthetic f$2:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/WebView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v0, v1, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$aE33UeGbmjjx-fQ-llH8019chtw(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/webkit/WebView;Landroid/view/MenuItem;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method
