.class public Lcom/google/android/gms/internal/zzga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfy$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfy$zza<",
        "Lcom/google/android/gms/ads/internal/formats/zze;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzBY:Z

.field private final zzBZ:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzga;->zzBY:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzga;->zzBZ:Z

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzfy;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zzg$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzga;->zzc(Lcom/google/android/gms/internal/zzfy;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object p1

    return-object p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzfy;Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/formats/zze;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string v2, "images"

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzga;->zzBY:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/zzga;->zzBZ:Z

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfy;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v0

    const-string v1, "secondary_image"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzga;->zzBY:Z

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v3, v2}, Lcom/google/android/gms/internal/zzfy;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzhv;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfy;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzhv;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzhv;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    const-string v2, "headline"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "body"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/ads/internal/formats/zzc;

    const-string v1, "call_to_action"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "advertiser"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/ads/internal/formats/zza;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zzc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;)V

    return-object v0
.end method
