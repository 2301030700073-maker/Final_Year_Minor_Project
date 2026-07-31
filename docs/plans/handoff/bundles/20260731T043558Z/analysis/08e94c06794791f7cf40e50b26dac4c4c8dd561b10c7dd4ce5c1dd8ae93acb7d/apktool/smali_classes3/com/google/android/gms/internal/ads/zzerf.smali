.class public final Lcom/google/android/gms/internal/ads/zzerf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzerf;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzerf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzerf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzerf;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzerf;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcyf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcyf;->zza()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzerf;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzckn;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzckn;->zza()Lcom/google/android/gms/internal/ads/zzcbn;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcbn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzerd;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzerd;-><init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcbn;)V

    return-object v3
.end method
