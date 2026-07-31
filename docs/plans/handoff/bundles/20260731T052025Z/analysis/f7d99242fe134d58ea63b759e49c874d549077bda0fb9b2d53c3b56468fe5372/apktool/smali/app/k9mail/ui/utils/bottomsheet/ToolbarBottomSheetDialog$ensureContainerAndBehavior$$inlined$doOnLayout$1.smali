.class public final Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $behavior$inlined:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

.field public final synthetic $container$inlined:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;->$behavior$inlined:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;->$container$inlined:Landroid/widget/FrameLayout;

    .line 7
    .line 8
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
    iget-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;->$container$inlined:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    div-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    iget-object p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ensureContainerAndBehavior$$inlined$doOnLayout$1;->$behavior$inlined:Lapp/k9mail/ui/utils/bottomsheet/LayoutAwareBottomSheetBehavior;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
