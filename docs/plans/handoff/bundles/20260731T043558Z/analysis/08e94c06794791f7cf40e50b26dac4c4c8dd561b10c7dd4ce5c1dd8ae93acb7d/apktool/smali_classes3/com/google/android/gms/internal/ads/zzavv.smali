.class public final Lcom/google/android/gms/internal/ads/zzavv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgvb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvb;->zze()Lcom/google/android/gms/internal/ads/zzgvb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgvb;->zza(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApkChecksum;

    .line 4
    invoke-virtual {v4}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrz;->zzn()Lcom/google/android/gms/internal/ads/zzgrz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgrz;->zzi()Lcom/google/android/gms/internal/ads/zzgrz;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object v3

    .line 6
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgrz;->zzj([BII)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgvb;->zza(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavv;->zza:Lcom/google/android/gms/internal/ads/zzgvb;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgvb;->zza(Ljava/lang/Object;)Z

    return-void
.end method
