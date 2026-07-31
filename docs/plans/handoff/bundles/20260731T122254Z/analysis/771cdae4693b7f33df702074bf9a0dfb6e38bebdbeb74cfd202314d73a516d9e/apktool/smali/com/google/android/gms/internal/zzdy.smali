.class public final Lcom/google/android/gms/internal/zzdy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field public final zzxD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzdx;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxE:J

.field public final zzxF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxI:Ljava/lang/String;

.field public final zzxJ:J

.field public final zzxK:Ljava/lang/String;

.field public final zzxL:I

.field public zzxM:I

.field public zzxN:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzL(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    :cond_0
    const-string p1, "ad_networks"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/zzdx;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_1

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/zzdy;->zza(Lcom/google/android/gms/internal/zzdx;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/google/android/gms/internal/zzdy;->zzxM:I

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdy;->zzxN:I

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdy;->zzxD:Ljava/util/List;

    const-string p1, "qdata"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdy;->zzxI:Ljava/lang/String;

    const-string p1, "settings"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_5

    const-string v4, "ad_network_timeout_millis"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzdy;->zzxE:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v4

    const-string v5, "click_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzed;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdy;->zzxF:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v4

    const-string v5, "imp_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzed;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdy;->zzxG:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbG()Lcom/google/android/gms/internal/zzed;

    move-result-object v4

    const-string v5, "nofill_urls"

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/internal/zzed;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/zzdy;->zzxH:Ljava/util/List;

    const-string v4, "refresh"

    invoke-virtual {p1, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v4

    :cond_3
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzdy;->zzxJ:J

    const-string v1, "rewards"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rb_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzxK:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "rb_amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdy;->zzxL:I

    return-void

    :cond_5
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzdy;->zzxE:J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzxF:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzxG:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzxH:Ljava/util/List;

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzdy;->zzxJ:J

    :cond_6
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzxK:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/zzdy;->zzxL:I

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzdx;)Z
    .locals 2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdx;->zzxu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
