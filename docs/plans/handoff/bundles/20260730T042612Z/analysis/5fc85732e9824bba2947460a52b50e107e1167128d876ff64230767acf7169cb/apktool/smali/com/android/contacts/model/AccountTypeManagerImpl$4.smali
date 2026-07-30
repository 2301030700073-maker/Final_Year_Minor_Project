.class Lcom/android/contacts/model/AccountTypeManagerImpl$4;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountTypes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/contacts/model/account/AccountTypeProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/contacts/model/account/AccountTypeProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/account/AccountTypeProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;[Landroid/accounts/Account;Lcom/android/contacts/model/account/AccountTypeProvider;)Ljava/util/List;

    .line 476
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/account/AccountTypeProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$4;->call()Lcom/android/contacts/model/account/AccountTypeProvider;

    move-result-object v0

    return-object v0
.end method
