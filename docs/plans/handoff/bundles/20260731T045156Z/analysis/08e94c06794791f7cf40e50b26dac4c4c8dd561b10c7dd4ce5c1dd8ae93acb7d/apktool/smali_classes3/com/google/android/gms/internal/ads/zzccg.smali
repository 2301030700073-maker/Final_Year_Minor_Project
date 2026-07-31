.class final Lcom/google/android/gms/internal/ads/zzccg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcce;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzccc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcch;Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzccc;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->zza:Lcom/google/android/gms/internal/ads/zzcce;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzb:Lcom/google/android/gms/internal/ads/zzccc;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzb:Lcom/google/android/gms/internal/ads/zzccc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzccc;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zza:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Ljava/lang/Object;)V

    return-void
.end method
