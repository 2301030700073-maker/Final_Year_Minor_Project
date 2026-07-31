.class public final Lcom/google/android/gms/internal/ads/zzebs;
.super Lcom/google/android/gms/internal/ads/zzbxa;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzebu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzebu;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebs;->zza:Lcom/google/android/gms/internal/ads/zzebu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebs;->zza:Lcom/google/android/gms/internal/ads/zzebu;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzebu;->zze:Lcom/google/android/gms/internal/ads/zzbxj;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbxj;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzebu;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/util/zzba;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebs;->zza:Lcom/google/android/gms/internal/ads/zzebu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzebu;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/util/zzba;->zzb()Lcom/google/android/gms/ads/internal/util/zzaz;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcca;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzg(Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbxj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzebs;->zza:Lcom/google/android/gms/internal/ads/zzebu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzebu;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
