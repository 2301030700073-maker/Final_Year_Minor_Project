.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;
.implements Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalMediaRouter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;,
        Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

.field private mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

.field private final mLowRam:Z

.field private mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

.field private final mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

.field private final mRemoteControlClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/media/MediaRouter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

.field private mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

.field private final mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    .line 1608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    .line 1610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    .line 1612
    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    invoke-direct {v0}, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    .line 1614
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    .line 1615
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouter$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    .line 1628
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$1;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 1643
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    .line 1644
    invoke-static {p1}, Landroid/support/v4/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroid/support/v4/hardware/display/DisplayManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

    .line 1645
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/support/v4/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    .line 1652
    invoke-static {p1, p0}, Landroid/support/v7/media/SystemMediaRouteProvider;->obtain(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)Landroid/support/v7/media/SystemMediaRouteProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    .line 1653
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 1654
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
    .param p1, "x1"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "x2"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1601
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v7/media/SystemMediaRouteProvider;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    .line 1601
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method private assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "routeDescriptorId"    # Ljava/lang/String;

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2034
    .local v0, "uniqueId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 2035
    return-object v0

    .line 2037
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x2

    .line 2038
    .local v2, "i":I
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s_%d"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2039
    .local v3, "newUniqueId":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRouteByUniqueId(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    .line 2040
    return-object v3

    .line 2037
    .end local v3    # "newUniqueId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3

    .line 2096
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2096
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2097
    .local v1, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    return-object v1

    .line 2102
    .end local v1    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_0
    goto :goto_0

    .line 2103
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method private findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I
    .locals 3
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 1912
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1913
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1913
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1914
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1915
    return v1

    .line 1913
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1918
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findRemoteControlClientRecord(Ljava/lang/Object;)I
    .locals 4
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2231
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2232
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2232
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2233
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2234
    .local v2, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 2235
    return v1

    .line 2232
    .end local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2238
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findRouteByUniqueId(Ljava/lang/String;)I
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2046
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2047
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2047
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2048
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$800(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2049
    return v1

    .line 2047
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2052
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2115
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$900(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$400(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2119
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$000(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEFAULT_ROUTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemLiveAudioOnlyRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2107
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    if-ne v0, v1, :cond_0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 2125
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_5

    .line 2126
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 2127
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route unselected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x107

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    .line 2133
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2134
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2139
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2141
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_4

    .line 2142
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$000(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2144
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_2

    .line 2145
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2147
    :cond_2
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2148
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v1, 0x106

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2153
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2155
    :cond_5
    return-void
.end method

.method private updatePlaybackInfoFromSelectedRoute()V
    .locals 5

    .line 2242
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_4

    .line 2243
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    .line 2244
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    .line 2245
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 2246
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackStream()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 2247
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    iput v1, v0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    .line 2249
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2250
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2250
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2251
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2252
    .local v2, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->updatePlaybackInfo()V

    .line 2250
    .end local v2    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2254
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v1, :cond_3

    .line 2255
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2257
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    goto :goto_1

    .line 2259
    :cond_1
    const/4 v1, 0x0

    .line 2260
    .local v1, "controlType":I
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v2, v2, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2262
    const/4 v1, 0x2

    .line 2264
    :cond_2
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v3, v3, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mPlaybackInfo:Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;

    iget v4, v4, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->configureVolume(III)V

    .line 2268
    .end local v0    # "count":I
    .end local v1    # "controlType":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 2269
    :cond_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_5

    .line 2270
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2273
    :cond_5
    :goto_2
    return-void
.end method

.method private updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 13
    .param p1, "provider"    # Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .param p2, "providerDescriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1923
    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1926
    const/4 v0, 0x0

    .line 1927
    .local v0, "targetIndex":I
    const/4 v1, 0x0

    .line 1928
    .local v1, "selectedRouteDescriptorChanged":Z
    if-eqz p2, :cond_c

    .line 1929
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1930
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 1932
    .local v2, "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1933
    .local v3, "routeCount":I
    const/4 v4, 0x0

    .line 1933
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_a

    .line 1934
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouteDescriptor;

    .line 1935
    .local v5, "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v6

    .line 1936
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v7

    .line 1937
    .local v7, "sourceIndex":I
    if-gez v7, :cond_1

    .line 1939
    invoke-direct {p0, p1, v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->assignRouteUniqueId(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1940
    .local v8, "uniqueId":Ljava/lang/String;
    new-instance v9, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {v9, p1, v6, v8}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    .local v9, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v0, 0x1

    .line 1941
    .local v11, "targetIndex":I
    invoke-virtual {v10, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1942
    .end local v0    # "targetIndex":I
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    invoke-virtual {v9, v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 1946
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    const-string v0, "MediaRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route added: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v10, 0x101

    invoke-virtual {v0, v10, v9}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1950
    .end local v8    # "uniqueId":Ljava/lang/String;
    .end local v9    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    nop

    .line 1933
    move v0, v11

    goto/16 :goto_1

    .line 1950
    .end local v11    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_1
    if-ge v7, v0, :cond_2

    .line 1951
    const-string v8, "MediaRouter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring route descriptor with duplicate id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1955
    :cond_2
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1956
    .local v8, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    .line 1956
    .local v10, "targetIndex":I
    invoke-static {v9, v7, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1959
    .end local v0    # "targetIndex":I
    invoke-virtual {v8, v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v0

    .line 1961
    .local v0, "changes":I
    if-eqz v0, :cond_9

    .line 1962
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_4

    .line 1963
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1964
    const-string v9, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_3
    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v11, 0x103

    invoke-virtual {v9, v11, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1969
    :cond_4
    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_6

    .line 1970
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1971
    const-string v9, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route volume changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_5
    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v11, 0x104

    invoke-virtual {v9, v11, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1976
    :cond_6
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_8

    .line 1977
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1978
    const-string v9, "MediaRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Route presentation display changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_7
    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v11, 0x105

    invoke-virtual {v9, v11, v8}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1984
    :cond_8
    iget-object v9, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v8, v9, :cond_9

    .line 1985
    const/4 v1, 0x1

    .line 1933
    .end local v5    # "routeDescriptor":Landroid/support/v7/media/MediaRouteDescriptor;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "sourceIndex":I
    .end local v8    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    .end local v10    # "targetIndex":I
    .local v0, "targetIndex":I
    :cond_9
    move v0, v10

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1990
    .end local v2    # "routeDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/media/MediaRouteDescriptor;>;"
    .end local v3    # "routeCount":I
    .end local v4    # "i":I
    :cond_a
    goto :goto_2

    .line 1991
    :cond_b
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring invalid provider descriptor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_c
    :goto_2
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1996
    .local v2, "i":I
    :goto_3
    if-lt v2, v0, :cond_d

    .line 1998
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1999
    .local v3, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    .line 2001
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1996
    .end local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2005
    .end local v2    # "i":I
    :cond_d
    invoke-direct {p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateSelectedRouteIfNeeded(Z)V

    .line 2012
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2012
    .restart local v2    # "i":I
    :goto_4
    if-lt v2, v0, :cond_f

    .line 2013
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2014
    .restart local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2015
    const-string v4, "MediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_e
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v5, 0x102

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2012
    .end local v3    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2021
    .end local v2    # "i":I
    :cond_f
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2022
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_10
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 2026
    .end local v0    # "targetIndex":I
    .end local v1    # "selectedRouteDescriptorChanged":Z
    :cond_11
    return-void
.end method

.method private updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;
    .param p2, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 1903
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 1904
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1906
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 1907
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 1909
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_0
    return-void
.end method

.method private updateSelectedRouteIfNeeded(Z)V
    .locals 6
    .param p1, "selectedRouteDescriptorChanged"    # Z

    .line 2057
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    const-string v0, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing the default route because it is no longer selectable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2062
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2063
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2063
    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2064
    .local v2, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    invoke-direct {p0, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isSystemDefaultRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2065
    iput-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2066
    const-string v3, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found default route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    goto :goto_1

    .line 2069
    .end local v2    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_1
    goto :goto_0

    .line 2073
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->isRouteSelectable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2074
    const-string v0, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unselecting the current route because it is no longer selectable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-direct {p0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2079
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_4

    .line 2083
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->chooseFallbackRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_2

    .line 2085
    :cond_4
    if-eqz p1, :cond_5

    .line 2087
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2089
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 1863
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 1864
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1866
    new-instance v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-direct {v1, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 1867
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1869
    const-string v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x201

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1873
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 1875
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviderCallback:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 1877
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 1879
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public addRemoteControlClient(Ljava/lang/Object;)V
    .locals 3
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2171
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2172
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 2173
    new-instance v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    .line 2174
    .local v1, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .line 1680
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .line 1732
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 1736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDefaultRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    .line 1696
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDisplayManager:Landroid/support/v4/hardware/display/DisplayManagerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/hardware/display/DisplayManagerCompat;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 2222
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->getToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2224
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2225
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0

    .line 2227
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProviderContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1684
    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    return-object v0

    .line 1688
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRouter(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1666
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1666
    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1667
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter;

    .line 1668
    .local v1, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v1, :cond_1

    .line 1669
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1670
    :cond_1
    iget-object v2, v1, Landroid/support/v7/media/MediaRouter;->mContext:Landroid/content/Context;

    if-ne v2, p1, :cond_0

    .line 1671
    return-object v1

    .line 1674
    .end local v0    # "i":I
    .end local v1    # "router":Landroid/support/v7/media/MediaRouter;
    :cond_2
    new-instance v0, Landroid/support/v7/media/MediaRouter;

    invoke-direct {v0, p1}, Landroid/support/v7/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 1675
    .local v0, "router":Landroid/support/v7/media/MediaRouter;
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    return-object v0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1724
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .line 1743
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public getSystemRouteByDescriptorId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .line 2159
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    invoke-direct {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2160
    .local v0, "providerIndex":I
    if-ltz v0, :cond_0

    .line 2161
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 2162
    .local v1, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-virtual {v1, p1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->findRouteByDescriptorId(Ljava/lang/String;)I

    move-result v2

    .line 2163
    .local v2, "routeIndex":I
    if-ltz v2, :cond_0

    .line 2164
    invoke-static {v1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$700(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v3

    .line 2167
    .end local v1    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .end local v2    # "routeIndex":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z
    .locals 6
    .param p1, "selector"    # Landroid/support/v7/media/MediaRouteSelector;
    .param p2, "flags"    # I

    .line 1771
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1772
    return v1

    .line 1776
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v0, :cond_1

    .line 1777
    return v2

    .line 1781
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1782
    .local v0, "routeCount":I
    const/4 v3, 0x0

    .line 1782
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 1783
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1784
    .local v4, "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1786
    goto :goto_1

    .line 1788
    :cond_2
    invoke-virtual {v4, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1789
    return v2

    .line 1782
    .end local v4    # "route":Landroid/support/v7/media/MediaRouter$RouteInfo;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1794
    .end local v3    # "i":I
    :cond_4
    return v1
.end method

.method public removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5
    .param p1, "providerInstance"    # Landroid/support/v7/media/MediaRouteProvider;

    .line 1883
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findProviderInfo(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 1884
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 1888
    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 1890
    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    .line 1891
    .local v2, "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    invoke-direct {p0, v2, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderContents(Landroid/support/v7/media/MediaRouter$ProviderInfo;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 1893
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    const-string v1, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCallbackHandler:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;

    const/16 v3, 0x202

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->post(ILjava/lang/Object;)V

    .line 1897
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1899
    .end local v2    # "provider":Landroid/support/v7/media/MediaRouter$ProviderInfo;
    :cond_1
    return-void
.end method

.method public removeRemoteControlClient(Ljava/lang/Object;)V
    .locals 2
    .param p1, "rcc"    # Ljava/lang/Object;

    .line 2179
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->findRemoteControlClientRecord(Ljava/lang/Object;)I

    move-result v0

    .line 2180
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2181
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRemoteControlClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;

    .line 2182
    .local v1, "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;->disconnect()V

    .line 2184
    .end local v1    # "record":Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$RemoteControlClientRecord;
    :cond_0
    return-void
.end method

.method public requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "volume"    # I

    .line 1712
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 1715
    :cond_0
    return-void
.end method

.method public requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "delta"    # I

    .line 1718
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 1721
    :cond_0
    return-void
.end method

.method public selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1754
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1755
    return-void
.end method

.method public selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "unselectReason"    # I

    .line 1758
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1759
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select removed route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return-void

    .line 1762
    :cond_0
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->access$400(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1763
    const-string v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring attempt to select disabled route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return-void

    .line 1767
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setSelectedRouteInternal(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1768
    return-void
.end method

.method public sendControlRequest(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)V
    .locals 1
    .param p1, "route"    # Landroid/support/v7/media/MediaRouter$RouteInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    .line 1701
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSelectedRouteController:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    return-void

    .line 1706
    :cond_0
    if-eqz p3, :cond_1

    .line 1707
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1709
    :cond_1
    return-void
.end method

.method public setMediaSession(Ljava/lang/Object;)V
    .locals 1
    .param p1, "session"    # Ljava/lang/Object;

    .line 2187
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;->clearVolumeHandling()V

    .line 2190
    :cond_0
    if-nez p1, :cond_1

    .line 2191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    goto :goto_0

    .line 2193
    :cond_1
    new-instance v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;-><init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mMediaSession:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$MediaSessionRecord;

    .line 2194
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updatePlaybackInfoFromSelectedRoute()V

    .line 2196
    :goto_0
    return-void
.end method

.method public setMediaSessionCompat(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2
    .param p1, "session"    # Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2199
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mCompatSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2200
    if-nez p1, :cond_0

    .line 2201
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 2202
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    .line 2203
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2206
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2207
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getMediaSession()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->setMediaSession(Ljava/lang/Object;)V

    goto :goto_0

    .line 2208
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 2209
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_2

    .line 2210
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    .line 2211
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2213
    :cond_2
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRccMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2214
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSessionActiveListener:Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->addOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V

    .line 2215
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2216
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    .line 2219
    :cond_3
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1659
    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    .line 1661
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRegisteredProviderWatcher:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->start()V

    .line 1662
    return-void
.end method

.method public updateDiscoveryRequest()V
    .locals 9

    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "discover":Z
    const/4 v1, 0x0

    .line 1801
    .local v1, "activeScan":Z
    new-instance v2, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    .line 1802
    .local v2, "builder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    iget-object v3, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1802
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    .line 1803
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter;

    .line 1804
    .local v5, "router":Landroid/support/v7/media/MediaRouter;
    if-nez v5, :cond_0

    .line 1805
    iget-object v4, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1807
    :cond_0
    iget-object v6, v5, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1808
    .local v6, "count":I
    nop

    .line 1808
    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1809
    iget-object v7, v5, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    .line 1810
    .local v7, "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    iget-object v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, v8}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    .line 1811
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 1812
    const/4 v1, 0x1

    .line 1813
    const/4 v0, 0x1

    .line 1815
    :cond_1
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 1816
    iget-boolean v8, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-nez v8, :cond_2

    .line 1817
    const/4 v0, 0x1

    .line 1820
    :cond_2
    iget v8, v7, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    .line 1821
    const/4 v0, 0x1

    .line 1808
    .end local v7    # "callback":Landroid/support/v7/media/MediaRouter$CallbackRecord;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1825
    .end local v4    # "j":I
    .end local v5    # "router":Landroid/support/v7/media/MediaRouter;
    .end local v6    # "count":I
    :cond_4
    :goto_2
    goto :goto_0

    .line 1826
    .end local v3    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v3

    goto :goto_3

    :cond_6
    sget-object v3, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    .line 1829
    .local v3, "selector":Landroid/support/v7/media/MediaRouteSelector;
    :goto_3
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v5

    if-ne v5, v1, :cond_7

    .line 1832
    return-void

    .line 1834
    :cond_7
    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v1, :cond_9

    .line 1836
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-nez v5, :cond_8

    .line 1837
    return-void

    .line 1839
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    goto :goto_4

    .line 1842
    :cond_9
    new-instance v5, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-direct {v5, v3, v1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    iput-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 1844
    :goto_4
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->access$500()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1845
    const-string v5, "MediaRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated discovery request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_a
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    iget-boolean v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mLowRam:Z

    if-eqz v5, :cond_b

    .line 1848
    const-string v5, "MediaRouter"

    const-string v6, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_b
    iget-object v5, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1856
    .local v5, "providerCount":I
    nop

    .line 1856
    .local v4, "i":I
    :goto_5
    if-ge v4, v5, :cond_c

    .line 1857
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-static {v6}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->access$600(Landroid/support/v7/media/MediaRouter$ProviderInfo;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v6, v7}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 1856
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1859
    .end local v4    # "i":I
    :cond_c
    return-void
.end method
