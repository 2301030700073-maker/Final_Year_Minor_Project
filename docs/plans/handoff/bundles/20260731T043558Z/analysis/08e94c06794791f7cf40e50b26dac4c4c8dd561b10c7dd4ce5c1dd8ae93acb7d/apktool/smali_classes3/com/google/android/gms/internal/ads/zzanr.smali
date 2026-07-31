.class public final Lcom/google/android/gms/internal/ads/zzanr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaof;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzanq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanq;->zza(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzf:Z

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzf:Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzeg;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzf:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_8

    .line 20
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzf:Z

    .line 2
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    .line 3
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result p2

    if-lez p2, :cond_8

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_5

    if-nez p2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    add-int/2addr v3, v1

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/16 v3, 0xff

    if-eq p2, v3, :cond_6

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result p2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    .line 7
    invoke-virtual {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    add-int/2addr v5, p2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    if-ne v5, v2, :cond_2

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 9
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    .line 10
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result p2

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_4

    move v5, v0

    goto :goto_2

    :cond_4
    move v5, v4

    .line 12
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzanr;->zze:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzc:I

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzj()I

    move-result p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzc:I

    if-ge p2, v2, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzj()I

    move-result p2

    add-int/2addr p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v2, 0x1002

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 15
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzc(I)V

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    .line 17
    invoke-virtual {p1, v3, v5, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzc:I

    if-ne v3, p2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzanr;->zze:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    .line 18
    invoke-static {v3, v4, p2, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzH([BIII)I

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzc:I

    add-int/lit8 p2, p2, -0x4

    .line 19
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    goto :goto_3

    .line 15
    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzf:Z

    return-void

    .line 20
    :cond_7
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    .line 21
    :goto_3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzanr;->zza:Lcom/google/android/gms/internal/ads/zzanq;

    .line 22
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzanq;->zzb(Lcom/google/android/gms/internal/ads/zzeg;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzanr;->zzd:I

    goto/16 :goto_1

    :cond_8
    return-void
.end method
