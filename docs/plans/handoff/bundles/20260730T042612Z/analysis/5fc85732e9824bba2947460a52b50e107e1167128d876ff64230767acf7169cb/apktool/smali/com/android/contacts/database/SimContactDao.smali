.class public abstract Lcom/android/contacts/database/SimContactDao;
.super Ljava/lang/Object;
.source "SimContactDao.java"


# static fields
.field public static final DEFAULT_FACTORY:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Landroid/content/Context;",
            "Lcom/android/contacts/database/SimContactDao;",
            ">;"
        }
    .end annotation
.end field

.field private static final USE_FAKE_INSTANCE:Z = false

.field private static sInstanceFactory:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "-",
            "Landroid/content/Context;",
            "Lcom/android/contacts/database/SimContactDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/contacts/database/SimContactDao$1;

    invoke-direct {v0}, Lcom/android/contacts/database/SimContactDao$1;-><init>()V

    sput-object v0, Lcom/android/contacts/database/SimContactDao;->DEFAULT_FACTORY:Lcom/google/common/base/Function;

    .line 55
    sput-object v0, Lcom/android/contacts/database/SimContactDao;->sInstanceFactory:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;
    .locals 2

    const-class v0, Lcom/android/contacts/database/SimContactDao;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/android/contacts/database/SimContactDao;->sInstanceFactory:Lcom/google/common/base/Function;

    invoke-interface {v1, p0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/database/SimContactDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createDebugInstance(Landroid/content/Context;)Lcom/android/contacts/database/SimContactDao;
    .locals 22

    .line 58
    new-instance v0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/contacts/model/SimCard;

    const-string v2, "fake-sim-id1"

    const/4 v3, 0x1

    const-string v4, "Fake Carrier"

    const-string v5, "Card 1"

    const-string v6, "15095550101"

    const-string v7, "us"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/android/contacts/model/SimContact;

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v10, 0x1

    const-string v12, "Sim One"

    const-string v13, "15095550111"

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v10, 0x2

    const-string v12, "Sim Two"

    const-string v13, "15095550112"

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v10, 0x3

    const-string v12, "Sim Three"

    const-string v13, "15095550113"

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v10, 0x4

    const-string v12, "Sim Four"

    const-string v13, "15095550114"

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v10, 0x5

    const-string v12, "411 & more"

    const-string v13, "411"

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v9, 0x4

    aput-object v3, v2, v9

    .line 60
    invoke-virtual {v8, v2}, Lcom/android/contacts/model/SimCard;->withContacts([Lcom/android/contacts/model/SimContact;)Lcom/android/contacts/model/SimCard;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->addSimCard(Lcom/android/contacts/model/SimCard;)Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;

    new-instance v2, Lcom/android/contacts/model/SimCard;

    const-string v11, "fake-sim-id2"

    const/4 v12, 0x2

    const-string v13, "Carrier Two"

    const-string v14, "Card 2"

    const-string v15, "15095550102"

    const-string v16, "us"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [Lcom/android/contacts/model/SimContact;

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v11, 0x1

    const-string v13, "John Sim"

    const-string v14, "15095550121"

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v1, v4

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v17, 0x2

    const-string v19, "Bob Sim"

    const-string v20, "15095550122"

    const/16 v21, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v1, v5

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v11, 0x3

    const-string v13, "Mary Sim"

    const-string v14, "15095550123"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v17, 0x4

    const-string v19, "Alice Sim"

    const-string v20, "15095550124"

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Lcom/android/contacts/model/SimContact;

    const-wide/16 v11, 0x5

    const-string v13, "Sim Duplicate"

    const-string v14, "15095550121"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/android/contacts/model/SimContact;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v1, v9

    .line 68
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/SimCard;->withContacts([Lcom/android/contacts/model/SimContact;)Lcom/android/contacts/model/SimCard;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->addSimCard(Lcom/android/contacts/model/SimCard;)Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;

    return-object v0
.end method

.method public static declared-synchronized setFactoryForTest(Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function<",
            "-",
            "Landroid/content/Context;",
            "Lcom/android/contacts/database/SimContactDao;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/contacts/database/SimContactDao;

    monitor-enter v0

    .line 87
    :try_start_0
    sput-object p0, Lcom/android/contacts/database/SimContactDao;->sInstanceFactory:Lcom/google/common/base/Function;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract canReadSimContacts()Z
.end method

.method public abstract findAccountsOfExistingSimContacts(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/util/Set<",
            "Lcom/android/contacts/model/SimContact;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSimBySubscriptionId(I)Lcom/android/contacts/model/SimCard;
.end method

.method public abstract getSimCards()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation
.end method

.method public abstract importContacts(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)[Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation
.end method

.method public abstract loadContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/SimCard;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation
.end method

.method public persistSimState(Lcom/android/contacts/model/SimCard;)V
    .locals 0

    .line 108
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/database/SimContactDao;->persistSimStates(Ljava/util/List;)V

    return-void
.end method

.method public abstract persistSimStates(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;)V"
        }
    .end annotation
.end method
