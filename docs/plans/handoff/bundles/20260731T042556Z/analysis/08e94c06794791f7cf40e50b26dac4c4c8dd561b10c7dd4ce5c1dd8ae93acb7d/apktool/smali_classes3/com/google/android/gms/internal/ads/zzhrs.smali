.class public final enum Lcom/google/android/gms/internal/ads/zzhrs;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhrs;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhrs;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/ads/zzhrs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrs;

    const-string v1, "IEEE_P1363"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhrs;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrs;->zza:Lcom/google/android/gms/internal/ads/zzhrs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhrs;

    const-string v2, "DER"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhrs;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhrs;->zzb:Lcom/google/android/gms/internal/ads/zzhrs;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/internal/ads/zzhrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrs;->zzc:[Lcom/google/android/gms/internal/ads/zzhrs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhrs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrs;->zzc:[Lcom/google/android/gms/internal/ads/zzhrs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhrs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhrs;

    return-object v0
.end method
