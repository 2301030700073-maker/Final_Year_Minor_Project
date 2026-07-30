.class public final Lcom/appsflyer/internal/AFa1uSDK;
.super Lcom/appsflyer/AppsFlyerLib;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field public static final AFAdRevenueData:Ljava/lang/String;

.field private static AFInAppEventParameterName:[C = null

.field private static AFInAppEventType:I = 0x0

.field private static AFKeystoreWrapper:I = 0x0

.field private static AFLogger:Z = false

.field private static areAllFieldsValid:Lcom/appsflyer/internal/AFa1uSDK; = null

.field private static d:I = 0x1

.field static getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

.field public static final getRevenue:Ljava/lang/String;

.field private static registerClient:Z


# instance fields
.field component1:Z

.field private component2:J

.field component3:Landroid/app/Application;

.field private component4:J

.field private volatile copy:Landroid/content/SharedPreferences;

.field private copydefault:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private equals:Lcom/appsflyer/internal/AFf1nSDK;

.field public volatile getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

.field getMonetizationNetwork:J

.field private final hashCode:Lcom/appsflyer/internal/AFc1dSDK;

.field private toString:Z


# direct methods
.method public static synthetic $r8$lambda$Pk6QdkCZXyy5hUbgockrD2lBhAE(Lcom/appsflyer/internal/AFa1uSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK;->equals()V

    return-void
.end method

.method public static synthetic $r8$lambda$VdHV80NVpOZauCMBixZ1E46gotE(Lcom/appsflyer/internal/AFa1uSDK;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->e_(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZqVsINbiujTAwhOE6L33NhrZ2II(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afiUCNXcbaeS-eqsPnXdGJMH2qE(Lcom/appsflyer/internal/AFa1uSDK;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK;->copy()V

    return-void
.end method

.method public static synthetic $r8$lambda$idl9gQA35hs0nbqjt9H_rPBnBhQ(Lcom/appsflyer/internal/AFa1uSDK;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jpfENfrbuks4sTcp6H_SlLrs9dc(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFf1oSDK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFf1oSDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPbsV_AUGKhxURNDUH3ntfn2ioU(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFi1jSDK;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFi1jSDK;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFs0mjT54ZZhv4SXYD_XpAti8Oo(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFc1bSDK;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->component3()V

    .line 120
    const-string v0, "356"

    sput-object v0, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue:Ljava/lang/String;

    .line 123
    const-string v0, "."

    const-string v1, "6.17.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 145
    sput-object v0, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 150
    new-instance v0, Lcom/appsflyer/internal/AFa1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFa1uSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFa1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1uSDK;

    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    div-int/2addr v0, v2

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    const-wide/16 v0, -0x1

    .line 151
    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->component4:J

    .line 152
    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork:J

    .line 153
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->component2:J

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->component1:Z

    .line 213
    new-instance v0, Lcom/appsflyer/internal/AFc1dSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1dSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    .line 214
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFg1aSDK;->getMediationNetwork()V

    .line 215
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFg1aSDK;->getRevenue()V

    .line 218
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFa1uSDK$AFa1uSDK;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    .line 4145
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1nSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;Z)I
    .locals 4

    const/4 v0, 0x2

    .line 1717
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1710
    invoke-interface {p0, p1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, v3}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_1

    :goto_0
    add-int/2addr v1, v2

    .line 1714
    invoke-interface {p0, p1, v1}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;I)V

    .line 1712
    :cond_1
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/16 p0, 0x3f

    div-int/2addr p0, v3

    :cond_2
    return v1
.end method

.method private AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1rSDK;
    .locals 4

    const/4 v0, 0x2

    .line 1187
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1183
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1184
    new-instance v1, Lcom/appsflyer/internal/AFh1rSDK;

    check-cast p1, Landroid/app/Activity;

    .line 1185
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1bSDK;->d()Lcom/appsflyer/internal/AFi1kSDK;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/appsflyer/internal/AFh1rSDK;-><init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFi1kSDK;)V

    .line 1187
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    :cond_1
    return-object v2
.end method

.method private static synthetic AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x2

    .line 1807
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v1

    const v1, -0x17347f7a

    const v3, 0x17347f87

    if-eqz v2, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v2, v3, v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1ySDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1a

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, v3, v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1ySDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1193
    rem-int v1, v0, v0

    .line 1191
    new-instance v1, Lcom/appsflyer/internal/AFh1hSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1hSDK;-><init>()V

    .line 51108
    iput-object p2, v1, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    .line 51072
    iput-object p3, v1, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 1192
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1rSDK;

    move-result-object p1

    .line 1191
    invoke-virtual {p0, v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V

    .line 1193
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x26

    div-int/lit8 p1, p1, 0x0

    :cond_0
    return-void
.end method

.method private synthetic AFAdRevenueData(Lcom/appsflyer/internal/AFf1oSDK;)V
    .locals 6

    const/4 v0, 0x2

    .line 206
    rem-int v1, v0, v0

    .line 200
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const v2, -0x17347f7a

    const v3, 0x17347f87

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 194
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v1, v3, v2, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    .line 195
    sget-object v2, Lcom/appsflyer/internal/AFf1oSDK;->getRevenue:Lcom/appsflyer/internal/AFf1oSDK;

    if-ne p1, v2, :cond_1

    .line 206
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 196
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1xSDK;->getRevenue()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1xSDK;->getRevenue()V

    .line 200
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code()Z

    move-result p1

    if-nez p1, :cond_2

    .line 195
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    .line 202
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->AFAdRevenueData()V

    return-void

    .line 204
    :cond_2
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->getMediationNetwork()V

    return-void

    .line 194
    :cond_3
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v3, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    .line 195
    sget-object p1, Lcom/appsflyer/internal/AFf1oSDK;->getRevenue:Lcom/appsflyer/internal/AFf1oSDK;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
.end method

.method private static AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 1219
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 51019
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1rSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 51131
    iput-object v1, p0, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork:Ljava/lang/String;

    .line 51022
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1rSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 51143
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1jSDK;->component2:Ljava/lang/String;

    .line 1215
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static AFAdRevenueData(Lorg/json/JSONObject;)V
    .locals 14

    const/4 v0, 0x2

    .line 457
    rem-int v1, v0, v0

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 407
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 408
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 413
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 414
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 415
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    .line 457
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x2d

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v3, v0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 419
    const-string v4, "error at timeStampArr"

    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 428
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_2
    :goto_2
    move-object v5, v3

    .line 429
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    .line 439
    :cond_4
    sget v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v6, v0

    if-nez v5, :cond_7

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 433
    :try_start_1
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v9, v4

    .line 436
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 438
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 457
    sget v10, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v10, v10, 0x15

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v10, v0

    if-eqz v10, :cond_5

    .line 439
    :try_start_2
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    goto :goto_5

    :cond_5
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 457
    :goto_5
    sget v10, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v10, v10, 0x3d

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v10, v0

    .line 440
    :try_start_3
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    cmp-long v5, v10, v12

    if-nez v5, :cond_6

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object v5, v6

    goto :goto_4

    :catch_1
    move-exception v6

    .line 449
    const-string v7, "error at manageExtraReferrers"

    invoke-static {v7, v6}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 455
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    :cond_8
    return-void
.end method

.method private static AFAdRevenueData(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    .line 577
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 172
    rem-int v1, v0, v0

    if-eqz p1, :cond_0

    .line 0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    if-eqz p0, :cond_2

    .line 139
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->$10:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    const/4 p0, 0x0

    throw p0

    .line 0
    :cond_2
    :goto_0
    check-cast p0, [C

    .line 129
    new-instance v1, Lcom/appsflyer/internal/AFk1iSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1iSDK;-><init>()V

    .line 131
    sget-object v2, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:[C

    const-wide v3, 0x19569dd871fb8d0aL

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    array-length v6, v2

    new-array v7, v6, [C

    move v8, v5

    :goto_1
    if-ge v8, v6, :cond_3

    aget-char v9, v2, v8

    int-to-long v9, v9

    xor-long/2addr v9, v3

    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v7

    .line 132
    :cond_4
    sget v6, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType:I

    int-to-long v6, v6

    xor-long/2addr v3, v6

    long-to-int v3, v3

    .line 134
    sget-boolean v4, Lcom/appsflyer/internal/AFa1uSDK;->AFLogger:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    .line 172
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->$11:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->$10:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_5

    .line 136
    array-length p0, p1

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 137
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 139
    iput v6, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_2

    .line 136
    :cond_5
    array-length p0, p1

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 137
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 139
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_2
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p2, v0, :cond_6

    .line 140
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v0, v6

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    add-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p0, p2

    .line 139
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p2, v6

    iput p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_2

    .line 146
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void

    .line 147
    :cond_7
    sget-boolean p1, Lcom/appsflyer/internal/AFa1uSDK;->registerClient:Z

    if-eqz p1, :cond_9

    .line 149
    array-length p1, p0

    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 150
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p1, p1, [C

    .line 152
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    .line 139
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->$10:I

    add-int/lit8 p2, p2, 0x79

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->$11:I

    rem-int/2addr p2, v0

    .line 152
    :goto_3
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p2, v4, :cond_8

    .line 172
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->$10:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->$11:I

    rem-int/2addr p2, v0

    .line 153
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v4, v6

    iget v7, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v4, v7

    aget-char v4, p0, v4

    sub-int/2addr v4, p3

    aget-char v4, v2, v4

    sub-int/2addr v4, v3

    int-to-char v4, v4

    aput-char v4, p1, p2

    .line 152
    iget p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p2, v6

    iput p2, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    .line 172
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->$10:I

    add-int/lit8 p2, p2, 0x73

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->$11:I

    rem-int/2addr p2, v0

    goto :goto_3

    .line 159
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p4, v5

    return-void

    .line 162
    :cond_9
    array-length p0, p2

    iput p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    .line 163
    iget p0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    new-array p0, p0, [C

    .line 165
    iput v5, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    :goto_4
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    if-ge p1, v0, :cond_a

    .line 166
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    iget v0, v1, Lcom/appsflyer/internal/AFk1iSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v0, v6

    iget v4, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    sub-int/2addr v0, v4

    aget v0, p2, v0

    sub-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p0, p1

    .line 165
    iget p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    add-int/2addr p1, v6

    iput p1, v1, Lcom/appsflyer/internal/AFk1iSDK;->getMediationNetwork:I

    goto :goto_4

    .line 172
    :cond_a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    aput-object p1, p4, v5

    return-void
.end method

.method private static synthetic areAllFieldsValid([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x2

    .line 320
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v1

    const v3, -0x17347f7a

    const v4, 0x17347f87

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 315
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 316
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    .line 317
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v1

    :cond_0
    return-object v5

    .line 315
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 316
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1rSDK;->AFAdRevenueData:Ljava/util/List;

    .line 317
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    throw v5
.end method

.method private areAllFieldsValid()Z
    .locals 11

    const/4 v0, 0x2

    .line 1346
    rem-int v1, v0, v0

    .line 1334
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1323
    iget-wide v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->component4:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 1324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1325
    iget-wide v6, p0, Lcom/appsflyer/internal/AFa1uSDK;->component4:J

    sub-long/2addr v4, v6

    .line 51038
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v1, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1327
    iget-wide v6, p0, Lcom/appsflyer/internal/AFa1uSDK;->component4:J

    invoke-static {v1, v6, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v6

    .line 1328
    iget-wide v7, p0, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork:J

    invoke-static {v1, v7, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v1

    .line 1330
    iget-wide v7, p0, Lcom/appsflyer/internal/AFa1uSDK;->component2:J

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1346
    sget v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v7, v7, 0x79

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v7, v0

    const-string v8, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    if-nez v7, :cond_0

    .line 1332
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v3

    aput-object v1, v10, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v9

    iget-wide v3, p0, Lcom/appsflyer/internal/AFa1uSDK;->component2:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/appsflyer/internal/AFa1uSDK;->component2:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v6, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v8, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    .line 1336
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1334
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x61

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v3, v0

    .line 1338
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v6, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1342
    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 1334
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const-string v0, "Sending first launch for this session!"

    if-eqz v1, :cond_5

    .line 1343
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2

    :cond_5
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method private static c_(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v0, 0x2

    .line 1036
    rem-int v1, v0, v0

    .line 1013
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 1036
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 1013
    :try_start_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    .line 44261
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x1f

    .line 1013
    const-string/jumbo v2, "xml"

    const/4 v3, 0x1

    if-lt p1, v1, :cond_1

    .line 1017
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "appsflyer_data_extraction_rules"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1019
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "appsflyer_data_extraction_rules.xml detected, using AppsFlyer data extraction rules for AppsFlyer SDK data"

    invoke-virtual {p0, p1, v1, v3}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1036
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    return-void

    .line 1021
    :cond_0
    :try_start_3
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v0, "\'allowBackup\' is set to true; appsflyer_data_extraction_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <data-extraction-rules> both in <device-transfer> and <cloud-backup>.\nIf Appsflyer\'s Purchase Connector is in use then you also must add to <device-transfer> and <cloud-backup> the following excludes: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>"

    invoke-virtual {p0, p1, v0, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void

    .line 1025
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "appsflyer_backup_rules"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 1027
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    invoke-virtual {p0, p1, v0, v3}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void

    .line 1029
    :cond_2
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v0, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml is NOT detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules.\nIf Appsflyer\'s Purchase Connector is in use then you also must add the following to your rules: <exclude domain=\"sharedpref\" path=\"appsflyer-purchase-data\"/> AND <exclude domain=\"database\" path=\"afpurchases.db\"/>"

    invoke-virtual {p0, p1, v0, v3}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1036
    :cond_3
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p0, 0x0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 1034
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "Exception while checking BackupRules: "

    invoke-virtual {p1, v0, v1, p0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic component1([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v5, p0, v4

    check-cast v5, Lcom/appsflyer/AppsFlyerConversionListener;

    const/4 v6, 0x3

    aget-object p0, p0, v6

    check-cast p0, Landroid/content/Context;

    .line 844
    rem-int v6, v4, v4

    sget v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v6, v6, 0x41

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v6, v4

    if-eqz v6, :cond_7

    .line 798
    iget-boolean v6, v1, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    if-eqz v6, :cond_0

    return-object v1

    .line 801
    :cond_0
    iput-boolean v2, v1, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    .line 804
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const v8, 0x17347f87

    const v9, -0x17347f7a

    invoke-static {v6, v8, v9, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v6}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork(Ljava/lang/String;)V

    if-eqz p0, :cond_4

    .line 806
    invoke-virtual {v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 807
    invoke-static {p0}, Lcom/appsflyer/internal/AFj1iSDK;->O_(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 809
    iput-object p0, v1, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    .line 813
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v6, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda4;

    invoke-direct {v6, v1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda4;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 826
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p0

    new-instance v6, Lcom/appsflyer/internal/AFe1fSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 32089
    iget-object v7, p0, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v10, p0, v6}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v7, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 828
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFd1xSDK;

    move-result-object p0

    new-instance v6, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda5;

    invoke-direct {v6, v1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda5;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    invoke-interface {p0, v6}, Lcom/appsflyer/internal/AFd1xSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1xSDK$AFa1ySDK;)V

    .line 835
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object p0

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFf1nSDK;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/appsflyer/internal/AFf1lSDK;->getRevenue(Lcom/appsflyer/internal/AFf1nSDK;)V

    .line 837
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p0

    new-instance v6, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda6;

    invoke-direct {v6, v1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda6;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    .line 33124
    invoke-virtual {p0, v6}, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork(Ljava/lang/Runnable;)Lcom/appsflyer/internal/AFi1bSDK;

    move-result-object v7

    .line 33125
    invoke-virtual {p0, v7, v6}, Lcom/appsflyer/internal/AFj1rSDK;->getRevenue(Lcom/appsflyer/internal/AFi1bSDK;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v6

    .line 34045
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33128
    new-instance v7, Lcom/appsflyer/internal/AFj1mSDK;

    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v10}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v10

    invoke-direct {v7, v10, v6}, Lcom/appsflyer/internal/AFj1mSDK;-><init>(Lcom/appsflyer/internal/AFc1pSDK;Ljava/lang/Runnable;)V

    .line 35045
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33129
    new-instance v7, Lcom/appsflyer/internal/AFj1zSDK;

    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    new-instance v11, Lcom/appsflyer/internal/AFj1vSDK;

    invoke-direct {v11}, Lcom/appsflyer/internal/AFj1vSDK;-><init>()V

    invoke-direct {v7, v6, v10, v11}, Lcom/appsflyer/internal/AFj1zSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFj1ySDK;)V

    .line 36045
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33130
    new-instance v7, Lcom/appsflyer/internal/AFj1lSDK;

    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v7, v6, v10}, Lcom/appsflyer/internal/AFj1lSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 37045
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38150
    new-instance v7, Lcom/appsflyer/internal/AFj1uSDK;

    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 38151
    invoke-interface {v10}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    iget-object v11, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    .line 38152
    invoke-interface {v11}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v11

    invoke-direct {v7, v10, v11, v6}, Lcom/appsflyer/internal/AFj1uSDK;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFc1pSDK;Ljava/lang/Runnable;)V

    .line 39045
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 33132
    invoke-virtual {p0, v6}, Lcom/appsflyer/internal/AFj1rSDK;->getMediationNetwork(Ljava/lang/Runnable;)V

    .line 40050
    iget-object v7, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v10, v0, [Lcom/appsflyer/internal/AFj1qSDK;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/appsflyer/internal/AFj1qSDK;

    .line 33135
    array-length v10, v7

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_2

    .line 798
    sget v12, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v12, v12, 0x59

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v12, v4

    if-nez v12, :cond_1

    aget-object v12, v7, v11

    .line 33136
    iget-object v13, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v13}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v13

    .line 41025
    iget-object v13, v13, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 33136
    invoke-virtual {v12, v13}, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V

    add-int/lit8 v11, v11, 0x15

    goto :goto_0

    .line 33135
    :cond_1
    aget-object v12, v7, v11

    .line 33136
    iget-object v13, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v13}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v13

    .line 41025
    iget-object v13, v13, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 33136
    invoke-virtual {v12, v13}, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 33144
    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFj1rSDK;->getMediationNetwork()Z

    move-result v7

    if-nez v7, :cond_5

    .line 33145
    iget-object v7, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v7}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v7

    .line 42025
    iget-object v7, v7, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 33145
    iget-object v10, p0, Lcom/appsflyer/internal/AFj1rSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-virtual {p0, v7, v6, v10}, Lcom/appsflyer/internal/AFj1rSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 798
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 v6, p0, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v4

    goto :goto_1

    :cond_3
    return-object v1

    .line 839
    :cond_4
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v7, "context is null, Google Install Referrer will be not initialized"

    invoke-virtual {p0, v6, v7}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 841
    :cond_5
    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p0, v8, v9, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v0

    if-nez v5, :cond_6

    const-string/jumbo v0, "null"

    goto :goto_2

    :cond_6
    const-string v0, "conversionDataListener"

    :goto_2
    aput-object v0, v4, v2

    const-string v0, "init"

    invoke-interface {p0, v0, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 842
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "6.17.3"

    sget-object v3, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 843
    iput-object v5, v1, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object v1

    .line 798
    :cond_7
    iget-boolean p0, v1, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    const/4 p0, 0x0

    throw p0
.end method

.method private component1()[Lcom/appsflyer/internal/AFj1qSDK;
    .locals 4

    .line 65332
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, -0xb340e9c

    const v3, 0xb340eae

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFj1qSDK;

    return-object v0
.end method

.method private static synthetic component2([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x2

    .line 174
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v1

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_0

    const/16 v1, 0x52

    div-int/2addr v1, v0

    :cond_0
    return-object p0
.end method

.method private component2()V
    .locals 5

    const/4 v0, 0x2

    .line 865
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 850
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->v()Lcom/appsflyer/internal/AFi1jSDK;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-interface {v1}, Lcom/appsflyer/internal/AFi1jSDK;->getMonetizationNetwork()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 865
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    .line 856
    :try_start_1
    new-instance v0, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFi1jSDK;)V

    invoke-interface {v1, v0}, Lcom/appsflyer/internal/AFi1jSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1eSDK;)V

    return-void

    .line 857
    :cond_1
    invoke-interface {v1}, Lcom/appsflyer/internal/AFi1jSDK;->getMediationNetwork()Z

    move-result v0

    if-nez v0, :cond_2

    .line 859
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1jSDK;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 862
    const-string v1, "Error at attempt to request PIA token"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 863
    const-string v1, "Get PIA token failed with exception:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method

.method private static component2(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    .line 1530
    rem-int v1, v0, v0

    .line 1515
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1516
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1517
    const-string v1, "android.permission.INTERNET"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1530
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1518
    :try_start_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    invoke-virtual {v1, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1520
    :cond_0
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1530
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 1521
    :try_start_2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    invoke-virtual {v1, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1523
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-le v1, v3, :cond_3

    const-string v1, "com.google.android.gms.permission.AD_ID"

    .line 1524
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eq p0, v2, :cond_2

    goto :goto_1

    .line 1525
    :cond_2
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    invoke-virtual {p0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1530
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 1528
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Exception while validation permissions. "

    invoke-virtual {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic component3([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkListener;

    const/4 v1, 0x2

    .line 280
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    .line 279
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    .line 280
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    throw v0
.end method

.method static component3()V
    .locals 1

    const/16 v0, 0x9

    .line 65329
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:[C

    const v0, 0x71fb8dab

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/AFa1uSDK;->registerClient:Z

    sput-boolean v0, Lcom/appsflyer/internal/AFa1uSDK;->AFLogger:Z

    return-void

    :array_0
    .array-data 2
        -0x73f8s
        -0x73f3s
        -0x73f6s
        -0x73e1s
        -0x7400s
        -0x73fcs
        -0x73f4s
        -0x73e2s
        -0x73e5s
    .end array-data
.end method

.method private static synthetic component4([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x2

    .line 1247
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    const-string/jumbo v3, "unregisterConversionListener"

    const v4, -0x17347f7a

    const v5, 0x17347f87

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 1245
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v2, v5, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v2, v5, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1246
    :goto_0
    iput-object v6, p0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 1247
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_1

    const/16 p0, 0x5f

    div-int/2addr p0, v0

    :cond_1
    return-object v6
.end method

.method private static synthetic copy([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v1, 0x2

    .line 570
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 569
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    .line 570
    throw v1
.end method

.method private synthetic copy()V
    .locals 8

    const/4 v0, 0x2

    .line 824
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const v2, -0x17347f7a

    const v3, 0x17347f87

    if-eqz v1, :cond_4

    .line 814
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afRDLog()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afRDLog()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFb1bSDK;->getRevenue()V

    .line 818
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->w()Lcom/appsflyer/internal/AFi1sSDK;

    move-result-object v1

    .line 51047
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_1

    new-instance v4, Lcom/appsflyer/internal/AFi1oSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFi1sSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/appsflyer/internal/AFi1oSDK;-><init>(Landroid/content/Context;)V

    check-cast v4, Lcom/appsflyer/internal/AFi1pSDK;

    goto :goto_0

    .line 51049
    :cond_1
    new-instance v4, Lcom/appsflyer/internal/AFi1qSDK;

    iget-object v5, v1, Lcom/appsflyer/internal/AFi1sSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/appsflyer/internal/AFi1qSDK;-><init>(Landroid/content/Context;)V

    check-cast v4, Lcom/appsflyer/internal/AFi1pSDK;

    .line 814
    sget v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v5, v5, 0x43

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v5, v0

    .line 51046
    :goto_0
    iput-object v4, v1, Lcom/appsflyer/internal/AFi1sSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1pSDK;

    .line 819
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v3, v2, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v4

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v5, 0x3144e602

    const v6, -0x3144e600

    invoke-static {v4, v5, v6, v1}, Lcom/appsflyer/internal/AFf1cSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 820
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component3()Lcom/appsflyer/internal/AFh1tSDK;

    move-result-object v1

    .line 51096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->component2:J

    .line 51097
    iget-object v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1pSDK;

    .line 51328
    iget-object v4, v4, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v5, "appsFlyerCount"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 51100
    iget-object v5, v1, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v6, "first_launch"

    invoke-interface {v5, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 814
    sget v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v5, v5, 0x47

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v5, v0

    .line 51101
    iget-object v5, v1, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    invoke-virtual {v1, v6}, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-lez v4, :cond_3

    .line 51103
    iget-object v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v5, "gcd"

    invoke-interface {v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v4, v0

    .line 51104
    iget-object v0, v1, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData:Ljava/util/Map;

    invoke-virtual {v1, v5}, Lcom/appsflyer/internal/AFh1tSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51106
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    const-string/jumbo v4, "prev_session_dur"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/appsflyer/internal/AFh1tSDK;->hashCode:J

    .line 821
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK;->component2()V

    .line 823
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1uSDK;->getCurrencyIso4217Code()V

    return-void

    .line 814
    :cond_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afRDLog()Lcom/appsflyer/internal/AFb1bSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork()Z

    const/4 v0, 0x0

    throw v0
.end method

.method private static synthetic copydefault([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Landroid/content/Context;

    const/4 v2, 0x2

    .line 1695
    rem-int v3, v2, v2

    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v3, v3, 0x33

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v3, v2

    const v4, -0x17347f7a

    const v5, 0x17347f87

    if-eqz v3, :cond_1

    .line 1694
    invoke-virtual {v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1695
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, v5, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/16 v1, 0x39

    div-int/2addr v1, v0

    :cond_0
    return-object p0

    .line 1694
    :cond_1
    invoke-virtual {v1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1695
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0, v5, v4, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static copydefault()V
    .locals 3

    const/4 v0, 0x2

    .line 1882
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string v0, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    if-nez v1, :cond_0

    .line 1879
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v1, v2, v0}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1882
    throw v0
.end method

.method public static d_(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 6

    const/4 v0, 0x2

    .line 1689
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1680
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1uSDK;->copy:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1681
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 1683
    :try_start_0
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "appsflyer-data"

    const/4 v5, 0x0

    .line 1684
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v3, Lcom/appsflyer/internal/AFa1uSDK;->copy:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1687
    throw p0

    .line 1689
    :cond_0
    :goto_0
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1uSDK;->copy:Landroid/content/SharedPreferences;

    .line 1680
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1uSDK;->copy:Landroid/content/SharedPreferences;

    throw v2
.end method

.method private synthetic e_(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 65330
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0xf1ff249

    const v1, -0xf1ff234

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private synthetic equals()V
    .locals 3

    const/4 v0, 0x2

    .line 837
    rem-int v1, v0, v0

    new-instance v1, Lcom/appsflyer/internal/AFh1kSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1kSDK;-><init>()V

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    const/16 v0, 0xb

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-void
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/util/Map;

    const/4 v3, 0x2

    .line 1473
    rem-int v4, v3, v3

    .line 1456
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v4, v3

    const/4 v5, 0x0

    const-string v6, "collectAndroidIdForceByUser"

    if-nez v4, :cond_0

    .line 1447
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    .line 1448
    invoke-virtual {v4, v6, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 1447
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    .line 1448
    invoke-virtual {v4, v6, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v4, v2, :cond_6

    .line 1449
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v4, "collectIMEIForceByUser"

    .line 1450
    invoke-virtual {v2, v4, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 1452
    :cond_1
    const-string v2, "advertiserId"

    .line 1453
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1473
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v3

    const v4, -0x17347f7a

    const v6, 0x17347f87

    if-nez v2, :cond_2

    .line 1456
    :try_start_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v2, v6, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v2

    .line 51044
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 1456
    invoke-static {v2}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x3

    :try_start_1
    div-int/2addr v7, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1473
    throw p0

    .line 1456
    :cond_2
    :try_start_2
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v6, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v0

    .line 51044
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 1456
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1457
    :cond_3
    const-string v0, "android_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1459
    const-string/jumbo v0, "validateGaidAndIMEI :: removing: android_id"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1462
    :cond_4
    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v6, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1463
    const-string v0, "imei"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1465
    const-string/jumbo p0, "validateGaidAndIMEI :: removing: imei"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1473
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v3

    :cond_5
    return-object v5

    :catch_0
    move-exception p0

    .line 1470
    const-string v0, "failed to remove IMEI or AndroidID key from params; "

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-object v5
.end method

.method private static getCurrencyIso4217Code(Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x2

    .line 1567
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1549
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1555
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v3, v0

    .line 1552
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1567
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x7d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v4, v0

    const-string v5, "af"

    if-nez v4, :cond_0

    .line 1554
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x35

    .line 1555
    div-int/lit8 v4, v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1554
    :cond_0
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 1567
    :goto_0
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v4, v4, 0xb

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v4, v0

    .line 1556
    :try_start_2
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v7, "Push Notification received af payload = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1558
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1567
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    rem-int/2addr p0, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1563
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getCurrencyIso4217Code(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1600
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1599
    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1600
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p2, v0

    return-object p1
.end method

.method public static getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1667
    rem-int v1, v0, v0

    .line 1662
    const-string v1, "CACHED_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1667
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p0, 0x63

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x53

    .line 1664
    div-int/lit8 p1, p1, 0x0

    :cond_0
    add-int/lit8 p0, p0, 0x6f

    .line 1667
    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 1666
    :cond_2
    invoke-interface {p0, v1, p1}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    throw v2
.end method

.method private static getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 573
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private static getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 566
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 565
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x54

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-void

    .line 565
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 566
    throw p0
.end method

.method private static getMediationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I
    .locals 3

    const/4 v0, 0x2

    .line 1703
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const-string v0, "appsFlyerInAppEventCount"

    if-eqz v1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;Z)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, v0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    throw p0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x2

    aget-object p0, p0, v3

    check-cast p0, Landroid/content/Intent;

    .line 379
    rem-int v4, v3, v3

    .line 356
    new-instance v4, Lcom/appsflyer/internal/AFj1kSDK;

    invoke-direct {v4, p0}, Lcom/appsflyer/internal/AFj1kSDK;-><init>(Landroid/content/Intent;)V

    .line 357
    const-string p0, "appsflyer_preinstall"

    invoke-virtual {v4, p0}, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 379
    sget v5, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v5, v5, 0x35

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v5, v3

    const v7, -0x29a289e0

    const v8, 0x29a289e4

    if-eqz v5, :cond_0

    .line 358
    invoke-virtual {v4, p0}, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v5, v9

    invoke-static {p0, v8, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p0}, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v8, v7, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 360
    throw v6

    :cond_1
    :goto_0
    const-string p0, "****** onReceive called *******"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 364
    const-string/jumbo p0, "referrer"

    invoke-virtual {v4, p0}, Lcom/appsflyer/internal/AFj1kSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    const-string v5, "Play store referrer: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 360
    sget v5, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v5, v5, 0x57

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v5, v3

    .line 368
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const v8, -0x5f15d5f1

    const v9, 0x5f15d607

    invoke-static {v5, v8, v9, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-interface {v5, p0, v4}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    .line 18155
    const-string v5, "AF_REFERRER"

    invoke-virtual {p0, v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 18156
    iput-object v4, p0, Lcom/appsflyer/AppsFlyerProperties;->AFAdRevenueData:Ljava/lang/String;

    .line 373
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerProperties;->AFAdRevenueData()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 374
    const-string/jumbo p0, "onReceive: isLaunchCalled"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 375
    sget-object p0, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {v1, v2, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;Lcom/appsflyer/internal/AFh1xSDK;)V

    .line 376
    invoke-direct {v1, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue(Ljava/lang/String;)V

    .line 379
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v3

    :cond_2
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v3

    if-eqz p0, :cond_3

    const/16 p0, 0x53

    div-int/2addr p0, v0

    :cond_3
    return-object v6
.end method

.method public static getMediationNetwork()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1039
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string v1, "AppUserId"

    invoke-static {v1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    const/16 v0, 0x4c

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-object v1
.end method

.method public static getMediationNetwork(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 1266
    rem-int v1, v0, v0

    .line 1265
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1266
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-object p0
.end method

.method private getMediationNetwork(Landroid/content/Context;Lcom/appsflyer/internal/AFh1xSDK;)V
    .locals 5

    const/4 v0, 0x2

    .line 1124
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 1120
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1121
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component3()Lcom/appsflyer/internal/AFh1tSDK;

    move-result-object v1

    .line 1122
    invoke-static {p1}, Lcom/appsflyer/internal/AFh1uSDK;->getRevenue(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1uSDK;

    move-result-object p1

    .line 46129
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFh1tSDK;->getCurrencyIso4217Code()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1124
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    const-string v3, "api_name"

    if-eqz v2, :cond_0

    .line 46130
    iget-object v2, v1, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46131
    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue(Lcom/appsflyer/internal/AFh1uSDK;)V

    .line 1123
    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 46130
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46131
    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue(Lcom/appsflyer/internal/AFh1uSDK;)V

    .line 1123
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFh1tSDK;->getMonetizationNetwork()V

    return-void
.end method

.method private static synthetic getMediationNetwork(Lcom/appsflyer/internal/AFc1bSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 511
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1uSDK;

    move-result-object p0

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1uSDK;->getMonetizationNetwork()V

    if-eqz v1, :cond_0

    const/16 p0, 0x16

    div-int/lit8 p0, p0, 0x0

    :cond_0
    return-void
.end method

.method private synthetic getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 1359
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private synthetic getMediationNetwork(Lcom/appsflyer/internal/AFi1jSDK;)V
    .locals 3

    const/4 v0, 0x2

    .line 856
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1jSDK;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method private static getMediationNetwork(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1876
    rem-int v1, v0, v0

    .line 1872
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: AppsFlyer SDK is not initialized! The API call \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1876
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method

.method private synthetic getMediationNetwork(Z)V
    .locals 5

    const/4 v0, 0x2

    .line 834
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v1, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    const/4 v2, 0x1

    const v3, -0x17347f7a

    const v4, 0x17347f87

    if-eq p1, v2, :cond_0

    .line 832
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->getMonetizationNetwork()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x63

    .line 834
    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 830
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->getCurrencyIso4217Code()V

    return-void
.end method

.method public static getMonetizationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I
    .locals 3

    const/4 v0, 0x2

    .line 1699
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string v2, "appsFlyerCount"

    if-nez v1, :cond_0

    invoke-static {p0, v2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return p0

    :cond_0
    invoke-static {p0, v2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFc1oSDK;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    throw p0
.end method

.method public static getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;
    .locals 4

    const/4 v0, 0x2

    .line 222
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    sget-object v1, Lcom/appsflyer/internal/AFa1uSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFa1uSDK;

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    return-object v1
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x2

    .line 1642
    rem-int v1, v0, v0

    const/4 v1, 0x0

    .line 1631
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1633
    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 1642
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    const-string/jumbo v3, "preInstallName"

    if-eqz v2, :cond_0

    .line 1634
    :try_start_1
    invoke-static {v3, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1642
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    return-object v1

    .line 1634
    :cond_0
    :try_start_2
    invoke-static {v3, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 1642
    throw p0

    .line 1636
    :cond_1
    :try_start_4
    const-string p0, "Cannot set preinstall attribution data without a media source"

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1642
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    return-object v1

    :catch_0
    move-exception p0

    .line 1639
    const-string v0, "Error parsing JSON for preinstall"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getMonetizationNetwork(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 1543
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 1538
    const-string/jumbo v1, "meta"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1543
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    .line 1539
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    goto :goto_0

    .line 1541
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    .line 1543
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    const/16 v0, 0x47

    div-int/lit8 v0, v0, 0x0

    :cond_1
    return-object p0
.end method

.method private getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 5

    const/4 v0, 0x2

    .line 1320
    rem-int v1, v0, v0

    .line 51125
    iget-object v1, p1, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1297
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1295
    :goto_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1306
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    const-string v0, "CustomerUserId not set, reporting is disabled"

    if-nez p1, :cond_1

    .line 1296
    invoke-static {v0, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_2
    if-eqz v1, :cond_8

    .line 1303
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v4, "launchProtectEnabled"

    .line 1304
    invoke-virtual {v1, v4, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1320
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 1306
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK;->areAllFieldsValid()Z

    move-result v1

    const/16 v3, 0x35

    div-int/2addr v3, v2

    if-nez v1, :cond_4

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1uSDK;->areAllFieldsValid()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51117
    :cond_4
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_5

    .line 1297
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/16 v0, 0xa

    .line 1309
    const-string v1, "Event timeout. Check \'minTimeBetweenSessions\' param"

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_5
    return-void

    .line 1314
    :cond_6
    const-string v0, "Allowing multiple launches within a 5 second time window."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1316
    :cond_7
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->component4:J

    .line 1319
    :cond_8
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method private getMonetizationNetwork(Lcom/appsflyer/internal/AFi1jSDK;)V
    .locals 8

    const/4 v0, 0x2

    .line 876
    rem-int v1, v0, v0

    .line 868
    new-instance v1, Lcom/appsflyer/internal/AFf1ySDK;

    .line 870
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v4

    .line 871
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v5

    .line 872
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->component4()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object v6

    .line 873
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFf1ySDK;-><init>(Lcom/appsflyer/internal/AFi1jSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFg1rSDK;Lcom/appsflyer/internal/AFc1gSDK;)V

    .line 875
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {p1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    .line 43089
    iget-object v2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v3, p1, v1}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 876
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private static getMonetizationNetwork(Ljava/lang/String;)V
    .locals 3

    .line 65337
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x29a289e4

    const v2, -0x29a289e0

    invoke-static {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, Lcom/appsflyer/internal/platform_extension/PluginInfo;

    const/4 v1, 0x2

    .line 1852
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    const v1, -0x17347f7a

    const v3, 0x17347f87

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1850
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v3, v1, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->e()Lcom/appsflyer/internal/AFi1lSDK;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appsflyer/internal/AFi1lSDK;->getMediationNetwork(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    return-object v4

    .line 1850
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v2, v3, v1, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->e()Lcom/appsflyer/internal/AFi1lSDK;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appsflyer/internal/AFi1lSDK;->getMediationNetwork(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    .line 1852
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
.end method

.method public static synthetic getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 10

    mul-int/lit16 v0, p1, -0x537

    mul-int/lit16 v1, p2, -0x29b

    add-int/2addr v0, v1

    not-int p2, p2

    or-int v1, p1, p3

    not-int v2, v1

    or-int/2addr v2, p2

    mul-int/lit16 v2, v2, -0x29c

    add-int/2addr v0, v2

    or-int/2addr p3, p2

    not-int p3, p3

    or-int/2addr p1, p3

    mul-int/lit16 p1, p1, 0x538

    add-int/2addr v0, p1

    or-int p1, v1, p2

    mul-int/lit16 p1, p1, 0x29c

    add-int/2addr v0, p1

    const/4 p1, 0x3

    const p2, -0x17347f7a

    const p3, 0x17347f87

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 1
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto/16 :goto_3

    :pswitch_0
    aget-object v0, p0, v2

    check-cast v0, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object v5, p0, v3

    check-cast v5, Landroid/content/Context;

    aget-object v6, p0, v4

    check-cast v6, Ljava/util/Map;

    aget-object p0, p0, p1

    check-cast p0, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    .line 51607
    rem-int p1, v4, v4

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v7, p1, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v4

    .line 51605
    invoke-virtual {v0, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 51606
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->areAllFieldsValid()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    .line 59399
    new-array p2, v3, [Ljava/lang/String;

    const-string/jumbo p3, "purchases"

    aput-object p3, p2, v2

    invoke-virtual {p1, v6, p0, p2}, Lcom/appsflyer/PurchaseHandler;->getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59402
    new-instance p2, Lcom/appsflyer/internal/AFe1bSDK;

    iget-object p3, p1, Lcom/appsflyer/PurchaseHandler;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {p2, v6, p0, p3}, Lcom/appsflyer/internal/AFe1bSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 59403
    iget-object p0, p1, Lcom/appsflyer/PurchaseHandler;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1nSDK;

    .line 60428
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {p3, p0, p2}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51607
    :cond_0
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_1
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object v0, p0, v3

    check-cast v0, Landroid/content/Context;

    aget-object p0, p0, v4

    check-cast p0, Ljava/lang/String;

    .line 51875
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 51876
    new-instance p1, Lcom/appsflyer/internal/AFg1tSDK;

    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFg1tSDK;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_5

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "Firebase Refreshed Token = "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1tSDK;->getRevenue()Lcom/appsflyer/internal/AFf1aSDK;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/appsflyer/internal/AFf1aSDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/appsflyer/internal/AFf1aSDK;->getCurrencyIso4217Code:J

    sub-long v6, v4, v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    new-instance v0, Lcom/appsflyer/internal/AFf1aSDK;

    xor-int/lit8 v3, v2, 0x1

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/appsflyer/internal/AFf1aSDK;-><init>(Ljava/lang/String;JZ)V

    iget-object v3, p1, Lcom/appsflyer/internal/AFg1tSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v4, "afUninstallToken"

    iget-object v5, v0, Lcom/appsflyer/internal/AFf1aSDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/appsflyer/internal/AFg1tSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v4, "afUninstallToken_received_time"

    iget-wide v5, v0, Lcom/appsflyer/internal/AFf1aSDK;->getCurrencyIso4217Code:J

    invoke-interface {v3, v4, v5, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getRevenue(Ljava/lang/String;J)V

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1tSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v3, "afUninstallToken_queued"

    iget-boolean v0, v0, Lcom/appsflyer/internal/AFf1aSDK;->getMediationNetwork:Z

    invoke-interface {p1, v3, v0}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    new-instance p2, Lcom/appsflyer/internal/AFf1pSDK;

    invoke-direct {p2, p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/AFc1bSDK;)V

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p0

    iget-object p1, p0, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {p3, p0, p2}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_5
    :goto_0
    sget-object p0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object p1, Lcom/appsflyer/internal/AFg1cSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1cSDK;

    const-string p2, "Firebase Token is either empty or null and was not registered."

    invoke-virtual {p0, p1, p2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1
    :pswitch_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->copydefault([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->hashCode([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_4
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, [Ljava/lang/String;

    .line 51593
    rem-int v0, v4, v4

    .line 51592
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    new-instance p2, Lcom/appsflyer/internal/AFb1uSDK;

    invoke-direct {p2, p0}, Lcom/appsflyer/internal/AFb1uSDK;-><init>([Ljava/lang/String;)V

    .line 56357
    iput-object p2, p1, Lcom/appsflyer/internal/AFc1eSDK;->getRevenue:Lcom/appsflyer/internal/AFb1uSDK;

    .line 51593
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_5
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->toString([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_6
    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFa1uSDK;

    .line 53154
    rem-int p1, v4, v4

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v4

    if-eqz p1, :cond_6

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p0

    .line 0
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array p1, v3, [Lcom/appsflyer/internal/AFj1qSDK;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 53154
    :cond_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p3, p2, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p0

    .line 0
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1rSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array p1, v2, [Lcom/appsflyer/internal/AFj1qSDK;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, [Lcom/appsflyer/internal/AFj1qSDK;

    move-object v1, p0

    goto/16 :goto_5

    .line 1
    :pswitch_7
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->copy([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_8
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object v0, p0, v3

    check-cast v0, Landroid/content/Context;

    aget-object p0, p0, v4

    check-cast p0, Ljava/net/URI;

    .line 51574
    rem-int v2, v4, v4

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v4

    .line 51563
    const-string v2, "\""

    if-eqz p0, :cond_9

    add-int/2addr v5, v3

    .line 51574
    rem-int/lit16 v3, v5, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v5, v4

    .line 51563
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    .line 51566
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Context is \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p0, p1, p2}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto/16 :goto_5

    .line 51568
    :cond_8
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 51569
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, p3, p2, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v0

    .line 51571
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v2, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFa1hSDK;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1gSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;

    move-result-object p1

    .line 51572
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 51569
    invoke-virtual {v0, p1, p0}, Lcom/appsflyer/internal/AFa1rSDK;->g_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/net/Uri;)V

    goto/16 :goto_5

    .line 51564
    :cond_9
    :goto_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Link is \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p1, p0, p2}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    goto/16 :goto_5

    .line 1
    :pswitch_9
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->component1([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_a
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->component3([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_b
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->component2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_c
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 51686
    rem-int p1, v4, v4

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v4

    .line 51684
    const-string/jumbo p1, "setDisableNetworkData: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 51685
    const-string p1, "disableCollectNetworkData"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-int p1, p1

    const p2, -0xd4176d9

    const p3, 0xd4176ea

    invoke-static {p0, p2, p3, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 51686
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_d
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->component4([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_e
    aget-object p2, p0, v2

    check-cast p2, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p3, p0, v3

    check-cast p3, Landroid/content/Context;

    aget-object v0, p0, v4

    check-cast v0, Ljava/lang/String;

    aget-object p0, p0, p1

    check-cast p0, Ljava/util/Map;

    .line 52512
    rem-int p1, v4, v4

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v4

    .line 52511
    invoke-virtual {p2, p3, v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    .line 52512
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_f
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->areAllFieldsValid([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_10
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_11
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_12
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 53145
    rem-int p2, v4, v4

    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x3d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p2, v4

    .line 53144
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/appsflyer/internal/AFa1uSDK;->component2:J

    .line 53145
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_13
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_14
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_15
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 51858
    rem-int p1, v4, v4

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v4

    .line 51857
    const-string p1, "enableTCFDataCollection"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 51858
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v4

    goto/16 :goto_5

    .line 1
    :pswitch_16
    aget-object p1, p0, v2

    check-cast p1, Lcom/appsflyer/internal/AFa1uSDK;

    aget-object p0, p0, v3

    check-cast p0, [Ljava/lang/String;

    .line 51575
    rem-int p2, v4, v4

    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x59

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p2, v4

    .line 51574
    invoke-virtual {p1, p0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    .line 51575
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v4

    goto :goto_5

    .line 1
    :pswitch_17
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    .line 52095
    :goto_3
    rem-int v0, v4, v4

    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v0, v4

    const-string v4, "collectAndroidIdForceByUser"

    const-string v5, "collectAndroidId"

    const-string/jumbo v6, "setCollectAndroidID"

    if-nez v0, :cond_a

    .line 52092
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-interface {p1, v6, p2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 52093
    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 52094
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 52092
    :cond_a
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p3, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-interface {p1, v6, p2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRevenue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1290
    rem-int v1, v0, v0

    .line 1280
    new-instance v1, Lcom/appsflyer/internal/AFh1eSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1eSDK;-><init>()V

    .line 1284
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51116
    iput-object p1, v1, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    .line 51080
    iput-object p1, v1, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 51127
    iput-object p2, v1, Lcom/appsflyer/internal/AFh1jSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 51137
    iput-object p1, v1, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork:Ljava/lang/String;

    .line 1285
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    .line 1290
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private getRevenue(Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 1241
    rem-int v1, v0, v0

    if-nez p1, :cond_0

    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void

    .line 1240
    :cond_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 1241
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    div-int/lit8 p1, p1, 0x0

    :cond_1
    return-void
.end method

.method private getRevenue(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    .line 1364
    rem-int v1, v0, v0

    .line 1350
    new-instance v1, Lcom/appsflyer/internal/AFh1lSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1lSDK;-><init>()V

    .line 1351
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x17347f87

    const v5, -0x17347f7a

    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v2

    .line 51307
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    const-string v3, "appsFlyerCount"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v6}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;I)I

    move-result v2

    .line 1351
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(I)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object v1

    .line 51133
    iput-object p1, v1, Lcom/appsflyer/internal/AFh1jSDK;->areAllFieldsValid:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1354
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v0, :cond_2

    goto :goto_0

    .line 1353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x5

    if-le p1, v2, :cond_2

    .line 1364
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    .line 1354
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFj1rSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1355
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p1, v4, v5, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 1357
    new-instance v2, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda2;-><init>(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFh1jSDK;)V

    const-wide/16 v3, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v2, v3, v4, v1}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 1354
    :cond_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v4, v5, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFLogger()Lcom/appsflyer/internal/AFj1rSDK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFj1rSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;)Z

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method private static getRevenue(Ljava/lang/String;Z)V
    .locals 2

    .line 65343
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p1, v0

    const v0, -0xd4176d9

    const v1, 0xd4176ea

    invoke-static {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method private getRevenue(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65338
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x4cec8b68

    const v2, -0x4cec8b67

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public static getRevenue(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x2

    .line 1590
    rem-int v1, v0, v0

    const/4 v1, 0x1

    .line 1573
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1590
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception v2

    .line 1579
    const-string v3, "WARNING:  Google play services is unavailable. "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v2, 0x0

    .line 1583
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v3, "com.google.android.gms"

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1590
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/16 p0, 0xf

    div-int/2addr p0, v2

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 1586
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "WARNING:  Google Play Services is unavailable. "

    invoke-virtual {v0, v1, v3, p0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private static synthetic hashCode([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x2

    aget-object p0, p0, v4

    check-cast p0, Landroid/content/Intent;

    .line 310
    rem-int v5, v4, v4

    .line 306
    invoke-virtual {v1, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 307
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const v7, 0x17347f87

    const v8, -0x17347f7a

    invoke-static {v5, v7, v8, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v5}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v5

    .line 309
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v6, v7, v8, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    .line 310
    sget v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v7, v7, 0x23

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v7, v4

    const-string v8, "android.intent.action.VIEW"

    if-eqz v7, :cond_0

    .line 51254
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51255
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    throw v6

    :cond_1
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_3

    .line 51266
    sget v8, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v8, v8, 0x7

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v8, v4

    if-eqz v8, :cond_2

    .line 51263
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 51266
    sget v7, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v7, v7, 0x5d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v7, v4

    move v7, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    throw v6

    :cond_3
    move v7, v0

    .line 51264
    :goto_1
    const-string v8, "ddl_sent"

    invoke-interface {v1, v8, v0}, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    xor-int/lit8 v1, v7, 0x1

    if-eq v1, v2, :cond_4

    goto :goto_3

    .line 310
    :cond_4
    sget p0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p0, v4

    const-string v1, "No direct deep link"

    if-nez p0, :cond_5

    .line 51266
    invoke-virtual {v5, v1, v6}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    const/16 p0, 0x25

    div-int/2addr p0, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v1, v6}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    :goto_2
    return-object v6

    .line 51268
    :cond_6
    :goto_3
    iget-object v0, v5, Lcom/appsflyer/internal/AFa1rSDK;->component1:Lcom/appsflyer/internal/AFc1bSDK;

    .line 51269
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLogForExcManagerOnly()Lcom/appsflyer/internal/AFa1hSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1gSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFa1hSDK;)Lcom/appsflyer/internal/AFa1gSDK;

    move-result-object v0

    .line 51268
    invoke-virtual {v5, v0, p0, v3}, Lcom/appsflyer/internal/AFa1rSDK;->f_(Lcom/appsflyer/internal/AFa1gSDK;Landroid/content/Intent;Landroid/content/Context;)V

    return-object v6
.end method

.method private static synthetic toString([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFa1uSDK;

    const/4 v1, 0x2

    .line 1775
    rem-int v2, v1, v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    const v3, -0x17347f7a

    const v4, 0x17347f87

    if-nez v2, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v2, v4, v3, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result p0

    const/16 v2, 0x40

    div-int/2addr v2, v0

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, v4, v3, p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result p0

    :goto_0
    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
.end method


# virtual methods
.method final declared-synchronized AFAdRevenueData()Lcom/appsflyer/internal/AFf1nSDK;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 208
    :try_start_0
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->equals:Lcom/appsflyer/internal/AFf1nSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v3, 0xe

    :try_start_1
    div-int/lit8 v3, v3, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 208
    :try_start_2
    throw v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->equals:Lcom/appsflyer/internal/AFf1nSDK;

    if-nez v1, :cond_2

    :goto_0
    add-int/lit8 v2, v2, 0x7b

    .line 208
    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 193
    new-instance v1, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->equals:Lcom/appsflyer/internal/AFf1nSDK;

    .line 208
    rem-int/2addr v0, v0

    goto :goto_1

    .line 193
    :cond_1
    new-instance v0, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda1;-><init>(Lcom/appsflyer/internal/AFa1uSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->equals:Lcom/appsflyer/internal/AFf1nSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v0, 0x0

    .line 208
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1uSDK;->equals:Lcom/appsflyer/internal/AFf1nSDK;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 3

    .line 65348
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x1e04d008

    const v2, 0x1e04d011

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final anonymizeUser(Z)V
    .locals 9

    const/4 v0, 0x2

    .line 1225
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const-string v3, "deviceTrackingDisabled"

    const-string v4, "anonymizeUser"

    const v5, -0x17347f7a

    const v6, 0x17347f87

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 1223
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v1, v6, v5, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v4, v5}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1224
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1223
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v1, v6, v5, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v1, v4, v5}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/16 p1, 0x2a

    div-int/2addr p1, v2

    :cond_1
    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 275
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const v2, -0x17347f7a

    const v3, 0x17347f87

    if-nez v1, :cond_0

    .line 272
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v1

    .line 273
    iput-object p1, v1, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 274
    iput-object p2, v1, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork:Ljava/util/Map;

    .line 275
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void

    .line 272
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v0

    .line 273
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1rSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 274
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork:Ljava/util/Map;

    const/4 p1, 0x0

    .line 275
    throw p1
.end method

.method final b_(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 65346
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, -0x635a6a35

    const v1, 0x635a6a3c

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method final component4()V
    .locals 4

    const/4 v0, 0x2

    .line 1653
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1645
    invoke-static {}, Lcom/appsflyer/internal/AFe1dSDK;->component2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    const/16 v0, 0x44

    div-int/lit8 v0, v0, 0x0

    :cond_0
    return-void

    .line 1649
    :cond_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    .line 1650
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFe1dSDK;

    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFe1dSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 51118
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v3, v1, v2}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final disableAppSetId()V
    .locals 6

    const/4 v0, 0x2

    .line 1916
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const v3, -0x17347f7a

    const v4, 0x17347f87

    if-nez v1, :cond_0

    .line 1915
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v1, v4, v3, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v1, v4, v3, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    .line 51068
    iput-boolean v2, v1, Lcom/appsflyer/internal/AFc1eSDK;->component1:Z

    .line 1916
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .locals 5

    const/4 v0, 0x2

    .line 881
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 880
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->unregisterClient()Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/AFa1bSDK;->getMonetizationNetwork(Z)V

    .line 881
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final enableTCFDataCollection(Z)V
    .locals 3

    .line 65345
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x9c62b4f

    const v2, -0x9c62b4c

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    .line 1729
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const-string v3, "getAppsFlyerUID"

    const v4, -0x17347f7a

    const v5, 0x17347f87

    if-eqz v1, :cond_0

    .line 1723
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 1725
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    const/4 p1, 0x0

    return-object p1

    .line 1728
    :cond_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1729
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v5, v4, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object p1

    .line 51209
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1674
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const v0, -0x17347f7a

    const v2, 0x17347f87

    if-nez v1, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1674
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1673
    :cond_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1674
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Landroid/content/Context;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;
    .locals 4

    .line 65354
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    return-object v0
.end method

.method public final getCurrencyIso4217Code(Landroid/content/Context;)Lcom/appsflyer/internal/AFc1oSDK;
    .locals 3

    .line 65336
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x5f15d5f1

    const v2, 0x5f15d607

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1oSDK;

    return-object p1
.end method

.method final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1jSDK;)V
    .locals 13

    const/4 v0, 0x2

    .line 1434
    rem-int v1, v0, v0

    .line 1367
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v1

    .line 51044
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1434
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    const-string/jumbo v0, "sendWithEvent - got null context. skipping event/launch."

    if-eqz p1, :cond_0

    .line 1370
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v1, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v1, v0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void

    .line 1374
    :cond_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v5, v3, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v5}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v5

    .line 51122
    iget-object v6, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v5, :cond_c

    .line 1377
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 1386
    :cond_2
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    const v7, -0x5f15d5f1

    const v8, 0x5f15d607

    invoke-static {v5, v7, v8, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/AFc1oSDK;

    .line 1387
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Lcom/appsflyer/internal/AFc1oSDK;)V

    .line 1388
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v6, v3, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v6}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1389
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v7, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sendWithEvent from activity: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 1392
    :cond_3
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v1

    .line 1393
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)Ljava/util/Map;

    move-result-object v6

    .line 1395
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v7, v3, v4, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v7}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1396
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v9, "AppsFlyerLib.sendWithEvent"

    invoke-virtual {v7, v8, v9}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1431
    sget v7, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v7, v7, 0x6d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v7, v0

    :cond_4
    const/4 v7, 0x0

    .line 1399
    invoke-static {v5, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I

    move-result v5

    .line 1400
    filled-new-array {p0, v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    const v10, 0x4cec8b68

    const v11, -0x4cec8b67

    invoke-static {v8, v10, v11, v9}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 1402
    new-instance v8, Lcom/appsflyer/internal/AFa1tSDK;

    .line 1403
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v9

    .line 1404
    invoke-virtual {p1, v6}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(I)Lcom/appsflyer/internal/AFh1jSDK;

    move-result-object p1

    .line 1405
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFc1bSDK;->unregisterClient()Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/appsflyer/internal/AFa1bSDK;->getCurrencyIso4217Code()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v8, v9, p1, v5}, Lcom/appsflyer/internal/AFa1tSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/internal/AFh1jSDK;Ljava/util/Map;)V

    xor-int/lit8 p1, v1, 0x1

    if-eq p1, v2, :cond_9

    .line 1413
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v5, -0xb340e9c

    const v6, 0xb340eae

    invoke-static {p1, v5, v6, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/appsflyer/internal/AFj1qSDK;

    array-length v1, p1

    move v5, v7

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_6

    aget-object v9, p1, v5

    .line 51077
    iget-object v10, v9, Lcom/appsflyer/internal/AFj1qSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    .line 1414
    sget-object v11, Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1qSDK$AFa1vSDK;

    if-ne v10, v11, :cond_5

    .line 1417
    sget-object v6, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to get "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51082
    iget-object v9, v9, Lcom/appsflyer/internal/AFj1qSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 1417
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " referrer, wait ..."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    move v6, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1422
    :cond_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->unregisterClient()Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFa1bSDK;->getRevenue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1424
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v5, "fetching Facebook deferred AppLink data, wait ..."

    invoke-virtual {p1, v1, v5}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    move v6, v2

    .line 1426
    :cond_7
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFf1cSDK;->AFAdRevenueData()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1371
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    goto :goto_1

    :cond_8
    move v2, v6

    goto :goto_1

    :cond_9
    move v2, v7

    .line 1431
    :goto_1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    if-eqz v2, :cond_b

    .line 1434
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_a

    const/16 v0, 0x1d

    div-int/2addr v0, v7

    :cond_a
    const-wide/16 v0, 0x1f4

    goto :goto_2

    :cond_b
    const-wide/16 v0, 0x0

    .line 1433
    :goto_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v8, v0, v1, v2}, Lcom/appsflyer/internal/AFj1aSDK;->AFAdRevenueData(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    .line 1378
    :cond_c
    :goto_3
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 1379
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "AppsFlyer will not track this event."

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    if-eqz v6, :cond_d

    const/16 p1, 0x29

    .line 1381
    const-string v0, "No dev key"

    invoke-interface {v6, p1, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 1802
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const v0, -0x17347f7a

    const v2, 0x17347f87

    if-nez v1, :cond_0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFe1ySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1ySDK;->getCurrencyIso4217Code()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .locals 4

    .line 65334
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x6285238

    const v3, -0x6285230

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationNetwork(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    .line 184
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 183
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    if-eqz p1, :cond_2

    add-int/lit8 v2, v2, 0x19

    .line 184
    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2147
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    if-eqz p1, :cond_2

    .line 184
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 3019
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3

    .line 2147
    :cond_1
    iget-object p1, v1, Lcom/appsflyer/internal/AFc1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1gSDK;

    .line 3018
    throw v3

    :cond_2
    :goto_0
    return-void
.end method

.method final getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V
    .locals 5

    const/4 v0, 0x2

    .line 1212
    rem-int v1, v0, v0

    .line 1197
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V

    .line 1199
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {p2, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1212
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x75

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p2, v0

    const-string v0, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    if-nez p2, :cond_0

    .line 1201
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 51106
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/4 p2, 0x1

    .line 1204
    div-int/lit8 p2, p2, 0x0

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1201
    :cond_0
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 51106
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_1

    :goto_0
    const/16 p2, 0x29

    .line 1205
    const-string v0, "No dev key"

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    .line 1210
    :cond_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1204
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p2, p2, 0x75

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_3

    .line 1212
    const-string p2, ""

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1204
    throw p1

    .line 51120
    :cond_4
    :goto_1
    iput-object p2, p1, Lcom/appsflyer/internal/AFh1jSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 1211
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method public final getMonetizationNetwork(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-string v0, "extraReferrers"

    const/4 v1, 0x2

    .line 501
    rem-int v2, v1, v1

    .line 463
    const-string/jumbo v2, "received a new (extra) referrer: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 467
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 469
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    const v6, -0x5f15d5f1

    const v7, 0x5f15d607

    invoke-static {v4, v6, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v5, 0x0

    .line 470
    invoke-interface {v4, v0, v5}, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 472
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 473
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 475
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .line 482
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 491
    sget v8, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v8, v8, 0x15

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v8, v1

    .line 483
    :try_start_1
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_2

    rem-int/lit8 v2, v1, 0x4

    .line 487
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    const-wide/16 v8, 0x4

    cmp-long v2, v2, v8

    if-ltz v2, :cond_4

    .line 501
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x75

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_3

    .line 488
    :try_start_3
    invoke-static {v4}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lorg/json/JSONObject;)V

    const/16 v1, 0xe

    .line 491
    div-int/lit8 v1, v1, 0x0

    goto :goto_2

    .line 488
    :cond_3
    invoke-static {v4}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Lorg/json/JSONObject;)V

    .line 491
    :cond_4
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1oSDK;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/internal/AFc1oSDK;->AFAdRevenueData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 497
    const-string p2, "error at addReferrer"

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 630
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const-string v2, "api_store_value"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 619
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 624
    :cond_0
    const-string v1, "AF_STORE"

    invoke-direct {p0, p1, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 620
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    const/16 v0, 0x48

    div-int/lit8 v0, v0, 0x0

    :cond_1
    return-object p1

    .line 629
    :cond_2
    const-string p1, "No out-of-store value set"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v3

    .line 619
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
.end method

.method final getRevenue(Lcom/appsflyer/internal/AFh1jSDK;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFh1jSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 1509
    rem-int v2, v1, v1

    .line 1481
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x17347f87

    const v5, -0x17347f7a

    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->registerClient()Lcom/appsflyer/internal/AFc1gSDK;

    move-result-object v2

    .line 51049
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1gSDK;->getRevenue:Landroid/content/Context;

    move-object/from16 v3, p0

    .line 1482
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const v8, -0x5f15d5f1

    const v9, 0x5f15d607

    invoke-static {v6, v8, v9, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/AFc1oSDK;

    .line 1483
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v7, v4, v5, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v7}, Lcom/appsflyer/internal/AFc1bSDK;->component4()Lcom/appsflyer/internal/AFg1rSDK;

    move-result-object v7

    .line 1484
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v8, v4, v5, v9}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v4

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFh1jSDK;->getMediationNetwork()Z

    move-result v5

    .line 51197
    iget-object v8, v0, Lcom/appsflyer/internal/AFh1jSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 1487
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 1488
    const-string v11, ""

    const/16 v12, 0x30

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v11

    add-int/lit16 v11, v11, 0x80

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v12, "\u0089\u0086\u0081\u0084\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v15, v12, v15, v11, v14}, Lcom/appsflyer/internal/AFa1uSDK;->a(Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/Object;)V

    aget-object v11, v14, v13

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1509
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x1d

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v4, v1

    .line 1492
    :try_start_0
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v10, "AppsFlyer SDK Reporting has been stopped"

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v10, v11}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x7b

    :goto_0
    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v4, v1

    goto :goto_2

    .line 1494
    :cond_0
    :try_start_1
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "******* sendTrackingWithEvent: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    const-string v11, "Launch"

    goto :goto_1

    .line 51137
    :cond_1
    iget-object v11, v0, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    .line 1494
    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v10, v11}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x39

    goto :goto_0

    .line 1496
    :goto_2
    :try_start_2
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1uSDK;->component2(Landroid/content/Context;)V

    .line 1498
    invoke-static {v6, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I

    move-result v2

    .line 51138
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    .line 1499
    :cond_2
    invoke-static {v6, v13}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFc1oSDK;Z)I

    move-result v0

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1502
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    .line 51179
    iput-boolean v4, v5, Lcom/appsflyer/AppsFlyerProperties;->getRevenue:Z

    .line 1505
    :cond_4
    :goto_3
    invoke-interface {v7, v8, v2, v0}, Lcom/appsflyer/internal/AFg1rSDK;->getCurrencyIso4217Code(Ljava/util/Map;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v12, v0

    .line 1507
    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-string v11, "Error while preparing to send event"

    const/4 v13, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 1509
    :goto_4
    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v0, v1

    return-object v8
.end method

.method public final getRevenue()Z
    .locals 4

    const/4 v0, 0x2

    .line 581
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string/jumbo v1, "waitForCustomerId"

    invoke-static {v1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    .line 521
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 519
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    .line 520
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "getSdkVersion"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/appsflyer/internal/AFc1pSDK;->component2()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 1

    .line 65341
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x1ef35406

    const v0, -0x1ef353f7

    invoke-static {p1, p3, v0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/AppsFlyerLib;

    return-object p1
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x2

    .line 1658
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1657
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1658
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFc1pSDK;->getMediationNetwork(Landroid/content/Context;)Z

    move-result p1

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    return p1
.end method

.method public final isStopped()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65335
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0xd68a99f

    const v3, -0xd68a98c

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final logAdRevenue(Lcom/appsflyer/AFAdRevenueData;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/AFAdRevenueData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1174
    rem-int v1, v0, v0

    .line 1152
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    if-nez v1, :cond_0

    .line 1153
    const-string p1, "logAdRevenue"

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Ljava/lang/String;)V

    .line 1159
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void

    .line 1157
    :cond_0
    invoke-virtual {p1}, Lcom/appsflyer/AFAdRevenueData;->areAllFieldsValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1174
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    const-string p2, "Invalid ad revenue parameters provided"

    if-nez p1, :cond_1

    .line 1158
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->d:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    const/16 p1, 0x20

    .line 1159
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 1158
    :cond_1
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->d:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1162
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1159
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    const-string p2, "SDK is stopped"

    if-eqz p1, :cond_3

    .line 1163
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->d:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->d:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v0, p2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1164
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 1167
    :cond_4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFk1xSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1168
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->copydefault()V

    return-void

    .line 1172
    :cond_5
    new-instance v0, Lcom/appsflyer/internal/AFh1nSDK;

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFh1nSDK;-><init>(Lcom/appsflyer/AFAdRevenueData;Ljava/util/Map;)V

    .line 1173
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFh1jSDK;)V

    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 65340
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, -0x6031311c

    const v0, 0x60313126

    invoke-static {p1, p3, v0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 47047
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    .line 1131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 1132
    new-instance v0, Lcom/appsflyer/internal/AFh1hSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFh1hSDK;-><init>()V

    .line 48106
    iput-object p2, v0, Lcom/appsflyer/internal/AFh1jSDK;->component4:Ljava/lang/String;

    .line 49096
    iput-object p4, v0, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 1136
    const-string v1, "af_touch_obj"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50025
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 50026
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 50027
    instance-of v4, v3, Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 50028
    check-cast v3, Landroid/view/MotionEvent;

    .line 50029
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50030
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50031
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50032
    const-string v5, "loc"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50033
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v5, "pf"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50034
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "rad"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50036
    :cond_1
    const-string v3, "error"

    const-string v4, "Parsing failed due to invalid input in \'af_touch_obj\'."

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50037
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->i:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v3, v5, v4, p4}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 50039
    :goto_1
    const-string/jumbo v3, "tch_data"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1138
    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFh1jSDK;->getMonetizationNetwork(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1jSDK;

    .line 51069
    :cond_2
    iput-object p3, v0, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 1142
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {p3, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object p3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 51076
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/appsflyer/internal/AFh1jSDK;->AFAdRevenueData:Ljava/util/Map;

    :goto_2
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1142
    aput-object v2, v1, p4

    const-string p4, "logEvent"

    invoke-interface {p3, p4, v1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 1145
    sget-object p2, Lcom/appsflyer/internal/AFh1xSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;Lcom/appsflyer/internal/AFh1xSDK;)V

    .line 1147
    :cond_4
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1rSDK;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1jSDK;Lcom/appsflyer/internal/AFh1rSDK;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .locals 6

    const/4 v0, 0x2

    .line 1091
    rem-int v1, v0, v0

    .line 1086
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "logLocation"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1087
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1088
    const-string v2, "af_long"

    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string p4, "af_lat"

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    const-string p2, "af_location_coordinates"

    invoke-direct {p0, p1, p2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1091
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    div-int/2addr p1, v4

    :cond_0
    return-void
.end method

.method public final logSession(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x2

    .line 1101
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1096
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const-string v2, "logSession"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1098
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1mSDK;->getMonetizationNetwork()V

    .line 1099
    sget-object v1, Lcom/appsflyer/internal/AFh1xSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {p0, p1, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;Lcom/appsflyer/internal/AFh1xSDK;)V

    const/4 v1, 0x0

    .line 1100
    invoke-direct {p0, p1, v1, v1}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1101
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x3f

    div-int/2addr p1, v5

    :cond_0
    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 3

    const/4 p1, 0x2

    .line 533
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v0, p1

    const p1, -0x17347f7a

    const v1, 0x17347f87

    if-eqz v0, :cond_0

    .line 532
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFb1aSDK;->getMonetizationNetwork()V

    const/16 p1, 0x5c

    .line 533
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 532
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFb1aSDK;->getMonetizationNetwork()V

    :goto_0
    return-void
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65353
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x6b3323ec

    const v1, -0x6b3323dc

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    .line 311
    rem-int v1, v0, v0

    .line 294
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    const v3, -0x17347f7a

    const v4, 0x17347f87

    if-nez p1, :cond_1

    add-int/lit8 v2, v2, 0x47

    .line 311
    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    const-string/jumbo p1, "performOnDeepLinking was called with null intent"

    if-nez v2, :cond_0

    .line 291
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    throw v1

    :cond_1
    if-nez p2, :cond_3

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    const-string/jumbo p1, "performOnDeepLinking was called with null context"

    if-eqz v2, :cond_2

    .line 297
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    const/4 p1, 0x4

    .line 300
    div-int/lit8 p1, p1, 0x0

    return-void

    .line 297
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v4, v3, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p2

    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-virtual {p2, p1, v0}, Lcom/appsflyer/internal/AFa1rSDK;->getMediationNetwork(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 302
    :cond_3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 304
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 305
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v2, v4, v3, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda7;-><init>(Lcom/appsflyer/internal/AFa1uSDK;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 311
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_4

    return-void

    :cond_4
    throw v1
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 4

    const/4 p1, 0x2

    .line 1232
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v0, p1

    const-string/jumbo p1, "registerConversionListener"

    const v1, -0x17347f7a

    const v2, 0x17347f87

    if-eqz v0, :cond_0

    .line 1230
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1231
    :goto_0
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue(Lcom/appsflyer/AppsFlyerConversionListener;)V

    goto :goto_1

    .line 1230
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v0, v2, v1, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 7

    const/4 p1, 0x2

    .line 1262
    rem-int v0, p1, p1

    sget v0, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v0, p1

    const-string/jumbo v1, "registerValidatorListener called"

    const/4 v2, 0x0

    const-string/jumbo v3, "registerValidatorListener"

    const v4, -0x17347f7a

    const v5, 0x17347f87

    if-nez v0, :cond_0

    .line 1252
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v0, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1254
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p2, :cond_1

    goto :goto_0

    .line 1252
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v0, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1254
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 1262
    :goto_0
    sget p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p2, p2, 0x9

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p2, p1

    .line 1257
    const-string/jumbo p1, "registerValidatorListener null listener"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 1260
    :cond_1
    sput-object p2, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    return-void
.end method

.method public final sendInAppPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 65350
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const p3, 0x2efcbc4c

    const v0, -0x2efcbc34

    invoke-static {p1, p3, v0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final sendPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 262
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 260
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 261
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->areAllFieldsValid()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const/4 v1, 0x1

    .line 6052
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "subscriptions"

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, p3, v1}, Lcom/appsflyer/PurchaseHandler;->getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6055
    new-instance v1, Lcom/appsflyer/internal/AFe1jSDK;

    iget-object v2, p1, Lcom/appsflyer/PurchaseHandler;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1bSDK;

    invoke-direct {v1, p2, p3, v2}, Lcom/appsflyer/internal/AFe1jSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 6056
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1nSDK;

    .line 7089
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 262
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    :cond_0
    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "c"

    const-string/jumbo v2, "pid"

    const/4 v3, 0x2

    .line 722
    rem-int v4, v3, v3

    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v4, v4, 0x5b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v4, v3

    const/4 v5, 0x1

    const-string/jumbo v6, "sendPushNotificationData"

    const v7, -0x17347f7a

    const v8, 0x17347f87

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    const/16 v4, 0x48

    .line 667
    div-int/2addr v4, v9

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 668
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v4, v8, v7, v10}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v4

    new-array v10, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "activity_intent_"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v5

    invoke-interface {v4, v6, v10}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 722
    sget v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v4, v4, 0x55

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v4, v3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 670
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v4, v8, v7, v10}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v4

    new-array v10, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    const-string v9, "activity_intent_null"

    aput-object v9, v10, v5

    invoke-interface {v4, v6, v10}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 672
    :cond_2
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v4, v8, v7, v10}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    const-string v10, "activity_null"

    aput-object v10, v5, v9

    invoke-interface {v4, v6, v5}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 674
    :goto_1
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v8, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v4

    .line 675
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    .line 24017
    iput-object v5, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    .line 25017
    iget-object v5, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 679
    iget-object v7, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    const-string v8, ")"

    if-nez v7, :cond_3

    .line 680
    const-string/jumbo v0, "pushes: initializing pushes history.."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    move-wide v11, v5

    goto/16 :goto_4

    .line 684
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    const-string/jumbo v9, "pushPayloadMaxAging"

    const-wide/32 v10, 0x1b7740

    invoke-virtual {v7, v9, v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 685
    iget-object v7, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    sget v11, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v11, v11, 0x4f

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v11, v3

    move-wide v11, v5

    .line 685
    :goto_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 687
    new-instance v14, Lorg/json/JSONObject;

    .line 26017
    iget-object v15, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    .line 687
    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 688
    new-instance v15, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v15, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v7

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 690
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27017
    iput-object v0, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    return-void

    .line 699
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v14, v5, v14

    cmp-long v3, v14, v9

    if-lez v3, :cond_5

    .line 722
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x3f

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    const/4 v7, 0x2

    rem-int/2addr v3, v7

    .line 700
    :try_start_2
    iget-object v3, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    cmp-long v3, v14, v11

    if-gtz v3, :cond_6

    .line 705
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object/from16 v7, v16

    const/4 v3, 0x2

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide v11, v5

    .line 709
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while handling push notification measurement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    :cond_7
    :goto_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string/jumbo v2, "pushPayloadHistorySize"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 715
    iget-object v2, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 717
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_8
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1uSDK;->copydefault:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 28017
    iget-object v3, v4, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork:Ljava/lang/String;

    .line 719
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 663
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-eqz p1, :cond_0

    .line 659
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "setAdditionalData"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 660
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 661
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    .line 663
    :cond_0
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    .line 562
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 560
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    const-string/jumbo v5, "setAndroidIdData"

    invoke-interface {v1, v5, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 561
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    .line 23021
    iput-object p1, v1, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 562
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 1064
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const-string v2, "appid"

    const-string/jumbo v3, "setAppId"

    const v4, -0x17347f7a

    const v5, 0x17347f87

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 1062
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v5, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1063
    :goto_0
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v5, v4, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 654
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 646
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "setAppInviteOneLink"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 647
    const-string/jumbo v1, "setAppInviteOneLink = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 648
    const-string/jumbo v1, "oneLinkSlug"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string/jumbo v3, "onelinkDomain"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string/jumbo v3, "onelinkVersion"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string/jumbo v3, "onelinkScheme"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 653
    :cond_1
    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setCollectAndroidID(Z)V
    .locals 3

    .line 65342
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1b17c690

    const v2, -0x1b17c690

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final setCollectIMEI(Z)V
    .locals 5

    const/4 v0, 0x2

    .line 773
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 770
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "setCollectIMEI"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 771
    const-string v1, "collectIMEI"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v1, "collectIMEIForceByUser"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setCollectOaid(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 780
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 778
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "setCollectOaid"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 779
    const-string v1, "collectOAID"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V
    .locals 5

    const/4 v0, 0x2

    .line 1858
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1856
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    .line 51059
    iput-object p1, v1, Lcom/appsflyer/internal/AFc1eSDK;->areAllFieldsValid:Lcom/appsflyer/AppsFlyerConsent;

    .line 1858
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1082
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1080
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "setCurrencyCode"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "currencyCode"

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    .line 615
    rem-int v1, v0, v0

    if-eqz p2, :cond_5

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 594
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomerUserId set: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 597
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Lcom/appsflyer/internal/AFc1oSDK;)Ljava/lang/String;

    move-result-object p1

    .line 598
    sget-object v1, Lcom/appsflyer/internal/AFh1xSDK;->getRevenue:Lcom/appsflyer/internal/AFh1xSDK;

    invoke-direct {p0, p2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;Lcom/appsflyer/internal/AFh1xSDK;)V

    .line 600
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    if-nez p1, :cond_0

    .line 604
    const-string p1, ""

    .line 606
    :cond_0
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 593
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 607
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    const/4 v0, 0x4

    .line 599
    div-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 607
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 599
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 611
    :cond_3
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 612
    const-string/jumbo p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 599
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    goto :goto_1

    .line 593
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue()Z

    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1049
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 1044
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v4, "setCustomerUserId"

    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v1, "setCustomerUserId = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 1046
    const-string v1, "AppUserId"

    invoke-static {v1, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string/jumbo p1, "waitForCustomerId"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0xd4176d9

    const v3, 0xd4176ea

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 1049
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setDebugLog(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 544
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    if-nez p1, :cond_0

    .line 543
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    .line 544
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .locals 5

    const/4 v0, 0x2

    .line 346
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const-string/jumbo v3, "setDisableAdvertisingIdentifiers: "

    if-nez v1, :cond_0

    .line 333
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v1, 0x52

    .line 335
    div-int/2addr v1, v2

    if-nez p1, :cond_1

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-nez p1, :cond_1

    :goto_0
    const/4 v2, 0x1

    .line 335
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFb1kSDK;->getMediationNetwork:Ljava/lang/Boolean;

    .line 337
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    .line 338
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v2

    .line 15031
    iput-boolean p1, v2, Lcom/appsflyer/internal/AFc1eSDK;->component3:Z

    if-eqz p1, :cond_4

    .line 335
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 341
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    .line 16030
    iput-object v2, p1, Lcom/appsflyer/internal/AFc1eSDK;->component2:Lcom/appsflyer/internal/AFh1pSDK;

    .line 335
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    throw v2

    .line 341
    :cond_3
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object p1

    .line 16030
    iput-object v2, p1, Lcom/appsflyer/internal/AFc1eSDK;->component2:Lcom/appsflyer/internal/AFh1pSDK;

    .line 341
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 344
    :cond_4
    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object p1

    new-instance v0, Lcom/appsflyer/internal/AFe1fSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    .line 17089
    iget-object v1, p1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {v2, p1, v0}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDisableNetworkData(Z)V
    .locals 3

    .line 65347
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x2e32c74f

    const v2, -0x2e32c743

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1070
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 1068
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v4, "setExtension"

    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "sdkExtension"

    invoke-virtual {v1, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x3b

    div-int/2addr p1, v3

    :cond_0
    return-void
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 1798
    rem-int v1, v0, v0

    .line 1792
    invoke-static {p2}, Lcom/appsflyer/internal/AFk1xSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1798
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v1, 0x5

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 1793
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1794
    :goto_0
    new-instance v0, Lcom/appsflyer/internal/AFe1wSDK;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFe1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFe1ySDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1wSDK;)V

    return-void

    .line 1796
    :cond_1
    const-string p1, "hostname was empty or null - call for setHost is skipped"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    .line 550
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "setImeiData"

    const v5, -0x17347f7a

    const v6, 0x17347f87

    if-eqz v1, :cond_0

    .line 548
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v6, v5, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 549
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v6, v5, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 548
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v6, v5, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 549
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v6, v5, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFf1cSDK;->getCurrencyIso4217Code(Ljava/lang/String;)V

    .line 550
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final setInstallId(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    .line 1911
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const-string/jumbo v2, "setInstallId"

    const/4 v3, 0x0

    const v4, -0x17347f7a

    const v5, 0x17347f87

    if-nez v1, :cond_0

    .line 1886
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1888
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 1886
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v1, v5, v4, v6}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1888
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    if-nez v1, :cond_2

    .line 1889
    :goto_0
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "AppsFlyerLib.init() method should be called first"

    invoke-virtual {p1, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 1911
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/16 p1, 0x34

    div-int/2addr p1, v3

    :cond_1
    return-void

    .line 1893
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v5, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    const-string v2, "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID"

    .line 1894
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFc1pSDK;->getRevenue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1897
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v0, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v1, "APPSFLYER_ALLOW_CUSTOM_INSTALL_ID Manifest flag should be set to true first"

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p1, :cond_5

    .line 1888
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    const-string v0, "AppsFlyer installId can\'t be null"

    if-eqz p1, :cond_4

    .line 1903
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object p1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1904
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 1909
    :cond_5
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v5, v4, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    .line 1907
    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFb1jSDK;->getCurrencyIso4217Code(Ljava/lang/String;Lcom/appsflyer/internal/AFc1oSDK;)V

    return-void
.end method

.method public final setIsUpdate(Z)V
    .locals 8

    const/4 v0, 0x2

    .line 1076
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string v0, "IS_UPDATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "setIsUpdate"

    const v5, -0x17347f7a

    const v6, 0x17347f87

    if-eqz v1, :cond_0

    .line 1074
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v6, v5, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1075
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1074
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v1, v6, v5, v7}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 8

    const/4 v0, 0x2

    .line 1788
    rem-int v1, v0, v0

    .line 1780
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    sget-object v2, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v2}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    .line 1788
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    move v1, v4

    goto :goto_0

    :cond_0
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    move v1, v3

    .line 1781
    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    const v6, 0x17347f87

    const v7, -0x17347f7a

    invoke-static {v2, v6, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "log"

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1782
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    .line 51156
    const-string v3, "logLevel"

    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    if-nez v1, :cond_2

    .line 1784
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->getRevenue()V

    .line 1788
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1

    .line 1786
    :cond_2
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1, v6, v7, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFg1aSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFg1aSDK;->areAllFieldsValid()V

    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .locals 3

    .line 65333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x4e0598dc    # 5.603469E8f

    const v2, -0x4e0598d6

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 556
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 554
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "setOaidData"

    invoke-interface {v1, v3, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 555
    sput-object p1, Lcom/appsflyer/internal/AFb1kSDK;->getRevenue:Ljava/lang/String;

    .line 556
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 792
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const v0, -0x17347f7a

    const v2, 0x17347f87

    const-string/jumbo v3, "setOneLinkCustomDomain %s"

    if-eqz v1, :cond_0

    .line 790
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 791
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v0

    .line 31312
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1rSDK;->areAllFieldsValid:[Ljava/lang/String;

    goto :goto_1

    .line 790
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 791
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 642
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v1, 0x4b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string v0, "Store API set with value: "

    const-string v3, "api_store_value"

    .line 636
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    .line 640
    :cond_0
    const-string p1, "Cannot set setOutOfStore with null"

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 329
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 324
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    .line 11019
    iget-object v2, v1, Lcom/appsflyer/internal/AFc1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1rSDK;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Lcom/appsflyer/internal/AFb1rSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFb1rSDK;-><init>()V

    .line 12019
    iput-object v2, v1, Lcom/appsflyer/internal/AFc1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1rSDK;

    .line 13019
    :cond_0
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1rSDK;

    if-eqz p1, :cond_8

    .line 329
    sget v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    .line 14019
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 329
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_4

    .line 14023
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 14029
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 14030
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_3

    .line 14032
    const-string p2, "Partner data 1000 characters limit exceeded"

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 14033
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14034
    const-string v2, "limit exceeded: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14035
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1rSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14037
    :cond_3
    iget-object v0, v1, Lcom/appsflyer/internal/AFb1rSDK;->getRevenue:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14038
    iget-object p2, v1, Lcom/appsflyer/internal/AFb1rSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 329
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    throw v2

    .line 14024
    :cond_5
    :goto_0
    iget-object p2, v1, Lcom/appsflyer/internal/AFb1rSDK;->getRevenue:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    .line 14025
    const-string p1, "Partner data is missing or `null`"

    goto :goto_1

    .line 14026
    :cond_6
    const-string p2, "Cleared partner data for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14024
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 329
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2

    .line 14020
    :cond_8
    :goto_2
    const-string p1, "Partner ID is missing or `null`"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1054
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const v2, -0x17347f7a

    const v3, 0x17347f87

    if-eqz v1, :cond_0

    .line 1053
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    invoke-static {p1}, Lcom/appsflyer/internal/AFj1bSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45018
    iput-object p1, v1, Lcom/appsflyer/internal/AFc1eSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 1054
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void

    .line 1053
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->afInfoLog()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v0

    invoke-static {p1}, Lcom/appsflyer/internal/AFj1bSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45018
    iput-object p1, v0, Lcom/appsflyer/internal/AFc1eSDK;->getMonetizationNetwork:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1054
    throw p1
.end method

.method public final setPluginInfo(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V
    .locals 3

    .line 65331
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x501a89cb

    const v2, -0x501a89c6

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 1627
    rem-int v1, v0, v0

    .line 1605
    const-string/jumbo v1, "setPreinstallAttribution API called"

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 1606
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1608
    const-string/jumbo v2, "pid"

    if-eqz p1, :cond_1

    .line 1627
    sget v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v3, v3, 0x49

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 1609
    :try_start_0
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x30

    .line 1611
    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1627
    throw p1

    .line 1609
    :cond_0
    :try_start_2
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 1612
    const-string p1, "c"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1627
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 1615
    :try_start_3
    const-string p1, "af_siteid"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1619
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1622
    :cond_3
    :goto_3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1611
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    .line 1623
    const-string/jumbo p1, "preInstallName"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1625
    :cond_4
    const-string p1, "Cannot set preinstall attribution data without a media source"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 786
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 784
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "setResolveDeepLinkURLs %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 785
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v1

    .line 30321
    iget-object v2, v1, Lcom/appsflyer/internal/AFa1rSDK;->component4:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29317
    iget-object v1, v1, Lcom/appsflyer/internal/AFa1rSDK;->component4:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65352
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x7fd9ff4

    const v2, 0x7fd9ff6

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 251
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/4 v1, 0x1

    .line 250
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "all"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    .line 251
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 3

    .line 65351
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, -0xef92269

    const v2, 0xef9227d

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    .line 759
    rem-int v1, v0, v0

    .line 732
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 735
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    const v4, 0x17347f87

    const v5, -0x17347f7a

    invoke-static {v2, v4, v5, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v2

    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string/jumbo v3, "setUserEmails"

    invoke-interface {v2, v3, v1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 737
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string/jumbo v2, "userEmailsCryptType"

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 738
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 740
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 742
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 759
    sget v6, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v6, v6, 0x79

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v6, v0

    if-nez v6, :cond_1

    .line 742
    aget-object v6, p2, v5

    .line 743
    sget-object v7, Lcom/appsflyer/internal/AFa1uSDK$2;->getRevenue:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v0, :cond_0

    .line 747
    invoke-static {v6}, Lcom/appsflyer/internal/AFj1bSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 748
    const-string/jumbo v6, "sha256_el_arr"

    goto :goto_1

    .line 751
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 742
    const-string/jumbo v6, "plain_el_arr"

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 759
    :cond_1
    aget-object p2, p2, v5

    .line 743
    sget-object p2, Lcom/appsflyer/internal/AFa1uSDK$2;->getRevenue:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    throw v4

    .line 756
    :cond_2
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 758
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    .line 759
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_3

    return-void

    :cond_3
    throw v4
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 728
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const-string/jumbo v0, "setUserEmails"

    const v2, -0x17347f7a

    const v3, 0x17347f87

    if-eqz v1, :cond_0

    .line 726
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    const/16 p1, 0x30

    .line 728
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 726
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 886
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 885
    invoke-virtual {p0, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 886
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    return-void

    .line 885
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 891
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const/4 v1, 0x0

    .line 890
    invoke-virtual {p0, p1, p2, v1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    .line 891
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    .line 1008
    rem-int v4, v3, v3

    .line 896
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    const v6, 0x17347f87

    const v7, -0x17347f7a

    invoke-static {v4, v6, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->afDebugLog()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFb1aSDK;->getCurrencyIso4217Code()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 899
    :cond_0
    iget-boolean v4, v0, Lcom/appsflyer/internal/AFa1uSDK;->toString:Z

    const/16 v5, 0x29

    const-string/jumbo v8, "start"

    const-string v9, "No dev key"

    if-nez v4, :cond_4

    .line 900
    invoke-static {v8}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Ljava/lang/String;)V

    if-nez v1, :cond_4

    .line 905
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    add-int/lit8 v4, v4, 0x15

    .line 931
    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/16 v1, 0x58

    .line 903
    invoke-interface {v2, v1, v9}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v5, v9}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    .line 902
    throw v1

    .line 908
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 909
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v4, v6, v7, v10}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v4}, Lcom/appsflyer/internal/AFc1bSDK;->component3()Lcom/appsflyer/internal/AFh1tSDK;

    move-result-object v4

    .line 910
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFh1uSDK;->getRevenue(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1uSDK;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/appsflyer/internal/AFh1tSDK;->getRevenue(Lcom/appsflyer/internal/AFh1uSDK;)V

    .line 912
    iget-object v10, v0, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    if-nez v10, :cond_6

    .line 1008
    sget v10, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v10, v10, 0x23

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v10, v3

    .line 913
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFj1iSDK;->O_(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 931
    sget v11, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v11, v11, 0x6d

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v11, v3

    .line 915
    iput-object v10, v0, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    goto :goto_1

    :cond_5
    return-void

    .line 920
    :cond_6
    :goto_1
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v10, v6, v7, v11}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v10}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v10

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-interface {v10, v8, v12}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 921
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    sget-object v12, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue:Ljava/lang/String;

    const-string v14, "6.17.3"

    filled-new-array {v14, v12}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v10, v14}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 924
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Build Number: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v10, v6, v7, v12}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v10}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Lcom/appsflyer/internal/AFc1oSDK;)V

    .line 926
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 927
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v3, v6, v7, v5}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork(Ljava/lang/String;)V

    goto :goto_3

    .line 929
    :cond_7
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v11

    if-eq v1, v11, :cond_a

    .line 1008
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_8

    .line 930
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->copydefault()V

    const/16 v1, 0x45

    .line 931
    div-int/2addr v1, v13

    if-eqz v2, :cond_9

    goto :goto_2

    .line 930
    :cond_8
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->copydefault()V

    if-eqz v2, :cond_9

    .line 1008
    :goto_2
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v3

    .line 932
    invoke-interface {v2, v5, v9}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_9
    return-void

    .line 938
    :cond_a
    :goto_3
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v6, v7, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->component1()Lcom/appsflyer/internal/AFf1lSDK;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFa1uSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFf1nSDK;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appsflyer/internal/AFf1lSDK;->getRevenue(Lcom/appsflyer/internal/AFf1nSDK;)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFa1uSDK;->component4()V

    .line 940
    iget-object v1, v0, Lcom/appsflyer/internal/AFa1uSDK;->component3:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1dSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFc1pSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/appsflyer/internal/AFa1uSDK;->c_(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 942
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v6, v7, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->unregisterClient()Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsflyer/internal/AFa1bSDK;->getMediationNetwork()V

    .line 945
    iget-object v1, v0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1dSDK;->afDebugLog()Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v1

    new-instance v3, Lcom/appsflyer/internal/AFa1uSDK$3;

    invoke-direct {v3, v0, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK$3;-><init>(Lcom/appsflyer/internal/AFa1uSDK;Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    move-object/from16 v2, p1

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFb1aSDK;->getCurrencyIso4217Code(Landroid/content/Context;Lcom/appsflyer/internal/AFb1aSDK$AFa1ySDK;)V

    return-void
.end method

.method public final stop(ZLandroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    .line 515
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    .line 505
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getMediationNetwork(Landroid/content/Context;)V

    .line 509
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x17347f87

    const v3, -0x17347f7a

    invoke-static {p2, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/internal/AFc1bSDK;

    .line 510
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFf1cSDK;->getRevenue(Z)V

    .line 511
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->getMediationNetwork()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/appsflyer/internal/AFa1uSDK$$ExternalSyntheticLambda3;-><init>(Lcom/appsflyer/internal/AFc1bSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 515
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    const-string v0, "is_stop_tracking_used"

    if-nez p1, :cond_0

    .line 513
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1bSDK;->component2()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .locals 3

    .line 65349
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x6d2d1908

    const v2, -0x6d2d18fa

    invoke-static {p1, v1, v2, v0}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .locals 4

    const/4 v0, 0x2

    .line 286
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    const v0, -0x17347f7a

    const v2, 0x17347f87

    if-nez v1, :cond_0

    .line 284
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v1

    iput-object p1, v1, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 285
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1

    .line 10304
    iput-wide p2, p1, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    const/16 p1, 0x2d

    .line 286
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 284
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object v1

    iput-object p1, v1, Lcom/appsflyer/internal/AFa1rSDK;->getRevenue:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 285
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1, v2, v0, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1bSDK;->i()Lcom/appsflyer/internal/AFa1rSDK;

    move-result-object p1

    .line 10304
    iput-wide p2, p1, Lcom/appsflyer/internal/AFa1rSDK;->component2:J

    :goto_0
    return-void
.end method

.method public final unregisterConversionListener()V
    .locals 4

    .line 65339
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x42e94c8e

    const v3, -0x42e94c83

    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 65344
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    const v0, 0x365fdbed

    const v1, -0x365fdbd6

    invoke-static {p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const/4 v0, 0x2

    .line 1767
    rem-int v1, v0, v0

    .line 1736
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x17347f87

    const v4, -0x17347f7a

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->equals()Lcom/appsflyer/internal/AFd1mSDK;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    const/4 v8, 0x1

    aput-object p3, v2, v8

    aput-object v5, v2, v0

    const/4 v8, 0x3

    aput-object v6, v2, v8

    const/4 v8, 0x4

    aput-object v7, v2, v8

    if-nez p7, :cond_0

    .line 1743
    const-string v8, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v9, 0x5

    aput-object v8, v2, v9

    .line 1736
    const-string/jumbo v8, "validateAndTrackInAppPurchase"

    invoke-interface {v1, v8, v2}, Lcom/appsflyer/internal/AFd1mSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1746
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v3, v4, v2}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1bSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFf1cSDK;->getMonetizationNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1747
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->v:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Validate in app called with parameters: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_4

    if-eqz v6, :cond_4

    .line 1767
    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 v2, v1, 0x37

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v2, v0

    if-eqz p3, :cond_4

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_3

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v2, v0

    if-nez v5, :cond_2

    goto :goto_1

    .line 1756
    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appsflyer/internal/AFa1vSDK;

    .line 1757
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1758
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code()Lcom/appsflyer/internal/AFc1bSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1bSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFf1cSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFf1cSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v2

    move-object v0, v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/AFa1vSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1765
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1767
    throw v0

    .line 1752
    :cond_4
    :goto_1
    sget-object v0, Lcom/appsflyer/internal/AFa1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_5

    .line 1753
    const-string v1, "Please provide purchase parameters"

    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final validateAndLogInAppPurchase(Lcom/appsflyer/AFPurchaseDetails;Ljava/util/Map;Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/AFPurchaseDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1869
    rem-int v1, v0, v0

    .line 1865
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1dSDK;->copydefault()Lcom/appsflyer/internal/AFe1nSDK;

    move-result-object v1

    new-instance v8, Lcom/appsflyer/internal/AFf1zSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFa1uSDK;->hashCode:Lcom/appsflyer/internal/AFc1dSDK;

    .line 1866
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    move-object v2, v8

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/appsflyer/internal/AFf1zSDK;-><init>(Lcom/appsflyer/internal/AFc1bSDK;Lcom/appsflyer/AppsFlyerProperties;Lcom/appsflyer/AFPurchaseDetails;Ljava/util/Map;Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;)V

    .line 51123
    iget-object p1, v1, Lcom/appsflyer/internal/AFe1nSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/appsflyer/internal/AFe1nSDK$3;

    invoke-direct {p2, v1, v8}, Lcom/appsflyer/internal/AFe1nSDK$3;-><init>(Lcom/appsflyer/internal/AFe1nSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1869
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
.end method

.method public final waitForCustomerUserId(Z)V
    .locals 4

    const/4 v0, 0x2

    .line 588
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    rem-int/2addr v1, v0

    .line 586
    const-string v1, "initAfterCustomerUserID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 587
    const-string/jumbo v1, "waitForCustomerId"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, -0xd4176d9

    const v3, 0xd4176ea

    invoke-static {p1, v2, v3, v1}, Lcom/appsflyer/internal/AFa1uSDK;->getRevenue([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 588
    sget p1, Lcom/appsflyer/internal/AFa1uSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1uSDK;->d:I

    rem-int/2addr p1, v0

    return-void
.end method
