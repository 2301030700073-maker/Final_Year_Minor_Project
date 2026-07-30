.class public Lcom/android/contacts/preference/DefaultAccountPreference;
.super Landroid/preference/DialogPreference;
.source "DefaultAccountPreference.java"


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChosenIndex:I

.field private mListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mChosenIndex:I

    .line 40
    invoke-direct {p0}, Lcom/android/contacts/preference/DefaultAccountPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mChosenIndex:I

    .line 45
    invoke-direct {p0}, Lcom/android/contacts/preference/DefaultAccountPreference;->prepare()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/preference/DefaultAccountPreference;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mChosenIndex:I

    return p1
.end method

.method private prepare()V
    .locals 3

    .line 63
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 64
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    .line 65
    iget-object v1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mAccounts:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;->setAccounts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mAccounts:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 79
    invoke-static {v1, v0}, Lcom/android/contacts/model/account/AccountInfo;->contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mAccounts:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/contacts/preference/DefaultAccountPreference;->prepare()V

    .line 59
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p1}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    .line 104
    iget v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mChosenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 108
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    new-instance v1, Lcom/android/contacts/preference/DefaultAccountPreference$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/DefaultAccountPreference$1;-><init>(Lcom/android/contacts/preference/DefaultAccountPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mAccounts:Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/android/contacts/preference/DefaultAccountPreference;->mListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/util/AccountsListAdapter;->setAccounts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 52
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
