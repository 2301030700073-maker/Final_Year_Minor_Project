.class Lcom/google/android/gms/cast/MediaStatus$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field private zzSm:I

.field private zzSn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzSo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzSp:Lcom/google/android/gms/cast/MediaStatus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/MediaStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSp:Lcom/google/android/gms/cast/MediaStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaStatus$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaStatus$zza;->clear()V

    return-void
.end method

.method private zza([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaStatus$zza;Lorg/json/JSONObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaStatus$zza;->zzg(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private zzaF(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method private zzg(Lorg/json/JSONObject;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "repeatMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    const-string v3, "repeatMode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x42a82c11    # -0.05269235f

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v6, :cond_3

    const v6, -0x3964a094

    if-eq v5, v6, :cond_2

    const v6, 0x621b08dd    # 7.14971E20f

    if-eq v5, v6, :cond_1

    const v6, 0x621b3cab

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "REPEAT_OFF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v5, "REPEAT_ALL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "REPEAT_SINGLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const-string v5, "REPEAT_ALL_AND_SHUFFLE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x3

    :cond_4
    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    if-eq v3, v0, :cond_5

    iput v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "items"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_6

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    new-array v5, v3, [Lcom/google/android/gms/cast/MediaQueueItem;

    :goto_4
    if-ge v1, v3, :cond_a

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/cast/MediaStatus$zza;->zzaD(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/cast/MediaQueueItem;->zzg(Lorg/json/JSONObject;)Z

    move-result v7

    or-int/2addr v0, v7

    aput-object v8, v5, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/android/gms/cast/MediaStatus$zza;->zzaF(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v1, v6, :cond_9

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSp:Lcom/google/android/gms/cast/MediaStatus;

    invoke-static {v6}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lcom/google/android/gms/cast/MediaStatus;)I

    move-result v6

    if-ne v0, v6, :cond_8

    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSp:Lcom/google/android/gms/cast/MediaStatus;

    invoke-static {v6}, Lcom/google/android/gms/cast/MediaStatus;->zzb(Lcom/google/android/gms/cast/MediaStatus;)Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    aput-object v0, v5, v1

    aget-object v0, v5, v1

    invoke-virtual {v0, v7}, Lcom/google/android/gms/cast/MediaQueueItem;->zzg(Lorg/json/JSONObject;)Z

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v0, v7}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    aput-object v0, v5, v1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-direct {p0, v5}, Lcom/google/android/gms/cast/MediaStatus$zza;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    :cond_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSm:I

    return v0
.end method

.method public zzaD(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1
.end method

.method public zzaE(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public zzlt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus$zza;->zzSn:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
