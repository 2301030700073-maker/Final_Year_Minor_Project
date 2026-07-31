.class public final Lcom/google/android/gms/internal/ads/zzahs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzada;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzadw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzads;

.field private final zze:Lcom/google/android/gms/internal/ads/zzadu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzg:Lcom/google/android/gms/internal/ads/zzadd;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzap;

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzahu;

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzahq;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzads;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zze:Lcom/google/android/gms/internal/ads/zzadu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzf:Lcom/google/android/gms/internal/ads/zzaem;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:J

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzadb;)I
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzj(Lcom/google/android/gms/internal/ads/zzadb;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzeg;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    invoke-direct {v14, v9}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v9

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    .line 3
    invoke-interface {v1, v9, v4, v10}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadw;->zza:I

    and-int/2addr v9, v7

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadw;->zze:I

    if-eq v9, v7, :cond_3

    move v11, v10

    goto :goto_1

    .line 7
    :cond_1
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadw;->zze:I

    if-eq v9, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v9

    add-int/lit8 v12, v11, 0x4

    const v13, 0x496e666f

    const v15, 0x56425249

    const v7, 0x58696e67

    if-lt v9, v12, :cond_4

    .line 4
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v9

    if-eq v9, v7, :cond_6

    if-ne v9, v13, :cond_4

    move v9, v13

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_5

    .line 6
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v9

    if-ne v9, v15, :cond_5

    move v9, v15

    goto :goto_2

    :cond_5
    move v9, v4

    :cond_6
    :goto_2
    if-eq v9, v13, :cond_9

    if-eq v9, v15, :cond_8

    if-eq v9, v7, :cond_9

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    :cond_7
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 24
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v11

    move-object v13, v2

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzahv;->zzd(JJLcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzahv;

    move-result-object v7

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    .line 9
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    goto/16 :goto_6

    .line 10
    :cond_9
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/zzahw;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzahw;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzads;->zzb()Z

    move-result v12

    if-nez v12, :cond_a

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzahw;->zzd:I

    if-eq v12, v3, :cond_a

    iget v13, v10, Lcom/google/android/gms/internal/ads/zzahw;->zze:I

    if-eq v13, v3, :cond_a

    iput v12, v11, Lcom/google/android/gms/internal/ads/zzads;->zza:I

    iput v13, v11, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v13

    const-wide/16 v16, -0x1

    cmp-long v13, v13, v16

    if-eqz v13, :cond_b

    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/zzahw;->zzc:J

    cmp-long v15, v13, v16

    if-eqz v15, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v18

    add-long/2addr v13, v11

    cmp-long v15, v18, v13

    if-eqz v15, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v3

    .line 11
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v19, v19, 0x35

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    new-instance v15, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v19, 0x14

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Data size mismatch between stream ("

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mp3Extractor"

    .line 12
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    .line 13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    if-ne v9, v7, :cond_c

    .line 14
    invoke-static {v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzahx;->zzd(Lcom/google/android/gms/internal/ads/zzahw;J)Lcom/google/android/gms/internal/ads/zzahx;

    move-result-object v7

    goto :goto_6

    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v3

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzahw;->zzb()J

    move-result-wide v25

    cmp-long v7, v25, v5

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/zzahw;->zzc:J

    cmp-long v9, v7, v16

    if-eqz v9, :cond_e

    add-long v3, v11, v7

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    :goto_4
    int-to-long v13, v9

    sub-long/2addr v7, v13

    move-wide/from16 v28, v3

    goto :goto_5

    :cond_e
    cmp-long v7, v3, v16

    if-eqz v7, :cond_7

    sub-long v7, v3, v11

    .line 19
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    goto :goto_4

    :goto_5
    const-wide/32 v23, 0x7a1200

    .line 15
    sget-object v27, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide/from16 v21, v7

    .line 16
    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v32

    iget-wide v3, v10, Lcom/google/android/gms/internal/ads/zzahw;->zzb:J

    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 18
    invoke-static {v7, v8, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzgso;->zza(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v33

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzadw;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzahn;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    int-to-long v3, v3

    add-long v30, v11, v3

    const/16 v34, 0x0

    move-object/from16 v27, v7

    .line 19
    invoke-direct/range {v27 .. v34}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(JJIIZ)V

    .line 20
    :goto_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v8

    if-nez v3, :cond_f

    :goto_7
    const/4 v3, 0x0

    goto :goto_9

    .line 30
    :cond_f
    const-class v4, Lcom/google/android/gms/internal/ads/zzagt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->zza()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v10

    .line 21
    invoke-virtual {v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgme;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v4

    .line 22
    check-cast v4, Lcom/google/android/gms/internal/ads/zzagt;

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    const-class v10, Lcom/google/android/gms/internal/ads/zzagv;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzahr;

    .line 23
    invoke-virtual {v3, v10, v11}, Lcom/google/android/gms/internal/ads/zzap;->zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgme;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzagv;

    if-nez v3, :cond_11

    move-wide v10, v5

    goto :goto_8

    .line 25
    :cond_11
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagv;->zzb:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v10, 0x0

    .line 24
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzgpe;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzep;->zzq(J)J

    move-result-wide v10

    .line 25
    :goto_8
    invoke-static {v8, v9, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzahp;->zzd(JLcom/google/android/gms/internal/ads/zzagt;J)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v3

    .line 20
    :goto_9
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzr:Z

    if-eqz v4, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaht;

    .line 26
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaht;-><init>()V

    goto :goto_b

    :cond_12
    if-eqz v3, :cond_13

    move-object v7, v3

    goto :goto_a

    :cond_13
    if-nez v7, :cond_14

    const/4 v7, 0x0

    :cond_14
    :goto_a
    if-nez v7, :cond_15

    .line 55
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 27
    invoke-interface {v1, v4, v8, v7}, Lcom/google/android/gms/internal/ads/zzadb;->zzi([BII)V

    .line 28
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zza(I)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v10

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzf:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    const/4 v14, 0x0

    move-object v7, v3

    .line 30
    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(JJIIZ)V

    goto :goto_b

    :cond_15
    move-object v3, v7

    .line 26
    :goto_b
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadd;

    .line 31
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    .line 32
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v4, "audio/mpeg"

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzb:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const/16 v4, 0x1000

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzn(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadw;->zze:I

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadw;->zzd:I

    .line 37
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzads;->zza:I

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 41
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzg()I

    move-result v2

    const v4, -0x7fffffff

    if-eq v2, v4, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 42
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzg()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_16
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    goto :goto_c

    .line 7
    :cond_17
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzn:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-eqz v4, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v7

    cmp-long v4, v7, v2

    if-gez v4, :cond_18

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 44
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    .line 43
    :cond_18
    :goto_c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    if-nez v2, :cond_1e

    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    .line 46
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzk(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v3, -0x1

    goto/16 :goto_10

    :cond_19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzm(IJ)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadx;->zza(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    goto :goto_d

    .line 50
    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    .line 51
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zza(I)Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v4

    .line 52
    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzahu;->zze(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    :cond_1b
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzaho;

    if-nez v5, :cond_1c

    goto :goto_e

    .line 56
    :cond_1c
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaho;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadw;->zzg:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 57
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(J)J

    const/4 v1, 0x0

    .line 58
    throw v1

    :cond_1d
    :goto_d
    const/4 v3, 0x1

    .line 50
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:I

    goto :goto_f

    :cond_1e
    :goto_e
    const/4 v3, 0x1

    .line 52
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    .line 53
    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaem;->zzy(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    move v3, v2

    goto :goto_10

    :cond_1f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    if-lez v2, :cond_20

    :goto_f
    const/4 v3, 0x0

    :goto_10
    return v3

    :cond_20
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    .line 54
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(J)J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 55
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzadw;->zzg:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    return v1
.end method

.method private final zzi(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadw;->zzd:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long/2addr p1, v5

    div-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzadb;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eq v2, p2, :cond_0

    const/high16 v3, 0x20000

    goto :goto_0

    :cond_0
    const v3, 0x8000

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zze:Lcom/google/android/gms/internal/ads/zzadu;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzadu;->zza(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzagm;I)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzk:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    .line 3
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzads;->zza(Lcom/google/android/gms/internal/ads/zzap;)Z

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzm()J

    move-result-wide v4

    long-to-int v0, v4

    if-nez p2, :cond_2

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    move v0, v1

    move v4, v0

    :goto_1
    move v5, v4

    move v6, v5

    .line 5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzk(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-lez v5, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzl()V

    .line 15
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 19
    :cond_5
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    .line 6
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    if-eqz v4, :cond_6

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzahs;->zzm(IJ)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 8
    :cond_6
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzadx;->zza(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b

    :cond_7
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v3, :cond_9

    if-eqz p2, :cond_8

    return v1

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahs;->zzl()V

    .line 17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    add-int v5, v0, v4

    .line 10
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzadb;->zzk(I)V

    goto :goto_3

    .line 11
    :cond_a
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    :goto_3
    move v5, v1

    move v6, v4

    move v4, v5

    goto :goto_2

    :cond_b
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    .line 12
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzadw;->zza(I)Z

    move v4, v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x4

    if-ne v5, v7, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v0, v6

    .line 18
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    goto :goto_5

    .line 19
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    .line 18
    :goto_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:I

    return v2

    :cond_e
    :goto_6
    add-int/lit8 v8, v8, -0x4

    .line 13
    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/zzadb;->zzk(I)V

    goto :goto_2
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzf()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzm()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzh([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final zzl()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahn;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahu;->zzf()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzahn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzo:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahn;->zzh(J)Lcom/google/android/gms/internal/ads/zzahn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadd;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzaem;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaem;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zza()J

    :cond_0
    return-void
.end method

.method private static zzm(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahs;->zzj(Lcom/google/android/gms/internal/ads/zzadb;Z)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadd;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzaem;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzg:Lcom/google/android/gms/internal/ads/zzadd;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzh:Lcom/google/android/gms/internal/ads/zzaem;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzh(Lcom/google/android/gms/internal/ads/zzadb;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzaho;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzahs;->zzi(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzahu;->zza()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaho;

    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final zze(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzj:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzl:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzm:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzp:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzq:Lcom/google/android/gms/internal/ads/zzahu;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzaho;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaho;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahs;->zzr:Z

    return-void
.end method
