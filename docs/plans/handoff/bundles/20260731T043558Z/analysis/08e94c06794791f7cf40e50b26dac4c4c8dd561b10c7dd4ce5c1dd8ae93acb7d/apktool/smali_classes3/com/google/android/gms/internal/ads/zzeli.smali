.class public final Lcom/google/android/gms/internal/ads/zzeli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdrn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdrn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeli;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzc:Lcom/google/android/gms/internal/ads/zzdrn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzp:Lcom/google/android/gms/internal/ads/zzfgb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeli;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbrp;

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzfhl;->zzx(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;)V

    return-void

    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeli;->zza:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbrp;

    .line 4
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzfhl;->zzv(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    sget p3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p3, "Fail to load ad from adapter "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;,
            Lcom/google/android/gms/internal/ads/zzekz;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzelh;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzelh;-><init>(Lcom/google/android/gms/internal/ads/zzeli;Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/internal/ads/zzffu;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrk;-><init>(Lcom/google/android/gms/internal/ads/zzdjl;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzc:Lcom/google/android/gms/internal/ads/zzdrn;

    .line 2
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrn;->zzf(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdrk;)Lcom/google/android/gms/internal/ads/zzdrj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zza()Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object p2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcou;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzfhl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeli;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzm()Lcom/google/android/gms/internal/ads/zzeln;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeiz;->zzc(Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzh()Lcom/google/android/gms/internal/ads/zzdri;

    move-result-object p1

    return-object p1
.end method
