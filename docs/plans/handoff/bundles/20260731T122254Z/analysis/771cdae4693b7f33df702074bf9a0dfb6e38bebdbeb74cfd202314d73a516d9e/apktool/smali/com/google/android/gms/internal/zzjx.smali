.class public final Lcom/google/android/gms/internal/zzjx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/PlayerInfo;


# instance fields
.field private final zzSd:I

.field private final zzTL:Ljava/lang/String;

.field private final zzUb:Lorg/json/JSONObject;

.field private final zzUc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjx;->zzTL:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzjx;->zzSd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjx;->zzUb:Lorg/json/JSONObject;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzjx;->zzUc:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/google/android/gms/cast/games/PlayerInfo;

    if-nez v1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/cast/games/PlayerInfo;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjx;->zzUc:Z

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzjx;->zzSd:I

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzTL:Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjx;->zzUb:Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerData()Lorg/json/JSONObject;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzUb:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx;->zzTL:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjx;->zzSd:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzTL:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzjx;->zzSd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx;->zzUb:Lorg/json/JSONObject;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzjx;->zzUc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjx;->zzSd:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isControllable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjx;->zzUc:Z

    return v0
.end method
