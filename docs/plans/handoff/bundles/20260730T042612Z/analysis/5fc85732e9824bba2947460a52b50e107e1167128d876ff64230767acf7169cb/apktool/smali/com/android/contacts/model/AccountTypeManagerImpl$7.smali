.class Lcom/android/contacts/model/AccountTypeManagerImpl$7;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;->getAllAccountsAsyncInternal()Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;>;",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

.field final synthetic val$typeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/android/contacts/model/account/AccountTypeProvider;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iput-object p2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->val$typeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 542
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "List should have exactly 2 elements"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 553
    iget-object v4, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->val$typeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    .line 554
    invoke-virtual {v4, v3}, Lcom/android/contacts/model/account/AccountTypeProvider;->getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$700(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/model/account/AccountType;->wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v3

    .line 553
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 557
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 558
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->val$typeProvider:Lcom/android/contacts/model/account/AccountTypeProvider;

    .line 559
    invoke-virtual {v2, v1}, Lcom/android/contacts/model/account/AccountTypeProvider;->getTypeForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$7;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$700(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/contacts/model/account/AccountType;->wrapAccount(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v1

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 561
    invoke-static {p1, v0}, Lcom/android/contacts/model/account/AccountInfo;->sortAccounts(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/util/List;)V

    return-object v0
.end method
