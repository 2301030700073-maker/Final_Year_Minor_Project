.class final Lcom/google/android/gms/internal/ads/zzfke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjz;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfkj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkj;Lcom/google/android/gms/internal/ads/zzfjz;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Lcom/google/android/gms/internal/ads/zzfjz;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/zzfkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/zzfkj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkk;->zzg()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Lcom/google/android/gms/internal/ads/zzfjz;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkl;->zzc(Lcom/google/android/gms/internal/ads/zzfjz;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfke;->zzb:Lcom/google/android/gms/internal/ads/zzfkj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkk;->zzg()Lcom/google/android/gms/internal/ads/zzfkl;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfke;->zza:Lcom/google/android/gms/internal/ads/zzfjz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfkl;->zzd(Lcom/google/android/gms/internal/ads/zzfjz;)V

    return-void
.end method
