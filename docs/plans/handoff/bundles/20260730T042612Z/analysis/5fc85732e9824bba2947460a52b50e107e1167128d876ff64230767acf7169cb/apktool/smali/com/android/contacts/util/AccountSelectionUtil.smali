.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field public static mPath:Landroid/net/Uri; = null

.field public static mVCardShare:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static doImport(Landroid/app/Activity;ILcom/android/contacts/model/account/AccountWithDataSet;I)V
    .locals 1

    const v0, 0x7f10015a

    if-ne p1, v0, :cond_0

    .line 160
    invoke-static {p0, p2, p3}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f10015c

    if-ne p1, p3, :cond_1

    .line 162
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromVcfFile(Landroid/app/Activity;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;I)V
    .locals 3

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/sim-contact"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 171
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v2, "account_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v1, "data_set"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "subscription_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.android.phone"

    const-string p2, "com.android.phone.SimContacts"

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static doImportFromVcfFile(Landroid/app/Activity;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 183
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v2, "account_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v2, "account_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v1, "data_set"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    sget-boolean p1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz p1, :cond_1

    const-string p1, "android.intent.action.VIEW"

    .line 189
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    sget-object p1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x0

    .line 192
    sput-boolean p1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    const/4 v1, 0x0

    .line 193
    sput-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 194
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 8

    .line 94
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountTypeManager;->blockForWritableAccounts()Ljava/util/List;

    move-result-object v6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of available accounts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountSelectionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103000c

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/LayoutInflater;

    .line 107
    new-instance v7, Lcom/android/contacts/util/AccountSelectionUtil$1;

    const v2, 0x7f0c001d

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/AccountTypeManager;)V

    if-nez p2, :cond_0

    .line 136
    new-instance p2, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {p2, p0, v6, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    :cond_0
    if-nez p3, :cond_1

    .line 141
    new-instance p3, Lcom/android/contacts/util/AccountSelectionUtil$2;

    invoke-direct {p3}, Lcom/android/contacts/util/AccountSelectionUtil$2;-><init>()V

    .line 147
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0047

    const/4 v1, 0x0

    .line 148
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f1000e0

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 151
    invoke-virtual {p1, v7, p0, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
