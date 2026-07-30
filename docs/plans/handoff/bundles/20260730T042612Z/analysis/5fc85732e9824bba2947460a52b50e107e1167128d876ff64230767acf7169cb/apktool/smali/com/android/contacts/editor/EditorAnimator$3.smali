.class Lcom/android/contacts/editor/EditorAnimator$3;
.super Ljava/lang/Object;
.source "EditorAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/EditorAnimator;->showFieldFooter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/EditorAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/EditorAnimator;Landroid/view/View;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/contacts/editor/EditorAnimator$3;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    iput-object p2, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 131
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$view:Landroid/view/View;

    invoke-static {v1}, Lcom/android/contacts/editor/EditorAnimator;->access$000(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    neg-int v0, v0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc8

    move-object v1, v7

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/editor/EditorAnimator;->access$100(Ljava/util/List;Ljava/util/List;FFII)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$3;->val$view:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 142
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/contacts/editor/EditorAnimator$3;->this$0:Lcom/android/contacts/editor/EditorAnimator;

    invoke-static {v0}, Lcom/android/contacts/editor/EditorAnimator;->access$200(Lcom/android/contacts/editor/EditorAnimator;)Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/contacts/editor/EditorAnimator$AnimatorRunner;->run(Ljava/util/List;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
