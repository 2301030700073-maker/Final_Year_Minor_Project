.class public final Lcom/google/android/gms/internal/ads/zzhga;
.super Lcom/google/android/gms/internal/ads/zzhds;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhga;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhga;->zza:Lcom/google/android/gms/internal/ads/zzhga;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhds;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhga;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhga;->zza:Lcom/google/android/gms/internal/ads/zzhga;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhey;->zza()Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhey;->zze(Lcom/google/android/gms/internal/ads/zzhed;Lcom/google/android/gms/internal/ads/zzhel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
