.class public final Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/view/RecipientSelectView$TokenListener;


# instance fields
.field public final synthetic $presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTokenAdded(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTokenChanged(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTokenIgnored(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTokenRemoved(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView$setPresenter$1;->$presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
