.class final synthetic Lcom/google/android/gms/internal/ads/zzvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdg;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzve;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzuq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:Lcom/google/android/gms/internal/ads/zzuq;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzve;->zzb:Lcom/google/android/gms/internal/ads/zzuu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvf;

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:Lcom/google/android/gms/internal/ads/zzuq;

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzvf;->zzcX(ILcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuq;)V

    return-void
.end method
