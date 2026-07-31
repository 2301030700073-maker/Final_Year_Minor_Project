.class public final Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;
.super Lcom/takisoft/preferencex/PreferenceFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final folderNameFormatter$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;I)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final dialogCancelled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doNegativeClick(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doPositiveClick(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v1, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderId:J

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;JI)V

    .line 23
    .line 24
    .line 25
    const-string p0, "clearFolder"

    .line 26
    .line 27
    invoke-virtual {v1, p0, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "account"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0

    .line 38
    :cond_1
    return-void
.end method

.method public final getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const p1, 0x7f160003

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Landroidx/fragment/app/FragmentManager$2;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const-string p2, "account"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const-string p2, "folderId"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p1, v1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderSettingsLiveData:Landroidx/lifecycle/CoroutineLiveData;

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 58
    .line 59
    new-instance v0, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$launchAnimation$2;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Landroidx/lifecycle/ViewModelKt;->liveData(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/CoroutineLiveData;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->folderSettingsLiveData:Landroidx/lifecycle/CoroutineLiveData;

    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-instance v0, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Lcom/fsck/k9/ui/managefolders/FolderSettingsViewModel;->actionLiveData:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 89
    .line 90
    new-instance p2, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/managefolders/FolderSettingsFragment;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p0, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    const-string p0, "Missing argument \'account\'"

    .line 101
    .line 102
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    const-string p0, "Arguments missing"

    .line 107
    .line 108
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final requirePreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "Preference \'"

    .line 9
    .line 10
    const-string v0, "\' not found"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
