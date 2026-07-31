.class final synthetic Lcom/google/android/gms/internal/ads/zzpn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzpz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzqb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Lcom/google/android/gms/internal/ads/zzqb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpz;->zzy(Lcom/google/android/gms/internal/ads/zzqb;)V

    return-void
.end method
