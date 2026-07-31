.class public final Lcom/google/android/gms/internal/ads/zzesw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzesw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesw;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzesw;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzesu;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdtd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcyf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcyf;->zza()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzesu;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzdtd;Lcom/google/android/gms/internal/ads/zzfgn;Ljava/lang/String;)V

    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzesw;->zza()Lcom/google/android/gms/internal/ads/zzesu;

    move-result-object v0

    return-object v0
.end method
