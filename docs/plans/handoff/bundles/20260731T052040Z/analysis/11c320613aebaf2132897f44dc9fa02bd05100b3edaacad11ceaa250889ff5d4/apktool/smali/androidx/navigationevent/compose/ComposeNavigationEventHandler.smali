.class public final Landroidx/navigationevent/compose/ComposeNavigationEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

.field public currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

.field public currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

.field public final onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    new-instance p1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 p2, 0x6

    .line 10
    invoke-direct {p1, p2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    new-instance p1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    new-instance p1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCancelled:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBackCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnBackCompleted:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onForwardCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->onTransitionStateChanged:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigationevent/NavigationEventHandler;->transitionState:Landroidx/navigationevent/NavigationEventTransitionState;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/navigationevent/compose/ComposeNavigationEventHandler;->currentOnForwardCancelled:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
