.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$3;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startEditorIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method
