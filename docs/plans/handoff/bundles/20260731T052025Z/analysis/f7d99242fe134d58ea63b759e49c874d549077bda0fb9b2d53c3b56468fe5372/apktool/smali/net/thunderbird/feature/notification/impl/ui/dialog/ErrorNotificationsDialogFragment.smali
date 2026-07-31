.class public final Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final Factory:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;


# instance fields
.field public listener:Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

.field public final stream$delegate:Lkotlin/Lazy;

.field public final themeProvider$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->Factory:Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$Factory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$special$$inlined$inject$default$1;-><init>(Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;I)V

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
    iput-object v0, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->stream$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$special$$inlined$inject$default$1;-><init>(Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    instance-of v1, v0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    instance-of v0, p1, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v2, v0

    .line 29
    :cond_2
    :goto_1
    iput-object v2, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->listener:Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 30
    .line 31
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v4, 0x6

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {p1, p0, v1}, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;I)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    const v1, -0x69469ab9

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public final onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/thunderbird/feature/notification/impl/ui/dialog/ErrorNotificationsDialogFragment;->listener:Lnet/thunderbird/feature/notification/api/ui/dialog/ErrorNotificationsDialogFragmentActionListener;

    .line 6
    .line 7
    return-void
.end method
