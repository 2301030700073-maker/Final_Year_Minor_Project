.class final Lcom/google/android/gms/internal/ads/zzaop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field public final zza:I

.field public final zzb:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaop;->zza:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaop;->zzb:J

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzaop;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    .line 2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzA()J

    move-result-wide v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaop;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaop;-><init>(IJ)V

    return-object p1
.end method
