.class public final enum Lcom/google/android/gms/internal/ads/zzhsi;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhsi;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhsi;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzhsi;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzhsi;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzhsi;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/ads/zzhsi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsi;

    const-string v1, "SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsi;->zza:Lcom/google/android/gms/internal/ads/zzhsi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsi;

    const-string v2, "SHA224"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhsi;->zzb:Lcom/google/android/gms/internal/ads/zzhsi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhsi;

    const-string v3, "SHA256"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhsi;->zzc:Lcom/google/android/gms/internal/ads/zzhsi;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhsi;

    const-string v4, "SHA384"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzhsi;->zzd:Lcom/google/android/gms/internal/ads/zzhsi;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhsi;

    const-string v5, "SHA512"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/gms/internal/ads/zzhsi;->zze:Lcom/google/android/gms/internal/ads/zzhsi;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/ads/zzhsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhsi;->zzf:[Lcom/google/android/gms/internal/ads/zzhsi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhsi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsi;->zzf:[Lcom/google/android/gms/internal/ads/zzhsi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhsi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhsi;

    return-object v0
.end method
