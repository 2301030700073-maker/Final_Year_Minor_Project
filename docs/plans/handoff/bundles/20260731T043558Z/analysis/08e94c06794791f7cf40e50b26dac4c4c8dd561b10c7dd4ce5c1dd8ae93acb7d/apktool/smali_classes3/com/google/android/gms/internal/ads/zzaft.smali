.class public final Lcom/google/android/gms/internal/ads/zzaft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzada;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaef;

    const/4 v1, -0x1

    const-string v2, "image/heif"

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaef;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzadb;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacr;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzh([BIIZ)Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v0

    int-to-long p1, p2

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v3
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzacr;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzj(IZ)Z

    const v0, 0x66747970

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzg(Lcom/google/android/gms/internal/ads/zzadb;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x68656963

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzg(Lcom/google/android/gms/internal/ads/zzadb;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaef;->zzc(Lcom/google/android/gms/internal/ads/zzadd;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaef;->zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I

    move-result p1

    return p1
.end method

.method public final zze(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaef;->zze(JJ)V

    return-void
.end method
