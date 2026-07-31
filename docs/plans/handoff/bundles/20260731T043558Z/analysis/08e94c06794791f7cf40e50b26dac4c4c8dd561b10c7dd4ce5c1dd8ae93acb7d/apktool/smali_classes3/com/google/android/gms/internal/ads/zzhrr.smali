.class public final enum Lcom/google/android/gms/internal/ads/zzhrr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhrr;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhrr;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzhrr;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzhrr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhrr;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhrr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrr;->zza:Lcom/google/android/gms/internal/ads/zzhrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhrr;

    const-string v2, "NIST_P384"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhrr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhrr;->zzb:Lcom/google/android/gms/internal/ads/zzhrr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhrr;

    const-string v3, "NIST_P521"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhrr;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhrr;->zzc:Lcom/google/android/gms/internal/ads/zzhrr;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzhrr;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhrr;->zzd:[Lcom/google/android/gms/internal/ads/zzhrr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhrr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhrr;->zzd:[Lcom/google/android/gms/internal/ads/zzhrr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhrr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhrr;

    return-object v0
.end method
