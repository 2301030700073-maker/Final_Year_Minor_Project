.class public final Lcom/google/android/gms/internal/ads/zzdrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbmp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzczv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbyh;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczv;Lcom/google/android/gms/internal/ads/zzffu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zza:Lcom/google/android/gms/internal/ads/zzczv;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzl:Lcom/google/android/gms/internal/ads/zzbyh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzb:Lcom/google/android/gms/internal/ads/zzbyh;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zza:Lcom/google/android/gms/internal/ads/zzczv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczv;->zzd()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbyh;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzb:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbyh;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbyh;->zzb:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 2
    const-string v0, ""

    .line 1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxs;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbxs;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zza:Lcom/google/android/gms/internal/ads/zzczv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzczv;->zze(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrf;->zza:Lcom/google/android/gms/internal/ads/zzczv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczv;->zzf()V

    return-void
.end method
