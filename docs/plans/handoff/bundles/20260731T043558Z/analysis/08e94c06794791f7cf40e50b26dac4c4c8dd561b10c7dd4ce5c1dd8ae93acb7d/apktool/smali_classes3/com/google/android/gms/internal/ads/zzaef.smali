.class public final Lcom/google/android/gms/internal/ads/zzaef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzada;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzadd;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaem;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:I

    if-eq v4, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzb:I

    .line 2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacr;

    .line 3
    invoke-virtual {p1, v5, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzh([BIIZ)Z

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result p1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzadd;

    const/16 v0, 0x400

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzadd;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzv()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzf:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeg;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>(J)V

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaem;

    const/16 v3, 0x400

    invoke-interface {p2, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzy(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 2
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    :goto_0
    return p2
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    return-void
.end method
