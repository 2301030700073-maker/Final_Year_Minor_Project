.class public final Lcom/google/android/gms/internal/ads/zzhms;
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhmt;->zzh()Lcom/google/android/gms/internal/ads/zzhmt;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhms;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhms;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhmt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmt;->zzg(Lcom/google/android/gms/internal/ads/zzhvi;)V

    return-object p0
.end method
