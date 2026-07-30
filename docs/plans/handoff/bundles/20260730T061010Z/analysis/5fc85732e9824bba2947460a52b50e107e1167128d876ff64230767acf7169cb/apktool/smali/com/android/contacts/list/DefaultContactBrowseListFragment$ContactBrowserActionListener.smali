.class final Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidSelection()V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, -0x6

    if-eqz v0, :cond_0

    .line 964
    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v0, v1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/AccountFilterUtil;->createContactsFilter(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilterAndUpdateTitle(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 969
    :cond_0
    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 973
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method

.method public onSelectionChange()V
    .locals 0

    return-void
.end method

.method public onViewContactAction(ILandroid/net/Uri;Z)V
    .locals 4

    const/4 v0, 0x4

    if-eqz p3, :cond_0

    .line 922
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v0, v1}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_1

    .line 926
    :cond_0
    iget-object p3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 929
    :cond_1
    iget-object p3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 930
    iget-object p3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getNumberOfFavorites()I

    move-result p3

    if-ge p1, p3, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :cond_3
    :goto_0
    const/4 p3, 0x2

    .line 940
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 941
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 942
    invoke-virtual {v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    .line 940
    invoke-static {p3, v1, v2, p1, v3}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 945
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactBrowserActionListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 946
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 945
    invoke-static {p1, p2, v0}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startQuickContact(Landroid/app/Activity;Landroid/net/Uri;I)V

    :goto_1
    return-void
.end method
