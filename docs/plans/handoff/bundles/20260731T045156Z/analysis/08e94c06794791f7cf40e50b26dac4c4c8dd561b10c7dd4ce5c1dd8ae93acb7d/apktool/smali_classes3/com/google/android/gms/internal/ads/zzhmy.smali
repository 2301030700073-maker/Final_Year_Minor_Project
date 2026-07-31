.class public final Lcom/google/android/gms/internal/ads/zzhmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhmy;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhmy;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhmy;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmy;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zza:Lcom/google/android/gms/internal/ads/zzhmy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmy;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zzb:Lcom/google/android/gms/internal/ads/zzhmy;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmy;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmy;->zzc:Lcom/google/android/gms/internal/ads/zzhmy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmy;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmy;->zzd:Ljava/lang/String;

    return-object v0
.end method
