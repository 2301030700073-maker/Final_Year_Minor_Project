.class public final Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;
.super Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final addToContactsClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

.field public final addToContactsLauncher$delegate:Lkotlin/Lazy;

.field public final contactPictureLoader$delegate:Lkotlin/Lazy;

.field public cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

.field public final cryptoStatusClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

.field public final folderIconProvider$delegate:Lkotlin/Lazy;

.field public final itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final overflowClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

.field public final participantClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

.field public final showContactLauncher$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v3, 0xc

    .line 13
    .line 14
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 32
    .line 33
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addToContactsLauncher$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->showContactLauncher$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->contactPictureLoader$delegate:Lkotlin/Lazy;

    .line 62
    .line 63
    new-instance v0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    const/16 v6, 0x11

    .line 66
    .line 67
    invoke-direct {v0, v6, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 71
    .line 72
    const/16 v7, 0xb

    .line 73
    .line 74
    invoke-direct {v6, v7, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v6}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 82
    .line 83
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 89
    .line 90
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 91
    .line 92
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->cryptoStatusClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 96
    .line 97
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 98
    .line 99
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->participantClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 103
    .line 104
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 105
    .line 106
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addToContactsClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 110
    .line 111
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 112
    .line 113
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;-><init>(Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;I)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->overflowClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    new-instance v1, Lcom/fsck/k9/ui/messagedetails/SectionHeaderItem;

    .line 25
    .line 26
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p3, v0}, Lcom/fsck/k9/ui/messagedetails/SectionHeaderItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Lcom/fsck/k9/ui/messagedetails/Participant;

    .line 54
    .line 55
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->contactPictureLoader$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 64
    .line 65
    iget-boolean v2, p4, Lcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;->showContactPicture:Z

    .line 66
    .line 67
    iget-boolean v3, p4, Lcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;->alwaysHideAddToContactsButton:Z

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3, p3}, Lcom/fsck/k9/ui/messagedetails/ParticipantItem;-><init>(Lcom/fsck/k9/contacts/ContactPictureLoader;ZZLcom/fsck/k9/ui/messagedetails/Participant;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    return-void
.end method

.method public final getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "reference"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string p0, "Missing argument reference"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0c02c4

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final onResume()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 13
    .line 14
    instance-of v2, v1, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 19
    .line 20
    iget-object v1, v1, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->cache:Lnet/thunderbird/core/common/cache/Cache;

    .line 21
    .line 22
    invoke-interface {v1}, Lnet/thunderbird/core/common/cache/Cache;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 30
    .line 31
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 32
    .line 33
    new-instance v3, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 34
    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v3, p0, v0, v5, v4}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x2

    .line 42
    invoke-static {v1, v2, v5, v3, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object p2, v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 15
    .line 16
    check-cast p2, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 17
    .line 18
    const-string v0, "Required value was null."

    .line 19
    .line 20
    if-eqz p2, :cond_7

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p2, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->isDismissWithAnimation:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v3, p2, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_0
    if-eqz v3, :cond_6

    .line 33
    .line 34
    const v0, 0x7f120442

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v4, 0x7f0800d3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    invoke-direct {v0, v4, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    const v0, 0x7f09029c

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v4, v0

    .line 75
    check-cast v4, Landroid/widget/ProgressBar;

    .line 76
    .line 77
    const v0, 0x7f090298

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const v0, 0x7f09029a

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    move-object v6, p1

    .line 92
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroidx/recyclerview/widget/FastScroller$2;

    .line 98
    .line 99
    invoke-direct {p1, v1, p2}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance p2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 111
    .line 112
    invoke-direct {p2}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p2, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 122
    .line 123
    invoke-static {v3}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_2

    .line 128
    .line 129
    iput-object p2, v3, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 130
    .line 131
    :cond_2
    iput-object p2, p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    add-int/lit8 v3, v1, 0x1

    .line 148
    .line 149
    if-ltz v1, :cond_3

    .line 150
    .line 151
    check-cast v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 152
    .line 153
    iput v1, v0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 154
    .line 155
    move v1, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 158
    .line 159
    .line 160
    throw v2

    .line 161
    :cond_4
    invoke-virtual {p2}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->cryptoStatusClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->participantClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addToContactsClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 175
    .line 176
    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->overflowClickEventHook:Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment$overflowClickEventHook$1;

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->addEventHook(Lcom/mikepenz/fastadapter/listeners/EventHook;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->uiEvents:Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 192
    .line 193
    new-instance p2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 194
    .line 195
    const/16 v0, 0xb

    .line 196
    .line 197
    invoke-direct {p2, v0, p0}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p1, p0, p2}, Landroidx/work/Data$Companion;->observe(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->internalUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 208
    .line 209
    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 210
    .line 211
    const/4 v8, 0x4

    .line 212
    move-object v7, p0

    .line 213
    invoke-direct/range {v3 .. v8}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v7, v3}, Landroidx/work/Data$Companion;->observe(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->getViewModel()Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    iget-object p1, v7, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 224
    .line 225
    if-eqz p1, :cond_5

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsViewModel;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 231
    .line 232
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 237
    .line 238
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 239
    .line 240
    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$mutate$2;

    .line 241
    .line 242
    const/16 v3, 0x8

    .line 243
    .line 244
    invoke-direct {v1, p0, p1, v2, v3}, Landroidx/compose/animation/core/MutatorMutex$mutate$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 245
    .line 246
    .line 247
    const/4 p0, 0x2

    .line 248
    invoke-static {p2, v0, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_5
    const-string p0, "messageReference"

    .line 253
    .line 254
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v2

    .line 258
    :cond_6
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_7
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void
.end method
