.class final synthetic Lcom/google/android/gms/internal/ads/zzhni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfo;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhni;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhni;->zza:Lcom/google/android/gms/internal/ads/zzhni;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgvt;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnf;

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhqa;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhdc;->zza()Ljava/security/Provider;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhqa;->zzb(Lcom/google/android/gms/internal/ads/zzhnf;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzgwm;

    move-result-object p1

    return-object p1
.end method
