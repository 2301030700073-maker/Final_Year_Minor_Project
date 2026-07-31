.class public final Landroidx/camera/camera2/impl/MeteringRepeating$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig$Builder;


# virtual methods
.method public getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/camera/core/impl/utils/ContextUtil;->getPersistentApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw p1

    .line 34
    :cond_1
    return-object v0
.end method

.method public getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;
    .locals 0

    .line 1
    new-instance p0, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
