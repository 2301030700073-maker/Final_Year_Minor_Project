.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->updateDisplayedAccounts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-static {}, Lcom/android/contacts/model/account/AccountWithDataSet;->getNullAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 193
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$4;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
