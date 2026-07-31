.class public final Lcom/appsflyer/internal/AFg1ySDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final AFAdRevenueData:I

.field final getCurrencyIso4217Code:I

.field final getMediationNetwork:Ljava/lang/String;

.field final getMonetizationNetwork:I

.field final getRevenue:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getCurrencyIso4217Code:I

    .line 5
    iput p2, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFAdRevenueData:I

    .line 6
    iput p3, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMonetizationNetwork:I

    .line 7
    iput p4, p0, Lcom/appsflyer/internal/AFg1ySDK;->getRevenue:I

    .line 8
    iput-object p5, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMediationNetwork:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/appsflyer/internal/AFg1ySDK;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFg1ySDK;

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getCurrencyIso4217Code:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->getCurrencyIso4217Code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFAdRevenueData:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->AFAdRevenueData:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMonetizationNetwork:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->getMonetizationNetwork:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getRevenue:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1ySDK;->getRevenue:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMediationNetwork:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1ySDK;->getMediationNetwork:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 65353
    iget v0, p0, Lcom/appsflyer/internal/AFg1ySDK;->getCurrencyIso4217Code:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFAdRevenueData:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMonetizationNetwork:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getRevenue:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMediationNetwork:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 65354
    iget v0, p0, Lcom/appsflyer/internal/AFg1ySDK;->getCurrencyIso4217Code:I

    iget v1, p0, Lcom/appsflyer/internal/AFg1ySDK;->AFAdRevenueData:I

    iget v2, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMonetizationNetwork:I

    iget v3, p0, Lcom/appsflyer/internal/AFg1ySDK;->getRevenue:I

    iget-object v4, p0, Lcom/appsflyer/internal/AFg1ySDK;->getMediationNetwork:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CmpTcfData(policyVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", gdprApplies="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmpSdkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmpSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tcString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
