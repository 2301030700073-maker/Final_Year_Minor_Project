.class public Lcom/google/android/gms/cast/MediaQueueItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PLAYBACK_DURATION:D = Infinity

.field public static final INVALID_ITEM_ID:I


# instance fields
.field private zzRJ:Lorg/json/JSONObject;

.field private zzRS:Lcom/google/android/gms/cast/MediaInfo;

.field private zzRT:I

.field private zzRU:Z

.field private zzRV:D

.field private zzRW:D

.field private zzRX:D

.field private zzRY:[J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/MediaQueueItem$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getAutoplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getStartTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzlr()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getPreloadTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getActiveTrackIds()[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getCustomData()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;Lcom/google/android/gms/cast/MediaQueueItem$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaQueueItem;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzg(Lorg/json/JSONObject;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/cast/MediaQueueItem;

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzlh;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v4, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    iget v4, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    if-ne v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    iget-boolean v4, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    if-ne v3, v4, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    iget-wide v5, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    iget-wide v5, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    iget-wide v5, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    cmpl-double v7, v3, v5

    if-nez v7, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    iget-object v1, v1, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveTrackIds()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    return v0
.end method

.method public getMedia()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPreloadTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    return-wide v0
.end method

.method public getStartTime()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "media"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    if-eqz v1, :cond_0

    const-string v1, "itemId"

    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "autoplay"

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, "playbackDuration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "preloadTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    array-length v1, v1

    if-lez v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v5, v2, v4

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "activeTrackIds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    const-string v1, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :cond_4
    return-object v0
.end method

.method zzP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    return-void
.end method

.method zza([J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    return-void
.end method

.method zzaC(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    return-void
.end method

.method zzb(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startTime cannot be negative or NaN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method zzc(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "preloadTime cannot be negative or NaN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zzg(Lorg/json/JSONObject;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "media"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/cast/MediaInfo;

    const-string v3, "media"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "itemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "itemId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    if-eq v4, v3, :cond_1

    iput v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRT:I

    const/4 v0, 0x1

    :cond_1
    const-string v3, "autoplay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "autoplay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRU:Z

    const/4 v0, 0x1

    :cond_2
    const-string v3, "startTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-eqz v3, :cond_3

    const-string v3, "startTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    sub-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v3, v8, v4

    if-lez v3, :cond_3

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    const/4 v0, 0x1

    :cond_3
    const-string v3, "playbackDuration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "playbackDuration"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    sub-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v3, v8, v4

    if-lez v3, :cond_4

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    const/4 v0, 0x1

    :cond_4
    const-string v3, "preloadTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "preloadTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    sub-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v3, v8, v4

    if-lez v3, :cond_5

    iput-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    const/4 v0, 0x1

    :cond_5
    const/4 v3, 0x0

    const-string v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v3, "activeTrackIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [J

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    if-nez v3, :cond_7

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    array-length v3, v3

    if-eq v3, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_b

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    aget-wide v7, v6, v3

    aget-wide v9, v5, v3

    cmp-long v6, v7, v9

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v5, v3

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    iput-object v5, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRY:[J

    const/4 v0, 0x1

    :cond_c
    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRJ:Lorg/json/JSONObject;

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method zzlq()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRS:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRV:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playbackDuration cannot be NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRX:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTime cannot be negative or NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzlr()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzRW:D

    return-wide v0
.end method
