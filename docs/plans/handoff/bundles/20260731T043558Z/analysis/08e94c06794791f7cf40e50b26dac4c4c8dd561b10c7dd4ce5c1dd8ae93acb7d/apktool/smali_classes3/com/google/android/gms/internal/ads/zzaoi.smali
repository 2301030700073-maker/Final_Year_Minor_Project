.class final Lcom/google/android/gms/internal/ads/zzaoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/lang/String;

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzaem;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfq;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Ljava/util/List;

    const-string p2, "video/mp2t"

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaem;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzc:[Lcom/google/android/gms/internal/ads/zzaem;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfq;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaoh;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaoh;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;-><init>(Lcom/google/android/gms/internal/ads/zzfp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzd:Lcom/google/android/gms/internal/ads/zzfq;

    const/4 p2, 0x3

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzc:[Lcom/google/android/gms/internal/ads/zzaem;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb()I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzv;

    .line 4
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v6, "application/cea-608"

    .line 5
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    const-string v6, "Invalid closed caption MIME type provided: %s"

    .line 7
    invoke-static {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzgmd;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    .line 8
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 10
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 11
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zze:I

    .line 12
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzf(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    .line 13
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzL:I

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzJ(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 15
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    .line 8
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 17
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzeg;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzd:Lcom/google/android/gms/internal/ads/zzfq;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfq;->zzc(JLcom/google/android/gms/internal/ads/zzeg;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic zzc(JLcom/google/android/gms/internal/ads/zzeg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoi;->zzc:[Lcom/google/android/gms/internal/ads/zzaem;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(JLcom/google/android/gms/internal/ads/zzeg;[Lcom/google/android/gms/internal/ads/zzaem;)V

    return-void
.end method
