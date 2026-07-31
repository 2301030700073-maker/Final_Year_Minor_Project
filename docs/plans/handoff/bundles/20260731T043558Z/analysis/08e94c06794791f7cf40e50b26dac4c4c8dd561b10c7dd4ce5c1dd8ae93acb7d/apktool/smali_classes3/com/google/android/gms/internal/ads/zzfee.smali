.class final synthetic Lcom/google/android/gms/internal/ads/zzfee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfda;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfee;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyr;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfee;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxv;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxv;->zzc()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyr;->zzg(Lcom/google/android/gms/internal/ads/zzbyl;)V

    return-void
.end method
