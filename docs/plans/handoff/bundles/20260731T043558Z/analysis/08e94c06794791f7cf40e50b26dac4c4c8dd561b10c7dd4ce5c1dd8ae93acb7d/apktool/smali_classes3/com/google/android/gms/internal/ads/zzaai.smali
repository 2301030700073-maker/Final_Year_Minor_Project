.class public final Lcom/google/android/gms/internal/ads/zzaai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/ads/zztg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzst;

.field private zze:Landroid/os/Handler;

.field private zzf:Lcom/google/android/gms/internal/ads/zzabs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zztg;->zzb:Lcom/google/android/gms/internal/ads/zztg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zztg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgmv;Lcom/google/android/gms/internal/ads/zzgmv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Lcom/google/android/gms/internal/ads/zzst;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zzaai;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zztg;

    return-object p0
.end method

.method public final zzb(Landroid/os/Handler;)Lcom/google/android/gms/internal/ads/zzaai;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/os/Handler;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/zzaai;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzb:Z

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzaai;)V

    return-object v0
.end method

.method final synthetic zze()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zztg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzc:Lcom/google/android/gms/internal/ads/zztg;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzst;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzd:Lcom/google/android/gms/internal/ads/zzst;

    return-object v0
.end method

.method final synthetic zzh()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zze:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzabs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaai;->zzf:Lcom/google/android/gms/internal/ads/zzabs;

    return-object v0
.end method
