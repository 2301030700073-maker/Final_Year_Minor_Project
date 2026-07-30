.class Lcom/android/contacts/activities/ActionBarAdapter$6;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;->updateOverflowButtonColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$overflowDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iput-object p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->val$decorView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->val$overflowDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->val$decorView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->val$overflowDescription:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 456
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 457
    instance-of v2, v1, Landroid/widget/ImageView;

    if-nez v2, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    check-cast v1, Landroid/widget/ImageView;

    .line 464
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1000(Lcom/android/contacts/activities/ActionBarAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 468
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->access$1100(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 471
    :goto_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$6;->val$decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
