.class public final Lcom/google/android/gms/internal/ads/zzawx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final zza:Z

.field final zzb:Ljava/lang/String;

.field final zzc:Lcom/google/android/gms/internal/ads/zzatv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzate;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzate;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzate;->zzc()Lcom/google/android/gms/internal/ads/zzatv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawx;->zzc:Lcom/google/android/gms/internal/ads/zzatv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzate;->zzd()Lcom/google/android/gms/internal/ads/zzaub;

    return-void
.end method
