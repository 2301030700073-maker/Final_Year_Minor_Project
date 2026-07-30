.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;
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

.field final synthetic val$accountInfo:Lcom/android/contacts/model/account/AccountInfo;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountInfo;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->val$accountInfo:Lcom/android/contacts/model/account/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$3;->val$accountInfo:Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method
