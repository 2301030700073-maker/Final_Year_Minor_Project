.class public final enum Lcom/google/android/gms/internal/consent_sdk/zzce;
.super Ljava/lang/Enum;
.source "com.google.android.ump:user-messaging-platform@@3.2.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zze:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zzf:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field public static final enum zzg:Lcom/google/android/gms/internal/consent_sdk/zzce;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/consent_sdk/zzce;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzce;->zza:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v2, "ALWAYS_SHOW"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v3, "GEO_OVERRIDE_EEA"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v4, "GEO_OVERRIDE_REGULATED_US_STATE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v5, "GEO_OVERRIDE_OTHER"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/android/gms/internal/consent_sdk/zzce;->zze:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v6, "GEO_OVERRIDE_NON_EEA"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzce;

    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzce;

    const-string v7, "PREVIEWING_DEBUG_MESSAGES"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzce;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/internal/consent_sdk/zzce;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzh:[Lcom/google/android/gms/internal/consent_sdk/zzce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/zzce;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzh:[Lcom/google/android/gms/internal/consent_sdk/zzce;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/zzce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/zzce;

    return-object v0
.end method
