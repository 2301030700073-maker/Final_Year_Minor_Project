.class Lcom/android/contacts/model/AccountTypeManagerImpl$8;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;->filterAccountsAsync(Lcom/google/common/base/Predicate;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$filter:Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 571
    iput-object p2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$8;->val$filter:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 571
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$8;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$8;->val$filter:Lcom/google/common/base/Predicate;

    invoke-static {p1, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
