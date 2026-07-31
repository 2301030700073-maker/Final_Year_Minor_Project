.class public final Lcom/google/android/gms/internal/ads/zzaao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaba;

.field private zzc:Lcom/google/android/gms/internal/ads/zzbs;

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/ads/zzdc;

.field private zzf:Z

.field private zzg:J

.field private final zzh:Lcom/google/android/gms/internal/ads/zzabb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaba;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:Lcom/google/android/gms/internal/ads/zzaba;

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzg:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabb;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;-><init>(F)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzh:Lcom/google/android/gms/internal/ads/zzabb;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzaao;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:Z

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzaao;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzaao;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzg:J

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzf:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaau;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaw;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(Lcom/google/android/gms/internal/ads/zzaao;[B)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzf:Z

    return-object v0
.end method

.method final synthetic zze()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzaba;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzb:Lcom/google/android/gms/internal/ads/zzaba;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzbs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzc:Lcom/google/android/gms/internal/ads/zzbs;

    return-object v0
.end method

.method final synthetic zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzd:Z

    return v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzdc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zze:Lcom/google/android/gms/internal/ads/zzdc;

    return-object v0
.end method

.method final synthetic zzj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzg:J

    return-wide v0
.end method

.method final synthetic zzk()Lcom/google/android/gms/internal/ads/zzabb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaao;->zzh:Lcom/google/android/gms/internal/ads/zzabb;

    return-object v0
.end method
