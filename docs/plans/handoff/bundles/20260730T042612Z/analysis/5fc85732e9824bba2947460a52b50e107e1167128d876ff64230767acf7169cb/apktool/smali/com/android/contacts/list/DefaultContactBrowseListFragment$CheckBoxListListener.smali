.class final Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckBoxListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onSelectedContactIdsChanged()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionCount(I)V

    .line 847
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 848
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->updateOverflowButtonColor()V

    return-void
.end method

.method public onStartDisplayingCheckBoxes()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$200(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onStopDisplayingCheckBoxes()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$CheckBoxListListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$700(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method
