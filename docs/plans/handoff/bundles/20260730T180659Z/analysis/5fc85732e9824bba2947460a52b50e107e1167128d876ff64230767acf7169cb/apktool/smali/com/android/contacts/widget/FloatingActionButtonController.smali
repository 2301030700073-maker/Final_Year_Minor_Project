.class public Lcom/android/contacts/widget/FloatingActionButtonController;
.super Ljava/lang/Object;
.source "FloatingActionButtonController.java"


# instance fields
.field private final mAnimationDuration:I

.field private final mFloatingActionButton:Landroid/widget/ImageButton;

.field private final mFloatingActionButtonContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10c000d

    .line 53
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    const p1, 0x7f070126

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const p1, 0x7f070123

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    const p1, 0x7f0a0012

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mAnimationDuration:I

    .line 61
    iput-object p2, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    .line 62
    iput-object p3, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 63
    invoke-static {p2, v0}, Lcom/android/contacts/util/ViewUtil;->setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public resetIn()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 180
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 182
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public scaleIn(I)V
    .locals 3

    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    const/16 v1, 0xba

    invoke-static {v0, v1, p1}, Lcom/android/phone/common/animation/AnimUtils;->scaleIn(Landroid/view/View;II)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    add-int/lit8 p1, p1, 0x46

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public scaleOut()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mAnimationDuration:I

    invoke-static {v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->scaleOut(Landroid/view/View;I)V

    .line 193
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButton:Landroid/widget/ImageButton;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/contacts/widget/FloatingActionButtonController;->mFloatingActionButtonContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
