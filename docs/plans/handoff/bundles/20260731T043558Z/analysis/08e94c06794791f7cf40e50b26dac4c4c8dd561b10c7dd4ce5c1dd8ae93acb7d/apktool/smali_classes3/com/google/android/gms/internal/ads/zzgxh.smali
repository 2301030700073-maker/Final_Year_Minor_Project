.class public final Lcom/google/android/gms/internal/ads/zzgxh;
.super Lcom/google/android/gms/internal/ads/zzgxa;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhtb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhtb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zze:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxp;Lcom/google/android/gms/internal/ads/zzhtb;Lcom/google/android/gms/internal/ads/zzhtb;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Integer;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zza:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzb:Lcom/google/android/gms/internal/ads/zzhtb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzc:Lcom/google/android/gms/internal/ads/zzhtb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzd:Lcom/google/android/gms/internal/ads/zzhsz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zze:Ljava/lang/Integer;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzgxg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgwj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zza:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzd:Lcom/google/android/gms/internal/ads/zzhsz;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhtb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzb:Lcom/google/android/gms/internal/ads/zzhtb;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhtb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zzc:Lcom/google/android/gms/internal/ads/zzhtb;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxh;->zza:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object v0
.end method
