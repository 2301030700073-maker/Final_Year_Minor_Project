.class final Lcom/appsflyer/internal/AFg1qSDK$5;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFg1qSDK;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/appsflyer/internal/AFi1lSDK;Lcom/appsflyer/internal/AFg1sSDK;Lcom/appsflyer/internal/AFj1pSDK;Lcom/appsflyer/internal/AFg1vSDK;Lcom/appsflyer/internal/AFh1tSDK;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1pSDK;Lcom/appsflyer/internal/AFi1sSDK;Lcom/appsflyer/internal/AFf1cSDK;Lcom/appsflyer/internal/AFc1gSDK;Lcom/appsflyer/internal/AFg1xSDK;Lcom/appsflyer/internal/AFc1eSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appsflyer/AppsFlyerProperties;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u0006*\u00020\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/appsflyer/AppsFlyerProperties;",
        "getCurrencyIso4217Code",
        "()Lcom/appsflyer/AppsFlyerProperties;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final getMonetizationNetwork:Lcom/appsflyer/internal/AFg1qSDK$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65353
    new-instance v0, Lcom/appsflyer/internal/AFg1qSDK$5;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFg1qSDK$5;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFg1qSDK$5;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1qSDK$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65354
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Lcom/appsflyer/AppsFlyerProperties;
    .locals 1

    .line 91
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFg1qSDK$5;->getCurrencyIso4217Code()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    return-object v0
.end method
