.class public final Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $colorEnd$inlined:I

.field public final synthetic $colorEnd$inlined$1:I

.field public final synthetic $r8$classId:I

.field public final synthetic $this_animateTextColor$inlined:Landroid/view/View;

.field public final synthetic $this_animateTextColor$inlined$1:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined:I

    .line 8
    .line 9
    iput-object p3, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined:Landroid/view/View;

    .line 10
    .line 11
    iput p2, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined$1:I

    .line 12
    .line 13
    iput-object p4, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined$1:Landroid/view/View;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;ILandroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined:Landroid/view/View;

    iput p2, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined:I

    iput-object p3, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined$1:Landroid/view/View;

    iput p4, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined$1:I

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined$1:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$colorEnd$inlined:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$this_animateTextColor$inlined:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

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
    iget p0, p0, Lorg/schabi/newpipe/ktx/TextViewUtils$animateTextColor$$inlined$addListener$default$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
