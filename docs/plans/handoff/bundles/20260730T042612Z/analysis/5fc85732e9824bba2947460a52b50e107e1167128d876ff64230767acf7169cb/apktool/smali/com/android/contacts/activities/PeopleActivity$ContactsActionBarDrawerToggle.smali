.class Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsActionBarDrawerToggle"
.end annotation


# instance fields
.field private mMenuClickedBefore:Z

.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Landroidx/appcompat/app/AppCompatActivity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    .line 267
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 268
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    .line 263
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {p1}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerMenuClickedBefore(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->mMenuClickedBefore:Z

    return-void
.end method

.method private stopSearchAndSelection()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isAllContactsView()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isAccountView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isGroupView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getGroupFragment()Lcom/android/contacts/group/GroupMembersFragment;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 291
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getListFragment()Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 300
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 304
    :cond_4
    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 305
    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 313
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 314
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 274
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 275
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->mMenuClickedBefore:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->setHamburgerMenuClickedBefore(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->mMenuClickedBefore:Z

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 280
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 284
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->stopSearchAndSelection()V

    .line 285
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground()V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .line 319
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerStateChanged(I)V

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactsActionBarDrawerToggle;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Lcom/android/contacts/activities/PeopleActivity;->updateStatusBarBackground()V

    :cond_0
    return-void
.end method
