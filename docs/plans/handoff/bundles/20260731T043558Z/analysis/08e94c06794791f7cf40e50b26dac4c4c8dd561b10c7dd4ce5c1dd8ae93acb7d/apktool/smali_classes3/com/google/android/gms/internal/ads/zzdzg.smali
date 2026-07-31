.class final Lcom/google/android/gms/internal/ads/zzdzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdzl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zza:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdyc;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzg;->zza:Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdzl;->zzi()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdyz;->zzn()V

    return-void
.end method
