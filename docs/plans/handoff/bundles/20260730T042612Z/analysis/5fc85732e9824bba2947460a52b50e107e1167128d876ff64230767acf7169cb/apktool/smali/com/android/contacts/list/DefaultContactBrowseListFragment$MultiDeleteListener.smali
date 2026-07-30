.class final Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/interactions/ContactMultiDeletionInteraction$MultiContactDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiDeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onDeletionFinished()V
    .locals 5

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1155
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1156
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 1157
    invoke-virtual {v2}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, -0x1

    .line 1154
    invoke-static {v3, v0, v1, v4, v2}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 1159
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$MultiDeleteListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$2102(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    return-void
.end method
