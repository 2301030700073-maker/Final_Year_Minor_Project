.class public final Lcom/google/android/gms/internal/ads/zzemt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehk;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcsl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbfp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcsl;Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzbfp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/internal/ads/zzcsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:Lcom/google/android/gms/internal/ads/zzfks;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Lcom/google/android/gms/internal/ads/zzbfp;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzemp;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzemr;->zza:Lcom/google/android/gms/internal/ads/zzemr;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzu:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzffv;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzemp;-><init>(Lcom/google/android/gms/internal/ads/zzemt;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/internal/ads/zzffv;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/internal/ads/zzcsl;

    .line 3
    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzcsl;->zzf(Lcom/google/android/gms/internal/ads/zzcue;Lcom/google/android/gms/internal/ads/zzcrn;)Lcom/google/android/gms/internal/ads/zzcrh;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfk;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrh;->zzl()Lcom/google/android/gms/internal/ads/zzems;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfkm;->zzt:Lcom/google/android/gms/internal/ads/zzfkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zze:Lcom/google/android/gms/internal/ads/zzfks;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzemq;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzemq;-><init>(Lcom/google/android/gms/internal/ads/zzemt;Lcom/google/android/gms/internal/ads/zzbfk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzd:Lcom/google/android/gms/internal/ads/zzgus;

    .line 7
    invoke-static {v2, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzfkd;->zzd(Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzgus;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfkk;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkm;->zzu:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfkj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrh;->zzi()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzc:Lcom/google/android/gms/internal/ads/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfp;->zze(Lcom/google/android/gms/internal/ads/zzbfm;)V

    return-void
.end method
