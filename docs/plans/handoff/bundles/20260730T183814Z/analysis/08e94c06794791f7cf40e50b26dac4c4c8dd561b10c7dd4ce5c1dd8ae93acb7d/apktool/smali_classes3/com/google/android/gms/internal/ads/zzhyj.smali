.class final Lcom/google/android/gms/internal/ads/zzhyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhyj;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhys;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhyj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyj;->zza:Lcom/google/android/gms/internal/ads/zzhyj;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyj;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhxq;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhxq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyj;->zzb:Lcom/google/android/gms/internal/ads/zzhys;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhyj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhyj;->zza:Lcom/google/android/gms/internal/ads/zzhyj;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;
    .locals 3

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhxb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhyj;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhyr;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhyj;->zzb:Lcom/google/android/gms/internal/ads/zzhys;

    .line 3
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzhys;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhxb;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhyr;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2
.end method
