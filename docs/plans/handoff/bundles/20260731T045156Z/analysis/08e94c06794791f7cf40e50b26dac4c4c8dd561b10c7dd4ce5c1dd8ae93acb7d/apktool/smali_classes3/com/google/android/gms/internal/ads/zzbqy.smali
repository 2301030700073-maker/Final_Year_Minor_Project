.class public final Lcom/google/android/gms/internal/ads/zzbqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbqb;

.field private zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zza:Lcom/google/android/gms/internal/ads/zzbqb;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbqb;->zzb(Lcom/google/android/gms/internal/ads/zzaxa;)Lcom/google/android/gms/internal/ads/zzbpv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbqx;-><init>(Lcom/google/android/gms/internal/ads/zzcca;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqu;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbqu;-><init>(Lcom/google/android/gms/internal/ads/zzcca;)V

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcch;->zze(Lcom/google/android/gms/internal/ads/zzcce;Lcom/google/android/gms/internal/ads/zzccc;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbrb;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzd()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbrb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbrb;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)V

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbqv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblx;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgtq;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblx;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbqw;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbqw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblx;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzglu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqy;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
