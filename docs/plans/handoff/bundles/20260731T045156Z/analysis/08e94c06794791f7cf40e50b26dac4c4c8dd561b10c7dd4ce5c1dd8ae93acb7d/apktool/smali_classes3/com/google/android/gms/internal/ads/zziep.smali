.class public Lcom/google/android/gms/internal/ads/zziep;
.super Lcom/google/android/gms/internal/ads/zzies;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarf;


# instance fields
.field protected final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzies;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziep;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziep;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zziet;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzarc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziep;->zzc:Lcom/google/android/gms/internal/ads/zziet;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zziep;->zze:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziet;->zzd(J)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziet;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziep;->zzf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zziep;->zzb:Lcom/google/android/gms/internal/ads/zzarc;

    return-void
.end method
