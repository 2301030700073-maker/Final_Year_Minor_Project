.class public final Lcom/google/android/gms/ads/internal/client/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/ads/internal/client/zzbd;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbem;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzben;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbes;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbem;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzben;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzben;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbes;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbes;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbed;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb:Lcom/google/android/gms/internal/ads/zzbem;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc:Lcom/google/android/gms/internal/ads/zzben;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzbes;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zze:Lcom/google/android/gms/internal/ads/zzbed;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzben;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc:Lcom/google/android/gms/internal/ads/zzben;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbem;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb:Lcom/google/android/gms/internal/ads/zzbem;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbes;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzbes;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbed;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zze:Lcom/google/android/gms/internal/ads/zzbed;

    return-object v0
.end method
