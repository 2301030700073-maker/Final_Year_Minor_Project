.class public abstract Lcom/appsflyer/internal/AFi1pSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFi1pSDK$AFa1ySDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H%\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000cH\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00128\u0005@\u0004X\u0085\u000c\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0013R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00148\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0015"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFi1pSDK;",
        "",
        "Landroid/content/Context;",
        "p0",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "getCurrencyIso4217Code",
        "()Ljava/lang/String;",
        "Lcom/appsflyer/internal/AFi1tSDK;",
        "AFAdRevenueData",
        "()Lcom/appsflyer/internal/AFi1tSDK;",
        "Landroid/net/NetworkInfo;",
        "",
        "v_",
        "(Landroid/net/NetworkInfo;)Z",
        "getRevenue",
        "()Z",
        "Landroid/net/ConnectivityManager;",
        "Landroid/net/ConnectivityManager;",
        "Landroid/telephony/TelephonyManager;",
        "Landroid/telephony/TelephonyManager;",
        "AFa1ySDK"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AFa1ySDK:Lcom/appsflyer/internal/AFi1pSDK$AFa1ySDK;


# instance fields
.field AFAdRevenueData:Landroid/net/ConnectivityManager;

.field private final getCurrencyIso4217Code:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65354
    new-instance v0, Lcom/appsflyer/internal/AFi1pSDK$AFa1ySDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFi1pSDK$AFa1ySDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFi1pSDK;->AFa1ySDK:Lcom/appsflyer/internal/AFi1pSDK$AFa1ySDK;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 15
    :goto_0
    iput-object v0, p0, Lcom/appsflyer/internal/AFi1pSDK;->AFAdRevenueData:Landroid/net/ConnectivityManager;

    .line 17
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/TelephonyManager;

    :cond_1
    iput-object v2, p0, Lcom/appsflyer/internal/AFi1pSDK;->getCurrencyIso4217Code:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected static v_(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final AFAdRevenueData()Lcom/appsflyer/internal/AFi1tSDK;
    .locals 6

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1pSDK;->getCurrencyIso4217Code:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 34
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 37
    const-string v0, "CDMA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 41
    :goto_0
    const-string v3, "Exception while collecting network info. "

    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    move-object v0, v1

    .line 43
    :cond_2
    :goto_1
    new-instance v1, Lcom/appsflyer/internal/AFi1tSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFi1pSDK;->getCurrencyIso4217Code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFi1pSDK;->getRevenue()Z

    move-result v4

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/appsflyer/internal/AFi1tSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method protected abstract getCurrencyIso4217Code()Ljava/lang/String;
.end method

.method public abstract getRevenue()Z
.end method
