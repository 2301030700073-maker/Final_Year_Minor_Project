.class final synthetic Lcom/google/android/gms/internal/ads/zzfef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfda;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxv;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfef;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfef;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfef;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyw;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfef;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxv;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbxv;->zzc()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfef;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfef;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbyw;->zze(Lcom/google/android/gms/internal/ads/zzbyl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
