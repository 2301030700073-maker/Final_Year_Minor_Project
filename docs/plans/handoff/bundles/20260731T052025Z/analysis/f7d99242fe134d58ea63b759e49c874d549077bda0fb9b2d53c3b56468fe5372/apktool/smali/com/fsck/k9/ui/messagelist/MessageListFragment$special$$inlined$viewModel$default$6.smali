.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $ownerProducer:Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

.field public final synthetic $parameters:Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

.field public final synthetic $this_viewModel:Lcom/fsck/k9/ui/messagelist/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$this_viewModel:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$ownerProducer:Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$parameters:Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$ownerProducer:Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$inject$default$1;->$this_inject:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$this_viewModel:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-class v0, Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v4, 0x0

    .line 26
    iget-object v6, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$special$$inlined$viewModel$default$6;->$parameters:Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda7;

    .line 27
    .line 28
    invoke-static/range {v1 .. v6}, Lokhttp3/Handshake$Companion;->resolveViewModel(Lkotlin/jvm/internal/ClassReference;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/viewmodel/CreationExtras;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/scope/Scope;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
