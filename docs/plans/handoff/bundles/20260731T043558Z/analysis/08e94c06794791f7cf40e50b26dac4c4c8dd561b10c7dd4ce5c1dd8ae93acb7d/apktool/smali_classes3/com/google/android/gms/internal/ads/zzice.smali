.class public final Lcom/google/android/gms/internal/ads/zzice;
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicg;->zzg()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzice;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzice;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzicg;

    const-string v0, "image/png"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzicg;->zzd(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzice;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzice;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzicg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzicg;->zze(Lcom/google/android/gms/internal/ads/zzhvi;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzice;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzice;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzicg;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzicg;->zzh(I)V

    return-object p0
.end method
