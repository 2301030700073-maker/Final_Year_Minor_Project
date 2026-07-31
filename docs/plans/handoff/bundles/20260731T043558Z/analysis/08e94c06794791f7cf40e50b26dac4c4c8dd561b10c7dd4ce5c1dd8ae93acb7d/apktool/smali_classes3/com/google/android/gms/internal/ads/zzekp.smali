.class public final Lcom/google/android/gms/internal/ads/zzekp;
.super Lcom/google/android/gms/internal/ads/zzekk;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcxw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzena;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdeo;

.field private final zze:Lcom/google/android/gms/internal/ads/zzekv;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzehp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjn;Lcom/google/android/gms/internal/ads/zzcxw;Lcom/google/android/gms/internal/ads/zzena;Lcom/google/android/gms/internal/ads/zzdeo;Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/internal/ads/zzehp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzcxw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzena;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzdeo;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekp;->zze:Lcom/google/android/gms/internal/ads/zzekv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzf:Lcom/google/android/gms/internal/ads/zzehp;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfgn;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzb:Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcxw;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcxw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxp;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zze:Lcom/google/android/gms/internal/ads/zzekv;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcxp;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzekv;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzd(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzcxw;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbeu;->zzee:Lcom/google/android/gms/internal/ads/zzbel;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzf:Lcom/google/android/gms/internal/ads/zzehp;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzg(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzcxw;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekp;->zza:Lcom/google/android/gms/internal/ads/zzcjn;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcjn;->zzm()Lcom/google/android/gms/internal/ads/zzdjc;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxw;->zze()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdjc;->zze(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzdjc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzd:Lcom/google/android/gms/internal/ads/zzdeo;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdjc;->zzf(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdjc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzekp;->zzc:Lcom/google/android/gms/internal/ads/zzena;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdjc;->zzd(Lcom/google/android/gms/internal/ads/zzena;)Lcom/google/android/gms/internal/ads/zzdjc;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjc;->zza()Lcom/google/android/gms/internal/ads/zzdjd;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdjd;->zzb()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcus;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcus;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
