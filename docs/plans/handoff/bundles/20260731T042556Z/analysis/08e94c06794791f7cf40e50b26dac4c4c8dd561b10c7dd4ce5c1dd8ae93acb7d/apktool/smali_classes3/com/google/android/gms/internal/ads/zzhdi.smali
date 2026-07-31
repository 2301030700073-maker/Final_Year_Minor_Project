.class final Lcom/google/android/gms/internal/ads/zzhdi;
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

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhdi;-><init>(Lcom/google/android/gms/internal/ads/zzhdh;[J)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhdg;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhdi;-><init>()V

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhdi;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;Lcom/google/android/gms/internal/ads/zzhdg;)Lcom/google/android/gms/internal/ads/zzhdi;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhdh;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdi;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhdi;->zzb:[J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhdi;Lcom/google/android/gms/internal/ads/zzhdg;)Lcom/google/android/gms/internal/ads/zzhdi;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhdi;->zzb(Lcom/google/android/gms/internal/ads/zzhdi;Lcom/google/android/gms/internal/ads/zzhdg;)Lcom/google/android/gms/internal/ads/zzhdi;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzhdi;Lcom/google/android/gms/internal/ads/zzhdg;)Lcom/google/android/gms/internal/ads/zzhdi;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhdg;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhdi;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhdh;->zza:[J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhdh;->zza:[J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhdg;->zzb:[J

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhdq;->zze([J[J[J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhdh;->zzb:[J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzhdh;->zzb:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhdh;->zzc:[J

    .line 2
    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzhdq;->zze([J[J[J)V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhdh;->zzc:[J

    .line 3
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhdq;->zze([J[J[J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhdi;->zzb:[J

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhdq;->zze([J[J[J)V

    return-object p0
.end method
