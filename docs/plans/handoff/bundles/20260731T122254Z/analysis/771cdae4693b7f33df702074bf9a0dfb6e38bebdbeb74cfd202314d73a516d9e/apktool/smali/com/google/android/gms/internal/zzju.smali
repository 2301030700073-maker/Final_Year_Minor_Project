.class public Lcom/google/android/gms/internal/zzju;
.super Ljava/lang/Object;


# static fields
.field private static final zzQW:Lcom/google/android/gms/cast/internal/zzl;


# instance fields
.field protected final zzTL:Ljava/lang/String;

.field protected final zzTM:J

.field protected final zzTN:Lorg/json/JSONObject;

.field protected final zzTR:I

.field protected final zzTS:I

.field protected final zzTT:Ljava/lang/String;

.field protected final zzTU:I

.field protected final zzTV:I

.field protected final zzTW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzTX:Lorg/json/JSONObject;

.field protected final zzTY:Ljava/lang/String;

.field protected final zzTZ:Ljava/lang/String;

.field protected final zzTs:Lcom/google/android/gms/internal/zzjt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/zzl;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzju;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzjt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzjt;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzju;->zzTR:I

    iput p2, p0, Lcom/google/android/gms/internal/zzju;->zzTS:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzju;->zzTT:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzju;->zzTN:Lorg/json/JSONObject;

    iput p5, p0, Lcom/google/android/gms/internal/zzju;->zzTU:I

    iput p6, p0, Lcom/google/android/gms/internal/zzju;->zzTV:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzju;->zzTW:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzju;->zzTX:Lorg/json/JSONObject;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzju;->zzTY:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzju;->zzTL:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/internal/zzju;->zzTM:J

    iput-object p13, p0, Lcom/google/android/gms/internal/zzju;->zzTZ:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/zzju;->zzTs:Lcom/google/android/gms/internal/zzjt;

    return-void
.end method

.method private static zza(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/zzjy;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/zzjy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v5, Lcom/google/android/gms/internal/zzju;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v6, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzju;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v5, :pswitch_data_0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzju;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    goto/16 :goto_1

    :pswitch_0
    new-instance v19, Lcom/google/android/gms/internal/zzju;

    const-string v4, "statusCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v4, "errorDescription"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "extraMessageData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v4, "gameplayState"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "lobbyState"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "players"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzju;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    const-string v4, "gameData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v4, "gameStatusText"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "playerId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, v19

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzju;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzjt;)V

    return-object v19

    :pswitch_1
    const-string v4, "gameManagerConfig"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v6, Lcom/google/android/gms/internal/zzjt;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/zzjt;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v18, v6

    goto :goto_0

    :cond_0
    move-object/from16 v18, v3

    :goto_0
    new-instance v19, Lcom/google/android/gms/internal/zzju;

    const-string v4, "statusCode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v4, "errorDescription"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "extraMessageData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v4, "gameplayState"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "lobbyState"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "players"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzju;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    const-string v4, "gameData"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v4, "gameStatusText"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "playerId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "requestId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v4, "playerToken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v19

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/internal/zzju;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/zzjt;)V

    return-object v19

    :goto_1
    const-string v4, "Unrecognized Game Message type %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/cast/internal/zzl;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v4, Lcom/google/android/gms/internal/zzju;->zzQW:Lcom/google/android/gms/cast/internal/zzl;

    const-string v5, "Exception while parsing GameManagerMessage from json"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getExtraMessageData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTN:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGameData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTX:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getGameplayState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzju;->zzTU:I

    return v0
.end method

.method public final getLobbyState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzju;->zzTV:I

    return v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTL:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzju;->zzTM:J

    return-wide v0
.end method

.method public final getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzju;->zzTS:I

    return v0
.end method

.method public final zzlC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzju;->zzTR:I

    return v0
.end method

.method public final zzlD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTT:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTW:Ljava/util/List;

    return-object v0
.end method

.method public final zzlF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTY:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTZ:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlH()Lcom/google/android/gms/internal/zzjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzju;->zzTs:Lcom/google/android/gms/internal/zzjt;

    return-object v0
.end method
