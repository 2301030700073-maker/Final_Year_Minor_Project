.class public Lcom/google/android/gms/internal/ads/zzado;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zza([BII)I

    move-result p1

    return p1
.end method

.method public final zzb([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzadb;->zzb([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final zzc([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void
.end method

.method public final zzd(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzd(I)I

    move-result p1

    return p1
.end method

.method public final zze(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zze(IZ)Z

    move-result p1

    return p1
.end method

.method public final zzf(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    return-void
.end method

.method public final zzg([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zzg([BII)I

    move-result p1

    return p1
.end method

.method public final zzh([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzadb;->zzh([BIIZ)Z

    move-result p1

    return p1
.end method

.method public final zzi([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    return-void
.end method

.method public final zzk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzk(I)V

    return-void
.end method

.method public final zzl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    return-void
.end method

.method public zzm()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzo()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v0

    return-wide v0
.end method
