.class public abstract Landroid/support/v7/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;,
        Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;,
        Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;,
        Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PRIVATE_MSG_CLIENT_DIED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRouteProviderService"

.field private static final TAG:Ljava/lang/String; = "MediaRouteProviderSrv"


# instance fields
.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

.field private final mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

.field private mProvider:Landroid/support/v7/media/MediaRouteProvider;

.field private final mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

.field private final mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    .line 86
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveHandler:Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    .line 87
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    .line 88
    new-instance v0, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$1;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    .line 89
    return-void
.end method

.method static synthetic access$1000(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Messenger;

    .line 56
    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/os/Messenger;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # I

    .line 56
    invoke-static {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 56
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/Intent;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Landroid/os/Bundle;

    .line 56
    invoke-static/range {p0 .. p5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->onBinderDied(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;
    .param p1, "x1"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 56
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProvider;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .line 56
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/media/MediaRouteProviderService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .line 56
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProviderService;->updateCompositeDiscoveryRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/support/v7/media/MediaRouteProviderService;)Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/media/MediaRouteProviderService;

    .line 56
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mPrivateHandler:Landroid/support/v7/media/MediaRouteProviderService$PrivateHandler;

    return-object v0
.end method

.method private findClient(Landroid/os/Messenger;)I
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 419
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    .local v0, "count":I
    const/4 v1, 0x0

    .line 420
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 421
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 422
    .local v2, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v2, p1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->hasMessenger(Landroid/os/Messenger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 423
    return v1

    .line 420
    .end local v2    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 414
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 415
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2
    .param p0, "messenger"    # Landroid/os/Messenger;

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onBinderDied(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 175
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 176
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 177
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 178
    .local v1, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 179
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Binder died"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 183
    .end local v1    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    return-void
.end method

.method private onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "routeId"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 188
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p4, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->createRouteController(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Route controller created"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", routeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 195
    const/4 v1, 0x1

    return v1

    .line 198
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onRegisterClient(Landroid/os/Messenger;II)Z
    .locals 10
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "version"    # I

    .line 138
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    .line 140
    .local v1, "index":I
    if-gez v1, :cond_3

    .line 141
    new-instance v2, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {v2, p0, p1, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 142
    .local v2, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->register()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-boolean v3, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "MediaRouteProviderSrv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Registered, version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    if-eqz p2, :cond_2

    .line 148
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v3

    .line 149
    .local v3, "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    move-object v8, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v4 .. v9}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 153
    .end local v3    # "descriptor":Landroid/support/v7/media/MediaRouteProviderDescriptor;
    :cond_2
    return v0

    .line 157
    .end local v1    # "index":I
    .end local v2    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private onReleaseRouteController(Landroid/os/Messenger;II)Z
    .locals 4
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .line 203
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 204
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->releaseRouteController(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Route controller released"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", controllerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 211
    const/4 v1, 0x1

    return v1

    .line 214
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 11
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .line 295
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v7

    .line 296
    .local v7, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v7, :cond_2

    .line 297
    invoke-virtual {v7, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v8

    .line 299
    .local v8, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v8, :cond_2

    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    if-eqz p2, :cond_0

    .line 302
    new-instance v10, Landroid/support/v7/media/MediaRouteProviderService$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v7

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$1;-><init>(Landroid/support/v7/media/MediaRouteProviderService;Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    move-object v9, v10

    .line 339
    :cond_0
    invoke-virtual {v8, p4, v9}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "MediaRouteProviderSrv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Route control request delivered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", controllerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 348
    .end local v8    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .end local v9    # "callback":Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private onSelectRoute(Landroid/os/Messenger;II)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I

    .line 219
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 220
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 223
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 225
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Route selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 230
    const/4 v2, 0x1

    return v2

    .line 233
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "request"    # Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 353
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 354
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v1

    .line 356
    .local v1, "actuallyChanged":Z
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Set discovery request, request="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", actuallyChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", compositeDiscoveryRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 362
    const/4 v2, 0x1

    return v2

    .line 364
    .end local v1    # "actuallyChanged":Z
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onSetRouteVolume(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "volume"    # I

    .line 257
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 258
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 261
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 263
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 264
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Route volume changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 268
    const/4 v2, 0x1

    return v2

    .line 271
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onUnregisterClient(Landroid/os/Messenger;I)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I

    .line 161
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    .line 162
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 163
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 164
    .local v1, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 165
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 168
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 169
    const/4 v2, 0x1

    return v2

    .line 171
    .end local v1    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onUnselectRoute(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "reason"    # I

    .line 238
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 239
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 242
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 244
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Route unselected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 249
    const/4 v2, 0x1

    return v2

    .line 252
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .param p3, "controllerId"    # I
    .param p4, "delta"    # I

    .line 276
    invoke-direct {p0, p1}, Landroid/support/v7/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    .line 277
    .local v0, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0, p3}, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 280
    .local v1, "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {v1, p4}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 282
    sget-boolean v2, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 283
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": Route volume updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", controllerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    .line 287
    const/4 v2, 0x1

    return v2

    .line 290
    .end local v1    # "controller":Landroid/support/v7/media/MediaRouteProvider$RouteController;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private sendDescriptorChanged(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 9
    .param p1, "descriptor"    # Landroid/support/v7/media/MediaRouteProviderDescriptor;

    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    .local v5, "descriptorBundle":Landroid/os/Bundle;
    :goto_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 370
    .local v0, "count":I
    const/4 v1, 0x0

    .line 370
    .local v1, "i":I
    :goto_2
    move v7, v1

    .line 370
    .end local v1    # "i":I
    .local v7, "i":I
    if-ge v7, v0, :cond_2

    .line 371
    iget-object v1, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    .line 372
    .local v8, "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    iget-object v1, v8, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mMessenger:Landroid/os/Messenger;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 374
    sget-boolean v1, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 375
    const-string v1, "MediaRouteProviderSrv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v8    # "client":Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;
    :cond_1
    add-int/lit8 v1, v7, 0x1

    .line 370
    .end local v7    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 378
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static sendGenericFailure(Landroid/os/Messenger;I)V
    .locals 6
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 433
    :cond_0
    return-void
.end method

.method private static sendGenericSuccess(Landroid/os/Messenger;I)V
    .locals 6
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "requestId"    # I

    .line 436
    if-eqz p1, :cond_0

    .line 437
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 439
    :cond_0
    return-void
.end method

.method private static sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "messenger"    # Landroid/os/Messenger;
    .param p1, "what"    # I
    .param p2, "requestId"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "data"    # Landroid/os/Bundle;

    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 445
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 446
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 447
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 450
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    goto :goto_1

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MediaRouteProviderSrv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not send message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 451
    :catch_1
    move-exception v1

    goto :goto_0

    .line 456
    :goto_1
    return-void
.end method

.method private updateCompositeDiscoveryRequest()Z
    .locals 9

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    const/4 v1, 0x0

    .line 383
    .local v1, "selectorBuilder":Landroid/support/v7/media/MediaRouteSelector$Builder;
    const/4 v2, 0x0

    .line 384
    .local v2, "activeScan":Z
    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 385
    .local v3, "count":I
    const/4 v4, 0x0

    move-object v5, v0

    const/4 v0, 0x0

    .line 385
    .local v0, "i":I
    .local v5, "composite":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :goto_0
    if-ge v0, v3, :cond_4

    .line 386
    iget-object v6, p0, Landroid/support/v7/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouteProviderService$ClientRecord;->mDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 387
    .local v6, "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    :cond_0
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v7

    or-int/2addr v2, v7

    .line 390
    if-nez v5, :cond_1

    .line 391
    move-object v5, v6

    goto :goto_1

    .line 393
    :cond_1
    if-nez v1, :cond_2

    .line 394
    new-instance v7, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>(Landroid/support/v7/media/MediaRouteSelector;)V

    move-object v1, v7

    .line 396
    :cond_2
    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->getSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addSelector(Landroid/support/v7/media/MediaRouteSelector;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    .line 385
    .end local v6    # "request":Landroid/support/v7/media/MediaRouteDiscoveryRequest;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 401
    new-instance v0, Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v6

    invoke-direct {v0, v6, v2}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;-><init>(Landroid/support/v7/media/MediaRouteSelector;Z)V

    move-object v5, v0

    .line 403
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v0, v5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 406
    :cond_6
    iput-object v5, p0, Landroid/support/v7/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    .line 407
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0, v5}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    .line 408
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_7
    return v4
.end method


# virtual methods
.method public getMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.MediaRouteProviderService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    .line 116
    .local v0, "provider":Landroid/support/v7/media/MediaRouteProvider;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "providerPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".  Service package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    .line 127
    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProviderCallback:Landroid/support/v7/media/MediaRouteProviderService$ProviderCallback;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 130
    .end local v0    # "provider":Landroid/support/v7/media/MediaRouteProvider;
    .end local v1    # "providerPackage":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mProvider:Landroid/support/v7/media/MediaRouteProvider;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateMediaRouteProvider()Landroid/support/v7/media/MediaRouteProvider;
.end method
