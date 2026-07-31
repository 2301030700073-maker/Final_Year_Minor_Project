.class final synthetic Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/media/AudioTrack;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqe;

.field private final synthetic zzc:Landroid/os/Handler;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzqb;


# direct methods
.method synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqe;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:Lcom/google/android/gms/internal/ads/zzqb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:Lcom/google/android/gms/internal/ads/zzqb;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzrh;->zzE(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqe;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqb;)V

    return-void
.end method
