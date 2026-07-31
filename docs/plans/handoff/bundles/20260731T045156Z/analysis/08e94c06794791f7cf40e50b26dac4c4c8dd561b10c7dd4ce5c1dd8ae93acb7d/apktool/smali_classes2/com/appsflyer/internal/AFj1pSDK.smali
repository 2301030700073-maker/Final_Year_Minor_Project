.class public interface abstract Lcom/appsflyer/internal/AFj1pSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFj1pSDK$AFa1tSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u001b\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002H\'\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFj1pSDK;",
        "",
        "",
        "",
        "AFAdRevenueData",
        "()Ljava/util/Map;",
        "",
        "getMonetizationNetwork",
        "()V",
        "getMediationNetwork",
        "AFa1tSDK"
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
.field public static final AFa1tSDK:Lcom/appsflyer/internal/AFj1pSDK$AFa1tSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65354
    sget-object v0, Lcom/appsflyer/internal/AFj1pSDK$AFa1tSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1pSDK$AFa1tSDK;

    sput-object v0, Lcom/appsflyer/internal/AFj1pSDK;->AFa1tSDK:Lcom/appsflyer/internal/AFj1pSDK$AFa1tSDK;

    return-void
.end method


# virtual methods
.method public abstract AFAdRevenueData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediationNetwork()V
.end method

.method public abstract getMonetizationNetwork()V
.end method
