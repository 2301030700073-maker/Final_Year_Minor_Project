.class final Lcom/google/android/gms/internal/ads/zzclp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxa;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbmx;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzckz;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzclp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbmx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Lcom/google/android/gms/internal/ads/zzckz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Lcom/google/android/gms/internal/ads/zzbmx;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzifi;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdww;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdww;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdwy;->zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdwy;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzifg;->zza(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzdwv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzf:Lcom/google/android/gms/internal/ads/zzbmx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdww;->zzd(Lcom/google/android/gms/internal/ads/zzbmx;)Lcom/google/android/gms/internal/ads/zzdwv;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdwx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwx;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdws;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzg:Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclp;->zzh:Lcom/google/android/gms/internal/ads/zzclp;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzclm;-><init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclp;[B)V

    return-object v0
.end method

.method final synthetic zzd()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclp;->zze:Landroid/content/Context;

    return-object v0
.end method
