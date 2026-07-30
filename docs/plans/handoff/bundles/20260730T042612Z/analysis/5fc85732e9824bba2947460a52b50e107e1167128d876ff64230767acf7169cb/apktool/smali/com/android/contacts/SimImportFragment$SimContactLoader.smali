.class Lcom/android/contacts/SimImportFragment$SimContactLoader;
.super Lcom/android/contacts/util/concurrent/ListenableFutureLoader;
.source "SimImportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SimImportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/concurrent/ListenableFutureLoader<",
        "Lcom/android/contacts/SimImportFragment$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mDao:Lcom/android/contacts/database/SimContactDao;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/contacts/model/AccountTypeManager;->BROADCAST_ACCOUNTS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/util/concurrent/ListenableFutureLoader;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 456
    invoke-static {p1}, Lcom/android/contacts/database/SimContactDao;->create(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mDao:Lcom/android/contacts/database/SimContactDao;

    .line 457
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 458
    iput p2, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mSubscriptionId:I

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/SimImportFragment$SimContactLoader;)Lcom/android/contacts/SimImportFragment$LoaderResult;
    .locals 0

    .line 449
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment$SimContactLoader;->loadFromSim()Lcom/android/contacts/SimImportFragment$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method private loadFromSim()Lcom/android/contacts/SimImportFragment$LoaderResult;
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mDao:Lcom/android/contacts/database/SimContactDao;

    iget v1, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/database/SimContactDao;->getSimBySubscriptionId(I)Lcom/android/contacts/model/SimCard;

    move-result-object v0

    .line 486
    new-instance v1, Lcom/android/contacts/SimImportFragment$LoaderResult;

    invoke-direct {v1}, Lcom/android/contacts/SimImportFragment$LoaderResult;-><init>()V

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/contacts/SimImportFragment$LoaderResult;->contacts:Ljava/util/ArrayList;

    .line 489
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/contacts/SimImportFragment$LoaderResult;->accountsMap:Ljava/util/Map;

    return-object v1

    .line 492
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mDao:Lcom/android/contacts/database/SimContactDao;

    invoke-virtual {v2, v0}, Lcom/android/contacts/database/SimContactDao;->loadContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/contacts/SimImportFragment$LoaderResult;->contacts:Ljava/util/ArrayList;

    .line 493
    iget-object v2, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mDao:Lcom/android/contacts/database/SimContactDao;

    invoke-virtual {v2, v0}, Lcom/android/contacts/database/SimContactDao;->findAccountsOfExistingSimContacts(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/contacts/SimImportFragment$LoaderResult;->accountsMap:Ljava/util/Map;

    return-object v1
.end method


# virtual methods
.method protected loadData()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    .line 463
    iget-object v1, p0, Lcom/android/contacts/SimImportFragment$SimContactLoader;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 465
    invoke-static {}, Lcom/android/contacts/model/AccountTypeManager;->writableFilter()Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 466
    invoke-static {}, Lcom/android/contacts/util/concurrent/ContactsExecutors;->getSimReadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/SimImportFragment$SimContactLoader$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/SimImportFragment$SimContactLoader$1;-><init>(Lcom/android/contacts/SimImportFragment$SimContactLoader;)V

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 463
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 473
    new-instance v1, Lcom/android/contacts/SimImportFragment$SimContactLoader$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/SimImportFragment$SimContactLoader$2;-><init>(Lcom/android/contacts/SimImportFragment$SimContactLoader;)V

    .line 481
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 473
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
