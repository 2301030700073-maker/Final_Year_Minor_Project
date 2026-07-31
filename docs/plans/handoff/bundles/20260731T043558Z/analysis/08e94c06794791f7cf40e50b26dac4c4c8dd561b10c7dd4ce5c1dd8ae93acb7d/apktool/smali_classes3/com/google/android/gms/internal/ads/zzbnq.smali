.class final Lcom/google/android/gms/internal/ads/zzbnq;
.super Lcom/google/android/gms/internal/ads/zzbnn;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
