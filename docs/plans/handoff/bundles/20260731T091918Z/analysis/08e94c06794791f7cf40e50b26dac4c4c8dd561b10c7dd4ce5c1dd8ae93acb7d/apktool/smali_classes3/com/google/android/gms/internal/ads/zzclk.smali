.class public final Lcom/google/android/gms/internal/ads/zzclk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcjp;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcmh;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfkw;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcmu;

.field private zze:Lcom/google/android/gms/internal/ads/zzfhq;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcjp;)Lcom/google/android/gms/internal/ads/zzclk;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->zza:Lcom/google/android/gms/internal/ads/zzcjp;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcmh;)Lcom/google/android/gms/internal/ads/zzclk;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcmh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzb:Lcom/google/android/gms/internal/ads/zzcmh;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcjn;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zza:Lcom/google/android/gms/internal/ads/zzcjp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcjp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzb:Lcom/google/android/gms/internal/ads/zzcmh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcmh;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzc:Lcom/google/android/gms/internal/ads/zzfkw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzc:Lcom/google/android/gms/internal/ads/zzfkw;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzd:Lcom/google/android/gms/internal/ads/zzcmu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcmu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzd:Lcom/google/android/gms/internal/ads/zzcmu;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zze:Lcom/google/android/gms/internal/ads/zzfhq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclk;->zze:Lcom/google/android/gms/internal/ads/zzfhq;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclk;->zza:Lcom/google/android/gms/internal/ads/zzcjp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzb:Lcom/google/android/gms/internal/ads/zzcmh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzc:Lcom/google/android/gms/internal/ads/zzfkw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclk;->zzd:Lcom/google/android/gms/internal/ads/zzcmu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzclk;->zze:Lcom/google/android/gms/internal/ads/zzfhq;

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzckz;-><init>(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzcmh;Lcom/google/android/gms/internal/ads/zzfkw;Lcom/google/android/gms/internal/ads/zzcmu;Lcom/google/android/gms/internal/ads/zzfhq;)V

    return-object v0
.end method
