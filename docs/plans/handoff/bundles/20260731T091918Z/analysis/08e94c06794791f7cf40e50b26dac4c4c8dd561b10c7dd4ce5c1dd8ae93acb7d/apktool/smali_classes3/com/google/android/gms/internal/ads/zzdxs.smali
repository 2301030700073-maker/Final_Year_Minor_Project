.class final synthetic Lcom/google/android/gms/internal/ads/zzdxs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbod;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzbod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxs;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxs;->zzb:Lcom/google/android/gms/internal/ads/zzbod;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxs;->zzb:Lcom/google/android/gms/internal/ads/zzbod;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxs;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbod;->zzb(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
