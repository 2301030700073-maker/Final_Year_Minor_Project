.class final Lcom/google/android/gms/internal/ads/zzhyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhyr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhxz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhzc;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhvz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhzc;Lcom/google/android/gms/internal/ads/zzhvz;Lcom/google/android/gms/internal/ads/zzhxz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:Lcom/google/android/gms/internal/ads/zzhzc;

    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzhwk;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzd:Lcom/google/android/gms/internal/ads/zzhvz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zza:Lcom/google/android/gms/internal/ads/zzhxz;

    return-void
.end method

.method static zzh(Lcom/google/android/gms/internal/ads/zzhzc;Lcom/google/android/gms/internal/ads/zzhvz;Lcom/google/android/gms/internal/ads/zzhxz;)Lcom/google/android/gms/internal/ads/zzhyd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyd;-><init>(Lcom/google/android/gms/internal/ads/zzhzc;Lcom/google/android/gms/internal/ads/zzhvz;Lcom/google/android/gms/internal/ads/zzhxz;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zza:Lcom/google/android/gms/internal/ads/zzhxz;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhwo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbg()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxz;->zzdd()Lcom/google/android/gms/internal/ads/zzhxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxy;->zzbt()Lcom/google/android/gms/internal/ads/zzhxz;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Lcom/google/android/gms/internal/ads/zzhyy;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhyy;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyt;->zzI(Lcom/google/android/gms/internal/ads/zzhzc;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzd:Lcom/google/android/gms/internal/ads/zzhvz;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyt;->zzH(Lcom/google/android/gms/internal/ads/zzhvz;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhzd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzd;->zzh()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwd;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhzr;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwd;->zzc()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhwc;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhwc;->zzc()Lcom/google/android/gms/internal/ads/zzhzq;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhzq;->zzi:Lcom/google/android/gms/internal/ads/zzhzq;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhwc;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhwc;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzhxg;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhwc;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhxg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhxg;->zza()Lcom/google/android/gms/internal/ads/zzhxi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhxj;->zzc()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhzr;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhwc;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzhzr;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhzd;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhzd;->zzf(Lcom/google/android/gms/internal/ads/zzhzr;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhym;Lcom/google/android/gms/internal/ads/zzhvy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhzc;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzhuw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhwo;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzd;->zza()Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzd;->zzb()Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzb:Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhzc;->zzj(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhyd;->zzd:Lcom/google/android/gms/internal/ads/zzhvz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhvz;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhwk;->zza:Lcom/google/android/gms/internal/ads/zzhwd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwd;->zze()Z

    move-result p1

    return p1
.end method
