.class public Lorg/schabi/newpipe/fragments/BlankFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

.field public errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "NewPipe"

    .line 2
    .line 3
    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x7f0d0052

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-direct {p2, p0, p1, p3}, Lorg/schabi/newpipe/error/ErrorPanelHelper;-><init>(Lorg/schabi/newpipe/BaseFragment;Landroid/view/View;Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lorg/schabi/newpipe/error/ErrorPanelHelper;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f0a0084

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 p2, 0x8

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorActionButton:Landroid/widget/Button;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorRetryButton:Landroid/widget/Button;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/BlankFragment;->errorPanel:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NewPipe"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
