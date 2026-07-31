.class public final Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public accountIds:Ljava/util/Set;

.field public final logger$delegate:Lkotlin/Lazy;

.field public parentView:Landroid/view/ViewGroup;

.field public final themeProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->logger$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->accountIds:Ljava/util/Set;

    .line 33
    .line 34
    return-void
.end method

.method public static final access$onSnackbarInAppNotificationEvent(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;Lkotlin/coroutines/Continuation;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;

    .line 10
    .line 11
    iget v1, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;-><init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p1, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->result:Ljava/lang/Object;

    .line 29
    .line 30
    iget v0, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    if-eq v0, p0, :cond_1

    .line 37
    .line 38
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Ljava/lang/CharSequence;

    .line 48
    .line 49
    throw v1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->parentView:Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    throw v1
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-string v0, "MessageComposeInAppNotificationFragment_account_ids"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->accountIds:Ljava/util/Set;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string p0, "Missing argument MessageComposeInAppNotificationFragment_account_ids"

    .line 28
    .line 29
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v4, 0x6

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->parentView:Landroid/view/ViewGroup;

    .line 23
    .line 24
    new-instance p1, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;I)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 31
    .line 32
    const p2, 0x3bf727e9

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p2, p1, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->parentView:Landroid/view/ViewGroup;

    .line 6
    .line 7
    return-void
.end method
