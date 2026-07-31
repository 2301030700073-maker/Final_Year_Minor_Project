.class public final synthetic Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/notifications/NotificationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p1, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Lorg/wikipedia/notifications/NotificationViewModel;->fetchAndSave(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    iput p0, p1, Lorg/wikipedia/notifications/NotificationViewModel;->selectedFilterTab:I

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iget-object v3, p1, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 48
    .line 49
    new-instance v4, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;

    .line 50
    .line 51
    invoke-direct {v4, p1, v2, v0}, Lorg/wikipedia/notifications/NotificationViewModel$updateSearchQuery$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v3, v2, v4, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string p0, "binding"

    .line 59
    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x207

    .line 7
    .line 8
    iget-object v0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    return-object p2

    .line 48
    :cond_0
    const-string p0, "binding"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->finishActionMode$1()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/wikipedia/notifications/NotificationViewModel;->fetchAndSave(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget p1, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 4
    .line 5
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity;->resultLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-class v1, Lorg/wikipedia/notifications/NotificationFilterActivity;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, v0, p0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
