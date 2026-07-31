.class public final Lcom/google/android/gms/internal/ads/zzqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzpe;

.field private zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqo;

.field private zze:Lcom/google/android/gms/internal/ads/zzqr;

.field private zzf:Lcom/google/android/gms/internal/ads/zzqn;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzb:Lcom/google/android/gms/internal/ads/zzpe;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzqo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:Lcom/google/android/gms/internal/ads/zzqo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzb:Lcom/google/android/gms/internal/ads/zzpe;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzqo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzd:Lcom/google/android/gms/internal/ads/zzqo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzrh;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzc:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zze:Lcom/google/android/gms/internal/ads/zzqr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqr;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzcg;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqr;-><init>([Lcom/google/android/gms/internal/ads/zzcg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zze:Lcom/google/android/gms/internal/ads/zzqr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzqn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqn;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzqn;

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrh;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzrh;-><init>(Lcom/google/android/gms/internal/ads/zzqp;[B)V

    return-object v0
.end method

.method final synthetic zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzpe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzb:Lcom/google/android/gms/internal/ads/zzpe;

    return-object v0
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzqr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zze:Lcom/google/android/gms/internal/ads/zzqr;

    return-object v0
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzqn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqp;->zzf:Lcom/google/android/gms/internal/ads/zzqn;

    return-object v0
.end method
