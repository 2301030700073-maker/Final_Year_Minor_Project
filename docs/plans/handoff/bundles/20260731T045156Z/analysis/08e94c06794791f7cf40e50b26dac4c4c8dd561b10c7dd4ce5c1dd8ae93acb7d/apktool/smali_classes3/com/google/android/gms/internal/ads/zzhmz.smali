.class public final Lcom/google/android/gms/internal/ads/zzhmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhmz;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhmz;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmz;

    const-string v1, "IEEE_P1363"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmz;->zza:Lcom/google/android/gms/internal/ads/zzhmz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmz;

    const-string v1, "DER"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmz;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmz;->zzb:Lcom/google/android/gms/internal/ads/zzhmz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmz;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmz;->zzc:Ljava/lang/String;

    return-object v0
.end method
