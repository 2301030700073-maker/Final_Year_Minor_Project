.class public final Lcom/appsflyer/internal/AFh1nSDK;
.super Lcom/appsflyer/internal/AFh1jSDK;
.source ""


# instance fields
.field public final copydefault:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final hashCode:Lcom/appsflyer/AFAdRevenueData;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AFAdRevenueData;Ljava/util/Map;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "adrevenue_generic"

    invoke-direct {p0, v2, v0, v1}, Lcom/appsflyer/internal/AFh1jSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 19
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1nSDK;->hashCode:Lcom/appsflyer/AFAdRevenueData;

    .line 20
    iput-object p2, p0, Lcom/appsflyer/internal/AFh1nSDK;->copydefault:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/internal/AFe1mSDK;
    .locals 1

    .line 25
    sget-object v0, Lcom/appsflyer/internal/AFe1mSDK;->e:Lcom/appsflyer/internal/AFe1mSDK;

    return-object v0
.end method
