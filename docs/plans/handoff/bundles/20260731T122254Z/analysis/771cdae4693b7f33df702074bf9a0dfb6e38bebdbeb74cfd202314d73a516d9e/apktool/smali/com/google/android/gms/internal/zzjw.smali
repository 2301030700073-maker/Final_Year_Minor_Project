.class public final Lcom/google/android/gms/internal/zzjw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerState;


# instance fields
.field private final zzTO:Ljava/lang/String;

.field private final zzTP:I

.field private final zzTU:I

.field private final zzTV:I

.field private final zzTX:Lorg/json/JSONObject;

.field private final zzTY:Ljava/lang/String;

.field private final zzUa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzjw;->zzTV:I

    iput p2, p0, Lcom/google/android/gms/internal/zzjw;->zzTU:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjw;->zzTY:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzjw;->zzTX:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzjw;->zzTO:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzjw;->zzTP:I

    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjw;->zzUa:Ljava/util/Map;

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/games/PlayerInfo;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzjw;->zzUa:Ljava/util/Map;

    invoke-interface {p2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/google/android/gms/cast/games/GameManagerState;

    if-nez v1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/cast/games/GameManagerState;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v3}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v3, v7}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_2

    return v0

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTV:I

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getLobbyState()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTU:I

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameplayState()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTP:I

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getMaxPlayers()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTO:Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getApplicationName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTY:Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameStatusText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjw;->zzTX:Lorg/json/JSONObject;

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzlh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public getApplicationName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTO:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedControllablePlayers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getConnectedPlayers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getControllablePlayers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->isControllable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getGameData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTX:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getGameStatusText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTY:Ljava/lang/String;

    return-object v0
.end method

.method public getGameplayState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTU:I

    return v0
.end method

.method public getListOfChangedPlayers(Lcom/google/android/gms/cast/games/GameManagerState;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/games/GameManagerState;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzjw;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getLobbyState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTV:I

    return v0
.end method

.method public getMaxPlayers()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTP:I

    return v0
.end method

.method public getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzUa:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/games/PlayerInfo;

    return-object v0
.end method

.method public getPlayers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzUa:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPlayersInState(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/games/PlayerInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjw;->getPlayers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/games/PlayerInfo;

    invoke-interface {v2}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasGameDataChanged(Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTX:Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasGameStatusTextChanged(Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTY:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameStatusText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasGameplayStateChanged(Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTU:I

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getGameplayState()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLobbyStateChanged(Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzjw;->zzTV:I

    invoke-interface {p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getLobbyState()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPlayerChanged(Ljava/lang/String;Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjw;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v0

    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPlayerDataChanged(Ljava/lang/String;Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjw;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v0

    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_1
    return v2
.end method

.method public hasPlayerStateChanged(Ljava/lang/String;Lcom/google/android/gms/cast/games/GameManagerState;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzjw;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v0

    invoke-interface {p2, p1}, Lcom/google/android/gms/cast/games/GameManagerState;->getPlayer(Ljava/lang/String;)Lcom/google/android/gms/cast/games/PlayerInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v0

    invoke-interface {v1}, Lcom/google/android/gms/cast/games/PlayerInfo;->getPlayerState()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    return v3
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTV:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTU:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjw;->zzUa:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTY:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTX:Lorg/json/JSONObject;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTO:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzjw;->zzTP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
