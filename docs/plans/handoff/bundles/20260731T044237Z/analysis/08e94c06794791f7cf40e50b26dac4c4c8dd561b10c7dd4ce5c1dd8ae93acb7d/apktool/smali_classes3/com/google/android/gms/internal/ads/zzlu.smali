.class public final Lcom/google/android/gms/internal/ads/zzlu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzlu;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzgpo;

.field public final zzc:Ljava/lang/Double;

.field public final zzd:Ljava/lang/Double;

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlt;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzlu;-><init>(Lcom/google/android/gms/internal/ads/zzlt;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzlu;->zza:Lcom/google/android/gms/internal/ads/zzlu;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzlt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlt;->zza()Lcom/google/android/gms/internal/ads/zzgpo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzc:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzd:Ljava/lang/Double;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzh:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzlu;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzlu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzf:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzi:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzc:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzd:Ljava/lang/Double;

    .line 4
    invoke-static {v0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlu;->zze:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzg:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlu;->zzh:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlu;->zzb:Lcom/google/android/gms/internal/ads/zzgpo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
