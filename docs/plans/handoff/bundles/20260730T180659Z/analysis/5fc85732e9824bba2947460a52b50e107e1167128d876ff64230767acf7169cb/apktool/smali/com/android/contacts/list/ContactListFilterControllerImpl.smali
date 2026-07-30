.class Lcom/android/contacts/list/ContactListFilterControllerImpl;
.super Lcom/android/contacts/list/ContactListFilterController;
.source "ContactListFilterController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->checkFilterValidity(Z)V

    return-void
.end method

.method private filterAccountExists()Z
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->exists(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    return v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private notifyContactListFilterChanged()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 163
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {p1, p2}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 149
    iget-object p1, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->notifyContactListFilterChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkFilterValidity(Z)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->filterAccountExists()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x2

    .line 183
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getFilterListType()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilter;->toListType()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPersistedFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public isCustomFilterPersisted()Z
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->getPersistedFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    const/4 v0, -0x3

    .line 157
    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/list/ContactListFilterControllerImpl;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;ZZ)V

    return-void
.end method
