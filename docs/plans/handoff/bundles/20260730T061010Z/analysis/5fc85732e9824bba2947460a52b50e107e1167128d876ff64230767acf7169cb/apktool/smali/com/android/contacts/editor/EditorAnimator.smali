.class public Lcom/android/contacts/editor/EditorAnimator;
.super Ljava/lang/Object;
.source "EditorAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/editor/EditorAnimator;


# instance fields
.field private mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator;-><init>()V

    sput-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-direct {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 0

    .line 39
    invoke-static/range {p0 .. p5}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    return-object p0
.end method

.method public static getInstance()Lcom/android/contacts/editor/EditorAnimator;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/contacts/editor/EditorAnimator;->sInstance:Lcom/android/contacts/editor/EditorAnimator;

    return-object v0
.end method

.method private static getViewsBelowOf(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 225
    invoke-static {v1, v0, v2, p0}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V

    :cond_0
    return-object v1
.end method

.method private static getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 232
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 238
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 243
    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 244
    check-cast p2, Landroid/widget/LinearLayout;

    .line 245
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 246
    invoke-static {p0, p2, p1, p3}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOfRecursive(Ljava/util/List;Landroid/view/ViewGroup;ILandroid/view/View;)V

    :cond_2
    return-void
.end method

.method private static translateViews(Ljava/util/List;Ljava/util/List;FFII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;FFII)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 207
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput p2, v4, v0

    const/4 v5, 0x1

    aput p3, v4, v5

    .line 208
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v3, p4

    .line 209
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    int-to-long v3, p5

    .line 210
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public removeEditorView(Landroid/view/View;)V
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 55
    invoke-static {p1}, Lcom/android/contacts/editor/EditorAnimator;->getViewsBelowOf(Landroid/view/View;)Ljava/util/List;

    move-result-object v7

    .line 56
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 59
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 60
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    neg-int v0, v0

    int-to-float v4, v0

    const/4 v3, 0x0

    const/16 v5, 0x64

    const/16 v6, 0xc8

    move-object v1, v8

    move-object v2, v7

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/editor/EditorAnimator;->translateViews(Ljava/util/List;Ljava/util/List;FFII)V

    .line 67
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    new-instance v1, Lcom/android/contacts/editor/EditorAnimator$1;

    invoke-direct {v1, p0, v7, p1}, Lcom/android/contacts/editor/EditorAnimator$1;-><init>(Lcom/android/contacts/editor/EditorAnimator;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v0, v8, v1}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public showFieldFooter(Landroid/view/View;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 125
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$3;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/editor/EditorAnimator$3;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public slideAndFadeIn(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator;->mRunner:Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->endOldAnimation()V

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 96
    new-instance v0, Lcom/android/contacts/editor/EditorAnimator$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/editor/EditorAnimator$2;-><init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/ViewGroup;I)V

    invoke-static {p1, v0}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
