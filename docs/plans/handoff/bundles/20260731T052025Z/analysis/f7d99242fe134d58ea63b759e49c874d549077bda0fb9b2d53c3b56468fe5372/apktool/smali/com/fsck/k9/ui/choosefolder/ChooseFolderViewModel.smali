.class public final Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

.field public final foldersFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final inputFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public isShowHiddenFolders:Z


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->folderRepository:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 5
    .line 6
    const/4 p1, 0x6

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->inputFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 14
    .line 15
    new-instance v2, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;

    .line 16
    .line 17
    invoke-direct {v2, v1, p0, v0}, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderViewModel;->foldersFlow:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 25
    .line 26
    return-void
.end method
