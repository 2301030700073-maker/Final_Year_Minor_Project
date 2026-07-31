.class public final Lcom/google/android/gms/internal/zzjy;
.super Ljava/lang/Object;


# instance fields
.field private final zzSd:I

.field private final zzTL:Ljava/lang/String;

.field private final zzUb:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjy;->zzTL:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzjy;->zzSd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjy;->zzUb:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "playerId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "playerData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzjy;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/internal/zzjy;

    if-nez v1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/zzjy;

    iget v2, p0, Lcom/google/android/gms/internal/zzjy;->zzSd:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerState()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjy;->zzTL:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjy;->zzUb:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjy;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzlh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getPlayerData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzUb:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy;->zzTL:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjy;->zzSd:I

    return v0
.end method
