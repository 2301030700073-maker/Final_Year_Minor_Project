.class public Lcom/google/android/gms/internal/zzjs;
.super Lcom/google/android/gms/cast/internal/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzjs$zza;,
        Lcom/google/android/gms/internal/zzjs$zzc;,
        Lcom/google/android/gms/internal/zzjs$zzb;,
        Lcom/google/android/gms/internal/zzjs$zze;,
        Lcom/google/android/gms/internal/zzjs$zzd;
    }
.end annotation


# static fields
.field static final NAMESPACE:Ljava/lang/String;

.field private static final zzQW:Lcom/google/android/gms/cast/internal/zzl;


# instance fields
.field private zzTA:Ljava/lang/String;

.field private final zzTn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/internal/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzTp:Ljava/lang/String;

.field private final zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

.field private final zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private zzTs:Lcom/google/android/gms/internal/zzjt;

.field private zzTt:Z

.field private zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

.field private zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

.field private zzTw:Ljava/lang/String;

.field private zzTx:Lorg/json/JSONObject;

.field private zzTy:J

.field private zzTz:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

.field private final zztB:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.cast.games"

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/zzf;->zzbE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzjs;->NAMESPACE:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "GameManagerChannel"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$CastApi;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzjs;->NAMESPACE:Ljava/lang/String;

    const-string v1, "CastGameManagerChannel"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTt:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "castSessionId cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTo:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjs;->zzTp:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjs;->zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v3, 0x1

    const-string v4, "game_manager_channel_data"

    aput-object v4, v1, v3

    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zztB:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    new-instance p1, Lcom/google/android/gms/internal/zzjw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, ""

    const/4 v10, -0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/zzjw;-><init>(IILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "googleApiClient needs to be connected and contain the Cast.API API."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/internal/zzjt;)Lcom/google/android/gms/internal/zzjt;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTs:Lcom/google/android/gms/internal/zzjt;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTA:Ljava/lang/String;

    return-object p1
.end method

.method private zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestId"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "type"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "extraMessageData"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playerId"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "playerToken"

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzjs;->zzbA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string p3, "JSONException when trying to create a message: %s"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p5

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjs;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzjs;->zza(Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzo;)V

    return-void
.end method

.method private declared-synchronized zza(Lcom/google/android/gms/internal/zzju;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlC()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlH()Lcom/google/android/gms/internal/zzjt;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlH()Lcom/google/android/gms/internal/zzjt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTs:Lcom/google/android/gms/internal/zzjt;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlE()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzjx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerState()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct {v3, v2, v4, v1, v5}, Lcom/google/android/gms/internal/zzjx;-><init>(Ljava/lang/String;ILorg/json/JSONObject;Z)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzjw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getLobbyState()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getGameplayState()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getGameData()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTs:Lcom/google/android/gms/internal/zzjt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjt;->zzlB()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTs:Lcom/google/android/gms/internal/zzjt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjt;->getMaxPlayers()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzjw;-><init>(IILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->zzlC()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTw:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzju;->getExtraMessageData()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTx:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private zza(Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/cast/internal/zzo;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J

    const-wide/16 v2, 0x1

    add-long v6, v0, v2

    iput-wide v6, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J

    move-object v0, p0

    move-wide v1, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjs;->zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    invoke-interface {p4, v0, v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzo;->zza(JILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Not sending request because it was invalid."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/cast/internal/zzp;

    const-wide/16 v2, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzp;-><init>(J)V

    invoke-virtual {v1, v6, v7, p4}, Lcom/google/android/gms/cast/internal/zzp;->zza(JLcom/google/android/gms/cast/internal/zzo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzjs;->zzQ(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjs$4;

    invoke-direct {v1, p0, v6, v7}, Lcom/google/android/gms/internal/zzjs$4;-><init>(Lcom/google/android/gms/internal/zzjs;J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private zzaI(I)I
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget-object v1, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown GameManager protocol status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xd

    return p1

    :pswitch_0
    const/16 p1, 0x867

    return p1

    :pswitch_1
    const/16 p1, 0x866

    return p1

    :pswitch_2
    const/16 p1, 0x7d3

    return p1

    :pswitch_3
    const/16 p1, 0x7d1

    return p1

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjs;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method private zzb(JILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/cast/internal/zzp;->zzc(JILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzjs;)Lcom/google/android/gms/cast/Cast$CastApi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzjs;->zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzjs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzly()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzjs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlx()V

    return-void
.end method

.method private declared-synchronized zzlv()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to perform an operation on the GameManagerChannel before it is initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to perform an operation on the GameManagerChannel after it has been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private zzlw()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTz:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTz:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/games/GameManagerClient$Listener;->onStateChanged(Lcom/google/android/gms/cast/games/GameManagerState;Lcom/google/android/gms/cast/games/GameManagerState;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTx:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTw:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTz:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTx:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/games/GameManagerClient$Listener;->onGameMessageReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTx:Lorg/json/JSONObject;

    return-void
.end method

.method private declared-synchronized zzlx()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "castSessionId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerTokenMap"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zztB:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "save_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v2, "Error while saving data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized zzly()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zztB:Landroid/content/SharedPreferences;

    const-string v1, "save_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "castSessionId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "playerTokenMap"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v2, "Error while loading data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic zzlz()Lcom/google/android/gms/cast/internal/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTv:Lcom/google/android/gms/cast/games/GameManagerState;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTx:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v3, "Exception while detaching game manager channel."

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentState()Lcom/google/android/gms/cast/games/GameManagerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTu:Lcom/google/android/gms/cast/games/GameManagerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastUsedPlayerId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTA:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDisposed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTs:Lcom/google/android/gms/internal/zzjt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendGameMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlv()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J

    const-wide/16 v2, 0x1

    add-long v5, v0, v2

    iput-wide v5, p0, Lcom/google/android/gms/internal/zzjs;->zzTy:J

    const/4 v8, 0x7

    move-object v4, p0

    move-object v7, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzjs;->zza(JLjava/lang/String;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTq:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendGameRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzjs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzjs$3;-><init>(Lcom/google/android/gms/internal/zzjs;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setListener(Lcom/google/android/gms/cast/games/GameManagerClient$Listener;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzjs;->zzTz:Lcom/google/android/gms/cast/games/GameManagerClient$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/cast/games/GameManagerClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/games/GameManagerClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerInstanceResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "gameManagerClient can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzjs$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzjs$1;-><init>(Lcom/google/android/gms/internal/zzjs;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized zza(Ljava/lang/String;ILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTr:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzjs$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzjs$2;-><init>(Lcom/google/android/gms/internal/zzjs;ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/zza$zza;)Lcom/google/android/gms/common/api/zza$zza;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public zzb(JI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzjs;->zzb(JILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized zzbA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbB(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "message received: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzju;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzju;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "Could not parse game manager message from string: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->zzlH()Lcom/google/android/gms/internal/zzjt;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->zzlC()I

    move-result p1

    if-ne p1, v2, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->zzlG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjs;->zzTn:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->zzlG()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlx()V

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjs;->zza(Lcom/google/android/gms/internal/zzju;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v3, "Not updating from game message because the message contains error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->getStatusCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzjs;->zzaI(I)I

    move-result v1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzju;->getRequestId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/zzjs;->zzb(JILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjs;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjs;->zzlw()V

    :cond_8
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzjs;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v3, "Message is malformed (%s); ignoring: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    aput-object p1, v5, v2

    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected zzz(J)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzp;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/cast/internal/zzp;->zzd(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    sget-object p2, Lcom/google/android/gms/cast/internal/zzp;->zzVr:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjs;->zzTo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzp;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->zzme()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_3
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
