.class public final Lcom/google/android/gms/internal/ads/zzehz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcqu;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcqu;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzb:Lcom/google/android/gms/internal/ads/zzcqu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zza:Landroid/content/Context;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzbrp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 1
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzy(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;)V

    return-void
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;,
            Lcom/google/android/gms/internal/ads/zzekz;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcue;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdia;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehy;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzehy;-><init>(Lcom/google/android/gms/internal/ads/zzehz;Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/internal/ads/zzffu;)V

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdia;-><init>(Lcom/google/android/gms/internal/ads/zzdjl;Lcom/google/android/gms/internal/ads/zzcgy;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqs;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzaa:I

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzb:Lcom/google/android/gms/internal/ads/zzcqu;

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcqu;->zzf(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdia;Lcom/google/android/gms/internal/ads/zzcqs;)Lcom/google/android/gms/internal/ads/zzcqr;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqr;->zza()Lcom/google/android/gms/internal/ads/zzczn;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcou;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzfhl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdem;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqr;->zzf()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeiz;->zzc(Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqr;->zzh()Lcom/google/android/gms/internal/ads/zzcra;

    move-result-object p1

    return-object p1
.end method
