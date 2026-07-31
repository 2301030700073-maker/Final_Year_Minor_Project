.class public final Lcom/google/android/gms/internal/ads/zzfco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdm;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguz;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfdn;->zzb:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfdl;->zza(Lcom/google/android/gms/internal/ads/zzfdk;)Lcom/google/android/gms/internal/ads/zzcxu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfdq;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfdq;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxu;->zzj(Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzcxu;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcxu;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcxv;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfil;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfil;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcus;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfcn;-><init>(Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzfil;Lcom/google/android/gms/internal/ads/zzcus;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfco;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfcm;-><init>(Lcom/google/android/gms/internal/ads/zzfil;)V

    .line 8
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfco;->zzb(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Lcom/google/android/gms/internal/ads/zzcxv;

    return-object v0
.end method
