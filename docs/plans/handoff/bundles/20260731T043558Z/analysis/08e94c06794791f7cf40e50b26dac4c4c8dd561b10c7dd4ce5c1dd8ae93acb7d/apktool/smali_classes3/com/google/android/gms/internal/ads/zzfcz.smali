.class public final Lcom/google/android/gms/internal/ads/zzfcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfic;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfic;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfcw;-><init>(Lcom/google/android/gms/internal/ads/zzfcz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfdi;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfdi;-><init>(Lcom/google/android/gms/internal/ads/zzfic;Lcom/google/android/gms/internal/ads/zzcxv;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfdi;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgua;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcx;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzfcx;-><init>(Lcom/google/android/gms/internal/ads/zzfcz;Lcom/google/android/gms/internal/ads/zzcxv;)V

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcv;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfcv;-><init>(Lcom/google/android/gms/internal/ads/zzfcz;)V

    const-class p3, Ljava/lang/Exception;

    .line 5
    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgua;

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzfdg;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfdg;->zzb:Lcom/google/android/gms/internal/ads/zzfim;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfdg;->zza:Lcom/google/android/gms/internal/ads/zzbxj;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfic;->zza(Lcom/google/android/gms/internal/ads/zzfim;)Lcom/google/android/gms/internal/ads/zzfil;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcxv;->zza()Lcom/google/android/gms/internal/ads/zzcus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcus;->zzf(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcz;->zzb:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzguf;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfcy;-><init>(Lcom/google/android/gms/internal/ads/zzfim;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzfil;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfcz;->zza(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
