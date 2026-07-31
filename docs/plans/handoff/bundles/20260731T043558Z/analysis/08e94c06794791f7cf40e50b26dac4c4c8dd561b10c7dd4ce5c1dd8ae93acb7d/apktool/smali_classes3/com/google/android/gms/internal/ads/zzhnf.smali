.class public final Lcom/google/android/gms/internal/ads/zzhnf;
.super Lcom/google/android/gms/internal/ads/zzhpr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhnb;

.field private final zzb:Ljava/security/spec/ECPoint;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhnb;Ljava/security/spec/ECPoint;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Integer;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhpr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zza:Lcom/google/android/gms/internal/ads/zzhnb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzb:Ljava/security/spec/ECPoint;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzc:Lcom/google/android/gms/internal/ads/zzhsz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhne;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhne;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhne;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zza:Lcom/google/android/gms/internal/ads/zzhnb;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzd()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzb:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zzc:Lcom/google/android/gms/internal/ads/zzhsz;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhnb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnf;->zza:Lcom/google/android/gms/internal/ads/zzhnb;

    return-object v0
.end method
