.class public final Lcom/google/android/gms/internal/ads/zzdxc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwr;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzepb;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdwv;Lcom/google/android/gms/internal/ads/zzcjn;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zza:J

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcjn;->zzn()Lcom/google/android/gms/internal/ads/zzfea;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfea;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfea;

    new-instance p2, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {p2}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzfea;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfea;

    .line 3
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfea;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfea;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfea;->zza()Lcom/google/android/gms/internal/ads/zzfeb;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfeb;->zza()Lcom/google/android/gms/internal/ads/zzepb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzb:Lcom/google/android/gms/internal/ads/zzepb;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdxb;

    .line 6
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzdxb;-><init>(Lcom/google/android/gms/internal/ads/zzdxc;Lcom/google/android/gms/internal/ads/zzdwv;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzepb;->zzdW(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzb:Lcom/google/android/gms/internal/ads/zzepb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzepb;->zze(Lcom/google/android/gms/ads/internal/client/zzm;)Z

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzb:Lcom/google/android/gms/internal/ads/zzepb;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzepb;->zzR(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzb:Lcom/google/android/gms/internal/ads/zzepb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzepb;->zzc()V

    return-void
.end method

.method final synthetic zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zza:J

    return-wide v0
.end method
