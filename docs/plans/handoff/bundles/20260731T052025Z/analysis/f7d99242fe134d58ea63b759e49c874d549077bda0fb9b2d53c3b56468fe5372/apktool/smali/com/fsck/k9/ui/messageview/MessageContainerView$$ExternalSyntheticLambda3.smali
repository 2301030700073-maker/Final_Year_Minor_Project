.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->f$1:Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v2, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$mMqPJ8nJo_am53VjX14GTEYAr_w(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/view/MenuItem;)V

    .line 12
    .line 13
    .line 14
    return v1

    .line 15
    :pswitch_0
    invoke-static {p0, v2, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->$r8$lambda$O6l_Y-ERSvLdjg5Ywm1l-azpxi0(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/view/MenuItem;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
