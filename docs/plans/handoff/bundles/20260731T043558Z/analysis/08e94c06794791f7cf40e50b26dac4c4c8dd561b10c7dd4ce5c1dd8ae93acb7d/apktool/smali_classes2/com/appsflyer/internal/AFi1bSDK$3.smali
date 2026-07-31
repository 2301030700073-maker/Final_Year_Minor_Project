.class final Lcom/appsflyer/internal/AFi1bSDK$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFi1bSDK;->getCurrencyIso4217Code(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/AFi1bSDK;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method public static synthetic $r8$lambda$ZNXMUFECd9HlVZav-Xc2Uzpm_uM(Lcom/appsflyer/internal/AFi1bSDK$3;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFi1bSDK$3;->lambda$onInstallReferrerSetupFinished$0(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Lcom/appsflyer/internal/AFi1bSDK;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->this$0:Lcom/appsflyer/internal/AFi1bSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onInstallReferrerSetupFinished$0(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->this$0:Lcom/appsflyer/internal/AFi1bSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/internal/AFi1bSDK;->getMonetizationNetwork(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 3

    .line 95
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->toString:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v2, "Install Referrer service disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AFLogger;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->this$0:Lcom/appsflyer/internal/AFi1bSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFi1bSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iget-object v2, p0, Lcom/appsflyer/internal/AFi1bSDK$3;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/appsflyer/internal/AFi1bSDK$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/appsflyer/internal/AFi1bSDK$3$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFi1bSDK$3;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
