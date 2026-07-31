.class final Lcom/google/android/gms/internal/ads/zzcty;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzguf;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcud;Lcom/google/android/gms/internal/ads/zzguf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcty;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcty;->zzb:Lcom/google/android/gms/internal/ads/zzcud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcty;->zzb:Lcom/google/android/gms/internal/ads/zzcud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcud;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcty;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzguf;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcty;->zzb:Lcom/google/android/gms/internal/ads/zzcud;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcto;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcud;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcty;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzb(Ljava/lang/Object;)V

    return-void
.end method
