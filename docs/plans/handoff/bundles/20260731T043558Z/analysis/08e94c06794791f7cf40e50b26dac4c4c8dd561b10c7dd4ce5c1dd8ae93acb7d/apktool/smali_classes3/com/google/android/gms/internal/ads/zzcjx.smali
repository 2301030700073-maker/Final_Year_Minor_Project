.class public final Lcom/google/android/gms/internal/ads/zzcjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcjx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcjx;-><init>(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method

.method public static final zzc()Lcom/google/android/gms/internal/ads/zzfwq;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfws;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfwq;

    move-result-object v0

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfwq;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjx;->zzc()Lcom/google/android/gms/internal/ads/zzfwq;

    move-result-object v0

    return-object v0
.end method
