.class Lcom/android/contacts/model/AccountTypeManagerImpl$1;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/android/contacts/model/account/AccountTypeProvider;",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, Lcom/android/contacts/model/account/AccountTypeProvider;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;->apply(Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/account/AccountTypeProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$1;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;[Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
