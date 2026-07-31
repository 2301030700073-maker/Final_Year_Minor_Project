.class final Lcom/google/android/gms/internal/ads/zzbpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpu;->zza:Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpu;->zza:Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpv;->zzb()Lcom/google/android/gms/internal/ads/zzbqa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqa;->zzb()V

    return-void
.end method
