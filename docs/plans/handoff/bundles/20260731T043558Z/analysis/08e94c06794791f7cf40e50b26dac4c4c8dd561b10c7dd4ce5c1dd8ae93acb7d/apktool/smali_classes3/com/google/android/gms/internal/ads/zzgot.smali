.class public abstract Lcom/google/android/gms/internal/ads/zzgot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgot;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgot;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgor;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zza:Lcom/google/android/gms/internal/ads/zzgot;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgos;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zzb:Lcom/google/android/gms/internal/ads/zzgot;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgos;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zzc:Lcom/google/android/gms/internal/ads/zzgot;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzgot;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zza:Lcom/google/android/gms/internal/ads/zzgot;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzgot;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zza:Lcom/google/android/gms/internal/ads/zzgot;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzgot;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zzb:Lcom/google/android/gms/internal/ads/zzgot;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/ads/zzgot;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgot;->zzc:Lcom/google/android/gms/internal/ads/zzgot;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzgot;
.end method

.method public abstract zzc(ZZ)Lcom/google/android/gms/internal/ads/zzgot;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;
.end method

.method public abstract zze()I
.end method
