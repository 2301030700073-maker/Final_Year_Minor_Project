.class public abstract Lcom/android/contacts/model/DeviceLocalAccountLocator;
.super Ljava/lang/Object;
.source "DeviceLocalAccountLocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;
    }
.end annotation


# static fields
.field public static final NULL_ONLY:Lcom/android/contacts/model/DeviceLocalAccountLocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/contacts/model/DeviceLocalAccountLocator$1;

    invoke-direct {v0}, Lcom/android/contacts/model/DeviceLocalAccountLocator$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/DeviceLocalAccountLocator;->NULL_ONLY:Lcom/android/contacts/model/DeviceLocalAccountLocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/contacts/model/DeviceLocalAccountLocator;
    .locals 6

    const-string v0, "account"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 68
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object v2

    const-string v3, "Account__cp2_device_account_detection_enabled"

    invoke-virtual {v2, v3}, Lcom/android/contactsbind/experiments/Flags;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 72
    invoke-static {p0}, Lcom/android/contactsbind/ObjectFactory;->getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    move-result-object p0

    invoke-direct {v0, v2, p0, v1}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/util/Set;)V

    return-object v0

    .line 74
    :cond_1
    new-instance v1, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/model/DeviceLocalAccountLocator$NexusDeviceAccountLocator;-><init>(Landroid/content/Context;Landroid/accounts/AccountManager;)V

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/util/Set;)Lcom/android/contacts/model/DeviceLocalAccountLocator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/contacts/model/DeviceLocalAccountLocator;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/android/contactsbind/experiments/Flags;->getInstance()Lcom/android/contactsbind/experiments/Flags;

    move-result-object v0

    const-string v1, "Account__cp2_device_account_detection_enabled"

    invoke-virtual {v0, v1}, Lcom/android/contactsbind/experiments/Flags;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 58
    invoke-static {p0}, Lcom/android/contactsbind/ObjectFactory;->getDeviceLocalAccountTypeFactory(Landroid/content/Context;)Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/contacts/model/Cp2DeviceLocalAccountLocator;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/util/DeviceLocalAccountTypeFactory;Ljava/util/Set;)V

    return-object v0

    .line 60
    :cond_0
    sget-object p0, Lcom/android/contacts/model/DeviceLocalAccountLocator;->NULL_ONLY:Lcom/android/contacts/model/DeviceLocalAccountLocator;

    return-object p0
.end method


# virtual methods
.method public abstract getDeviceLocalAccounts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end method
