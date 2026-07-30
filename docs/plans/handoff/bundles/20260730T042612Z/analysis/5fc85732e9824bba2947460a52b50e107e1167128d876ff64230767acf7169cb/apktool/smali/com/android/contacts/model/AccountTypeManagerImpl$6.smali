.class Lcom/android/contacts/model/AccountTypeManagerImpl$6;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;->loadLocalAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
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

    .line 512
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$6;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$6;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$6;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$600(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/DeviceLocalAccountLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/DeviceLocalAccountLocator;->getDeviceLocalAccounts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
