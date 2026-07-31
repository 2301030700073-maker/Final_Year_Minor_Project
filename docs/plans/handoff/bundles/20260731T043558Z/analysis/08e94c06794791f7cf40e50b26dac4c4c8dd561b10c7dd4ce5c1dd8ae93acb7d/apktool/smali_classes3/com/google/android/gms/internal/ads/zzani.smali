.class public final Lcom/google/android/gms/internal/ads/zzani;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanq;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzv;

.field private zzb:Lcom/google/android/gms/internal/ads/zzem;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v0, "video/mp2t"

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaoe;->zza()V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzv;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->zzb()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->zzc()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzv;

    .line 4
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzt:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzr(J)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    .line 8
    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    :cond_2
    :goto_0
    return-void
.end method
