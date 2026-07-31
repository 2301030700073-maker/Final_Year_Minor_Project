.class final Lcom/google/android/gms/internal/ads/zzhdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhdh;

.field final zzb:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdh;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdg;-><init>(Lcom/google/android/gms/internal/ads/zzhdh;[J)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhdg;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdh;-><init>(Lcom/google/android/gms/internal/ads/zzhdh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhdg;->zzb:[J

    const/16 v0, 0xa

    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdg;->zzb:[J

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhdh;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhdg;->zzb:[J

    return-void
.end method
