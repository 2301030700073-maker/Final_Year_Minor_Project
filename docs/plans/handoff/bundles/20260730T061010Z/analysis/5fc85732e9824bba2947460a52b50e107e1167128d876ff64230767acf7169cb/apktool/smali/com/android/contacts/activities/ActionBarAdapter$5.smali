.class Lcom/android/contacts/activities/ActionBarAdapter$5;
.super Ljava/lang/Object;
.source "ActionBarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ActionBarAdapter;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ActionBarAdapter;

.field final synthetic val$isSearchModeChanging:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ActionBarAdapter;Z)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iput-boolean p2, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->val$isSearchModeChanging:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->val$isSearchModeChanging:Z

    invoke-static {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$500(Lcom/android/contacts/activities/ActionBarAdapter;Z)V

    .line 432
    iget-object v0, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->access$900(Lcom/android/contacts/activities/ActionBarAdapter;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ActionBarAdapter$5;->this$0:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-static {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->access$800(Lcom/android/contacts/activities/ActionBarAdapter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
