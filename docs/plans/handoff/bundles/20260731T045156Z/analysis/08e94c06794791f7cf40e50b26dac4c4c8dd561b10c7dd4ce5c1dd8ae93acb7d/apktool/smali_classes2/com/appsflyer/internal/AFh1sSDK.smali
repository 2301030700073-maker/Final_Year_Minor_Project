.class public final Lcom/appsflyer/internal/AFh1sSDK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final getMonetizationNetwork()Z
    .locals 1

    .line 289
    :try_start_0
    sget-object v0, Lcom/appsflyer/migration/AppsFlyerMigrationHelper;->INSTANCE:Lcom/appsflyer/migration/AppsFlyerMigrationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method
