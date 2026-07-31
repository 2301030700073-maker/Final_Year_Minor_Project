.class public final Lcom/google/android/gms/internal/ads/zzell;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdrn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdrn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzdrn;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzehn;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfgu;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbti;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzZ:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbti;->zzo(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzp:Lcom/google/android/gms/internal/ads/zzfgb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzelk;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/internal/ads/zzell;Lcom/google/android/gms/internal/ads/zzehn;[B)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbrp;

    move-object v3, p2

    .line 6
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbti;->zzp(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbtf;Lcom/google/android/gms/internal/ads/zzbrp;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzv:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzelk;

    invoke-direct {v6, p0, p3, v3}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/internal/ads/zzell;Lcom/google/android/gms/internal/ads/zzehn;[B)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbrp;

    move-object v3, p2

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbti;->zzl(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbtf;Lcom/google/android/gms/internal/ads/zzbrp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzb:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeji;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbti;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzeji;-><init>(Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzbti;Lcom/google/android/gms/ads/AdFormat;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzehn;->zza:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcue;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdrk;-><init>(Lcom/google/android/gms/internal/ads/zzdjl;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzdrn;

    .line 2
    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzdrn;->zzf(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzdrk;)Lcom/google/android/gms/internal/ads/zzdrj;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzd()Lcom/google/android/gms/internal/ads/zzczg;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzeji;->zzc(Lcom/google/android/gms/internal/ads/zzczg;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzehn;->zzc:Lcom/google/android/gms/internal/ads/zzczy;

    .line 4
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzn()Lcom/google/android/gms/internal/ads/zzemh;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzeiz;->zzc(Lcom/google/android/gms/internal/ads/zzbrp;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrj;->zzh()Lcom/google/android/gms/internal/ads/zzdri;

    move-result-object p1

    return-object p1
.end method
