.class Lcom/android/contacts/vcard/SelectAccountActivity$1;
.super Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/vcard/SelectAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/vcard/SelectAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/vcard/SelectAccountActivity;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    iget-object p1, p0, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 90
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 91
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v1, "account_name"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v0, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v1, "account_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v0, "data_set"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 95
    iget-object p1, p0, Lcom/android/contacts/vcard/SelectAccountActivity$1;->this$0:Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
