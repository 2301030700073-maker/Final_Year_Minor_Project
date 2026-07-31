.class public final Lcom/google/android/gms/internal/ads/zzcrz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcrn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcrz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcrz;-><init>(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzctb;)Lcom/google/android/gms/internal/ads/zzdgn;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdgn;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zzf:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 2
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgn;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzctb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrz;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcrz;->zzc(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzctb;)Lcom/google/android/gms/internal/ads/zzdgn;

    move-result-object v0

    return-object v0
.end method
