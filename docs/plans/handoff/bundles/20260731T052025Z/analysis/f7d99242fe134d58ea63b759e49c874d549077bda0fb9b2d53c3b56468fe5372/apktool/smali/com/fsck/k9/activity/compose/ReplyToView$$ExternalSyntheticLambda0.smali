.class public final synthetic Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/mailstore/LocalStore$7;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->setVisible(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
