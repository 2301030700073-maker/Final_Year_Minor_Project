.class final Lcom/google/android/gms/internal/ads/zzanx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaoa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzef;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzb:Lcom/google/android/gms/internal/ads/zzef;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzb:Lcom/google/android/gms/internal/ads/zzef;

    .line 5
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzl(Lcom/google/android/gms/internal/ads/zzef;I)V

    const/16 v5, 0x10

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v5

    const/4 v6, 0x3

    .line 7
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/16 v6, 0xd

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaoa;->zzi()Landroid/util/SparseArray;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzanr;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzany;

    .line 11
    invoke-direct {v7, v5, v4}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Lcom/google/android/gms/internal/ads/zzaoa;I)V

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(Lcom/google/android/gms/internal/ads/zzanq;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaoa;->zzi()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaoa;->zzm()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 12
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaoa;->zzn(I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zza:Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaoa;->zzi()Landroid/util/SparseArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    :goto_2
    return-void
.end method
