.class public Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/concurrent/ListenableFutureLoader<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 141
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->createAccountSet(Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object p0

    return-object p0
.end method

.method private createAccountSet(Ljava/util/List;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    new-instance v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v7}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountInfo;

    .line 165
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v8

    .line 168
    invoke-virtual {v8}, Lcom/android/contacts/model/account/AccountWithDataSet;->isNullAccount()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v9, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-direct {v9, v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/model/account/AccountInfo;)V

    .line 174
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string v3, "account_name"

    .line 175
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    const-string v3, "account_type"

    .line 176
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 177
    iget-object v2, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "data_set"

    .line 178
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 180
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "deleted=0"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {v1}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 191
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 192
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 193
    invoke-static {v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v2

    .line 194
    invoke-static {v9, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$200(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    const/4 v2, 0x1

    goto :goto_1

    .line 198
    :cond_3
    iget-object v3, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 199
    invoke-static {v0, v3, v4, v5, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 201
    invoke-static {v9, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$200(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 206
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 203
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 204
    throw p1

    :cond_4
    return-object v7
.end method


# virtual methods
.method public loadData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader$1;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;)V

    .line 153
    invoke-static {}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->getDefaultThreadPoolExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 146
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
