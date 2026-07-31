.class public final Lcom/appsflyer/internal/AFc1vSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final AFAdRevenueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            ">;"
        }
    .end annotation
.end field

.field final getCurrencyIso4217Code:Ljava/lang/String;

.field final getMediationNetwork:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/appsflyer/internal/AFe1mSDK;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    .line 12
    iput p3, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65352
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/AFc1vSDK;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFc1vSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    iget p1, p1, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 65354
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1vSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1vSDK;->AFAdRevenueData:Ljava/util/List;

    iget v2, p0, Lcom/appsflyer/internal/AFc1vSDK;->getMediationNetwork:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StorageConfigTypeEntry(cacheDirName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", eventTypes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
