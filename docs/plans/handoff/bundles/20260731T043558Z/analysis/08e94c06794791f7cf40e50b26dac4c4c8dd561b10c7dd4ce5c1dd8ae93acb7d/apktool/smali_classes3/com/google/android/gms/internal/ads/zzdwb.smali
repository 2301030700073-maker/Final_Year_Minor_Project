.class public final Lcom/google/android/gms/internal/ads/zzdwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwb;->zza:Lcom/google/android/gms/internal/ads/zzdvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwb;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdwb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwb;-><init>(Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzdwh;Ljava/util/concurrent/Executor;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvx;->zzd(Lcom/google/android/gms/internal/ads/zzdwh;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzifp;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwb;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwb;->zza:Lcom/google/android/gms/internal/ads/zzdvx;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdwb;->zzc(Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzdwh;Ljava/util/concurrent/Executor;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
