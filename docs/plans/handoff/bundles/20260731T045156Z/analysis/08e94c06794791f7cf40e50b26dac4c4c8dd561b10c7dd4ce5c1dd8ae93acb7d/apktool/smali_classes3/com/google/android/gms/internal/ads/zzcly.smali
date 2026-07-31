.class final Lcom/google/android/gms/internal/ads/zzcly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzebo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzckz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzclw;Lcom/google/android/gms/internal/ads/zzebo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzb:Lcom/google/android/gms/internal/ads/zzckz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcly;->zza:Lcom/google/android/gms/internal/ads/zzebo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzebp;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcly;->zzb:Lcom/google/android/gms/internal/ads/zzckz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckz;->zzI()Lcom/google/android/gms/internal/ads/zzcjp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckz;->zzI()Lcom/google/android/gms/internal/ads/zzcjp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zzd(Lcom/google/android/gms/internal/ads/zzcjp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzckk;->zzd(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcly;->zza:Lcom/google/android/gms/internal/ads/zzebo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbwo;->zza()Lcom/google/android/gms/internal/ads/zzbwn;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzebq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzebo;Lcom/google/android/gms/internal/ads/zzbwn;)Lcom/google/android/gms/internal/ads/zzebp;

    move-result-object v0

    return-object v0
.end method
