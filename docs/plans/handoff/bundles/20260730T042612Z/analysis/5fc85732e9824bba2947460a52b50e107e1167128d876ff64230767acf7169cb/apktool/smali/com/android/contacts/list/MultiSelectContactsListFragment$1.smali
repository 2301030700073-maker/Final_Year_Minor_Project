.class Lcom/android/contacts/list/MultiSelectContactsListFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectContactsListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/MultiSelectContactsListFragment;->setLayoutAnimation(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/MultiSelectContactsListFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .line 277
    iput-object p2, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment$1;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment$1;->val$view:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
