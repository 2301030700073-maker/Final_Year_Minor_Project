.class public final Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final shouldShowRecentChangesHint:Landroidx/lifecycle/CoroutineLiveData;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 7
    .line 8
    iget-object p1, p2, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLogFlow$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 15
    .line 16
    new-instance p2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p2, v0, p0, v1}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;)Landroidx/lifecycle/CoroutineLiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->shouldShowRecentChangesHint:Landroidx/lifecycle/CoroutineLiveData;

    .line 32
    .line 33
    return-void
.end method
