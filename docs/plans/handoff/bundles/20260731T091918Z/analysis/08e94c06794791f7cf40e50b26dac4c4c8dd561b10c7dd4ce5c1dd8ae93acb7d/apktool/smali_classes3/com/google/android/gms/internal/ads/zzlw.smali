.class public final Lcom/google/android/gms/internal/ads/zzlw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzik;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzls;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzik;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzls;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzik;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzyr;)Lcom/google/android/gms/internal/ads/zzlw;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzik;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzih;-><init>(Lcom/google/android/gms/internal/ads/zzyr;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zze:Lcom/google/android/gms/internal/ads/zzgmv;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzkl;)Lcom/google/android/gms/internal/ads/zzlw;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzik;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzii;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzii;-><init>(Lcom/google/android/gms/internal/ads/zzkl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzf:Lcom/google/android/gms/internal/ads/zzgmv;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzlx;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zza:Lcom/google/android/gms/internal/ads/zzik;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzw:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzik;->zzw:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlx;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzlx;-><init>(Lcom/google/android/gms/internal/ads/zzik;)V

    return-object v1
.end method
