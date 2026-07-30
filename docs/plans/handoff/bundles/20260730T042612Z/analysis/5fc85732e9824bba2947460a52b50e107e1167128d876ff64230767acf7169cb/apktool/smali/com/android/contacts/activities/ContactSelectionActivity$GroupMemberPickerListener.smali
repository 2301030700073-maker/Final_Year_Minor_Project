.class final Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/GroupMemberPickerFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMemberPickerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onGroupMemberClicked(J)V
    .locals 2

    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    .line 582
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 583
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {p1, v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public onSelectGroupMembers()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$GroupMemberPickerListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$900(Lcom/android/contacts/activities/ContactSelectionActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSelectionMode(Z)V

    return-void
.end method
