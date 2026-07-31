.class final Lcom/google/android/gms/internal/ads/zzakl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaem;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaem;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzakg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzd:I

.field private zze:I

.field private zzf:[B

.field private zzg:Lcom/google/android/gms/internal/ads/zzaki;

.field private zzh:Lcom/google/android/gms/internal/ads/zzv;

.field private zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaem;Lcom/google/android/gms/internal/ads/zzakg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzb:Lcom/google/android/gms/internal/ads/zzakg;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzep;->zzb:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzc:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method private final zzc(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    sub-int/2addr v1, v0

    add-int v0, v1, v1

    add-int/2addr p1, v1

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    .line 3
    array-length v2, v0

    if-gt p1, v2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 4
    :cond_1
    new-array p1, p1, [B

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzi:Z

    return-void
.end method

.method final synthetic zzb(JILcom/google/android/gms/internal/ads/zzaka;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzgpe;

    iget-wide v1, p4, Lcom/google/android/gms/internal/ads/zzaka;->zzc:J

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcm;->zzb()Landroid/os/Bundle;

    move-result-object v4

    .line 5
    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "c"

    .line 7
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "d"

    .line 8
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzc:Lcom/google/android/gms/internal/ads/zzeg;

    .line 13
    array-length v6, v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 14
    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    .line 15
    iget-wide v0, p4, Lcom/google/android/gms/internal/ads/zzaka;->zzb:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    .line 16
    iget-wide v0, p4, Lcom/google/android/gms/internal/ads/zzv;->zzt:J

    cmp-long p4, v0, v4

    if-nez p4, :cond_1

    move p4, v3

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    .line 17
    iget-wide v7, p4, Lcom/google/android/gms/internal/ads/zzv;->zzt:J

    cmp-long p4, v7, v4

    if-nez p4, :cond_3

    add-long/2addr p1, v0

    goto :goto_2

    :cond_3
    add-long p1, v0, v7

    :goto_2
    or-int/lit8 v5, p3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    .line 18
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zza(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzb:Lcom/google/android/gms/internal/ads/zzakg;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zza(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzc(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzaki;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v2

    const-string v3, "application/x-media3-cues"

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-wide v3, 0x7fffffffffffffffL

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzr(J)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzb:Lcom/google/android/gms/internal/ads/zzakg;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzK(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzj;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzv(Lcom/google/android/gms/internal/ads/zzj;IZI)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzakl;->zzc(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    .line 3
    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_1

    return p2

    .line 4
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    return p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzakl;->zzc(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    .line 3
    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    return-void
.end method

.method public final zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zza:Lcom/google/android/gms/internal/ads/zzaem;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p6, :cond_1

    const/4 p6, 0x1

    goto :goto_0

    :cond_1
    move p6, v0

    :goto_0
    const-string v1, "DRM on subtitles is not supported"

    .line 2
    invoke-static {p6, v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzb(ZLjava/lang/Object;)V

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    sub-int/2addr p6, p5

    sub-int/2addr p6, p4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzg:Lcom/google/android/gms/internal/ads/zzaki;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzf:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakh;->zza()Lcom/google/android/gms/internal/ads/zzakh;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Lcom/google/android/gms/internal/ads/zzakl;JI)V

    move v3, p6

    move v4, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaki;->zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzi:Z

    if-eqz p2, :cond_3

    .line 5
    const-string p2, "SubtitleTranscodingTO"

    const-string p3, "Parsing subtitles failed, ignoring sample."

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/2addr p6, p4

    .line 3
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    if-ne p6, p1, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakl;->zze:I

    :cond_2
    return-void

    .line 5
    :cond_3
    throw p1
.end method
