.class public final Lcom/google/android/gms/internal/ads/zzaiz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzada;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private zzA:I

.field private zzB:Lcom/google/android/gms/internal/ads/zzafz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzakg;

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzh:Ljava/util/ArrayDeque;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzajd;

.field private final zzj:Ljava/util/List;

.field private zzk:Lcom/google/android/gms/internal/ads/zzgpe;

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:J

.field private zzx:Lcom/google/android/gms/internal/ads/zzadd;

.field private zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

.field private zzz:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(Lcom/google/android/gms/internal/ads/zzakg;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzb:Lcom/google/android/gms/internal/ads/zzakg;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzk:Lcom/google/android/gms/internal/ads/zzgpe;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzi:Lcom/google/android/gms/internal/ads/zzajd;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzj:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfm;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzf:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzq:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzadd;->zza:Lcom/google/android/gms/internal/ads/zzadd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzaiy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaji;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaiz;->zzk(Lcom/google/android/gms/internal/ads/zzaji;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzaji;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaiz;->zzk(Lcom/google/android/gms/internal/ads/zzaji;J)I

    move-result p0

    return p0
.end method

.method private final zzi()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    return-void
.end method

.method private final zzj(J)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeu;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_15

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeu;

    .line 3
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzeu;->zzd:I

    const v5, 0x6d6f6f76

    if-ne v2, v5, :cond_14

    const v2, 0x6d657461

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaik;->zze(Lcom/google/android/gms/internal/ads/zzeu;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzA:I

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-ne v5, v12, :cond_2

    move v10, v12

    goto :goto_2

    :cond_2
    move v10, v15

    :goto_2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzads;-><init>()V

    const v5, 0x75647461

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zzc(Lcom/google/android/gms/internal/ads/zzev;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v5

    .line 10
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzads;->zza(Lcom/google/android/gms/internal/ads/zzap;)Z

    move-object/from16 v16, v5

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzap;

    new-array v5, v12, [Lcom/google/android/gms/internal/ads/zzao;

    const v6, 0x6d766864

    .line 11
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaik;->zzd(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v6

    aput-object v6, v5, v15

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v9, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzc:I

    and-int/lit8 v5, v8, 0x1

    if-eq v12, v5, :cond_4

    move/from16 v17, v15

    goto :goto_4

    :cond_4
    move/from16 v17, v12

    :goto_4
    sget-object v18, Lcom/google/android/gms/internal/ads/zzaiw;->zza:Lcom/google/android/gms/internal/ads/zzaiw;

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v22, 0x0

    move-object v5, v11

    move-wide/from16 v23, v6

    move-wide/from16 v6, v20

    move/from16 v20, v8

    move-object/from16 v8, v22

    move-object/from16 v21, v9

    move/from16 v9, v17

    move-object v13, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move/from16 v12, v19

    .line 12
    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzaik;->zzb(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzads;JLcom/google/android/gms/internal/ads/zzq;ZZLcom/google/android/gms/internal/ads/zzglu;Z)Ljava/util/List;

    move-result-object v4

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiu;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v9, v15

    move v10, v9

    move-wide/from16 v7, v23

    const/4 v11, -0x1

    .line 14
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_e

    .line 15
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaji;

    .line 16
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    if-nez v15, :cond_5

    move-object/from16 v27, v1

    move-object/from16 v26, v4

    move v3, v9

    const/4 v12, -0x1

    goto/16 :goto_b

    .line 17
    :cond_5
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajf;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaiy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    add-int/lit8 v25, v10, 0x1

    move-object/from16 v26, v4

    iget v4, v15, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    .line 18
    invoke-interface {v3, v10, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v3

    invoke-direct {v6, v15, v12, v3}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Lcom/google/android/gms/internal/ads/zzajf;Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzaem;)V

    move v3, v9

    iget-wide v9, v15, Lcom/google/android/gms/internal/ads/zzajf;->zze:J

    cmp-long v27, v9, v23

    if-eqz v27, :cond_6

    goto :goto_6

    .line 19
    :cond_6
    iget-wide v9, v12, Lcom/google/android/gms/internal/ads/zzaji;->zzh:J

    :goto_6
    move-object/from16 v27, v1

    .line 18
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    .line 20
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 21
    const-string v15, "audio/true-hd"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 22
    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    mul-int/lit8 v12, v12, 0x10

    goto :goto_7

    .line 23
    :cond_7
    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    add-int/lit8 v12, v12, 0x1e

    .line 22
    :goto_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v15

    .line 24
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    const/4 v12, 0x2

    if-ne v4, v12, :cond_a

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzv;->zzf:I

    and-int/lit8 v12, v20, 0x8

    if-eqz v12, :cond_9

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    move/from16 v12, v18

    goto :goto_8

    :cond_8
    const/4 v12, 0x2

    :goto_8
    or-int/2addr v4, v12

    .line 25
    :cond_9
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    const/4 v4, 0x2

    .line 26
    :cond_a
    invoke-static {v4, v13, v15}, Lcom/google/android/gms/internal/ads/zzait;->zzb(ILcom/google/android/gms/internal/ads/zzads;Lcom/google/android/gms/internal/ads/zzt;)V

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzj:Ljava/util/List;

    move-wide/from16 v28, v7

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzap;

    .line 27
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    goto :goto_9

    .line 32
    :cond_b
    new-instance v8, Lcom/google/android/gms/internal/ads/zzap;

    .line 27
    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    :goto_9
    const/4 v12, 0x0

    aput-object v8, v7, v12

    aput-object v16, v7, v18

    const/4 v8, 0x2

    aput-object v21, v7, v8

    .line 28
    invoke-static {v4, v2, v15, v9, v7}, Lcom/google/android/gms/internal/ads/zzait;->zza(ILcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzt;Lcom/google/android/gms/internal/ads/zzap;[Lcom/google/android/gms/internal/ads/zzap;)V

    .line 29
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v7, "audio/mpeg"

    .line 30
    invoke-static {v10, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 31
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzaiy;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_a

    .line 32
    :cond_c
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    :goto_a
    const/4 v1, 0x2

    const/4 v12, -0x1

    if-ne v4, v1, :cond_d

    if-ne v11, v12, :cond_d

    .line 33
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v11, v1

    .line 34
    :cond_d
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v25

    move-wide/from16 v7, v28

    :goto_b
    add-int/lit8 v9, v3, 0x1

    move-object/from16 v4, v26

    move-object/from16 v1, v27

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_e
    move-object/from16 v27, v1

    move v1, v15

    const/4 v12, -0x1

    .line 19
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzaiy;

    .line 35
    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaiy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    .line 36
    array-length v2, v1

    new-array v3, v2, [[J

    new-array v4, v2, [I

    new-array v5, v2, [J

    new-array v2, v2, [Z

    const/4 v6, 0x0

    .line 37
    :goto_c
    array-length v9, v1

    if-ge v6, v9, :cond_f

    .line 38
    aget-object v9, v1, v6

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    new-array v9, v9, [J

    aput-object v9, v3, v6

    .line 39
    aget-object v9, v1, v6

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaji;->zzf:[J

    const/4 v10, 0x0

    aget-wide v13, v9, v10

    aput-wide v13, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    move v6, v10

    .line 40
    :goto_d
    array-length v9, v1

    if-ge v6, v9, :cond_13

    const-wide v15, 0x7fffffffffffffffL

    move v9, v10

    move-wide/from16 v16, v15

    move v15, v12

    .line 41
    :goto_e
    array-length v10, v1

    if-ge v9, v10, :cond_11

    .line 42
    aget-boolean v10, v2, v9

    if-nez v10, :cond_10

    aget-wide v20, v5, v9

    cmp-long v10, v20, v16

    if-gtz v10, :cond_10

    move v15, v9

    move-wide/from16 v16, v20

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 43
    :cond_11
    aget v9, v4, v15

    .line 44
    aget-object v10, v3, v15

    aput-wide v13, v10, v9

    .line 45
    aget-object v12, v1, v15

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    move-object/from16 v16, v1

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaji;->zzd:[I

    aget v1, v1, v9

    move-wide/from16 v20, v7

    int-to-long v7, v1

    add-long/2addr v13, v7

    add-int/lit8 v9, v9, 0x1

    .line 46
    aput v9, v4, v15

    .line 47
    array-length v1, v10

    if-ge v9, v1, :cond_12

    .line 48
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaji;->zzf:[J

    aget-wide v7, v1, v9

    aput-wide v7, v5, v15

    goto :goto_f

    .line 49
    :cond_12
    aput-boolean v18, v2, v15

    add-int/lit8 v6, v6, 0x1

    :goto_f
    move-object/from16 v1, v16

    move-wide/from16 v7, v20

    const/4 v10, 0x0

    const/4 v12, -0x1

    goto :goto_d

    :cond_13
    move-wide/from16 v20, v7

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzz:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    .line 50
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzv()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaix;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {v2, v7, v8, v3, v11}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(J[Lcom/google/android/gms/internal/ads/zzaiy;I)V

    .line 51
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    .line 52
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v27, v1

    .line 53
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(Lcom/google/android/gms/internal/ads/zzeu;)V

    goto/16 :goto_0

    :cond_15
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaiz;->zzi()V

    :cond_16
    return-void
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzaji;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaji;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static zzl(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzc:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaje;->zzb(Lcom/google/android/gms/internal/ads/zzadb;Z)Lcom/google/android/gms/internal/ads/zzaeh;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzk:Lcom/google/android/gms/internal/ads/zzgpe;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final synthetic zzb()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzk:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzb:Lcom/google/android/gms/internal/ads/zzakg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 94
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    const v4, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eqz v3, :cond_28

    const-wide/32 v14, 0x40000

    if-eq v3, v12, :cond_1f

    if-eq v3, v8, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzi:Lcom/google/android/gms/internal/ads/zzajd;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzj:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;Ljava/util/List;)I

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaiz;->zzi()V

    :cond_1
    return v12

    .line 36
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v3

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzq:I

    if-ne v11, v9, :cond_c

    const-wide v16, 0x7fffffffffffffffL

    move/from16 v25, v9

    move/from16 v26, v25

    move/from16 v20, v12

    move/from16 v27, v20

    move-wide/from16 v18, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v11, 0x0

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    .line 37
    array-length v10, v5

    if-ge v11, v10, :cond_a

    .line 38
    aget-object v5, v5, v11

    .line 39
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zze:I

    .line 40
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    if-ne v10, v8, :cond_3

    goto :goto_6

    .line 41
    :cond_3
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzc:[J

    aget-wide v28, v5, v10

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzz:[[J

    .line 43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    check-cast v5, [[J

    aget-object v5, v5, v11

    aget-wide v30, v5, v10

    sub-long v28, v28, v3

    cmp-long v5, v28, v6

    if-ltz v5, :cond_5

    cmp-long v5, v28, v14

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v12

    :goto_3
    if-nez v5, :cond_6

    if-nez v27, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    move/from16 v8, v27

    :goto_4
    if-ne v5, v8, :cond_8

    cmp-long v10, v28, v23

    if-gez v10, :cond_8

    :cond_7
    move/from16 v27, v5

    move/from16 v26, v11

    move-wide/from16 v23, v28

    move-wide/from16 v21, v30

    goto :goto_5

    :cond_8
    move/from16 v27, v8

    :goto_5
    cmp-long v8, v30, v18

    if-gez v8, :cond_9

    move/from16 v20, v5

    move/from16 v25, v11

    move-wide/from16 v18, v30

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_a
    cmp-long v5, v18, v16

    if-eqz v5, :cond_b

    if-eqz v20, :cond_b

    const-wide/32 v10, 0xa00000

    add-long v18, v18, v10

    cmp-long v5, v21, v18

    if-ltz v5, :cond_b

    move/from16 v11, v25

    goto :goto_7

    :cond_b
    move/from16 v11, v26

    :goto_7
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzq:I

    if-ne v11, v9, :cond_c

    goto/16 :goto_d

    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    .line 44
    aget-object v5, v5, v11

    .line 45
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:Lcom/google/android/gms/internal/ads/zzaem;

    .line 46
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zze:I

    .line 47
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzaji;->zzc:[J

    aget-wide v16, v9, v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzw:J

    add-long v12, v16, v12

    .line 48
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzaji;->zzd:[I

    aget v17, v9, v10

    .line 49
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:Lcom/google/android/gms/internal/ads/zzaen;

    sub-long v3, v12, v3

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    move-wide/from16 v20, v12

    int-to-long v12, v15

    add-long/2addr v3, v12

    cmp-long v6, v3, v6

    if-ltz v6, :cond_1e

    const-wide/32 v6, 0x40000

    cmp-long v6, v3, v6

    if-ltz v6, :cond_d

    goto/16 :goto_c

    .line 50
    :cond_d
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zza:Lcom/google/android/gms/internal/ads/zzajf;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzh:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const-wide/16 v12, 0x8

    add-long/2addr v3, v12

    add-int/lit8 v17, v17, -0x8

    :cond_e
    move/from16 v7, v17

    long-to-int v3, v3

    .line 51
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v12, "video/avc"

    .line 52
    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "video/hevc"

    .line 53
    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzk:I

    if-eqz v2, :cond_14

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zze:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v12

    const/4 v13, 0x0

    .line 54
    aput-byte v13, v12, v13

    .line 55
    aput-byte v13, v12, v6

    const/4 v6, 0x2

    .line 56
    aput-byte v13, v12, v6

    rsub-int/lit8 v6, v2, 0x4

    add-int/2addr v7, v6

    :goto_8
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    if-ge v13, v7, :cond_1a

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    if-nez v13, :cond_13

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    if-nez v13, :cond_10

    .line 57
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfm;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v13

    add-int/2addr v13, v2

    aget v16, v9, v10

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    sub-int v15, v16, v15

    if-gt v13, v15, :cond_10

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfm;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v13

    add-int v15, v2, v13

    goto :goto_9

    :cond_10
    move v15, v2

    const/4 v13, 0x0

    .line 59
    :goto_9
    invoke-interface {v1, v12, v6, v15}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    move/from16 v16, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    add-int/2addr v2, v15

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v15

    if-ltz v15, :cond_12

    sub-int/2addr v15, v13

    .line 67
    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    .line 62
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v2, 0x4

    .line 63
    invoke-interface {v8, v15, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    add-int/2addr v15, v2

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    if-lez v13, :cond_11

    .line 64
    invoke-interface {v8, v4, v13}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    add-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    .line 65
    invoke-static {v12, v2, v13, v3}, Lcom/google/android/gms/internal/ads/zzfm;->zzc([BIILcom/google/android/gms/internal/ads/zzv;)Z

    move-result v13

    if-eqz v13, :cond_11

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    :cond_11
    move/from16 v2, v16

    goto :goto_8

    .line 61
    :cond_12
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 67
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    :cond_13
    move/from16 v16, v2

    const/4 v15, 0x0

    .line 66
    invoke-interface {v8, v1, v13, v15}, Lcom/google/android/gms/internal/ads/zzaem;->zzy(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v13

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    add-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    add-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    sub-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    goto :goto_8

    .line 91
    :cond_14
    const-string v3, "audio/ac4"

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    if-nez v3, :cond_15

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzf:Lcom/google/android/gms/internal/ads/zzeg;

    .line 69
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/zzace;->zzc(ILcom/google/android/gms/internal/ads/zzeg;)V

    const/4 v4, 0x7

    .line 70
    invoke-interface {v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    :cond_15
    add-int/lit8 v7, v7, 0x7

    goto :goto_a

    .line 71
    :cond_16
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v3, :cond_18

    const-string v3, "audio/mpeg"

    .line 72
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 74
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzf:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v6, 0x4

    .line 75
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v9

    const/4 v12, 0x0

    .line 76
    invoke-interface {v1, v9, v12, v6}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    .line 77
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzadw;-><init>()V

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzadw;->zzb:Ljava/lang/String;

    .line 79
    invoke-static {v4, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzadw;->zzb:Ljava/lang/String;

    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    .line 83
    :cond_17
    invoke-interface {v8, v3}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    const/4 v3, 0x0

    .line 84
    iput-object v3, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzf:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_a

    :cond_18
    if-eqz v14, :cond_19

    .line 73
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzaen;->zzb(Lcom/google/android/gms/internal/ads/zzadb;)V

    .line 70
    :cond_19
    :goto_a
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    if-ge v3, v7, :cond_1a

    sub-int v3, v7, v3

    const/4 v4, 0x0

    .line 85
    invoke-interface {v8, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzy(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    goto :goto_a

    .line 86
    :cond_1a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzaji;->zzf:[J

    aget-wide v3, v1, v10

    .line 87
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzaji;->zzg:[I

    aget v1, v1, v10

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    if-nez v6, :cond_1b

    const/high16 v6, 0x4000000

    or-int/2addr v1, v6

    :cond_1b
    if-eqz v14, :cond_1c

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v8

    move-wide/from16 v18, v3

    move/from16 v20, v1

    move/from16 v21, v7

    .line 88
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/internal/ads/zzaen;->zzc(Lcom/google/android/gms/internal/ads/zzaem;JIIILcom/google/android/gms/internal/ads/zzael;)V

    const/4 v1, 0x1

    add-int/2addr v10, v1

    .line 89
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzaji;->zzb:I

    if-ne v10, v1, :cond_1d

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v14, v8, v1}, Lcom/google/android/gms/internal/ads/zzaen;->zzd(Lcom/google/android/gms/internal/ads/zzaem;Lcom/google/android/gms/internal/ads/zzael;)V

    goto :goto_b

    :cond_1c
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v8

    move-wide/from16 v17, v3

    move/from16 v19, v1

    move/from16 v20, v7

    .line 91
    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    .line 92
    :cond_1d
    :goto_b
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zze:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzq:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    const/4 v9, 0x0

    goto :goto_d

    :cond_1e
    :goto_c
    move-wide/from16 v3, v20

    .line 49
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    const/4 v9, 0x1

    :goto_d
    return v9

    .line 73
    :cond_1f
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v10

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    long-to-int v5, v5

    .line 25
    invoke-interface {v1, v10, v12, v5}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    if-ne v5, v4, :cond_23

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzv:Z

    .line 26
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiz;->zzl(I)I

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_e

    :cond_20
    const/4 v4, 0x4

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 29
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v4

    if-lez v4, :cond_22

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiz;->zzl(I)I

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    .line 27
    :goto_e
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzA:I

    goto :goto_f

    .line 30
    :cond_23
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzev;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzev;-><init>(ILcom/google/android/gms/internal/ads/zzeg;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zza(Lcom/google/android/gms/internal/ads/zzev;)V

    goto :goto_f

    :cond_24
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzv:Z

    if-nez v3, :cond_25

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    const v4, 0x6d646174

    if-ne v3, v4, :cond_25

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzA:I

    :cond_25
    const-wide/32 v3, 0x40000

    cmp-long v3, v5, v3

    if-gez v3, :cond_27

    long-to-int v3, v5

    .line 33
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    :cond_26
    :goto_f
    const/4 v13, 0x0

    goto :goto_10

    .line 34
    :cond_27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    const/4 v13, 0x1

    .line 35
    :goto_10
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzaiz;->zzj(J)V

    if-eqz v13, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_28
    move v5, v8

    move v3, v12

    .line 34
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    if-nez v8, :cond_2c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v9

    const/4 v10, 0x0

    .line 1
    invoke-interface {v1, v9, v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzb([BIIZ)Z

    move-result v12

    if-nez v12, :cond_2b

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzA:I

    if-ne v1, v5, :cond_2a

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzc:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    const/4 v2, 0x4

    .line 96
    invoke-interface {v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzB:Lcom/google/android/gms/internal/ads/zzafz;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_29

    const/4 v5, 0x0

    goto :goto_11

    .line 101
    :cond_29
    new-instance v5, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v2, v8, v10

    .line 97
    invoke-direct {v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    .line 96
    :goto_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    .line 98
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    .line 99
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzv()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzx:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaec;

    .line 100
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    .line 101
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    :cond_2a
    const/4 v1, -0x1

    return v1

    .line 97
    :cond_2b
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    .line 4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    :cond_2c
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    const-wide/16 v14, 0x1

    cmp-long v3, v12, v14

    if-nez v3, :cond_2d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v5

    .line 5
    invoke-interface {v1, v5, v11, v11}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzJ()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    goto :goto_13

    :cond_2d
    cmp-long v3, v12, v6

    if-nez v3, :cond_30

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    if-eqz v3, :cond_2e

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:J

    goto :goto_12

    :cond_2e
    move-wide v5, v7

    :cond_2f
    :goto_12
    cmp-long v3, v5, v7

    if-eqz v3, :cond_30

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    .line 6
    :cond_30
    :goto_13
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    const v6, 0x66726565

    if-ne v5, v6, :cond_31

    if-ne v3, v11, :cond_31

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    move v3, v11

    goto :goto_14

    .line 9
    :cond_31
    const-string v1, "Atom size less than header length (unsupported)."

    .line 102
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 6
    :cond_32
    :goto_14
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_39

    const v6, 0x7472616b

    if-eq v5, v6, :cond_39

    const v6, 0x6d646961

    if-eq v5, v6, :cond_39

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_39

    const v6, 0x7374626c

    if-eq v5, v6, :cond_39

    const v6, 0x65647473

    if-eq v5, v6, :cond_39

    if-eq v5, v7, :cond_39

    const v6, 0x61787465

    if-ne v5, v6, :cond_33

    goto/16 :goto_18

    :cond_33
    const v6, 0x6d646864

    if-eq v5, v6, :cond_36

    const v6, 0x6d766864

    if-eq v5, v6, :cond_36

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_36

    const v6, 0x73747364

    if-eq v5, v6, :cond_36

    const v6, 0x73747473

    if-eq v5, v6, :cond_36

    const v6, 0x73747373

    if-eq v5, v6, :cond_36

    const v6, 0x63747473

    if-eq v5, v6, :cond_36

    const v6, 0x656c7374

    if-eq v5, v6, :cond_36

    const v6, 0x73747363

    if-eq v5, v6, :cond_36

    const v6, 0x7374737a

    if-eq v5, v6, :cond_36

    const v6, 0x73747a32

    if-eq v5, v6, :cond_36

    const v6, 0x7374636f

    if-eq v5, v6, :cond_36

    const v6, 0x636f3634

    if-eq v5, v6, :cond_36

    const v6, 0x746b6864

    if-eq v5, v6, :cond_36

    if-eq v5, v4, :cond_36

    const v4, 0x75647461

    if-eq v5, v4, :cond_36

    const v4, 0x6b657973

    if-eq v5, v4, :cond_36

    const v4, 0x696c7374

    if-ne v5, v4, :cond_34

    goto :goto_15

    .line 23
    :cond_34
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v5, v5

    sub-long v13, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_35

    add-long v17, v13, v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafz;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    sub-long v19, v7, v5

    const-wide/16 v11, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-object v10, v3

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzB:Lcom/google/android/gms/internal/ads/zzafz;

    :cond_35
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    goto/16 :goto_0

    :cond_36
    :goto_15
    if-ne v3, v11, :cond_37

    const/4 v3, 0x1

    goto :goto_16

    :cond_37
    const/4 v3, 0x0

    .line 19
    :goto_16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_38

    const/4 v3, 0x1

    goto :goto_17

    :cond_38
    const/4 v3, 0x0

    .line 20
    :goto_17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeg;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 22
    invoke-static {v4, v6, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    goto/16 :goto_0

    .line 10
    :cond_39
    :goto_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3a

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    if-ne v5, v7, :cond_3a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzf:Lcom/google/android/gms/internal/ads/zzeg;

    .line 11
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    invoke-interface {v1, v6, v7, v11}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zzf(Lcom/google/android/gms/internal/ads/zzeg;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v5

    .line 14
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    :cond_3a
    sub-long/2addr v3, v8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeu;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzm:I

    .line 16
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzn:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_3b

    .line 17
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiz;->zzj(J)V

    goto/16 :goto_0

    .line 18
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaiz;->zzi()V

    goto/16 :goto_0
.end method

.method public final zze(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzo:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzt:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzu:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzl:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiz;->zzi()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzi:Lcom/google/android/gms/internal/ads/zzajd;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajd;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzj:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->zzy:[Lcom/google/android/gms/internal/ads/zzaiy;

    .line 5
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:Lcom/google/android/gms/internal/ads/zzaji;

    .line 7
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzaji;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 8
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzaji;->zzb(J)I

    move-result v4

    .line 9
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaiy;->zze:I

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:Lcom/google/android/gms/internal/ads/zzaen;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaen;->zza()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
