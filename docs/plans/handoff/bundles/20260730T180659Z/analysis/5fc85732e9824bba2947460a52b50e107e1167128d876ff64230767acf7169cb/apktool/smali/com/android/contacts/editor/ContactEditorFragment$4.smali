.class Lcom/android/contacts/editor/ContactEditorFragment$4;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$saveMenu:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$saveMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 781
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$saveMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
