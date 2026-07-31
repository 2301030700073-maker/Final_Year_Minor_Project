.class public abstract Lcom/appsflyer/internal/AFe1rSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008&\u0018\u0000 \t2\u00020\u0001:\u0004\t\n\u000b\u000cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1rSDK;",
        "",
        "",
        "p0",
        "<init>",
        "(Ljava/lang/String;)V",
        "getMediationNetwork",
        "Ljava/lang/String;",
        "getMonetizationNetwork",
        "AFa1vSDK",
        "AFa1uSDK",
        "AFa1ySDK",
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
.field private static final AFAdRevenueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AFa1vSDK:Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;


# instance fields
.field public final getMediationNetwork:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1rSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFe1rSDK$AFa1vSDK;

    const/16 v0, 0x19

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af_achievement_unlocked"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 13
    const-string v2, "af_ad_click"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 14
    const-string v2, "af_ad_view"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 15
    const-string v2, "af_add_payment_info"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 16
    const-string v2, "af_add_to_cart"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 17
    const-string v2, "af_add_to_wishlist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 18
    const-string v2, "af_complete_registration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 19
    const-string v2, "af_content_view"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 20
    const-string v2, "af_initiated_checkout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 21
    const-string v2, "af_invite"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 22
    const-string v2, "af_level_achieved"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 23
    const-string v2, "af_list_view"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 24
    const-string v2, "af_login"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 25
    const-string v2, "af_opened_from_push_notification"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 26
    const-string v2, "af_purchase"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 27
    const-string v2, "af_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 28
    const-string v2, "af_re_engage"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 29
    const-string v2, "af_search"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 30
    const-string v2, "af_share"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 31
    const-string v2, "af_spent_credits"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 32
    const-string v2, "af_start_trial"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 33
    const-string v2, "af_subscribe"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 34
    const-string v2, "af_travel_booking"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 35
    const-string v2, "af_tutorial_completion"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 36
    const-string v2, "af_update"

    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFe1rSDK;->AFAdRevenueData:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1rSDK;->getMediationNetwork:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic AFAdRevenueData()Ljava/util/List;
    .locals 1

    .line 9
    sget-object v0, Lcom/appsflyer/internal/AFe1rSDK;->AFAdRevenueData:Ljava/util/List;

    return-object v0
.end method
