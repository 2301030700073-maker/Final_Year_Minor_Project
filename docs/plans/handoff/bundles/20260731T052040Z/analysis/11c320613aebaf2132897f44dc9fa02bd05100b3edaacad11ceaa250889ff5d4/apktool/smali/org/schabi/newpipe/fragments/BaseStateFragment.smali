.class public abstract Lorg/schabi/newpipe/fragments/BaseStateFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/schabi/newpipe/BaseFragment;"
    }
.end annotation


# instance fields
.field public emptyStateMessageView:Landroid/widget/TextView;

.field public emptyStateView:Landroid/view/View;

.field public errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

.field public final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public doInitialLoadLogic()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public handleError()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/16 v9, 0x1c

    .line 21
    .line 22
    const-wide/16 v3, 0x96

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/16 v9, 0x1c

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final hideErrorPanel()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v3, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/16 v11, 0x1c

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const-wide/16 v5, 0x96

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-wide/16 v8, 0x0

    .line 19
    .line 20
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 24
    .line 25
    return-void
.end method

.method public hideLoading()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v2, 0x96

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const p2, 0x7f0a0144

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 9
    .line 10
    const p2, 0x7f0a0143

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    .line 20
    .line 21
    const p2, 0x7f0a0218

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/widget/ProgressBar;

    .line 29
    .line 30
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 31
    .line 32
    new-instance p2, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 33
    .line 34
    new-instance v0, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/16 v1, 0x1a

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p0, p1, v0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;-><init>(Lorg/schabi/newpipe/BaseFragment;Landroid/view/View;Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 45
    .line 46
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorDisposable:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 27
    .line 28
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateMessageView:Landroid/widget/TextView;

    .line 29
    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->doInitialLoadLogic()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public reloadContent()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public showEmptyState()V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    const/16 v11, 0x1c

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const-wide/16 v5, 0xc8

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const-wide/16 v8, 0x0

    .line 19
    .line 20
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/16 v9, 0x1c

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final showError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->lastPanelError:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->emptyStateView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x96

    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-wide/16 v2, 0x190

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideErrorPanel()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final showTextError(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->ensureDefaultVisibility()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lkotlin/math/MathKt;->setTextWithLinks(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/16 v9, 0x1c

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const-wide/16 v3, 0x12c

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .line 44
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
