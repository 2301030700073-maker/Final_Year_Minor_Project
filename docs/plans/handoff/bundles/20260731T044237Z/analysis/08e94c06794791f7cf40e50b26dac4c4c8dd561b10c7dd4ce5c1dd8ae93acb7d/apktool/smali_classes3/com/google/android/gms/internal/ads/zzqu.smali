.class final synthetic Lcom/google/android/gms/internal/ads/zzqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzqe;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqe;Lcom/google/android/gms/internal/ads/zzqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:Lcom/google/android/gms/internal/ads/zzqb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:Lcom/google/android/gms/internal/ads/zzqb;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqe;->zzc(Lcom/google/android/gms/internal/ads/zzqb;)V

    return-void
.end method
