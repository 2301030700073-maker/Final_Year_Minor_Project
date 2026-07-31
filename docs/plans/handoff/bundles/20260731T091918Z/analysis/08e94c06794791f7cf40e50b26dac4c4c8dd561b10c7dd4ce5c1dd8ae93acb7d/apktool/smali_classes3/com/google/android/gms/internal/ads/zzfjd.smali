.class final synthetic Lcom/google/android/gms/internal/ads/zzfjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfje;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfiv;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfic;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfiw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzfiv;Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzb:Lcom/google/android/gms/internal/ads/zzfiv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzc:Lcom/google/android/gms/internal/ads/zzfic;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzd:Lcom/google/android/gms/internal/ads/zzfiw;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zza:Lcom/google/android/gms/internal/ads/zzfje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzb:Lcom/google/android/gms/internal/ads/zzfiv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzc:Lcom/google/android/gms/internal/ads/zzfic;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzd:Lcom/google/android/gms/internal/ads/zzfiw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfil;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfje;->zzc(Lcom/google/android/gms/internal/ads/zzfiv;Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzfiw;Lcom/google/android/gms/internal/ads/zzfil;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
