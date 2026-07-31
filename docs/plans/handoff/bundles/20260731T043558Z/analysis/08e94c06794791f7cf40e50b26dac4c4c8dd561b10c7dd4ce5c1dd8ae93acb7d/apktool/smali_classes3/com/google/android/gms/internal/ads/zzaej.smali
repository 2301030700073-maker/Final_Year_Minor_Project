.class final Lcom/google/android/gms/internal/ads/zzaej;
.super Lcom/google/android/gms/internal/ads/zzadp;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaed;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaek;Lcom/google/android/gms/internal/ads/zzaed;Lcom/google/android/gms/internal/ads/zzaed;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaej;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Lcom/google/android/gms/internal/ads/zzaek;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Lcom/google/android/gms/internal/ads/zzaed;)V

    return-void
.end method


# virtual methods
.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zza:Lcom/google/android/gms/internal/ads/zzaed;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaed;->zzc(J)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzaee;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaee;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzaee;->zzb:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Lcom/google/android/gms/internal/ads/zzaek;

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzaee;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaek;->zza()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 2
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Lcom/google/android/gms/internal/ads/zzaee;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaee;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaee;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaee;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaek;->zza()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {p2, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(JJ)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>(Lcom/google/android/gms/internal/ads/zzaee;Lcom/google/android/gms/internal/ads/zzaee;)V

    return-object v0
.end method
