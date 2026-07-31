.class public final Lcom/google/android/gms/internal/ads/zzgvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgwj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/ads/zzgvy;

.field private zze:Lcom/google/android/gms/internal/ads/zzgvz;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgwj;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgvv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:Lcom/google/android/gms/internal/ads/zzgvv;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzd:Lcom/google/android/gms/internal/ads/zzgvy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zze:Lcom/google/android/gms/internal/ads/zzgvz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Lcom/google/android/gms/internal/ads/zzgwj;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgvx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zze:Lcom/google/android/gms/internal/ads/zzgvz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvz;->zzc()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zza:Z

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvy;->zza()Lcom/google/android/gms/internal/ads/zzgvy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzd:Lcom/google/android/gms/internal/ads/zzgvy;

    return-object p0
.end method

.method final synthetic zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zza:Z

    return v0
.end method

.method final synthetic zzd(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zza:Z

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzb:Lcom/google/android/gms/internal/ads/zzgvv;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzc:Lcom/google/android/gms/internal/ads/zzgwj;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzgvy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zzd:Lcom/google/android/gms/internal/ads/zzgvy;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzgvz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zze:Lcom/google/android/gms/internal/ads/zzgvz;

    return-object v0
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgvz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvx;->zze:Lcom/google/android/gms/internal/ads/zzgvz;

    return-void
.end method
