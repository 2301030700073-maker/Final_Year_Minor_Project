.class public final Lcom/google/android/gms/internal/ads/zzhew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhew;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhev;


# instance fields
.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhew;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhew;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhew;->zza:Lcom/google/android/gms/internal/ads/zzhew;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhev;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhev;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhew;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhew;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhew;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhew;->zza:Lcom/google/android/gms/internal/ads/zzhew;

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzhen;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhew;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhen;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhew;->zzb:Lcom/google/android/gms/internal/ads/zzhev;

    :cond_0
    return-object v0
.end method
