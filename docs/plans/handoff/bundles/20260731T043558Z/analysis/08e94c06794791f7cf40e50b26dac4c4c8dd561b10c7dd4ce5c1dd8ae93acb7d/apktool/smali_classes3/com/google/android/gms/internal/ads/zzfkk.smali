.class public abstract Lcom/google/android/gms/internal/ads/zzfkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/common/util/concurrent/ListenableFuture;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfkl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkk;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzd:Lcom/google/android/gms/internal/ads/zzfkl;

    return-void
.end method

.method static synthetic zzd()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfkk;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkj;
    .locals 9

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfkj;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfkj;-><init>(Lcom/google/android/gms/internal/ads/zzfkk;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;[B)V

    return-object v8
.end method

.method public final varargs zzb(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzfkb;
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkb;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfkb;-><init>(Lcom/google/android/gms/internal/ads/zzfkk;Ljava/lang/Object;Ljava/util/List;[B)V

    return-object v0
.end method

.method protected abstract zzc(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzgus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzb:Lcom/google/android/gms/internal/ads/zzgus;

    return-object v0
.end method

.method final synthetic zzf()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfkl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkk;->zzd:Lcom/google/android/gms/internal/ads/zzfkl;

    return-object v0
.end method
