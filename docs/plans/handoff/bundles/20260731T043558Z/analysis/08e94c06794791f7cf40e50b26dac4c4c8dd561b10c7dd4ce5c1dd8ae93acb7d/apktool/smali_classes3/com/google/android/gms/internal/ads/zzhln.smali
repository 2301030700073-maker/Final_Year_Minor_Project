.class public final Lcom/google/android/gms/internal/ads/zzhln;
.super Lcom/google/android/gms/internal/ads/zzhwi;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlo;->zzg()Lcom/google/android/gms/internal/ads/zzhlo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhln;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhln;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhlo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhlo;->zze(Ljava/lang/String;)V

    return-object p0
.end method
