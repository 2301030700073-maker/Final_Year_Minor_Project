.class final Lcom/google/android/gms/internal/ads/zzbmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbmn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmo;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmm;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmm;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcca;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqe;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmm;->zza:Lcom/google/android/gms/internal/ads/zzcca;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcca;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
