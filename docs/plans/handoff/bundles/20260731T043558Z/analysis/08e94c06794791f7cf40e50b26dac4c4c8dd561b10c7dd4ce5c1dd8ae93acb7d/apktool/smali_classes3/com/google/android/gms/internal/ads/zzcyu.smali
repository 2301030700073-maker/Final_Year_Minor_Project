.class final synthetic Lcom/google/android/gms/internal/ads/zzcyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zza:Lcom/google/android/gms/internal/ads/zzdjk;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcze;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyu;->zza:Lcom/google/android/gms/internal/ads/zzdjk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjk;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal show error."

    :cond_0
    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfhp;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzj(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
