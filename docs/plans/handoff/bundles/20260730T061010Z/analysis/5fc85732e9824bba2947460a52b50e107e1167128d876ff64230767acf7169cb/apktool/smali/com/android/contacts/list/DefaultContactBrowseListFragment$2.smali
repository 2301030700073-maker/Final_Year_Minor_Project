.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;


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

    .line 162
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 229
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method private startSearchOrSelectionMode()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$800(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 210
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 211
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 212
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->getHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-static {v0}, Lcom/android/contacts/util/SharedPreferenceUtil;->setHamburgerPromoTriggerActionHappenedBefore(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private updateDebugOptionsVisibility(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$900(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$902(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    .line 223
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    goto/16 :goto_0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getQueryString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    :cond_2
    const-string p1, ""

    .line 186
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 188
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 189
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/PeopleActivity;->showFabWithAnimation(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    .line 195
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$600(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->displayCheckBoxes(Z)V

    .line 168
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->startSearchOrSelectionMode()V

    goto :goto_0

    .line 171
    :cond_4
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 172
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/contacts/logging/Logger;->logScreenView(Landroid/app/Activity;I)V

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->startSearchOrSelectionMode()V

    goto :goto_0

    .line 198
    :cond_6
    iget-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->setQueryTextToFragment(Ljava/lang/String;)V

    const-string v0, "debug debug!"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 200
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->updateDebugOptionsVisibility(Z)V

    :goto_0
    return-void
.end method

.method public onUpButtonPressed()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    return-void
.end method
