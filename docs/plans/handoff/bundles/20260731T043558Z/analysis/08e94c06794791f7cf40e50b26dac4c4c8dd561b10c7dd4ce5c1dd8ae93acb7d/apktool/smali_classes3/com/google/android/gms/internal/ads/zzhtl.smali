.class public final enum Lcom/google/android/gms/internal/ads/zzhtl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhtl;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhtl;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzhtl;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzhtl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtl;

    const-string v1, "LENIENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtl;->zza:Lcom/google/android/gms/internal/ads/zzhtl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhtl;

    const-string v2, "LEGACY_STRICT"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhtl;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhtl;->zzb:Lcom/google/android/gms/internal/ads/zzhtl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhtl;

    const-string v3, "STRICT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhtl;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhtl;->zzc:Lcom/google/android/gms/internal/ads/zzhtl;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzhtl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtl;->zzd:[Lcom/google/android/gms/internal/ads/zzhtl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhtl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtl;->zzd:[Lcom/google/android/gms/internal/ads/zzhtl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhtl;

    return-object v0
.end method
