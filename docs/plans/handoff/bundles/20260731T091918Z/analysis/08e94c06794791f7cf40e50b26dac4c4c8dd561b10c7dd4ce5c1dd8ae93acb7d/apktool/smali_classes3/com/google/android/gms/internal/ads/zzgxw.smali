.class public final Lcom/google/android/gms/internal/ads/zzgxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgxw;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgxw;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgxw;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxw;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zza:Lcom/google/android/gms/internal/ads/zzgxw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxw;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zzb:Lcom/google/android/gms/internal/ads/zzgxw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxw;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxw;->zzc:Lcom/google/android/gms/internal/ads/zzgxw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxw;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxw;->zzd:Ljava/lang/String;

    return-object v0
.end method
