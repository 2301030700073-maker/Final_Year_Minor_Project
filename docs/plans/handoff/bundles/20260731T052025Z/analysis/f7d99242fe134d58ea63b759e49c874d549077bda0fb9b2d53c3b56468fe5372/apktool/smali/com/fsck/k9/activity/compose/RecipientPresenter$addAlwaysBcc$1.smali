.class public final Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;
.super Lcom/fsck/k9/activity/compose/RecipientLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 2
    .line 3
    check-cast p4, [Lcom/fsck/k9/mail/Address;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public final deliverResult(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 6
    .line 7
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addAlwaysBcc$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 16
    .line 17
    array-length v2, p1

    .line 18
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->removeAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 27
    .line 28
    .line 29
    array-length v3, p1

    .line 30
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->onAbandon()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
