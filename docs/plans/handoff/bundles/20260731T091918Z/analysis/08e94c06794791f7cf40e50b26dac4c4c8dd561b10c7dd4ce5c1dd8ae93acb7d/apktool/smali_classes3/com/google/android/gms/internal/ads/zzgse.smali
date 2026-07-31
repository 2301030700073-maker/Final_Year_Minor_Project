.class public final enum Lcom/google/android/gms/internal/ads/zzgse;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzgse;

.field private static final synthetic zzb:[Lcom/google/android/gms/internal/ads/zzgse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgse;

    const-string v1, "APPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgse;->zza:Lcom/google/android/gms/internal/ads/zzgse;

    filled-new-array {v0}, [Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgse;->zzb:[Lcom/google/android/gms/internal/ads/zzgse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p1, "APPEND"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzgse;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgse;->zzb:[Lcom/google/android/gms/internal/ads/zzgse;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzgse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzgse;

    return-object v0
.end method
