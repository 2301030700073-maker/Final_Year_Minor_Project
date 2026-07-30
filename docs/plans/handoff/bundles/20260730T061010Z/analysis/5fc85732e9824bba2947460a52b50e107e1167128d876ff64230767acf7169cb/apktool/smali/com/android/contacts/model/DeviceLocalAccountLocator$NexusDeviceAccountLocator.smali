.class public Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;
.super Lcom/android/contacts/model/DeviceLocalAccountLocator;
.source "DeviceLocalAccountLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/DeviceLocalAccountLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NexusDeviceAccountLocator"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/contacts/model/DeviceLocalAccountLocator;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public getDeviceLocalAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    .line 100
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 102
    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/contacts/model/account/AccountWithDataSet;->getNullAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/contacts/model/account/AccountWithDataSet;->getNullAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
