.class public final Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public selectedPackageName:Ljava/lang/String;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    new-instance p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 11
    .line 12
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;

    .line 17
    .line 18
    iget-object v3, v0, Lapp/k9mail/feature/settings/import/ui/PickAppViewModel;->appInfoFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    .line 20
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 21
    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-direct {v4, v0, p1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 31
    .line 32
    const/16 v6, 0x13

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v2, p0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x3

    .line 40
    invoke-static {v0, v5, v5, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    .line 43
    new-instance p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {p0, p1, v2}, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/activity/AccountList$AccountsAdapter;Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f1205b5

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    const p0, 0x7f1201fa

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/PickAppDialogFragment;->selectedPackageName:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Lkotlin/Pair;

    .line 7
    .line 8
    const-string v2, "packageName"

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "pickApp"

    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lorg/slf4j/helpers/Util;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
