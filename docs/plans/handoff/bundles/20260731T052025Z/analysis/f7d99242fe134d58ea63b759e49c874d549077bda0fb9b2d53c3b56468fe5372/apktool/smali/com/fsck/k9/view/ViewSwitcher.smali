.class public Lcom/fsck/k9/view/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

.field public mFirstInAnimation:Landroid/view/animation/Animation;

.field public mFirstOutAnimation:Landroid/view/animation/Animation;

.field public mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

.field public mSecondInAnimation:Landroid/view/animation/Animation;

.field public mSecondOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-class p1, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 17
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    return-void
.end method


# virtual methods
.method public getAnimationManager()Lnet/thunderbird/core/ui/animation/manager/AnimationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFirstInAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFirstOutAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecondInAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSecondOutAnimation()Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p1, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/fsck/k9/activity/MessageHomeActivity;->removeMessageViewContainerFragment()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p1, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->onFullyActive()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setAnimationManager(Lnet/thunderbird/core/ui/animation/manager/AnimationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->animationManager:Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstInAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstInAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mFirstOutAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSwitchCompleteListener(Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mListener:Lcom/fsck/k9/view/ViewSwitcher$OnSwitchCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSecondInAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondInAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method

.method public setSecondOutAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/ViewSwitcher;->mSecondOutAnimation:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-void
.end method
