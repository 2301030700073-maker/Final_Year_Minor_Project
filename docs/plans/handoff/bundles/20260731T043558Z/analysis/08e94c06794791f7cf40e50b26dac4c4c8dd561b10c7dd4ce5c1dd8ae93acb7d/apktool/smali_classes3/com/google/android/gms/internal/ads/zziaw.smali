.class public final Lcom/google/android/gms/internal/ads/zziaw;
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzida;->zzr()Lcom/google/android/gms/internal/ads/zzida;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzida;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzh(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzi(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zziay;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzj(Lcom/google/android/gms/internal/ads/zziay;)V

    return-object p0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzida;->zzd()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzicl;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzk(Lcom/google/android/gms/internal/ads/zzicl;)V

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzida;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzl(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzida;->zzm()V

    return-object p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzicg;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzn(Lcom/google/android/gms/internal/ads/zzicg;)V

    return-object p0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzo(Lcom/google/android/gms/internal/ads/zzicn;)V

    return-object p0
.end method

.method public final zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzp(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzq(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/ads/zziaw;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziaw;->zza:Lcom/google/android/gms/internal/ads/zzhwo;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzida;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzida;->zzs(I)V

    return-object p0
.end method
