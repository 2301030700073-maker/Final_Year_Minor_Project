.class Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectEmailAddressesListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;Landroid/view/MenuItem;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;->this$0:Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;->this$0:Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/MultiSelectEmailAddressesListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
