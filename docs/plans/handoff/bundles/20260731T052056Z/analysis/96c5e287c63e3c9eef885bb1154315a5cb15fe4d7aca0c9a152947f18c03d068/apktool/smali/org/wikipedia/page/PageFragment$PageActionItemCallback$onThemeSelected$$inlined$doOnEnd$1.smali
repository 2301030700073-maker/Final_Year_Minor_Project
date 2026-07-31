.class public final Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->this$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 12
    .line 13
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard1:Lorg/wikipedia/views/WikiCardView;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionCard2:Lorg/wikipedia/views/WikiCardView;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText1:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;->_binding:Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentOnThisDayGamePlayBinding;->questionText2:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 56
    .line 57
    sget p1, Lorg/wikipedia/theme/ThemeChooserDialog;->BUTTON_STROKE_WIDTH:I

    .line 58
    .line 59
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTION_TAB:Lorg/wikipedia/Constants$InvokeSource;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-static {p1, v0}, Lorg/wikipedia/login/LoginClient;->newInstance(Lorg/wikipedia/Constants$InvokeSource;Z)Lorg/wikipedia/theme/ThemeChooserDialog;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->showBottomSheet(Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/page/PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
