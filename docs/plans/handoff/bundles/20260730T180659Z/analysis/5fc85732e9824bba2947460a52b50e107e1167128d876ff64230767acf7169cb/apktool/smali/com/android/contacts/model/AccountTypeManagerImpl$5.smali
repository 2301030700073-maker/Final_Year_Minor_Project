.class Lcom/android/contacts/model/AccountTypeManagerImpl$5;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;->newAccountsUpdatedCallback(Ljava/util/List;)Lcom/google/common/util/concurrent/FutureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Lcom/android/contacts/model/account/AccountWithDataSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

.field final synthetic val$currentAccounts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Ljava/util/List;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$5;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iput-object p2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$5;->val$currentAccounts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$5;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$5;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$5;->val$currentAccounts:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$500(Lcom/android/contacts/model/AccountTypeManagerImpl;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
