.class public final Lcom/google/android/gms/internal/ads/zzum;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzus;
.implements Lcom/google/android/gms/internal/ads/zzur;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzuu;

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzyv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzuw;

.field private zze:Lcom/google/android/gms/internal/ads/zzus;

.field private zzf:Lcom/google/android/gms/internal/ads/zzur;

.field private zzg:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzyv;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zza:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzum;->zzc:Lcom/google/android/gms/internal/ads/zzyv;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    return-void
.end method

.method private final zzv(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzur;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzf:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzum;->zzv(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzus;->zzb(Lcom/google/android/gms/internal/ads/zzur;J)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzt()V

    :cond_1
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzwv;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzd()Lcom/google/android/gms/internal/ads/zzwv;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzyk;[Z[Lcom/google/android/gms/internal/ads/zzwk;[ZJ)J
    .locals 13

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzum;->zzb:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 2
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzus;->zze([Lcom/google/android/gms/internal/ads/zzyk;[Z[Lcom/google/android/gms/internal/ads/zzwk;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final zzf(JZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzus;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzus;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzus;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzus;->zzj(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zzlv;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzus;->zzk(JLcom/google/android/gms/internal/ads/zzlv;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzus;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzkn;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzus;->zzm(Lcom/google/android/gms/internal/ads/zzkn;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzus;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzf:Lcom/google/android/gms/internal/ads/zzur;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzur;->zzp(Lcom/google/android/gms/internal/ads/zzus;)V

    return-void
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzg:J

    return-wide v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzuw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzwm;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzus;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzf:Lcom/google/android/gms/internal/ads/zzur;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzur;->zzs(Lcom/google/android/gms/internal/ads/zzwm;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzuu;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzum;->zzv(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzum;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzum;->zzc:Lcom/google/android/gms/internal/ads/zzyv;

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzuw;->zzG(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzyv;J)Lcom/google/android/gms/internal/ads/zzus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzum;->zzf:Lcom/google/android/gms/internal/ads/zzur;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzus;->zzb(Lcom/google/android/gms/internal/ads/zzur;J)V

    :cond_0
    return-void
.end method

.method public final zzu()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zze:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzum;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzD(Lcom/google/android/gms/internal/ads/zzus;)V

    :cond_0
    return-void
.end method
