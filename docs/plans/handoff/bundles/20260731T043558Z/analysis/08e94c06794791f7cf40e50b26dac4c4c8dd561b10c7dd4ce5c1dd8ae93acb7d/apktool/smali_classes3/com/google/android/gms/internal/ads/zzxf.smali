.class final Lcom/google/android/gms/internal/ads/zzxf;
.super Lcom/google/android/gms/internal/ads/zzya;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzxt;

.field private final zzi:Z

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Z

.field private final zzo:I

.field private final zzp:I

.field private final zzq:Z

.field private final zzr:I

.field private final zzs:I

.field private final zzt:I

.field private final zzu:I

.field private final zzv:Z

.field private final zzw:Z

.field private final zzx:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzxt;IZLcom/google/android/gms/internal/ads/zzgme;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzya;-><init>(ILcom/google/android/gms/internal/ads/zzbg;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzT:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    .line 3
    :goto_0
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzP:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 4
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzyi;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzg:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzlp;->zzaa(IZ)Z

    move-result p8

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzi:Z

    move p8, p3

    .line 5
    :goto_1
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzq:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->size()I

    move-result v0

    const v1, 0x7fffffff

    if-ge p8, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 6
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzq:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 7
    invoke-virtual {v2, p8}, Lcom/google/android/gms/internal/ads/zzgpe;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzyi;->zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    :cond_2
    move v0, p3

    move p8, v1

    :goto_2
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzj:I

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 9
    iget p8, p8, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzs:I

    .line 10
    invoke-static {p8, p3}, Lcom/google/android/gms/internal/ads/zzyi;->zzm(II)I

    move-result p8

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzl:I

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 11
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzr:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-static {p8, v0}, Lcom/google/android/gms/internal/ads/zzyi;->zzn(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgpe;)I

    move-result p8

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzm:I

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 12
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    if-eqz v0, :cond_4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, p3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, p2

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzn:Z

    .line 13
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zze:I

    and-int/2addr v0, p2

    if-eq p2, v0, :cond_5

    move v0, p3

    goto :goto_5

    :cond_5
    move v0, p2

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzq:Z

    .line 14
    iget-object v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-nez v0, :cond_6

    :goto_6
    move v0, p3

    goto :goto_9

    .line 25
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7e929daa

    if-eq v4, v5, :cond_9

    const v5, 0xb269699

    if-eq v4, v5, :cond_8

    const v5, 0x59afdf4a

    if-eq v4, v5, :cond_7

    goto :goto_7

    :cond_7
    const-string v4, "audio/iamf"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_8

    :cond_8
    const-string v4, "audio/ac4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, p2

    goto :goto_8

    :cond_9
    const-string v4, "audio/eac3-joc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, p3

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v3

    :goto_8
    if-eqz v0, :cond_b

    if-eq v0, p2, :cond_b

    if-eq v0, v2, :cond_b

    goto :goto_6

    :cond_b
    move v0, p2

    .line 14
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzx:Z

    .line 15
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzr:I

    .line 16
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzs:I

    .line 17
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzt:I

    .line 18
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    if-eq v0, v3, :cond_d

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzu:I

    if-gt v0, v4, :cond_c

    goto :goto_a

    :cond_c
    move p7, p3

    goto :goto_b

    :cond_d
    :goto_a
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-eq v0, v3, :cond_e

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzt:I

    if-gt v0, v4, :cond_c

    .line 19
    :cond_e
    invoke-interface {p7, p8}, Lcom/google/android/gms/internal/ads/zzgme;->zza(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_c

    move p7, p2

    :goto_b
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzf:Z

    .line 20
    sget-object p7, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    .line 22
    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p7

    invoke-virtual {p7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p7

    const-string p8, ","

    .line 23
    invoke-virtual {p7, p8, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p7

    move p8, p3

    .line 26
    :goto_c
    array-length v0, p7

    if-ge p8, v0, :cond_f

    .line 27
    aget-object v0, p7, p8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzep;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p7, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_c

    :cond_f
    move p8, p3

    .line 28
    :goto_d
    array-length v0, p7

    if-ge p8, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 29
    aget-object v4, p7, p8

    .line 30
    invoke-static {v0, v4, p3}, Lcom/google/android/gms/internal/ads/zzyi;->zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 p8, p8, 0x1

    goto :goto_d

    :cond_11
    move v0, p3

    move p8, v1

    :goto_e
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzp:I

    move p7, p3

    .line 31
    :goto_f
    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzv:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzgpe;->size()I

    move-result p8

    if-ge p7, p8, :cond_13

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 32
    iget-object p8, p8, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz p8, :cond_12

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzv:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 33
    invoke-virtual {v0, p7}, Lcom/google/android/gms/internal/ads/zzgpe;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_12

    move v1, p7

    goto :goto_10

    :cond_12
    add-int/lit8 p7, p7, 0x1

    goto :goto_f

    :cond_13
    :goto_10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzu:I

    and-int/lit16 p4, p5, 0x180

    const/16 p7, 0x80

    if-ne p4, p7, :cond_14

    move p4, p2

    goto :goto_11

    :cond_14
    move p4, p3

    :goto_11
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzv:Z

    and-int/lit8 p4, p5, 0x40

    const/16 p7, 0x40

    if-ne p4, p7, :cond_15

    move p4, p2

    goto :goto_12

    :cond_15
    move p4, p3

    :goto_12
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzw:Z

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    .line 34
    iget-boolean p7, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzV:Z

    invoke-static {p5, p7}, Lcom/google/android/gms/internal/ads/zzlp;->zzaa(IZ)Z

    move-result p7

    if-nez p7, :cond_16

    :goto_13
    move p2, p3

    goto :goto_14

    :cond_16
    iget-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzf:Z

    if-nez p7, :cond_17

    .line 35
    iget-boolean p8, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzO:Z

    if-nez p8, :cond_17

    goto :goto_13

    .line 36
    :cond_17
    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzw:Lcom/google/android/gms/internal/ads/zzbj;

    iget p8, p8, Lcom/google/android/gms/internal/ads/zzbj;->zzb:I

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzlp;->zzaa(IZ)Z

    move-result p3

    if-eqz p3, :cond_19

    if-eqz p7, :cond_19

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    .line 37
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    if-eq p3, v3, :cond_19

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzG:Z

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzF:Z

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzxt;->zzX:Z

    if-nez p3, :cond_18

    if-nez p6, :cond_19

    :cond_18
    and-int/2addr p1, p5

    if-eqz p1, :cond_19

    move p2, v2

    .line 34
    :cond_19
    :goto_14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;->zzb(Lcom/google/android/gms/internal/ads/zzxf;)I

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zze:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzxf;)I
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzf:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzi:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyi;->zzo()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyi;->zzo()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqy;->zza()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v1

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzi:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgot;->zzg()Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzi:Z

    .line 4
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzk:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzk:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgqy;->zza()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzj:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzj:I

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzb(II)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzl:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzl:I

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzb(II)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzm:I

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzm:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgqy;->zza()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    .line 12
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzq:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzq:Z

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzn:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzn:Z

    .line 14
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzo:I

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzo:I

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgqy;->zza()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v5

    .line 17
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzp:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzp:I

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zzb(II)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzf:Z

    .line 19
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzu:I

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzu:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->zzb()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgqy;->zza()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v4

    .line 22
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    .line 23
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzxt;->zzF:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzv:Z

    .line 24
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzv:Z

    .line 25
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzw:Z

    .line 26
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzx:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzx:Z

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgot;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzr:I

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzs:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzg:Ljava/lang/String;

    .line 30
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzt:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzt:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgot;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgot;->zze()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzya;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzh:Lcom/google/android/gms/internal/ads/zzxt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxf;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzxt;->zzR:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 3
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzxt;->zzQ:Z

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-eq v1, v3, :cond_0

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxt;->zzS:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzv:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzv:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzw:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxf;->zzw:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
