.class public final Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $bottomSheet$inlined:Landroid/widget/FrameLayout;

.field public final synthetic $container$inlined:Landroid/widget/FrameLayout;

.field public final synthetic this$0:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->$bottomSheet$inlined:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->$container$inlined:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->this$0:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->$bottomSheet$inlined:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->$container$inlined:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x0

    .line 17
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$2;->this$0:Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 18
    .line 19
    if-ge p1, p3, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p4}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->setToolbarVisibilityCallback(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p2, p4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method
