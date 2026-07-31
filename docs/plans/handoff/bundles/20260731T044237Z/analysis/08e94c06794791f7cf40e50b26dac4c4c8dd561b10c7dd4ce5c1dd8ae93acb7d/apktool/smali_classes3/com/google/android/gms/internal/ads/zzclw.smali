.class final Lcom/google/android/gms/internal/ads/zzclw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedb;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzckz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzclw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzaw:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeej;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzeej;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zza()Lcom/google/android/gms/internal/ads/zzfjn;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzckt;->zza:Lcom/google/android/gms/internal/ads/zzcku;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzav:Lcom/google/android/gms/internal/ads/zzifq;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzax:Lcom/google/android/gms/internal/ads/zzifq;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzckq;->zza:Lcom/google/android/gms/internal/ads/zzckr;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzckz;->zzC:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeeb;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzedf;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzckz;->zzl:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckz;->zzI()Lcom/google/android/gms/internal/ads/zzcjp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckz;->zzI()Lcom/google/android/gms/internal/ads/zzcjp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zzd(Lcom/google/android/gms/internal/ads/zzcjp;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjt;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzckk;->zzd(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzdvi;

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzedg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzedb;Lcom/google/android/gms/internal/ads/zzdvi;)Lcom/google/android/gms/internal/ads/zzedf;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzedh;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclw;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzclx;-><init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclw;[B)V

    return-object v0
.end method
