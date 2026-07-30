.class public Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;
.super Lcom/android/contacts/database/SimContactDaoImpl;
.source "SimContactDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/database/SimContactDaoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugImpl"
.end annotation


# instance fields
.field private mCardsBySubscription:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/android/contacts/database/SimContactDaoImpl;-><init>(Landroid/content/Context;)V

    .line 412
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->mSimCards:Ljava/util/List;

    .line 413
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->mCardsBySubscription:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addSimCard(Lcom/android/contacts/model/SimCard;)Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->mSimCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->mCardsBySubscription:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public canReadSimContacts()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSimCards()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimCard;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/database/SimContactDaoImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/database/SimContactDaoImpl$DebugImpl;->mSimCards:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/contacts/util/SharedPreferenceUtil;->restoreSimStates(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadContactsForSim(Lcom/android/contacts/model/SimCard;)Ljava/util/ArrayList;
    .locals 1
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

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/contacts/model/SimCard;->getContacts()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
