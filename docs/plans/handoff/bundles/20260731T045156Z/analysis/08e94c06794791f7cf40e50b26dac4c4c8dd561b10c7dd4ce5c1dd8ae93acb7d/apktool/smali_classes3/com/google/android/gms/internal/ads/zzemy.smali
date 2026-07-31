.class public final Lcom/google/android/gms/internal/ads/zzemy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzehk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbfp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfks;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzenh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzbfp;Lcom/google/android/gms/internal/ads/zzenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemy;->zza:Lcom/google/android/gms/internal/ads/zzbfp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzd:Lcom/google/android/gms/internal/ads/zzenh;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemy;->zza:Lcom/google/android/gms/internal/ads/zzbfp;

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
    .locals 9

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcca;

    .line 2
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzend;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzend;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzemw;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzemw;-><init>(Lcom/google/android/gms/internal/ads/zzemy;Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzend;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzend;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfk;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffu;->zzs:Lcom/google/android/gms/internal/ads/zzffz;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzffz;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzffz;->zza:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzbfk;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfkm;->zzt:Lcom/google/android/gms/internal/ads/zzfkm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzc:Lcom/google/android/gms/internal/ads/zzfks;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzemx;-><init>(Lcom/google/android/gms/internal/ads/zzemy;Lcom/google/android/gms/internal/ads/zzbfk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    .line 7
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfkd;->zzd(Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzgus;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfkk;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfkm;->zzu:Lcom/google/android/gms/internal/ads/zzfkm;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfkj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfkj;->zze(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzi()Lcom/google/android/gms/internal/ads/zzfjz;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemy;->zza:Lcom/google/android/gms/internal/ads/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfp;->zze(Lcom/google/android/gms/internal/ads/zzbfm;)V

    return-void
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzenh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemy;->zzd:Lcom/google/android/gms/internal/ads/zzenh;

    return-object v0
.end method
