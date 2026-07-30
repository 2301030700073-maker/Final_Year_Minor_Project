.class Lcom/android/contacts/model/DeviceLocalAccountLocator$1;
.super Lcom/android/contacts/model/DeviceLocalAccountLocator;
.source "DeviceLocalAccountLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/DeviceLocalAccountLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/contacts/model/DeviceLocalAccountLocator;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceLocalAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/android/contacts/model/account/AccountWithDataSet;->getNullAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
