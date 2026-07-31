.class final synthetic Lcom/google/android/gms/internal/ads/zzqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzrb;

.field private final synthetic zzb:Landroid/media/AudioRouting;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrb;Landroid/media/AudioRouting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqy;->zzb:Landroid/media/AudioRouting;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqy;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqy;->zzb:Landroid/media/AudioRouting;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrb;->zzc(Landroid/media/AudioRouting;)V

    return-void
.end method
