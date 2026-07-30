.class Lcom/android/contacts/drawer/DrawerFragment$3;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 235
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f09014d

    if-ne p1, p3, :cond_1

    .line 240
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-interface {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onContactsViewSelected(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    .line 241
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    goto/16 :goto_0

    :cond_1
    const p3, 0x7f09014e

    if-ne p1, p3, :cond_2

    .line 243
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-interface {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onContactsViewSelected(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    .line 244
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    goto/16 :goto_0

    :cond_2
    const p3, 0x7f090153

    if-ne p1, p3, :cond_3

    .line 246
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/group/GroupListItem;

    .line 247
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p2}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onGroupViewSelected(Lcom/android/contacts/group/GroupListItem;)V

    .line 248
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p2}, Lcom/android/contacts/drawer/DrawerFragment;->access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedGroupId(J)V

    .line 249
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    goto :goto_0

    :cond_3
    const p3, 0x7f090151

    if-ne p1, p3, :cond_4

    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .line 252
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p2}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onAccountViewSelected(Lcom/android/contacts/list/ContactListFilter;)V

    .line 253
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p2}, Lcom/android/contacts/drawer/DrawerFragment;->access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->setSelectedAccount(Lcom/android/contacts/list/ContactListFilter;)V

    .line 254
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    sget-object p2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->setNavigationItemChecked(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    goto :goto_0

    :cond_4
    const p2, 0x7f09014f

    if-ne p1, p2, :cond_5

    .line 256
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onCreateLabelButtonClicked()V

    goto :goto_0

    :cond_5
    const p2, 0x7f090157

    if-ne p1, p2, :cond_6

    .line 258
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onOpenSettings()V

    goto :goto_0

    :cond_6
    const p2, 0x7f090155

    if-ne p1, p2, :cond_7

    .line 260
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onLaunchHelpFeedback()V

    .line 264
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$3;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$600(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/contacts/drawer/DrawerFragment$DrawerFragmentListener;->onDrawerItemClicked()V

    :cond_7
    return-void
.end method
