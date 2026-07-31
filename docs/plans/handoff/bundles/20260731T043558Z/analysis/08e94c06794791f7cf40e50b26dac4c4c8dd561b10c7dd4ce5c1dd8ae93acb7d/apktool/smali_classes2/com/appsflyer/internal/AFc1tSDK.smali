.class public final Lcom/appsflyer/internal/AFc1tSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

.field public getCurrencyIso4217Code:Ljava/lang/String;

.field public getMediationNetwork:Ljava/lang/String;

.field private getMonetizationNetwork:[B

.field getRevenue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1mSDK;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    .line 28
    iput-object p3, p0, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 35
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p1

    .line 36
    const-string/jumbo v1, "url="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo v1, "version="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_2
    const-string v1, "data="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    .line 42
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    goto :goto_0

    .line 43
    :cond_3
    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 46
    :try_start_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFe1mSDK;->valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1mSDK;

    move-result-object v1

    iput-object v1, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    const-string v2, "CACHE: Unknown task type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 89
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFc1tSDK;

    .line 90
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 99
    :cond_6
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 102
    :cond_8
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    iget-object p1, p1, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    if-ne v2, p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public final getMonetizationNetwork()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1tSDK;->getRevenue:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMonetizationNetwork:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->getMediationNetwork:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1mSDK;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
