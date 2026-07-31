.class public final Lcom/google/android/gms/internal/ads/zzfsk;
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfsl;->zzc()Lcom/google/android/gms/internal/ads/zzfsl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsk;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfsl;->zzb(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfsk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsk;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsl;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfsl;->zzd(I)V

    return-object p0
.end method
