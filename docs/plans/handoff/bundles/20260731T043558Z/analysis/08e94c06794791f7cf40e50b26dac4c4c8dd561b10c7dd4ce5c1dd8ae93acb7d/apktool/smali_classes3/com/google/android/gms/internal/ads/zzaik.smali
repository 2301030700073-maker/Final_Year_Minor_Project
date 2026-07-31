.class public final Lcom/google/android/gms/internal/ads/zzaik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    const-string v0, "OpusHead"

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaik;->zzb:[B

    return-void
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzads;JLcom/google/android/gms/internal/ads/zzq;ZZLcom/google/android/gms/internal/ads/zzglu;Z)Ljava/util/List;
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeu;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_95

    .line 3
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/zzeu;

    .line 4
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzeu;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v12

    move/from16 v34, v14

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_68

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzev;

    const v2, 0x6d646961

    .line 6
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    const v3, 0x68646c72    # 4.3148E24f

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zzi(Lcom/google/android/gms/internal/ads/zzeg;)I

    move-result v3

    const v4, 0x736f756e

    const/16 v16, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    move v6, v7

    goto :goto_3

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v6, 0x2

    goto :goto_3

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_5

    const v4, 0x7362746c

    if-eq v3, v4, :cond_5

    const v4, 0x73756274

    if-eq v3, v4, :cond_5

    const v4, 0x636c6370

    if-eq v3, v4, :cond_5

    const v4, 0x73756270

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x6d657461

    if-ne v3, v4, :cond_4

    move/from16 v6, v16

    goto :goto_3

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x3

    :goto_3
    if-ne v6, v8, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v42, v12

    move/from16 v34, v14

    :goto_4
    move-object v2, v15

    const/4 v5, 0x0

    goto/16 :goto_67

    :cond_6
    const v3, 0x746b6864

    .line 8
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v3

    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v4, 0x8

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v17

    if-nez v17, :cond_7

    move v5, v4

    goto :goto_5

    :cond_7
    const/16 v5, 0x10

    .line 11
    :goto_5
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v5

    const/4 v10, 0x4

    .line 13
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v20

    const/4 v4, 0x0

    :goto_6
    if-nez v17, :cond_8

    move v9, v10

    goto :goto_7

    :cond_8
    const/16 v9, 0x8

    :goto_7
    const-wide/16 v23, 0x0

    move/from16 v34, v14

    if-ge v4, v9, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v9

    add-int v26, v20, v4

    .line 14
    aget-byte v9, v9, v26

    if-eq v9, v8, :cond_a

    if-nez v17, :cond_9

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v26

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzJ()J

    move-result-wide v26

    :goto_8
    cmp-long v4, v26, v23

    if-nez v4, :cond_c

    goto :goto_9

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v34

    goto :goto_6

    .line 15
    :cond_b
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :goto_9
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    :cond_c
    const/16 v9, 0xa

    .line 17
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v4

    .line 19
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v17

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v9

    .line 22
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v10

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    const/high16 v13, 0x10000

    const/high16 v14, -0x10000

    if-nez v17, :cond_12

    if-ne v9, v13, :cond_11

    if-eq v10, v14, :cond_f

    if-ne v10, v13, :cond_e

    if-nez v8, :cond_d

    const/4 v9, 0x0

    goto :goto_a

    :cond_d
    move v9, v7

    :goto_a
    move v10, v13

    goto :goto_b

    :cond_e
    move v9, v13

    goto :goto_c

    :cond_f
    if-nez v8, :cond_10

    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    move v9, v7

    :goto_b
    if-eq v7, v9, :cond_e

    const/16 v8, 0x5a

    goto :goto_11

    :cond_11
    :goto_c
    const/16 v17, 0x0

    :cond_12
    if-nez v17, :cond_18

    if-ne v9, v14, :cond_17

    if-eq v10, v13, :cond_15

    if-ne v10, v14, :cond_14

    if-nez v8, :cond_13

    const/4 v9, 0x0

    goto :goto_d

    :cond_13
    move v9, v7

    :goto_d
    move v10, v14

    goto :goto_e

    :cond_14
    move/from16 v17, v10

    move v10, v14

    goto :goto_f

    :cond_15
    if-nez v8, :cond_16

    const/4 v9, 0x0

    goto :goto_e

    :cond_16
    move v9, v7

    :goto_e
    if-eq v7, v9, :cond_14

    const/16 v8, 0x10e

    goto :goto_11

    :cond_17
    move/from16 v17, v10

    move v10, v9

    :goto_f
    const/4 v9, 0x0

    goto :goto_10

    :cond_18
    move/from16 v75, v10

    move v10, v9

    move/from16 v9, v17

    move/from16 v17, v75

    :goto_10
    if-eq v9, v14, :cond_19

    if-ne v9, v13, :cond_1a

    :cond_19
    if-nez v10, :cond_1a

    if-nez v17, :cond_1a

    if-ne v8, v14, :cond_1a

    const/16 v8, 0xb4

    :goto_11
    move v13, v8

    const/16 v8, 0x10

    goto :goto_12

    :cond_1a
    const/16 v8, 0x10

    const/4 v13, 0x0

    .line 25
    :goto_12
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v14

    const/4 v8, 0x2

    .line 27
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v10

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v8

    if-nez v3, :cond_1b

    move-wide/from16 v35, v26

    goto :goto_13

    :cond_1b
    move-wide/from16 v35, p2

    :goto_13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzd(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzey;

    move-result-object v1

    move-object/from16 v42, v12

    move/from16 v17, v13

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzey;->zzc:J

    cmp-long v1, v35, v8

    if-nez v1, :cond_1c

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_14

    :cond_1c
    const-wide/32 v37, 0xf4240

    .line 40
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v12

    .line 30
    invoke-static/range {v35 .. v41}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    move-wide/from16 v32, v8

    :goto_14
    const v1, 0x6d696e66

    .line 31
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    const v3, 0x7374626c

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    const v3, 0x6d646864

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v8, 0x8

    .line 35
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v3

    if-nez v3, :cond_1d

    move v9, v8

    goto :goto_15

    :cond_1d
    const/16 v9, 0x10

    .line 37
    :goto_15
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v26

    const/4 v9, 0x0

    :goto_16
    if-nez v3, :cond_1e

    const/4 v0, 0x4

    goto :goto_17

    :cond_1e
    const/16 v0, 0x8

    :goto_17
    if-ge v9, v0, :cond_22

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    add-int v35, v26, v9

    .line 39
    aget-byte v0, v0, v35

    move-wide/from16 v43, v12

    const/4 v12, -0x1

    if-eq v0, v12, :cond_21

    if-nez v3, :cond_1f

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v35

    goto :goto_18

    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzJ()J

    move-result-wide v35

    :goto_18
    cmp-long v0, v35, v23

    if-nez v0, :cond_20

    goto :goto_19

    :cond_20
    const-wide/32 v37, 0xf4240

    .line 250
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v7

    .line 42
    invoke-static/range {v35 .. v41}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v35

    move-wide/from16 v12, v35

    goto :goto_1a

    :cond_21
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v12, v43

    goto :goto_16

    :cond_22
    move-wide/from16 v43, v12

    const/4 v12, -0x1

    .line 40
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :goto_19
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    :goto_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v0

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    shr-int/lit8 v3, v0, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    move/from16 v19, v4

    const/4 v9, 0x3

    new-array v4, v9, [C

    const/16 v26, 0x0

    aput-char v2, v4, v26

    const/4 v2, 0x1

    aput-char v3, v4, v2

    move v3, v9

    const/16 v22, 0x2

    aput-char v0, v4, v22

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v3, :cond_25

    .line 44
    aget-char v2, v4, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_24

    const/16 v3, 0x7a

    if-le v2, v3, :cond_23

    goto :goto_1c

    :cond_23
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    goto :goto_1b

    :cond_24
    :goto_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 250
    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    :goto_1d
    const v2, 0x73747364

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v1

    if-nez v1, :cond_26

    const-string v0, "BoxParsers"

    const-string v1, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p7

    goto/16 :goto_4

    :cond_26
    invoke-static {v7, v8, v12, v13, v0}, Lcom/google/android/gms/internal/ads/zzaid;->zzc(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v2, 0xc

    .line 47
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v1

    move-object/from16 v27, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaig;

    .line 49
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(I)V

    move-wide/from16 v35, v12

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v1, :cond_8e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v13

    move-object/from16 v37, v15

    .line 50
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v15

    if-lez v15, :cond_27

    const/4 v2, 0x1

    goto :goto_1f

    :cond_27
    const/4 v2, 0x0

    .line 51
    :goto_1f
    const-string v9, "childAtomSize must be positive"

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    move/from16 v40, v1

    const v1, 0x61766331

    move/from16 v41, v6

    const v6, 0x656e6376

    if-eq v2, v1, :cond_36

    const v1, 0x61766333

    if-eq v2, v1, :cond_36

    if-eq v2, v6, :cond_36

    const v1, 0x6d317620

    if-eq v2, v1, :cond_36

    const v1, 0x6d703476

    if-eq v2, v1, :cond_36

    const v1, 0x68766331

    if-eq v2, v1, :cond_36

    const v1, 0x68657631

    if-eq v2, v1, :cond_36

    const v1, 0x73323633

    if-eq v2, v1, :cond_36

    const v1, 0x48323633

    if-eq v2, v1, :cond_36

    const v1, 0x68323633

    if-eq v2, v1, :cond_36

    const v1, 0x76703038

    if-eq v2, v1, :cond_36

    const v1, 0x76703039

    if-eq v2, v1, :cond_36

    const v1, 0x61763031

    if-eq v2, v1, :cond_36

    const v1, 0x64766176

    if-eq v2, v1, :cond_36

    const v1, 0x64766131

    if-eq v2, v1, :cond_36

    const v1, 0x64766865

    if-eq v2, v1, :cond_36

    const v1, 0x64766831

    if-eq v2, v1, :cond_36

    const v1, 0x61707631

    if-ne v2, v1, :cond_28

    goto/16 :goto_28

    :cond_28
    const v1, 0x6d703461

    if-eq v2, v1, :cond_35

    const v1, 0x656e6361

    if-eq v2, v1, :cond_35

    const v1, 0x61632d33

    if-eq v2, v1, :cond_35

    const v1, 0x65632d33

    if-eq v2, v1, :cond_35

    const v1, 0x61632d34

    if-eq v2, v1, :cond_35

    const v1, 0x6d6c7061

    if-eq v2, v1, :cond_35

    const v1, 0x64747363

    if-eq v2, v1, :cond_35

    const v1, 0x64747365

    if-eq v2, v1, :cond_35

    const v1, 0x64747368

    if-eq v2, v1, :cond_35

    const v1, 0x6474736c

    if-eq v2, v1, :cond_35

    const v1, 0x64747378

    if-eq v2, v1, :cond_35

    const v1, 0x73616d72

    if-eq v2, v1, :cond_35

    const v1, 0x73617762

    if-eq v2, v1, :cond_35

    const v1, 0x6c70636d

    if-eq v2, v1, :cond_35

    const v1, 0x736f7774

    if-eq v2, v1, :cond_35

    const v1, 0x74776f73

    if-eq v2, v1, :cond_35

    const v1, 0x2e6d7032

    if-eq v2, v1, :cond_35

    const v1, 0x2e6d7033

    if-eq v2, v1, :cond_35

    const v1, 0x6d686131

    if-eq v2, v1, :cond_35

    const v1, 0x6d686d31

    if-eq v2, v1, :cond_35

    const v1, 0x616c6163

    if-eq v2, v1, :cond_35

    const v1, 0x616c6177

    if-eq v2, v1, :cond_35

    const v1, 0x756c6177

    if-eq v2, v1, :cond_35

    const v1, 0x4f707573

    if-eq v2, v1, :cond_35

    const v1, 0x664c6143

    if-eq v2, v1, :cond_35

    const v1, 0x69616d66

    if-eq v2, v1, :cond_35

    const v1, 0x6970636d

    if-eq v2, v1, :cond_35

    const v1, 0x6670636d

    if-ne v2, v1, :cond_29

    goto/16 :goto_27

    :cond_29
    const v1, 0x54544d4c

    if-eq v2, v1, :cond_2c

    const v1, 0x74783367

    if-eq v2, v1, :cond_2c

    const v1, 0x77767474

    if-eq v2, v1, :cond_2c

    const v1, 0x73747070

    if-eq v2, v1, :cond_2c

    const v1, 0x63363038

    if-eq v2, v1, :cond_2c

    const v1, 0x6d703473

    if-ne v2, v1, :cond_2a

    goto :goto_20

    :cond_2a
    const v1, 0x6d657474

    if-ne v2, v1, :cond_2b

    add-int/lit8 v1, v13, 0x10

    .line 236
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v1, 0x0

    .line 237
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzM(C)Ljava/lang/String;

    .line 238
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzM(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/zzt;

    .line 239
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto/16 :goto_24

    :cond_2b
    const v1, 0x63616d6d

    if-ne v2, v1, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/zzt;

    .line 240
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 241
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    const-string v2, "application/x-camera-motion"

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto/16 :goto_24

    :cond_2c
    :goto_20
    add-int/lit8 v1, v13, 0x10

    .line 218
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const v1, 0x54544d4c

    const-wide v45, 0x7fffffffffffffffL

    if-ne v2, v1, :cond_2d

    const-string v1, "application/ttml+xml"

    :goto_21
    move/from16 v39, v10

    move-wide/from16 v9, v45

    :goto_22
    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_2d
    const v1, 0x74783367

    if-ne v2, v1, :cond_2e

    add-int/lit8 v1, v15, -0x10

    .line 219
    new-array v2, v1, [B

    const/4 v6, 0x0

    .line 220
    invoke-virtual {v3, v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 221
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    :goto_23
    move/from16 v39, v10

    move-wide/from16 v9, v45

    move-object/from16 v75, v2

    move-object v2, v1

    move-object/from16 v1, v75

    goto/16 :goto_25

    :cond_2e
    const v1, 0x77767474

    if-ne v2, v1, :cond_2f

    const-string v1, "application/x-mp4-vtt"

    goto :goto_21

    :cond_2f
    const v1, 0x73747070

    if-ne v2, v1, :cond_30

    const-string v1, "application/ttml+xml"

    move/from16 v39, v10

    move-wide/from16 v9, v23

    goto :goto_22

    :cond_30
    const v1, 0x63363038

    const/4 v9, 0x1

    if-ne v2, v1, :cond_31

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:I

    const-string v1, "application/x-mp4-cea-608"

    goto :goto_21

    :cond_31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v1

    const/4 v6, 0x4

    .line 222
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 223
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    const v6, 0x65736473

    if-ne v2, v6, :cond_33

    .line 224
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzp(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaib;->zzb()[B

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaib;->zzb()[B

    move-result-object v2

    .line 225
    array-length v2, v2

    const/16 v6, 0x40

    if-ne v2, v6, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaib;->zzb()[B

    move-result-object v1

    .line 226
    invoke-static {v1, v14, v10}, Lcom/google/android/gms/internal/ads/zzaik;->zzj([BII)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    .line 228
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    const-string v2, "application/vobsub"

    goto :goto_23

    :cond_32
    :goto_24
    move-object v6, v0

    move-object v1, v4

    move-wide/from16 v48, v7

    move/from16 v26, v10

    move/from16 v39, v12

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v2, v17

    move/from16 v38, v19

    move/from16 v7, v22

    move/from16 v28, v41

    const/4 v0, 0x0

    const/16 v22, 0xa

    const/16 v50, 0x4

    move v8, v5

    goto :goto_26

    :cond_33
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_23

    :goto_25
    if-eqz v1, :cond_34

    .line 218
    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    .line 229
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 230
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 231
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 232
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 233
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzr(J)Lcom/google/android/gms/internal/ads/zzt;

    .line 234
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 235
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_34
    move-object v6, v0

    move-object v1, v4

    move-wide/from16 v48, v7

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v2, v17

    move/from16 v38, v19

    move/from16 v7, v22

    move/from16 v26, v39

    move/from16 v28, v41

    const/4 v0, 0x0

    const/16 v22, 0xa

    const/16 v50, 0x4

    move v8, v5

    move/from16 v39, v12

    :goto_26
    move/from16 v19, v14

    const/4 v5, 0x3

    move-object v14, v3

    const/4 v3, -0x1

    goto/16 :goto_62

    :cond_35
    :goto_27
    move/from16 v39, v10

    move-object v1, v3

    const/16 v10, 0xc

    move-object v9, v3

    const/16 v26, 0x3

    move v3, v13

    move-object/from16 v21, v4

    const/16 v6, 0x8

    move/from16 v75, v19

    move/from16 v19, v14

    move/from16 v14, v75

    move v4, v15

    move/from16 v18, v5

    move/from16 v38, v14

    const/4 v14, 0x0

    move/from16 v28, v41

    const/16 v41, 0x4

    move-object/from16 v6, v21

    move-wide/from16 v48, v7

    const/4 v8, 0x1

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object v14, v9

    const/16 v22, 0xa

    move-object v9, v0

    move/from16 v26, v39

    move v10, v12

    .line 217
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaik;->zzo(Lcom/google/android/gms/internal/ads/zzeg;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzaig;I)V

    move-object v6, v0

    move/from16 v39, v12

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v2, v17

    move/from16 v8, v18

    move-object/from16 v1, v21

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/16 v50, 0x4

    goto/16 :goto_62

    :cond_36
    :goto_28
    move-object/from16 v21, v4

    move/from16 v18, v5

    move-wide/from16 v48, v7

    move/from16 v26, v10

    move/from16 v38, v19

    move/from16 v28, v41

    const/16 v22, 0xa

    move/from16 v19, v14

    move-object v14, v3

    add-int/lit8 v1, v13, 0x10

    .line 53
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/16 v1, 0x10

    .line 54
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 55
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v3

    .line 56
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v4

    const/16 v5, 0x32

    .line 57
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v5

    if-ne v2, v6, :cond_39

    .line 58
    invoke-static {v14, v13, v15}, Lcom/google/android/gms/internal/ads/zzaik;->zzr(Lcom/google/android/gms/internal/ads/zzeg;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 59
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v11, :cond_37

    const/4 v7, 0x0

    goto :goto_29

    .line 60
    :cond_37
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v7

    .line 59
    :goto_29
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaig;->zza:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 61
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajg;

    aput-object v2, v8, v12

    move v2, v6

    goto :goto_2a

    :cond_38
    move v2, v6

    move-object v7, v11

    .line 62
    :goto_2a
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto :goto_2b

    :cond_39
    move-object v7, v11

    :goto_2b
    const v6, 0x6d317620

    if-ne v2, v6, :cond_3a

    const-string v6, "video/mpeg"

    move-object/from16 v75, v6

    move v6, v2

    move-object/from16 v2, v75

    goto :goto_2c

    :cond_3a
    const v6, 0x48323633

    if-ne v2, v6, :cond_3b

    .line 186
    const-string v2, "video/3gpp"

    goto :goto_2c

    :cond_3b
    move v6, v2

    const/4 v2, 0x0

    :goto_2c
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v59, v3

    move/from16 v58, v4

    move v10, v5

    move/from16 v61, v6

    move-object/from16 v46, v7

    move/from16 v53, v8

    move/from16 v39, v12

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v25, 0x0

    const/16 v41, 0x0

    const/16 v45, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, -0x1

    const/16 v55, -0x1

    const/16 v56, -0x1

    const/16 v57, -0x1

    const/16 v60, 0x0

    :goto_2d
    sub-int v6, v10, v13

    if-ge v6, v15, :cond_89

    .line 63
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v6

    .line 64
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v62

    if-nez v62, :cond_3d

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v62

    move/from16 v63, v10

    sub-int v10, v62, v13

    if-ne v10, v15, :cond_3c

    goto/16 :goto_5f

    :cond_3c
    const/4 v10, 0x0

    goto :goto_2e

    :cond_3d
    move/from16 v63, v10

    move/from16 v10, v62

    :goto_2e
    if-lez v10, :cond_3e

    move/from16 v62, v13

    const/4 v13, 0x1

    goto :goto_2f

    :cond_3e
    move/from16 v62, v13

    const/4 v13, 0x0

    .line 65
    :goto_2f
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 66
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v13

    move/from16 v64, v15

    const v15, 0x61766343

    if-ne v13, v15, :cond_41

    add-int/lit8 v6, v6, 0x8

    if-nez v2, :cond_3f

    const/4 v1, 0x1

    goto :goto_30

    :cond_3f
    const/4 v1, 0x0

    :goto_30
    const/4 v2, 0x0

    .line 67
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 68
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 69
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzacf;->zza(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzacf;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzacf;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:I

    if-nez v51, :cond_40

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzk:F

    move/from16 v53, v3

    const/4 v3, 0x0

    goto :goto_31

    :cond_40
    const/4 v3, 0x1

    :goto_31
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzl:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzj:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzg:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzh:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzi:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzacf;->zze:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzacf;->zzf:I

    const-string v15, "video/avc"

    move-object/from16 v65, v0

    move/from16 v51, v3

    move-object/from16 v60, v4

    move/from16 v54, v5

    move v4, v6

    move/from16 v47, v8

    move-object/from16 v68, v9

    move/from16 v67, v13

    move/from16 v69, v61

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/16 v50, 0x4

    move v8, v1

    move-object v1, v2

    move-object/from16 v61, v7

    move-object v2, v15

    :goto_32
    const/4 v7, 0x2

    goto/16 :goto_5e

    :cond_41
    const v15, 0x68766343

    if-ne v13, v15, :cond_45

    add-int/lit8 v6, v6, 0x8

    if-nez v2, :cond_42

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_33

    :cond_42
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 70
    :goto_33
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 71
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 72
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzadt;->zza(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzadt;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:I

    if-nez v51, :cond_43

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzl:F

    move/from16 v53, v3

    const/4 v7, 0x0

    goto :goto_34

    :cond_43
    const/4 v7, 0x1

    :goto_34
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzm:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzc:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzn:Ljava/lang/String;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzk:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_44

    move v11, v6

    :cond_44
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzadt;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzh:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzi:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzj:I

    move-object/from16 v54, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzf:I

    move/from16 v51, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzg:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadt;->zzo:Lcom/google/android/gms/internal/ads/zzfj;

    const-string v55, "video/hevc"

    move-object/from16 v65, v0

    move-object/from16 v60, v5

    move/from16 v56, v6

    move/from16 v57, v8

    move-object/from16 v68, v9

    move/from16 v47, v13

    move/from16 v67, v51

    move/from16 v69, v61

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/16 v50, 0x4

    move-object/from16 v61, v1

    move v8, v2

    move/from16 v51, v7

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    const/4 v7, 0x2

    move/from16 v54, v3

    move/from16 v55, v4

    move v4, v12

    move v12, v15

    const/4 v3, -0x1

    goto/16 :goto_5e

    :cond_45
    const v15, 0x6c687643

    if-ne v13, v15, :cond_52

    add-int/lit8 v6, v6, 0x8

    const-string v13, "video/hevc"

    .line 73
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "lhvC must follow hvcC atom"

    .line 74
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    if-eqz v7, :cond_47

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfj;->zza:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->size()I

    move-result v2

    const/4 v15, 0x2

    if-lt v2, v15, :cond_46

    const/4 v2, 0x1

    goto :goto_35

    :cond_46
    const/4 v2, 0x0

    goto :goto_35

    :cond_47
    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_35
    const-string v13, "must have at least two layers"

    .line 76
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 77
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzadt;->zzb(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v2

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzb:I

    if-ne v6, v13, :cond_48

    const/4 v6, 0x1

    goto :goto_36

    :cond_48
    const/4 v6, 0x0

    :goto_36
    const-string v13, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 79
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzh:I

    const/4 v13, -0x1

    if-eq v6, v13, :cond_4a

    if-ne v4, v6, :cond_49

    const/4 v6, 0x1

    goto :goto_37

    :cond_49
    const/4 v6, 0x0

    :goto_37
    const-string v15, "colorSpace must be the same for both views"

    .line 80
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    :cond_4a
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzi:I

    if-eq v6, v13, :cond_4c

    if-ne v3, v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_38

    :cond_4b
    const/4 v6, 0x0

    :goto_38
    const-string v15, "colorRange must be the same for both views"

    .line 81
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    :cond_4c
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzj:I

    if-eq v6, v13, :cond_4e

    if-ne v12, v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_39

    :cond_4d
    const/4 v6, 0x0

    :goto_39
    const-string v13, "colorTransfer must be the same for both views"

    .line 82
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    :cond_4e
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzf:I

    if-ne v5, v6, :cond_4f

    const/4 v6, 0x1

    goto :goto_3a

    :cond_4f
    const/4 v6, 0x0

    :goto_3a
    const-string v13, "bitdepthLuma must be the same for both views"

    .line 83
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzg:I

    if-ne v8, v6, :cond_50

    const/4 v6, 0x1

    goto :goto_3b

    :cond_50
    const/4 v6, 0x0

    :goto_3b
    const-string v13, "bitdepthChroma must be the same for both views"

    .line 84
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    if-eqz v1, :cond_51

    .line 85
    sget v6, Lcom/google/android/gms/internal/ads/zzgpe;->zzd:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgpb;

    .line 86
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzgpb;-><init>()V

    .line 87
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzgpb;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpb;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzadt;->zza:Ljava/util/List;

    .line 88
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzgpb;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 89
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgpb;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    goto :goto_3c

    :cond_51
    const-string v1, "initializationData must be already set from hvcC atom"

    const/4 v6, 0x0

    .line 90
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    const/4 v1, 0x0

    .line 89
    :goto_3c
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadt;->zzn:Ljava/lang/String;

    const-string v6, "video/mv-hevc"

    move-object/from16 v65, v0

    move-object/from16 v60, v2

    move/from16 v47, v3

    move/from16 v67, v5

    move-object v2, v6

    move-object/from16 v68, v9

    move/from16 v69, v61

    goto/16 :goto_48

    :cond_52
    const v15, 0x76657875

    if-ne v13, v15, :cond_63

    add-int/lit8 v13, v6, 0x8

    .line 91
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v13

    move-object/from16 v65, v0

    move v15, v13

    const/4 v13, 0x0

    :goto_3d
    sub-int v0, v15, v6

    if-ge v0, v10, :cond_5b

    .line 92
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 93
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v0

    if-lez v0, :cond_53

    move/from16 v66, v8

    const/4 v8, 0x1

    goto :goto_3e

    :cond_53
    move/from16 v66, v8

    const/4 v8, 0x0

    .line 94
    :goto_3e
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    move/from16 v67, v5

    const v5, 0x65796573

    if-ne v8, v5, :cond_5a

    add-int/lit8 v5, v15, 0x8

    .line 96
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v5

    :goto_3f
    sub-int v8, v5, v15

    if-ge v8, v0, :cond_59

    .line 97
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 98
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    if-lez v8, :cond_54

    const/4 v13, 0x1

    goto :goto_40

    :cond_54
    const/4 v13, 0x0

    .line 99
    :goto_40
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 100
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v13

    move-object/from16 v68, v9

    const v9, 0x73747269

    if-ne v13, v9, :cond_58

    const/4 v9, 0x4

    .line 101
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 102
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v5

    and-int/lit8 v8, v5, 0x1

    and-int/lit8 v13, v5, 0x2

    const/4 v9, 0x2

    if-ne v13, v9, :cond_55

    const/4 v9, 0x1

    goto :goto_41

    :cond_55
    const/4 v9, 0x0

    :goto_41
    and-int/lit8 v5, v5, 0x8

    const/16 v13, 0x8

    if-ne v5, v13, :cond_56

    move/from16 v47, v3

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_42

    :cond_56
    move/from16 v47, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_42
    if-eq v3, v8, :cond_57

    const/4 v8, 0x0

    goto :goto_43

    :cond_57
    move v8, v3

    :goto_43
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaic;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaif;

    .line 103
    invoke-direct {v3, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(ZZZ)V

    invoke-direct {v13, v3}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(Lcom/google/android/gms/internal/ads/zzaif;)V

    goto :goto_44

    :cond_58
    move/from16 v47, v3

    add-int/2addr v5, v8

    move-object/from16 v9, v68

    goto :goto_3f

    :cond_59
    move/from16 v47, v3

    move-object/from16 v68, v9

    const/16 v3, 0x8

    const/4 v13, 0x0

    goto :goto_45

    :cond_5a
    move/from16 v47, v3

    move-object/from16 v68, v9

    :goto_44
    const/16 v3, 0x8

    :goto_45
    add-int/2addr v15, v0

    move/from16 v3, v47

    move/from16 v8, v66

    move/from16 v5, v67

    move-object/from16 v9, v68

    goto/16 :goto_3d

    :cond_5b
    move/from16 v47, v3

    move/from16 v67, v5

    move/from16 v66, v8

    move-object/from16 v68, v9

    const/16 v3, 0x8

    if-nez v13, :cond_5c

    const/4 v5, 0x0

    goto :goto_46

    .line 106
    :cond_5c
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {v5, v13}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Lcom/google/android/gms/internal/ads/zzaic;)V

    :goto_46
    if-eqz v5, :cond_61

    if-eqz v7, :cond_5e

    .line 103
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfj;->zza:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->size()I

    move-result v0

    const/4 v6, 0x2

    if-lt v0, v6, :cond_5d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaij;->zza()Z

    move-result v0

    const-string v6, "both eye views must be marked as available"

    .line 105
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaij;->zzb()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->zza()Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaif;->zzc()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    const-string v5, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 106
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    goto :goto_4b

    :cond_5d
    const/4 v6, 0x1

    const/4 v0, -0x1

    goto :goto_47

    :cond_5e
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v7, 0x0

    :goto_47
    if-ne v11, v0, :cond_60

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaij;->zzb()Lcom/google/android/gms/internal/ads/zzaic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaic;->zza()Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaif;->zzc()Z

    move-result v0

    if-eq v6, v0, :cond_5f

    move/from16 v69, v61

    move/from16 v8, v66

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v11, 0x4

    goto :goto_4a

    :cond_5f
    move/from16 v11, v16

    move/from16 v69, v61

    move/from16 v8, v66

    :goto_48
    const/4 v0, 0x0

    const/4 v3, -0x1

    goto :goto_49

    :cond_60
    move v3, v0

    move/from16 v69, v61

    move/from16 v8, v66

    const/4 v0, 0x0

    :goto_49
    const/4 v5, 0x3

    :goto_4a
    const/16 v50, 0x4

    move-object/from16 v61, v7

    goto/16 :goto_32

    :cond_61
    :goto_4b
    move/from16 v74, v11

    move/from16 v69, v61

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/16 v50, 0x4

    move-object/from16 v61, v7

    :cond_62
    :goto_4c
    const/4 v7, 0x2

    goto/16 :goto_5d

    :cond_63
    move-object/from16 v65, v0

    move/from16 v47, v3

    move/from16 v67, v5

    move/from16 v66, v8

    move-object/from16 v68, v9

    const/16 v3, 0x8

    const v0, 0x64766343

    if-eq v13, v0, :cond_86

    const v0, 0x64767643

    if-eq v13, v0, :cond_86

    const v0, 0x64767743

    if-ne v13, v0, :cond_64

    goto/16 :goto_5b

    :cond_64
    const v0, 0x76706343

    if-ne v13, v0, :cond_69

    add-int/lit8 v6, v6, 0xc

    if-nez v2, :cond_65

    const/4 v0, 0x1

    goto :goto_4d

    :cond_65
    const/4 v0, 0x0

    :goto_4d
    const/4 v2, 0x0

    .line 117
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 118
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 119
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    int-to-byte v0, v0

    .line 120
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    int-to-byte v2, v2

    .line 121
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v4

    shr-int/lit8 v5, v4, 0x4

    shr-int/lit8 v6, v4, 0x1

    const v8, 0x76703038

    move/from16 v9, v61

    if-ne v9, v8, :cond_66

    const-string v8, "video/x-vnd.on2.vp8"

    goto :goto_4e

    .line 127
    :cond_66
    const-string v8, "video/x-vnd.on2.vp9"

    .line 121
    :goto_4e
    const-string v12, "video/x-vnd.on2.vp9"

    .line 122
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_67

    and-int/lit8 v1, v6, 0x7

    int-to-byte v6, v5

    .line 123
    sget v12, Lcom/google/android/gms/internal/ads/zzdd;->zza:I

    int-to-byte v1, v1

    const/16 v15, 0xc

    new-array v12, v15, [B

    const/4 v13, 0x1

    const/16 v47, 0x0

    aput-byte v13, v12, v47

    aput-byte v13, v12, v13

    const/16 v47, 0x2

    aput-byte v0, v12, v47

    const/4 v0, 0x3

    aput-byte v47, v12, v0

    const/16 v50, 0x4

    aput-byte v13, v12, v50

    aput-byte v2, v12, v16

    const/4 v2, 0x6

    aput-byte v0, v12, v2

    const/4 v2, 0x7

    aput-byte v13, v12, v2

    aput-byte v6, v12, v3

    const/16 v2, 0x9

    aput-byte v50, v12, v2

    aput-byte v13, v12, v22

    const/16 v2, 0xb

    aput-byte v1, v12, v2

    .line 124
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    goto :goto_4f

    :cond_67
    const/4 v0, 0x3

    const/4 v13, 0x1

    const/16 v15, 0xc

    const/16 v50, 0x4

    :goto_4f
    and-int/lit8 v2, v4, 0x1

    .line 125
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v4

    .line 126
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v6

    .line 127
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v4

    if-eq v13, v2, :cond_68

    const/4 v2, 0x2

    goto :goto_50

    :cond_68
    const/4 v2, 0x1

    :goto_50
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v6

    move/from16 v47, v2

    move/from16 v67, v5

    move v12, v6

    move-object/from16 v61, v7

    move-object v2, v8

    move/from16 v69, v9

    const/4 v3, -0x1

    const/4 v7, 0x2

    move/from16 v8, v67

    goto/16 :goto_51

    :cond_69
    move/from16 v9, v61

    const/4 v0, 0x3

    const/16 v15, 0xc

    const/16 v50, 0x4

    const v5, 0x61763143

    if-ne v13, v5, :cond_6a

    add-int/lit8 v1, v10, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 128
    new-array v2, v1, [B

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v14, v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 130
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    .line 131
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 132
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaik;->zzk(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v2

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzi;->zzg:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    const-string v12, "video/av01"

    move/from16 v67, v4

    move v4, v6

    move-object/from16 v61, v7

    move/from16 v47, v8

    move/from16 v69, v9

    const/4 v3, -0x1

    const/4 v7, 0x2

    move v8, v5

    move v5, v0

    const/4 v0, 0x0

    move-object/from16 v75, v12

    move v12, v2

    move-object/from16 v2, v75

    goto/16 :goto_5e

    :cond_6a
    const v5, 0x636c6c69

    if-ne v13, v5, :cond_6c

    if-nez v25, :cond_6b

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaik;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_6b
    move-object/from16 v5, v25

    const/16 v6, 0x15

    .line 134
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v5

    move-object/from16 v61, v7

    move/from16 v69, v9

    move/from16 v8, v66

    const/4 v3, -0x1

    const/4 v7, 0x2

    :goto_51
    move v5, v0

    const/4 v0, 0x0

    goto/16 :goto_5e

    :cond_6c
    const v5, 0x6d646376

    if-ne v13, v5, :cond_6e

    if-nez v25, :cond_6d

    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaik;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_6d
    move-object/from16 v5, v25

    .line 138
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v6

    .line 139
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v8

    .line 140
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v13

    .line 141
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v3

    .line 142
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v15

    .line 143
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v0

    move-object/from16 v61, v7

    .line 144
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v7

    move/from16 v69, v9

    .line 145
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v9

    .line 146
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v70

    .line 147
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v72

    move/from16 v74, v11

    const/4 v11, 0x1

    .line 148
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    invoke-virtual {v5, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x2710

    div-long v6, v70, v6

    long-to-int v0, v6

    int-to-short v0, v0

    .line 157
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x2710

    div-long v6, v72, v6

    long-to-int v0, v6

    int-to-short v0, v0

    .line 158
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v5

    move/from16 v8, v66

    move/from16 v11, v74

    const/4 v0, 0x0

    :goto_52
    const/4 v3, -0x1

    const/4 v5, 0x3

    goto/16 :goto_32

    :cond_6e
    move-object/from16 v61, v7

    move/from16 v69, v9

    move/from16 v74, v11

    const v0, 0x64323633

    if-ne v13, v0, :cond_70

    if-nez v2, :cond_6f

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_53

    :cond_6f
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 159
    :goto_53
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    const-string v2, "video/3gpp"

    goto :goto_55

    :cond_70
    const/4 v0, 0x0

    const v3, 0x65736473

    if-ne v13, v3, :cond_73

    if-nez v2, :cond_71

    const/4 v7, 0x1

    goto :goto_54

    :cond_71
    const/4 v7, 0x0

    .line 160
    :goto_54
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 161
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/zzaik;->zzp(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaib;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaib;->zzb()[B

    move-result-object v5

    if-eqz v5, :cond_72

    .line 162
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    :cond_72
    move-object/from16 v45, v2

    move-object v2, v3

    goto :goto_55

    :cond_73
    const v3, 0x62747274

    if-ne v13, v3, :cond_74

    .line 163
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/zzaik;->zzq(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzahz;

    move-result-object v3

    move-object/from16 v41, v3

    :goto_55
    move/from16 v8, v66

    move/from16 v11, v74

    goto :goto_52

    :cond_74
    const v3, 0x70617370

    if-ne v13, v3, :cond_75

    add-int/lit8 v6, v6, 0x8

    .line 164
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 165
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v3

    .line 166
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v5

    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v3, v5

    move/from16 v53, v3

    move/from16 v8, v66

    move/from16 v11, v74

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/16 v51, 0x1

    goto/16 :goto_5e

    :cond_75
    const v3, 0x73763364

    if-ne v13, v3, :cond_78

    add-int/lit8 v3, v6, 0x8

    :goto_56
    sub-int v5, v3, v6

    if-ge v5, v10, :cond_77

    .line 167
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 168
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v5

    add-int/2addr v5, v3

    .line 169
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    const v8, 0x70726f6a

    if-ne v7, v8, :cond_76

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    .line 170
    invoke-static {v6, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    move-object/from16 v52, v3

    goto :goto_55

    :cond_76
    move v3, v5

    goto :goto_56

    :cond_77
    move-object/from16 v52, v0

    goto :goto_55

    :cond_78
    const v3, 0x73743364

    if-ne v13, v3, :cond_7e

    .line 171
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    const/4 v5, 0x3

    .line 172
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    if-nez v3, :cond_7d

    .line 173
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7b

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7a

    if-eq v3, v5, :cond_79

    goto :goto_57

    :cond_79
    move v11, v5

    move/from16 v8, v66

    const/4 v3, -0x1

    goto/16 :goto_32

    :cond_7a
    move/from16 v8, v66

    const/4 v3, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x2

    goto/16 :goto_5e

    :cond_7b
    move/from16 v8, v66

    const/4 v3, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x1

    goto/16 :goto_5e

    :cond_7c
    move/from16 v8, v66

    const/4 v3, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x0

    goto/16 :goto_5e

    :cond_7d
    :goto_57
    const/4 v3, -0x1

    goto/16 :goto_4c

    :cond_7e
    const/4 v5, 0x3

    const v3, 0x61707643

    if-ne v13, v3, :cond_7f

    add-int/lit8 v6, v6, 0xc

    add-int/lit8 v1, v10, -0xc

    .line 174
    new-array v2, v1, [B

    .line 175
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v14, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 177
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzc([B)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzeg;

    .line 179
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaik;->zzl(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v2

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzi;->zzf:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzi;->zzg:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    const-string v9, "video/apv"

    move-object/from16 v60, v1

    move v12, v2

    move-object v1, v3

    move/from16 v67, v4

    move v4, v7

    move/from16 v47, v8

    move-object v2, v9

    move/from16 v11, v74

    const/4 v3, -0x1

    const/4 v7, 0x2

    move v8, v6

    goto/16 :goto_5e

    :cond_7f
    const v3, 0x636f6c72

    if-ne v13, v3, :cond_7d

    const/4 v3, -0x1

    if-ne v4, v3, :cond_62

    if-ne v12, v3, :cond_85

    .line 180
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v4

    const v6, 0x6e636c78

    if-eq v4, v6, :cond_81

    const v6, 0x6e636c63

    if-ne v4, v6, :cond_80

    goto :goto_58

    .line 185
    :cond_80
    const-string v6, "Unsupported color type: "

    .line 186
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzew;->zze(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "BoxParsers"

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    move v12, v4

    move/from16 v8, v66

    move/from16 v11, v74

    goto/16 :goto_32

    .line 181
    :cond_81
    :goto_58
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v4

    .line 182
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v6

    const/4 v7, 0x2

    .line 183
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    const/16 v8, 0x13

    if-ne v10, v8, :cond_83

    .line 184
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_82

    const/16 v10, 0x13

    const/4 v8, 0x1

    goto :goto_59

    :cond_82
    const/16 v10, 0x13

    :cond_83
    const/4 v8, 0x0

    .line 185
    :goto_59
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v4

    const/4 v9, 0x1

    if-eq v9, v8, :cond_84

    move v9, v7

    goto :goto_5a

    :cond_84
    const/4 v9, 0x1

    :goto_5a
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v6

    move v12, v6

    move/from16 v47, v9

    goto :goto_5d

    :cond_85
    const/4 v7, 0x2

    move v4, v3

    goto :goto_5d

    :cond_86
    :goto_5b
    move/from16 v74, v11

    move/from16 v69, v61

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/16 v50, 0x4

    move-object/from16 v61, v7

    const/4 v7, 0x2

    add-int/lit8 v8, v10, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 107
    new-array v9, v8, [B

    const/4 v11, 0x0

    .line 108
    invoke-virtual {v14, v9, v11, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    if-eqz v1, :cond_87

    .line 109
    sget v8, Lcom/google/android/gms/internal/ads/zzgpe;->zzd:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzgpb;

    .line 110
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzgpb;-><init>()V

    .line 111
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzgpb;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 112
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzgpb;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 113
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzgpb;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v1

    goto :goto_5c

    .line 116
    :cond_87
    const-string v1, "initializationData must already be set from hvcC or avcC atom"

    .line 114
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    move-object v1, v0

    .line 115
    :goto_5c
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 116
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzer;->zza(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v6

    if-eqz v6, :cond_88

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzer;->zza:Ljava/lang/String;

    const-string v6, "video/dolby-vision"

    move-object/from16 v60, v2

    move-object v2, v6

    :cond_88
    :goto_5d
    move/from16 v8, v66

    move/from16 v11, v74

    :goto_5e
    add-int v10, v63, v10

    move/from16 v3, v47

    move-object/from16 v7, v61

    move/from16 v13, v62

    move/from16 v15, v64

    move-object/from16 v0, v65

    move/from16 v5, v67

    move-object/from16 v9, v68

    move/from16 v61, v69

    goto/16 :goto_2d

    :cond_89
    :goto_5f
    move-object/from16 v65, v0

    move/from16 v47, v3

    move/from16 v67, v5

    move/from16 v66, v8

    move/from16 v74, v11

    move/from16 v62, v13

    move/from16 v64, v15

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/16 v50, 0x4

    if-nez v2, :cond_8a

    move/from16 v2, v17

    move/from16 v8, v18

    move-object/from16 v1, v21

    move-object/from16 v6, v65

    goto/16 :goto_62

    .line 244
    :cond_8a
    new-instance v6, Lcom/google/android/gms/internal/ads/zzt;

    .line 187
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    move/from16 v8, v18

    .line 188
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 189
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v2, v60

    .line 190
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v59

    .line 191
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v58

    .line 192
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v56

    .line 193
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v57

    .line 194
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzw(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v53

    .line 195
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzz(F)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v2, v17

    .line 196
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzy(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v9, v52

    .line 197
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzA([B)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v11, v74

    .line 198
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzB(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 199
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v1, v54

    .line 200
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzo(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v1, v55

    .line 201
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzD(I)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v11, v46

    .line 202
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v1, v21

    .line 203
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    .line 204
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v4, v47

    .line 205
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 206
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    if-eqz v25, :cond_8b

    .line 207
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    goto :goto_60

    :cond_8b
    move-object v4, v0

    :goto_60
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzh;->zzd([B)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v4, v67

    .line 208
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    move/from16 v4, v66

    .line 209
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 210
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v4

    .line 211
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzC(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    if-eqz v41, :cond_8c

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzahz;->zza()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v4

    .line 212
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzahz;->zzb()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v4

    .line 213
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    goto :goto_61

    :cond_8c
    if-eqz v45, :cond_8d

    .line 216
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzaib;->zzc()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v4

    .line 214
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzaib;->zzd()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v4

    .line 215
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 216
    :cond_8d
    :goto_61
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    move-object/from16 v6, v65

    iput-object v4, v6, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :goto_62
    add-int v13, v62, v64

    .line 244
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    add-int/lit8 v12, v39, 0x1

    move-object/from16 v11, p4

    move-object v4, v1

    move/from16 v17, v2

    move-object v0, v6

    move/from16 v22, v7

    move v5, v8

    move-object v3, v14

    move/from16 v14, v19

    move/from16 v10, v26

    move/from16 v6, v28

    move-object/from16 v15, v37

    move/from16 v19, v38

    move/from16 v1, v40

    move-wide/from16 v7, v48

    const/16 v2, 0xc

    goto/16 :goto_1e

    :cond_8e
    move/from16 v28, v6

    move-wide/from16 v48, v7

    move-object/from16 v37, v15

    move/from16 v38, v19

    move-object v6, v0

    move v8, v5

    const/4 v0, 0x0

    if-nez p5, :cond_8f

    const v1, 0x65647473

    move-object/from16 v2, v37

    .line 245
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 246
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzn(Lcom/google/android/gms/internal/ads/zzeu;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 247
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [J

    .line 248
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    goto :goto_63

    :cond_8f
    move-object/from16 v2, v37

    :cond_90
    move-object v1, v0

    move-object v3, v1

    :goto_63
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v4, :cond_91

    move-object v5, v0

    :goto_64
    move-object/from16 v0, p7

    goto/16 :goto_67

    :cond_91
    if-eqz v38, :cond_93

    new-instance v0, Lcom/google/android/gms/internal/ads/zzet;

    move/from16 v5, v38

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-eqz v4, :cond_92

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzao;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    .line 249
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    goto :goto_65

    :cond_92
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 252
    new-instance v4, Lcom/google/android/gms/internal/ads/zzap;

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v0, v7, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 250
    invoke-direct {v4, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    move-object v0, v4

    .line 251
    :goto_65
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    .line 252
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    goto :goto_66

    :cond_93
    move-object v0, v4

    :goto_66
    move-object/from16 v7, v27

    move-wide/from16 v9, v35

    move-wide/from16 v4, v48

    invoke-static {v4, v5, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzaid;->zza(JJLjava/lang/String;)J

    move-result-wide v20

    invoke-static {v4, v5, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzaid;->zzb(JJLjava/lang/String;)J

    move-result-wide v26

    new-instance v5, Lcom/google/android/gms/internal/ads/zzajf;

    move-object/from16 v17, v5

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzaig;->zzd:I

    move/from16 v29, v4

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzaig;->zza:[Lcom/google/android/gms/internal/ads/zzajg;

    move-object/from16 v30, v4

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzaig;->zzc:I

    move/from16 v31, v4

    move/from16 v18, v8

    move/from16 v19, v28

    move-wide/from16 v22, v43

    move-wide/from16 v24, v32

    move-object/from16 v28, v0

    move-object/from16 v32, v3

    move-object/from16 v33, v1

    invoke-direct/range {v17 .. v33}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzv;I[Lcom/google/android/gms/internal/ads/zzajg;I[J[J)V

    goto :goto_64

    .line 253
    :goto_67
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzglu;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajf;

    if-eqz v1, :cond_94

    const v3, 0x6d646961

    .line 254
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    const v3, 0x6d696e66

    .line 255
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    const v3, 0x7374626c

    .line 257
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzd(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    move-object/from16 v3, p1

    const/4 v4, 0x0

    .line 259
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaik;->zzg(Lcom/google/android/gms/internal/ads/zzajf;Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzads;Z)Lcom/google/android/gms/internal/ads/zzaji;

    move-result-object v1

    move-object/from16 v2, v42

    .line 260
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_94
    move-object/from16 v3, p1

    move-object/from16 v2, v42

    goto/16 :goto_1

    :goto_68
    add-int/lit8 v14, v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-object v12, v2

    goto/16 :goto_0

    :cond_95
    move-object v2, v12

    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzev;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzao;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v3

    if-lt v3, v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v6

    add-int/2addr v6, v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    const v8, 0x6d657461

    const/4 v9, 0x0

    if-ne v7, v8, :cond_5

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzf(Lcom/google/android/gms/internal/ads/zzeg;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    if-ge v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    add-int/2addr v7, v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    const v10, 0x696c7374

    if-ne v8, v10, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzait;->zzc(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 32
    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzap;

    .line 16
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto :goto_1

    .line 17
    :cond_4
    :goto_3
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    const v8, 0x736d7461

    if-ne v7, v8, :cond_13

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/16 v3, 0xc

    .line 19
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v7

    if-ge v7, v6, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v10

    const v11, 0x73617574

    if-ne v10, v11, :cond_11

    const/16 v7, 0x10

    if-ge v8, v7, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v7, 0x4

    .line 23
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    const/4 v7, -0x1

    move v8, v2

    move v10, v8

    :goto_5
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v11

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v13

    if-nez v11, :cond_7

    move v7, v13

    goto :goto_6

    :cond_7
    if-ne v11, v12, :cond_8

    move v10, v13

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const v8, -0x7fffffff

    if-ne v7, v3, :cond_a

    const/16 v3, 0xf0

    goto :goto_8

    :cond_a
    const/16 v11, 0xd

    if-ne v7, v11, :cond_b

    const/16 v3, 0x78

    goto :goto_8

    :cond_b
    const/16 v11, 0x15

    if-eq v7, v11, :cond_d

    :cond_c
    :goto_7
    move v3, v8

    goto :goto_8

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v7

    if-lt v7, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v7

    add-int/2addr v7, v0

    if-le v7, v6, :cond_e

    goto :goto_7

    .line 27
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v11

    if-lt v7, v3, :cond_c

    const v3, 0x73726672

    if-eq v11, v3, :cond_f

    goto :goto_7

    .line 29
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzF()I

    move-result v3

    :goto_8
    if-ne v3, v8, :cond_10

    goto :goto_9

    .line 25
    :cond_10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzap;

    new-array v7, v12, [Lcom/google/android/gms/internal/ads/zzao;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaha;

    int-to-float v3, v3

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/ads/zzaha;-><init>(FI)V

    aput-object v8, v7, v2

    invoke-direct {v9, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_9

    :cond_11
    add-int/2addr v7, v8

    .line 22
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto/16 :goto_4

    .line 30
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v1

    goto :goto_a

    :cond_13
    const v3, -0x56878686

    if-ne v7, v3, :cond_14

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzh(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzap;->zzf(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v1

    .line 32
    :cond_14
    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto/16 :goto_0

    :cond_15
    return-object v1
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzey;
    .locals 11

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzD()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzD()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v9

    new-instance p0, Lcom/google/android/gms/internal/ads/zzey;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzey;-><init>(JJJ)V

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzeu;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zzi(Lcom/google/android/gms/internal/ads/zzeg;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    add-int/2addr v6, v7

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    if-ge v7, v1, :cond_4

    .line 18
    aget-object v7, v3, v7

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v9

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    .line 24
    new-array v11, v9, [B

    .line 25
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzes;

    .line 26
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzes;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    .line 21
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    .line 27
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x29

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzap;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzap;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzajf;Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzads;Z)Lcom/google/android/gms/internal/ads/zzaji;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaih;

    .line 2
    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Lcom/google/android/gms/internal/ads/zzev;Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 133
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaii;

    .line 5
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(Lcom/google/android/gms/internal/ads/zzev;)V

    .line 2
    :goto_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaie;->zza()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaji;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move v9, v11

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajf;[J[II[J[IJI)V

    return-object v10

    :cond_1
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzf:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v11, v13

    div-float/2addr v7, v11

    .line 7
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzx(F)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzajf;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v1

    :cond_2
    const v7, 0x7374636f

    .line 8
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v7

    if-nez v7, :cond_3

    const v7, 0x636f3634

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/internal/ads/zzev;

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move v12, v5

    :goto_1
    const v13, 0x73747363

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v13

    .line 136
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v14, v13

    check-cast v14, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const v14, 0x73747473

    .line 11
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v14

    .line 135
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v15, v14

    check-cast v15, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const v15, 0x73747373

    .line 12
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaia;

    .line 14
    invoke-direct {v7, v13, v4, v12}, Lcom/google/android/gms/internal/ads/zzaia;-><init>(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeg;Z)V

    const/16 v4, 0xc

    .line 15
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    .line 17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v16

    .line 18
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v5

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v18

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    if-eqz v15, :cond_8

    .line 21
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v4

    if-lez v4, :cond_7

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v40, v15

    move v15, v4

    move-object/from16 v4, v40

    goto :goto_5

    :cond_7
    move v15, v4

    move/from16 v19, v13

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move/from16 v19, v13

    move-object v4, v15

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaie;->zzb()I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v8, v13, :cond_f

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v11, "audio/raw"

    .line 24
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-mlaw"

    .line 25
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-alaw"

    .line 26
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_9
    if-nez v12, :cond_f

    if-nez v18, :cond_e

    if-nez v15, :cond_e

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaia;->zza:I

    new-array v3, v0, [J

    new-array v4, v0, [I

    .line 48
    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaia;->zza()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzaia;->zzb:I

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaia;->zzd:J

    .line 49
    aput-wide v10, v3, v6

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    .line 50
    aput v10, v4, v6

    goto :goto_6

    :cond_a
    int-to-long v5, v5

    const/16 v7, 0x2000

    .line 51
    div-int/2addr v7, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v10, v0, :cond_b

    .line 52
    aget v12, v4, v10

    .line 53
    sget-object v14, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    add-int/2addr v12, v7

    add-int/2addr v12, v13

    .line 54
    div-int/2addr v12, v7

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 55
    :cond_b
    new-array v10, v11, [J

    .line 56
    new-array v12, v11, [I

    .line 57
    new-array v14, v11, [J

    .line 58
    new-array v15, v11, [I

    move/from16 p3, v11

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_8
    if-ge v13, v0, :cond_d

    .line 59
    aget v19, v4, v13

    .line 60
    aget-wide v21, v3, v13

    move/from16 v40, v18

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v16, v40

    move/from16 v41, v19

    move-object/from16 v19, v3

    move/from16 v3, v41

    :goto_9
    if-lez v3, :cond_c

    .line 61
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 62
    aput-wide v21, v10, v16

    move-object/from16 v24, v4

    mul-int v4, v8, v23

    .line 63
    aput v4, v12, v16

    add-int/2addr v2, v4

    .line 64
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v7

    move/from16 v25, v8

    int-to-long v7, v11

    mul-long/2addr v7, v5

    .line 65
    aput-wide v7, v14, v16

    const/4 v7, 0x1

    .line 66
    aput v7, v15, v16

    .line 67
    aget v7, v12, v16

    int-to-long v7, v7

    add-long v21, v21, v7

    add-int v11, v11, v23

    sub-int v3, v3, v23

    add-int/lit8 v16, v16, 0x1

    move v7, v4

    move-object/from16 v4, v24

    move/from16 v8, v25

    goto :goto_9

    :cond_c
    move-object/from16 v24, v4

    move v4, v7

    move/from16 v25, v8

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v24

    move/from16 v40, v16

    move/from16 v16, v0

    move/from16 v0, v18

    move/from16 v18, v40

    goto :goto_8

    :cond_d
    int-to-long v3, v11

    mul-long/2addr v5, v3

    int-to-long v2, v2

    move-object v11, v1

    move-wide/from16 v21, v5

    move-object/from16 v19, v9

    move-object v0, v10

    move/from16 v27, v16

    move/from16 v1, p3

    goto/16 :goto_19

    :cond_e
    const/4 v12, 0x0

    .line 87
    :cond_f
    new-array v2, v3, [J

    new-array v8, v3, [I

    new-array v10, v3, [J

    new-array v11, v3, [I

    move-object/from16 v23, v1

    move/from16 v22, v18

    move/from16 v1, v19

    const/16 p3, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v19, v9

    move/from16 v18, v12

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_a
    const-string v13, "BoxParsers"

    if-ge v12, v3, :cond_1d

    move-wide/from16 v31, v24

    const/16 v24, 0x1

    move/from16 v25, p3

    :goto_b
    if-nez v25, :cond_11

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaia;->zza()Z

    move-result v24

    if-eqz v24, :cond_10

    move-object/from16 v33, v14

    move/from16 v34, v15

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzaia;->zzd:J

    move/from16 v35, v3

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzaia;->zzc:I

    move/from16 v25, v3

    move-wide/from16 v31, v14

    move-object/from16 v14, v33

    move/from16 v15, v34

    move/from16 v3, v35

    goto :goto_b

    :cond_10
    move/from16 v35, v3

    move-object/from16 v33, v14

    move/from16 v34, v15

    const/4 v3, 0x0

    goto :goto_c

    :cond_11
    move/from16 v35, v3

    move-object/from16 v33, v14

    move/from16 v34, v15

    move/from16 v3, v25

    :goto_c
    if-nez v24, :cond_12

    const-string v1, "Unexpected end of chunk data"

    .line 39
    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 41
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 42
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 43
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object v10, v1

    move-object v14, v3

    move-object v15, v4

    move v3, v12

    move/from16 v1, v30

    move-object v12, v2

    goto/16 :goto_13

    :cond_12
    move/from16 v13, v30

    if-nez v0, :cond_13

    goto :goto_f

    :cond_13
    :goto_d
    if-nez v21, :cond_15

    if-lez v22, :cond_14

    add-int/lit8 v22, v22, -0x1

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v21

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v13

    goto :goto_d

    :cond_14
    const/4 v14, -0x1

    const/16 v21, 0x0

    goto :goto_e

    :cond_15
    const/4 v14, -0x1

    :goto_e
    add-int/lit8 v21, v21, -0x1

    .line 30
    :goto_f
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaie;->zzc()I

    move-result v14

    move-object v15, v6

    move-object/from16 v24, v7

    int-to-long v6, v14

    add-long v28, v28, v6

    if-le v14, v9, :cond_16

    move v9, v14

    .line 31
    :cond_16
    aput-wide v31, v2, v12

    .line 32
    aput v14, v8, v12

    move-object v14, v8

    move/from16 p3, v9

    int-to-long v8, v13

    add-long v8, v26, v8

    .line 33
    aput-wide v8, v10, v12

    if-nez v4, :cond_17

    const/4 v8, 0x1

    goto :goto_10

    :cond_17
    const/4 v8, 0x0

    .line 34
    :goto_10
    aput v8, v11, v12

    if-ne v12, v1, :cond_18

    const/4 v8, 0x1

    .line 35
    aput v8, v11, v12

    :cond_18
    if-eqz v4, :cond_1a

    if-ne v12, v1, :cond_1a

    add-int/lit8 v8, v34, -0x1

    if-lez v8, :cond_19

    .line 36
    move-object v1, v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v1

    const/4 v9, -0x1

    add-int/2addr v1, v9

    :cond_19
    move v9, v1

    move-object/from16 v25, v2

    goto :goto_11

    :cond_1a
    move v9, v1

    move-object/from16 v25, v2

    move/from16 v8, v34

    :goto_11
    int-to-long v1, v5

    add-long v26, v26, v1

    add-int/lit8 v16, v16, -0x1

    if-nez v16, :cond_1c

    if-lez v18, :cond_1b

    .line 37
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v1

    .line 38
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    add-int/lit8 v18, v18, -0x1

    move/from16 v16, v1

    move v5, v2

    goto :goto_12

    :cond_1b
    const/16 v16, 0x0

    :cond_1c
    :goto_12
    add-long v1, v31, v6

    const/4 v6, -0x1

    add-int/2addr v3, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v30, v13

    move-object v6, v15

    move-object/from16 v7, v24

    move v15, v8

    move-object v8, v14

    move-object/from16 v14, v33

    move/from16 v40, v9

    move/from16 v9, p3

    move/from16 p3, v3

    move/from16 v3, v35

    move-wide/from16 v41, v1

    move/from16 v1, v40

    move-object/from16 v2, v25

    move-wide/from16 v24, v41

    goto/16 :goto_a

    :cond_1d
    move-object/from16 v25, v2

    move/from16 v35, v3

    move-object v14, v8

    move/from16 v34, v15

    move-object v15, v11

    move-object v12, v14

    move/from16 v1, v30

    move-object v14, v10

    move-object/from16 v10, v25

    move/from16 v25, p3

    :goto_13
    int-to-long v1, v1

    add-long v5, v26, v1

    if-eqz v0, :cond_1f

    :goto_14
    if-lez v22, :cond_1f

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    goto :goto_15

    .line 45
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    add-int/lit8 v22, v22, -0x1

    goto :goto_14

    :cond_1f
    const/4 v0, 0x1

    :goto_15
    if-nez v34, :cond_25

    if-nez v16, :cond_24

    if-nez v25, :cond_23

    if-nez v18, :cond_22

    if-nez v21, :cond_21

    if-nez v0, :cond_20

    move/from16 p3, v3

    move-object/from16 v11, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_16

    :cond_20
    move/from16 p3, v3

    move-wide/from16 v21, v5

    move-object/from16 v11, v23

    goto/16 :goto_18

    :cond_21
    move v8, v0

    move/from16 p3, v3

    move/from16 v7, v21

    move-object/from16 v11, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_16

    :cond_22
    move v8, v0

    move/from16 p3, v3

    move/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v11, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_16

    :cond_23
    move v8, v0

    move/from16 p3, v3

    move/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v11, v23

    move/from16 v2, v25

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_16

    :cond_24
    move v8, v0

    move/from16 p3, v3

    move/from16 v1, v16

    move/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v11, v23

    move/from16 v2, v25

    const/4 v0, 0x0

    goto :goto_16

    :cond_25
    move v8, v0

    move/from16 p3, v3

    move/from16 v1, v16

    move/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v11, v23

    move/from16 v2, v25

    move/from16 v0, v34

    .line 44
    :goto_16
    iget v3, v11, Lcom/google/android/gms/internal/ads/zzajf;->zza:I

    .line 46
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v16, v16, 0x42

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v16, v16, 0x23

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v16, v16, 0x1a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v16, v16, 0x21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v16, v18

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v16, v16, 0x24

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-wide/from16 v21, v5

    const/4 v5, 0x1

    if-eq v5, v8, :cond_26

    const-string v5, ", ctts invalid"

    goto :goto_17

    .line 47
    :cond_26
    const-string v5, ""

    :goto_17
    add-int v16, v16, v18

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int v8, v16, v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Inconsistent stbl box for track "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    move/from16 v1, p3

    move/from16 v27, v9

    move-object v0, v10

    move-wide/from16 v2, v28

    .line 67
    :goto_19
    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/zzajf;->zzf:J

    const-wide/16 v4, 0x0

    cmp-long v6, v8, v4

    const-wide/32 v23, 0x7fffffff

    if-lez v6, :cond_27

    const-wide/16 v4, 0x8

    mul-long/2addr v4, v2

    const-wide/32 v6, 0xf4240

    sget-object v10, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 68
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_27

    cmp-long v4, v2, v23

    if-gez v4, :cond_27

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v4

    long-to-int v2, v2

    .line 69
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzajf;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v2

    goto :goto_1a

    :cond_27
    move-object v2, v11

    :goto_1a
    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzc:J

    const-wide/32 v6, 0xf4240

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v4, v21

    move-wide v8, v10

    move-object/from16 p3, v12

    move-wide v11, v10

    move-object v10, v3

    .line 70
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzi:[J

    const-wide/32 v7, 0xf4240

    if-nez v10, :cond_28

    .line 71
    invoke-static {v14, v7, v8, v11, v12}, Lcom/google/android/gms/internal/ads/zzep;->zzu([JJJ)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaji;

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v0

    move-object/from16 v26, p3

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move/from16 v32, v1

    .line 72
    invoke-direct/range {v23 .. v32}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajf;[J[II[J[IJI)V

    return-object v3

    :cond_28
    array-length v3, v10

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    if-ne v3, v4, :cond_2b

    .line 73
    array-length v13, v14

    const/4 v3, 0x2

    if-lt v13, v3, :cond_2b

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzj:[J

    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    check-cast v3, [J

    const/4 v4, 0x0

    aget-wide v18, v3, v4

    .line 75
    aget-wide v5, v10, v4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v25, v3

    move-wide v3, v5

    move-wide v5, v11

    move-object/from16 v16, v0

    move/from16 v35, v1

    move-wide v0, v7

    move-wide/from16 v7, v25

    .line 76
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    add-long v3, v18, v3

    add-int/lit8 v5, v13, -0x1

    const/4 v6, 0x4

    .line 77
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v13, v13, -0x4

    .line 78
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 79
    aget-wide v8, v14, v7

    cmp-long v7, v8, v18

    if-gtz v7, :cond_2c

    aget-wide v6, v14, v6

    cmp-long v6, v18, v6

    if-gez v6, :cond_2c

    aget-wide v5, v14, v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_2c

    const-wide/16 v5, 0x2

    add-long v5, v21, v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2c

    sub-long v3, v21, v3

    const-wide/16 v5, 0x0

    .line 80
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v28

    const/4 v3, 0x0

    .line 81
    aget-wide v4, v14, v3

    sub-long v3, v18, v4

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v7, v5

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v5, v7

    move-wide/from16 v18, v7

    move-wide v7, v11

    .line 82
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v3, v28

    move-wide/from16 v5, v18

    .line 83
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v30, v5

    if-nez v7, :cond_29

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2c

    const-wide/16 v5, 0x0

    goto :goto_1b

    :cond_29
    move-wide/from16 v5, v30

    :goto_1b
    cmp-long v7, v5, v23

    if-gtz v7, :cond_2c

    cmp-long v7, v3, v23

    if-lez v7, :cond_2a

    goto :goto_1c

    :cond_2a
    long-to-int v5, v5

    move-object/from16 v6, p2

    .line 124
    iput v5, v6, Lcom/google/android/gms/internal/ads/zzads;->zza:I

    long-to-int v3, v3

    iput v3, v6, Lcom/google/android/gms/internal/ads/zzads;->zzb:I

    .line 84
    invoke-static {v14, v0, v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzep;->zzu([JJJ)V

    const/4 v0, 0x0

    .line 85
    aget-wide v28, v10, v0

    const-wide/32 v30, 0xf4240

    sget-object v34, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v32, v25

    .line 86
    invoke-static/range {v28 .. v34}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaji;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, p3

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move/from16 v32, v35

    .line 87
    invoke-direct/range {v23 .. v32}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajf;[J[II[J[IJI)V

    return-object v0

    :cond_2b
    move-object/from16 v16, v0

    move/from16 v35, v1

    :cond_2c
    :goto_1c
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1d

    :cond_2d
    move-object/from16 v16, v0

    move/from16 v35, v1

    move v0, v4

    :goto_1d
    if-ne v3, v0, :cond_2f

    const/4 v0, 0x0

    .line 88
    aget-wide v4, v10, v0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2f

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzj:[J

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    check-cast v1, [J

    aget-wide v18, v1, v0

    const/4 v0, 0x0

    .line 127
    :goto_1e
    array-length v1, v14

    if-ge v0, v1, :cond_2e

    .line 128
    aget-wide v3, v14, v0

    sub-long v3, v3, v18

    const-wide/32 v5, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v7, v11

    .line 129
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 130
    aput-wide v3, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    sub-long v3, v21, v18

    const-wide/32 v5, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v7, v11

    .line 131
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaji;

    move-object/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v16

    move-object/from16 v26, p3

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move/from16 v32, v35

    .line 132
    invoke-direct/range {v23 .. v32}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajf;[J[II[J[IJI)V

    return-object v0

    :cond_2f
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    const/4 v1, 0x1

    goto :goto_1f

    :cond_30
    const/4 v1, 0x0

    :goto_1f
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzj:[J

    new-array v9, v3, [I

    new-array v7, v3, [I

    .line 125
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-object/from16 v18, v13

    check-cast v18, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    :goto_20
    array-length v3, v10

    if-ge v8, v3, :cond_37

    .line 90
    aget-wide v3, v18, v8

    const-wide/16 v21, -0x1

    cmp-long v21, v3, v21

    if-eqz v21, :cond_36

    .line 91
    aget-wide v21, v10, v8

    move-object/from16 v23, v7

    move/from16 v24, v8

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move/from16 v26, v0

    move/from16 v28, v1

    move-wide v0, v3

    move-wide/from16 v3, v21

    move-object/from16 v21, v2

    move v2, v5

    move-object/from16 v22, v13

    move v13, v6

    move-wide v5, v11

    move-object/from16 v29, v9

    move-object/from16 v9, v25

    .line 92
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 93
    invoke-static {v14, v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzep;->zzm([JJZZ)I

    move-result v6

    aput v6, v29, v24

    add-long/2addr v3, v0

    move/from16 v1, v28

    const/4 v0, 0x0

    .line 94
    invoke-static {v14, v3, v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzep;->zzo([JJZZ)I

    move-result v6

    aput v6, v23, v24

    .line 95
    aget v6, v29, v24

    .line 96
    :goto_21
    aget v7, v29, v24

    if-ltz v7, :cond_31

    aget v8, v15, v7

    and-int/2addr v8, v5

    if-nez v8, :cond_31

    add-int/lit8 v7, v7, -0x1

    .line 97
    aput v7, v29, v24

    const/4 v5, 0x1

    goto :goto_21

    :cond_31
    if-gez v7, :cond_32

    .line 98
    aput v6, v29, v24

    .line 99
    :goto_22
    aget v7, v29, v24

    aget v5, v23, v24

    if-ge v7, v5, :cond_32

    aget v5, v15, v7

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_32

    add-int/lit8 v7, v7, 0x1

    .line 100
    aput v7, v29, v24

    goto :goto_22

    :cond_32
    move/from16 v5, v26

    const/4 v6, 0x2

    if-ne v5, v6, :cond_33

    .line 101
    aget v8, v23, v24

    if-eq v7, v8, :cond_33

    .line 102
    :goto_23
    aget v7, v23, v24

    array-length v8, v14

    const/4 v9, -0x1

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_34

    add-int/lit8 v7, v7, 0x1

    aget-wide v25, v14, v7

    cmp-long v8, v25, v3

    if-gtz v8, :cond_34

    .line 103
    aput v7, v23, v24

    goto :goto_23

    :cond_33
    const/4 v9, -0x1

    .line 104
    :cond_34
    aget v3, v23, v24

    aget v4, v29, v24

    sub-int v7, v3, v4

    add-int/2addr v2, v7

    if-eq v13, v4, :cond_35

    const/4 v4, 0x1

    goto :goto_24

    :cond_35
    move v4, v0

    :goto_24
    or-int v4, v19, v4

    move v13, v3

    move/from16 v19, v4

    goto :goto_25

    :cond_36
    move-object/from16 v21, v2

    move v2, v5

    move-object/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v29, v9

    move-object/from16 v22, v13

    const/4 v9, -0x1

    move v5, v0

    move v13, v6

    const/4 v0, 0x0

    const/4 v6, 0x2

    :goto_25
    add-int/lit8 v8, v24, 0x1

    move v0, v5

    move v6, v13

    move-object/from16 v13, v22

    move-object/from16 v7, v23

    move-object/from16 v9, v29

    move v5, v2

    move-object/from16 v2, v21

    goto/16 :goto_20

    :cond_37
    move-object/from16 v21, v2

    move v2, v5

    move-object/from16 v23, v7

    move-object/from16 v29, v9

    move-object/from16 v22, v13

    move/from16 v3, v35

    const/4 v0, 0x0

    if-eq v2, v3, :cond_38

    const/4 v1, 0x1

    goto :goto_26

    :cond_38
    move v1, v0

    :goto_26
    or-int v1, v19, v1

    if-eqz v1, :cond_39

    .line 105
    new-array v3, v2, [J

    move-object v13, v3

    goto :goto_27

    :cond_39
    move-object/from16 v13, v16

    :goto_27
    if-eqz v1, :cond_3a

    .line 106
    new-array v3, v2, [I

    move-object v9, v3

    goto :goto_28

    :cond_3a
    move-object/from16 v9, p3

    :goto_28
    const/4 v3, 0x1

    if-ne v3, v1, :cond_3b

    move/from16 v27, v0

    :cond_3b
    if-eqz v1, :cond_3c

    .line 107
    new-array v3, v2, [I

    move-object v7, v3

    goto :goto_29

    :cond_3c
    move-object v7, v15

    .line 108
    :goto_29
    new-array v2, v2, [J

    move v3, v0

    move v4, v3

    move v8, v4

    const-wide/16 v17, 0x0

    :goto_2a
    array-length v5, v10

    if-ge v8, v5, :cond_41

    .line 109
    aget-wide v19, v22, v8

    .line 110
    aget v5, v29, v8

    .line 111
    aget v6, v23, v8

    if-eqz v1, :cond_3d

    sub-int v0, v6, v5

    move-object/from16 v25, v10

    move-object/from16 v10, v16

    .line 112
    invoke-static {v10, v5, v13, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v10, p3

    .line 113
    invoke-static {v10, v5, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-static {v15, v5, v7, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_3d
    move-object/from16 v25, v10

    move-object/from16 v10, p3

    :goto_2b
    move v0, v3

    move/from16 v26, v4

    :goto_2c
    if-ge v5, v6, :cond_40

    move/from16 p1, v6

    move-object/from16 v3, v21

    move-object/from16 v21, v7

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    sget-object v36, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v32, 0xf4240

    move-wide/from16 v30, v17

    move-wide/from16 v34, v6

    .line 115
    invoke-static/range {v30 .. v36}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    .line 116
    aget-wide v6, v14, v5

    sub-long v6, v6, v19

    sget-object v28, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v34, v14

    move-object/from16 p3, v15

    move/from16 v15, v27

    move-object v14, v3

    move-wide v3, v6

    move/from16 v27, p1

    move/from16 v35, v5

    move-wide/from16 v5, v32

    move-object/from16 v37, v21

    move/from16 v21, v8

    move-wide v7, v11

    move-object/from16 v38, v9

    move-object/from16 v9, v28

    .line 117
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3e

    const/4 v7, 0x0

    goto :goto_2d

    :cond_3e
    const/4 v7, 0x1

    :goto_2d
    const/4 v8, 0x1

    xor-int/2addr v7, v8

    or-int v26, v7, v26

    add-long v30, v30, v3

    .line 118
    aput-wide v30, v2, v0

    if-eqz v1, :cond_3f

    .line 119
    aget v3, v38, v0

    if-le v3, v15, :cond_3f

    .line 120
    aget v3, v10, v35

    move v15, v3

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v35, 0x1

    move v5, v3

    move/from16 v8, v21

    move/from16 v6, v27

    move-object/from16 v7, v37

    move-object/from16 v9, v38

    move-object/from16 v21, v14

    move/from16 v27, v15

    move-object/from16 v14, v34

    move-object/from16 v15, p3

    goto :goto_2c

    :cond_40
    move-object/from16 v37, v7

    move-object/from16 v38, v9

    move-object/from16 v34, v14

    move-object/from16 p3, v15

    move-object/from16 v14, v21

    move/from16 v15, v27

    const-wide/16 v5, 0x0

    move/from16 v21, v8

    .line 121
    aget-wide v3, v25, v21

    add-long v17, v17, v3

    add-int/lit8 v8, v21, 0x1

    move v3, v0

    move-object/from16 v21, v14

    move/from16 v4, v26

    move-object/from16 v14, v34

    const/4 v0, 0x0

    move-object/from16 v15, p3

    move-object/from16 p3, v10

    move-object/from16 v10, v25

    goto/16 :goto_2a

    :cond_41
    move-object/from16 v37, v7

    move-object/from16 v38, v9

    move-object/from16 v14, v21

    iget-wide v0, v14, Lcom/google/android/gms/internal/ads/zzajf;->zzd:J

    sget-object v36, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v32, 0xf4240

    move-wide/from16 v30, v17

    move-wide/from16 v34, v0

    .line 122
    invoke-static/range {v30 .. v36}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    if-eqz v4, :cond_42

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzajf;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzs(Z)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzajf;->zzb(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v3

    move-object/from16 v31, v3

    goto :goto_2e

    :cond_42
    move-object/from16 v31, v14

    :goto_2e
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaji;

    .line 124
    array-length v4, v13

    move-object/from16 v30, v3

    move-object/from16 v32, v13

    move-object/from16 v33, v38

    move/from16 v34, v27

    move-object/from16 v35, v2

    move-object/from16 v36, v37

    move-wide/from16 v37, v0

    move/from16 v39, v4

    invoke-direct/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajf;[J[II[J[IJI)V

    return-object v3

    .line 3
    :cond_43
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 8
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzao;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzex;

    .line 9
    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/zzex;-><init>(FF)V

    aput-object v4, v3, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzeg;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result p0

    return p0
.end method

.method private static zzj([BII)Ljava/lang/String;
    .locals 11

    .line 1
    array-length v0, p0

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    .line 2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 3
    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x3

    if-ge v4, v5, :cond_1

    .line 4
    aget-byte v5, p0, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p0, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgst;->zze(BBBB)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    .line 5
    sget-object v7, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x8

    const/16 v8, 0xff

    and-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x80

    mul-int/lit16 v9, v7, 0x36fb

    and-int/2addr v6, v8

    div-int/lit16 v9, v9, 0x2710

    add-int/2addr v9, v6

    .line 6
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    shl-int/2addr v9, v1

    and-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x80

    mul-int/lit16 v7, v7, 0x1c01

    mul-int/lit16 v10, v5, 0xd7f

    div-int/lit16 v10, v10, 0x2710

    sub-int v10, v6, v10

    div-int/lit16 v7, v7, 0x2710

    sub-int/2addr v10, v7

    .line 7
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    mul-int/lit16 v5, v5, 0x457e

    div-int/lit16 v5, v5, 0x2710

    add-int/2addr v6, v5

    .line 8
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    or-int v6, v9, v7

    or-int/2addr v5, v6

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%06x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 10
    :cond_1
    const-string p0, ", "

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzglx;->zzd(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\npalette: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzi;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzef;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v4

    const/4 v5, 0x6

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    .line 10
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    goto :goto_1

    :cond_1
    move v5, v9

    move v4, v10

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    move v8, v2

    .line 8
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    .line 15
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x16

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported obu_type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    .line 18
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v6

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    if-eqz v6, :cond_8

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_7

    goto :goto_2

    .line 48
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 65
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v6

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    .line 26
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    .line 29
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    .line 31
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 32
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    .line 34
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v11

    move v12, v9

    :goto_3
    const/4 v13, 0x7

    if-gt v12, v11, :cond_d

    .line 35
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 36
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v14

    if-le v14, v13, :cond_c

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 38
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v7

    .line 39
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 40
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    add-int/2addr v5, p0

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 43
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 44
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 47
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_4

    .line 48
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v7

    if-lez v7, :cond_11

    .line 49
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v7

    if-nez v7, :cond_11

    .line 50
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 51
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 52
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v3

    if-ne v6, v10, :cond_13

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    goto :goto_5

    :cond_13
    if-ne v6, p0, :cond_14

    goto :goto_6

    .line 55
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v3

    if-eqz v3, :cond_15

    move v9, p0

    .line 56
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v5

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v2

    if-nez v9, :cond_18

    if-ne v3, p0, :cond_18

    if-ne v5, v4, :cond_17

    if-nez v2, :cond_16

    move v1, p0

    move v3, v1

    goto :goto_8

    :cond_16
    move v3, p0

    goto :goto_7

    :cond_17
    move v3, p0

    :cond_18
    move v4, v5

    .line 60
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v1

    .line 61
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    if-ne v1, p0, :cond_19

    goto :goto_9

    :cond_19
    move p0, v10

    .line 62
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 64
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzi;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzef;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    .line 7
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v8

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzg()V

    const/16 v9, 0xb

    .line 10
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 12
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 13
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 15
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    if-eqz v8, :cond_1

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v8

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v9

    .line 18
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzef;->zzo(I)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v10

    .line 20
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    if-eq p0, v10, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, p0

    .line 21
    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result v8

    .line 22
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    return-object p0
.end method

.method private static zzm()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzeu;)Landroid/util/Pair;
    .locals 8

    const v0, 0x656c7374

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzc(I)Lcom/google/android/gms/internal/ads/zzev;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzJ()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzD()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzv()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzeg;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzaig;I)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v11

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    const/4 v11, 0x0

    :goto_0
    const/16 v13, 0x18

    const/16 v15, 0x20

    const/4 v12, 0x4

    const/4 v14, 0x2

    const/4 v10, 0x1

    const/16 v8, 0x10

    if-eqz v11, :cond_a

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ne v11, v14, :cond_5d

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzD()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    .line 13
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v11

    .line 15
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v12

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v21

    and-int/lit8 v23, v21, 0x1

    and-int/lit8 v21, v21, 0x2

    if-nez v23, :cond_8

    if-ne v12, v9, :cond_2

    const/4 v8, 0x3

    goto :goto_1

    :cond_2
    if-ne v12, v8, :cond_4

    if-eqz v21, :cond_3

    const/high16 v8, 0x10000000

    goto :goto_1

    :cond_3
    move v8, v14

    goto :goto_1

    :cond_4
    if-ne v12, v13, :cond_6

    if-eqz v21, :cond_5

    const/high16 v8, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v8, 0x15

    goto :goto_1

    :cond_6
    if-ne v12, v15, :cond_9

    if-eqz v21, :cond_7

    const/high16 v8, 0x60000000

    goto :goto_1

    :cond_7
    const/16 v8, 0x16

    goto :goto_1

    :cond_8
    if-ne v12, v15, :cond_9

    const/4 v8, 0x4

    goto :goto_1

    :cond_9
    const/4 v8, -0x1

    .line 18
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    move v9, v11

    const/4 v12, 0x0

    goto :goto_3

    .line 5
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v9

    const/4 v10, 0x6

    .line 6
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzF()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    .line 8
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v12

    const/4 v15, 0x1

    if-ne v11, v15, :cond_b

    .line 10
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :cond_b
    const/4 v8, -0x1

    :goto_3
    const v11, 0x73616d72

    const v15, 0x73617762

    const v13, 0x69616d66

    if-ne v1, v13, :cond_c

    const/4 v9, -0x1

    const/4 v10, -0x1

    goto :goto_5

    :cond_c
    if-ne v1, v11, :cond_d

    const/16 v9, 0x1f40

    move v10, v9

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    if-ne v1, v15, :cond_e

    const/16 v1, 0x3e80

    move v10, v1

    move v1, v15

    goto :goto_4

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v14

    const v13, 0x656e6361

    if-ne v1, v13, :cond_11

    .line 19
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaik;->zzr(Lcom/google/android/gms/internal/ads/zzeg;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 20
    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    .line 21
    :cond_f
    iget-object v15, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzajg;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzajg;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v6

    .line 20
    :goto_6
    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaig;->zza:[Lcom/google/android/gms/internal/ads/zzajg;

    .line 22
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajg;

    aput-object v1, v15, p9

    :cond_10
    move v1, v13

    .line 23
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    :cond_11
    const v13, 0x61632d33

    const-string v15, "audio/mhm1"

    const-string v26, "audio/raw"

    if-ne v1, v13, :cond_12

    const-string v11, "audio/ac3"

    :goto_7
    move v13, v1

    goto/16 :goto_b

    :cond_12
    const v13, 0x65632d33

    if-ne v1, v13, :cond_13

    .line 157
    const-string v11, "audio/eac3"

    goto :goto_7

    :cond_13
    const v13, 0x61632d34

    if-ne v1, v13, :cond_14

    const-string v11, "audio/ac4"

    goto :goto_7

    :cond_14
    const v13, 0x64747363

    if-ne v1, v13, :cond_15

    const-string v11, "audio/vnd.dts"

    goto :goto_7

    :cond_15
    const v13, 0x64747368

    if-eq v1, v13, :cond_2a

    const v13, 0x6474736c

    if-ne v1, v13, :cond_16

    goto/16 :goto_a

    :cond_16
    const v13, 0x64747365

    if-ne v1, v13, :cond_17

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_7

    :cond_17
    const v13, 0x64747378

    if-ne v1, v13, :cond_18

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_7

    :cond_18
    if-ne v1, v11, :cond_19

    const-string v11, "audio/3gpp"

    goto :goto_7

    :cond_19
    const v11, 0x73617762

    if-ne v1, v11, :cond_1a

    const-string v11, "audio/amr-wb"

    goto :goto_7

    :cond_1a
    const v11, 0x736f7774

    if-ne v1, v11, :cond_1b

    :goto_8
    move v13, v1

    move-object/from16 v11, v26

    const/4 v8, 0x2

    goto/16 :goto_b

    :cond_1b
    const v11, 0x74776f73

    if-ne v1, v11, :cond_1c

    move v13, v1

    move-object/from16 v11, v26

    const/high16 v8, 0x10000000

    goto/16 :goto_b

    :cond_1c
    const v11, 0x6c70636d

    if-ne v1, v11, :cond_1e

    const/4 v11, -0x1

    if-ne v8, v11, :cond_1d

    goto :goto_8

    :cond_1d
    move v13, v1

    move-object/from16 v11, v26

    goto/16 :goto_b

    :cond_1e
    const v11, 0x2e6d7032

    if-eq v1, v11, :cond_29

    const v11, 0x2e6d7033

    if-ne v1, v11, :cond_1f

    goto :goto_9

    :cond_1f
    const v11, 0x6d686131

    if-ne v1, v11, :cond_20

    const-string v11, "audio/mha1"

    goto :goto_7

    :cond_20
    const v11, 0x6d686d31

    if-ne v1, v11, :cond_21

    move v13, v1

    move-object v11, v15

    goto :goto_b

    :cond_21
    const v11, 0x616c6163

    if-ne v1, v11, :cond_22

    const-string v11, "audio/alac"

    goto/16 :goto_7

    :cond_22
    const v11, 0x616c6177

    if-ne v1, v11, :cond_23

    const-string v11, "audio/g711-alaw"

    goto/16 :goto_7

    :cond_23
    const v11, 0x756c6177

    if-ne v1, v11, :cond_24

    const-string v11, "audio/g711-mlaw"

    goto/16 :goto_7

    :cond_24
    const v11, 0x4f707573

    if-ne v1, v11, :cond_25

    const-string v11, "audio/opus"

    goto/16 :goto_7

    :cond_25
    const v11, 0x664c6143

    if-ne v1, v11, :cond_26

    const-string v11, "audio/flac"

    goto/16 :goto_7

    :cond_26
    const v11, 0x6d6c7061

    if-ne v1, v11, :cond_27

    const-string v11, "audio/true-hd"

    goto/16 :goto_7

    :cond_27
    const v11, 0x69616d66

    if-ne v1, v11, :cond_28

    const-string v1, "audio/iamf"

    move v13, v11

    move-object v11, v1

    goto :goto_b

    :cond_28
    move v13, v1

    const/4 v11, 0x0

    goto :goto_b

    :cond_29
    :goto_9
    const-string v11, "audio/mpeg"

    goto/16 :goto_7

    :cond_2a
    :goto_a
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_7

    :goto_b
    move/from16 v16, v8

    const/16 p7, 0x0

    const/4 v8, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_c
    sub-int v1, v14, v2

    if-ge v1, v3, :cond_5a

    .line 24
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v1

    if-lez v1, :cond_2b

    const/4 v2, 0x1

    goto :goto_d

    :cond_2b
    const/4 v2, 0x0

    .line 26
    :goto_d
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    move/from16 p9, v10

    const v10, 0x6d686143

    if-ne v2, v10, :cond_2e

    add-int/lit8 v2, v14, 0x8

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 32
    invoke-static {v11, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 34
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result v3

    new-array v10, v3, [B

    move-object/from16 p7, v2

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v10, v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    if-nez v8, :cond_2d

    .line 37
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    move/from16 v10, p9

    move/from16 v17, v1

    move/from16 v31, v12

    move-object/from16 v27, v15

    const/16 v19, 0x4

    move-object/from16 v1, p7

    move v12, v2

    move-object v2, v7

    goto/16 :goto_2a

    .line 38
    :cond_2d
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzgpe;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    goto :goto_f

    :cond_2e
    const v10, 0x6d686150

    if-ne v2, v10, :cond_31

    add-int/lit8 v2, v14, 0x8

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    if-lez v2, :cond_30

    new-array v3, v2, [B

    const/4 v10, 0x0

    .line 41
    invoke-virtual {v0, v3, v10, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    if-nez v8, :cond_2f

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    move-object/from16 v27, v15

    const/16 v19, 0x4

    move-object/from16 v1, p7

    move v12, v10

    move/from16 v10, p9

    goto/16 :goto_2a

    .line 43
    :cond_2f
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgpe;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    :goto_f
    move/from16 v10, p9

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    move-object/from16 v27, v15

    :goto_10
    const/4 v12, 0x0

    const/16 v19, 0x4

    goto/16 :goto_29

    :cond_30
    move/from16 v10, p9

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    move-object/from16 v27, v15

    goto :goto_10

    :cond_31
    const v10, 0x65736473

    if-eq v2, v10, :cond_54

    if-eqz p6, :cond_36

    const v10, 0x77617665

    if-ne v2, v10, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v2

    if-lt v2, v14, :cond_32

    move/from16 v27, v2

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_11

    :cond_32
    move/from16 v27, v2

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 120
    :goto_11
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    move/from16 v2, v27

    :goto_12
    sub-int v10, v2, v14

    if-ge v10, v1, :cond_35

    .line 121
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v10

    if-lez v10, :cond_33

    move-object/from16 v27, v15

    const/4 v15, 0x1

    goto :goto_13

    :cond_33
    move-object/from16 v27, v15

    const/4 v15, 0x0

    .line 123
    :goto_13
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v15

    move-object/from16 v28, v3

    const v3, 0x65736473

    if-eq v15, v3, :cond_34

    add-int/2addr v2, v10

    move-object/from16 v15, v27

    move-object/from16 v3, v28

    goto :goto_12

    :cond_34
    move/from16 v10, p9

    move/from16 v17, v1

    move v1, v2

    move-object v2, v7

    move/from16 v31, v12

    goto :goto_14

    :cond_35
    move-object/from16 v27, v15

    move/from16 v10, p9

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    const/4 v1, -0x1

    :goto_14
    const/16 v3, 0x20

    const/4 v7, -0x1

    const/16 v19, 0x4

    goto/16 :goto_24

    :cond_36
    move-object/from16 v27, v15

    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    .line 44
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzaik;->zzq(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzahz;

    move-result-object v25

    :goto_15
    move/from16 v10, p9

    move/from16 v17, v1

    :goto_16
    move-object v2, v7

    move/from16 v31, v12

    goto/16 :goto_10

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    add-int/lit8 v2, v14, 0x8

    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 46
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacb;->zza(Lcom/google/android/gms/internal/ads/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :goto_17
    move/from16 v10, p9

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    goto/16 :goto_10

    :cond_38
    const v3, 0x64656333

    if-ne v2, v3, :cond_39

    add-int/lit8 v2, v14, 0x8

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 48
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacb;->zzb(Lcom/google/android/gms/internal/ads/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_17

    :cond_39
    const v3, 0x64616334

    if-ne v2, v3, :cond_3a

    add-int/lit8 v2, v14, 0x8

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 50
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzace;->zza(Lcom/google/android/gms/internal/ads/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_17

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v12, :cond_3b

    move/from16 v17, v1

    move-object v2, v7

    move v10, v12

    move/from16 v31, v10

    const/4 v9, 0x2

    goto/16 :goto_10

    .line 143
    :cond_3b
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x31

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v3, 0x0

    const v10, 0x64647473

    if-eq v2, v10, :cond_53

    const v10, 0x75647473

    if-ne v2, v10, :cond_3d

    goto/16 :goto_23

    :cond_3d
    const v10, 0x644f7073

    if-ne v2, v10, :cond_3e

    add-int/lit8 v2, v14, 0x8

    add-int/lit8 v8, v1, -0x8

    .line 58
    sget-object v10, Lcom/google/android/gms/internal/ads/zzaik;->zzb:[B

    .line 59
    array-length v15, v10

    add-int v3, v15, v8

    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 61
    invoke-virtual {v0, v3, v15, v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadz;->zza([B)Ljava/util/List;

    move-result-object v8

    goto/16 :goto_15

    :cond_3e
    const v3, 0x64664c61

    if-ne v2, v3, :cond_3f

    add-int/lit8 v2, v14, 0xc

    add-int/lit8 v3, v1, -0xc

    add-int/lit8 v8, v1, -0x8

    .line 63
    new-array v8, v8, [B

    const/16 v10, 0x66

    const/4 v15, 0x0

    .line 64
    aput-byte v10, v8, v15

    const/16 v10, 0x4c

    const/4 v15, 0x1

    .line 65
    aput-byte v10, v8, v15

    const/16 v10, 0x61

    const/4 v15, 0x2

    .line 66
    aput-byte v10, v8, v15

    const/16 v10, 0x43

    const/4 v15, 0x3

    .line 67
    aput-byte v10, v8, v15

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v2, 0x4

    .line 69
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    goto/16 :goto_15

    :cond_3f
    const/4 v15, 0x3

    const v3, 0x616c6163

    if-ne v2, v3, :cond_40

    add-int/lit8 v2, v14, 0xc

    add-int/lit8 v3, v1, -0xc

    .line 71
    new-array v8, v3, [B

    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 74
    sget v2, Lcom/google/android/gms/internal/ads/zzdd;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeg;

    .line 75
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    const/4 v3, 0x5

    .line 76
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    const/16 v9, 0x9

    .line 78
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v9

    const/16 v10, 0x14

    .line 80
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v2

    filled-new-array {v2, v9, v3}, [I

    move-result-object v2

    const/4 v9, 0x0

    aget v10, v2, v9

    const/4 v9, 0x1

    aget v2, v2, v9

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 82
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/ads/zzep;->zzz(ILjava/nio/ByteOrder;)I

    move-result v3

    .line 83
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    move/from16 v17, v1

    move v9, v2

    move/from16 v16, v3

    goto/16 :goto_16

    :cond_40
    const v3, 0x69616362

    if-ne v2, v3, :cond_4b

    add-int/lit8 v2, v14, 0x9

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzP()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v2

    .line 86
    new-array v3, v2, [B

    const/4 v8, 0x0

    .line 87
    invoke-virtual {v0, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 88
    sget v2, Lcom/google/android/gms/internal/ads/zzdd;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeg;

    .line 89
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 90
    :goto_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v17

    if-lez v17, :cond_49

    if-eqz v8, :cond_41

    if-nez v10, :cond_49

    .line 91
    :cond_41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v17

    shr-int/lit8 v15, v17, 0x3

    and-int/lit8 v29, v17, 0x2

    const/16 v22, 0x1

    and-int/lit8 v17, v17, 0x1

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzP()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v30

    move/from16 v31, v12

    const/4 v12, 0x4

    if-le v15, v12, :cond_42

    const/16 v12, 0x18

    if-ge v15, v12, :cond_43

    if-eqz v29, :cond_43

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzQ()V

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzQ()V

    goto :goto_19

    :cond_42
    const/16 v12, 0x18

    :cond_43
    :goto_19
    if-eqz v17, :cond_44

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzP()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v12

    .line 96
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :cond_44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v12

    add-int v12, v12, v30

    move/from16 v17, v1

    const/16 v1, 0x1f

    if-ne v15, v1, :cond_45

    const/4 v1, 0x4

    .line 97
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v1

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v8

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "iamf.%03X.%03X"

    .line 101
    invoke-static {v8, v15, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1c

    :cond_45
    if-nez v15, :cond_48

    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzQ()V

    .line 103
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "mp4a"

    .line 104
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzQ()V

    const/4 v15, 0x2

    .line 106
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzef;

    .line 107
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzef;-><init>()V

    .line 108
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzef;->zza(Lcom/google/android/gms/internal/ads/zzeg;)V

    const/4 v15, 0x5

    .line 109
    invoke-virtual {v10, v15}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v15

    const/16 v7, 0x1f

    if-ne v15, v7, :cond_46

    const/4 v7, 0x6

    .line 110
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v10

    const/16 v15, 0x20

    add-int/2addr v10, v15

    move v15, v10

    goto :goto_1a

    :cond_46
    const/4 v7, 0x6

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v19, 0x4

    add-int/lit8 v10, v10, 0x4

    .line 111
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    new-instance v7, Ljava/lang/StringBuilder;

    add-int v10, v10, v20

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".40."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_47
    const/16 v19, 0x4

    :goto_1b
    move-object v10, v1

    goto :goto_1d

    :cond_48
    :goto_1c
    const/16 v19, 0x4

    .line 112
    :goto_1d
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    move-object/from16 v7, p8

    move/from16 v1, v17

    move/from16 v12, v31

    const/4 v15, 0x3

    goto/16 :goto_18

    :cond_49
    move/from16 v17, v1

    move/from16 v31, v12

    const/16 v19, 0x4

    if-eqz v8, :cond_4a

    if-eqz v10, :cond_4a

    .line 111
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    .line 113
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_4a
    const/4 v1, 0x0

    .line 114
    :goto_1e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    move-object/from16 v2, p8

    move/from16 v10, p9

    const/4 v12, 0x0

    goto/16 :goto_2a

    :cond_4b
    move/from16 v17, v1

    move/from16 v31, v12

    const/16 v19, 0x4

    const v1, 0x70636d43

    if-ne v2, v1, :cond_52

    add-int/lit8 v1, v14, 0xc

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_4c

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1f

    .line 119
    :cond_4c
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 117
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    const v3, 0x6970636d

    if-ne v13, v3, :cond_4d

    .line 118
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzz(ILjava/nio/ByteOrder;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x20

    goto :goto_21

    :cond_4d
    const v3, 0x6670636d

    if-ne v13, v3, :cond_4e

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4f

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move/from16 v1, v19

    goto :goto_20

    :cond_4e
    const/16 v3, 0x20

    :cond_4f
    move/from16 v1, v16

    :goto_20
    const/4 v2, -0x1

    :goto_21
    if-eq v1, v2, :cond_50

    move-object/from16 v2, p8

    move/from16 v10, p9

    move/from16 v16, v1

    move-object/from16 v11, v26

    goto :goto_22

    :cond_50
    move-object/from16 v2, p8

    move/from16 v10, p9

    move/from16 v16, v1

    :cond_51
    :goto_22
    const/4 v12, 0x0

    goto/16 :goto_29

    :cond_52
    move-object/from16 v2, p8

    move/from16 v10, p9

    goto :goto_22

    :cond_53
    :goto_23
    move/from16 v17, v1

    move/from16 v31, v12

    const/16 v3, 0x20

    const/16 v19, 0x4

    .line 50
    new-instance v1, Lcom/google/android/gms/internal/ads/zzt;

    .line 51
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 52
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 53
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 54
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v10, p9

    .line 55
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 56
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    .line 57
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    move-object/from16 v2, p8

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_22

    :cond_54
    move/from16 v10, p9

    move/from16 v17, v1

    move-object v2, v7

    move/from16 v31, v12

    move-object/from16 v27, v15

    const/16 v3, 0x20

    const/16 v19, 0x4

    move v1, v14

    const/4 v7, -0x1

    :goto_24
    if-eq v1, v7, :cond_51

    .line 125
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzp(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaib;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaib;->zzb()[B

    move-result-object v11

    if-eqz v11, :cond_59

    const-string v8, "audio/vorbis"

    .line 126
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeg;

    .line 127
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    const/4 v12, 0x1

    .line 128
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    const/4 v15, 0x0

    .line 129
    :goto_25
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v18

    const/16 v3, 0xff

    if-lez v18, :cond_55

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzn()I

    move-result v7

    if-ne v7, v3, :cond_55

    .line 130
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    add-int/lit16 v15, v15, 0xff

    const/16 v3, 0x20

    const/4 v7, -0x1

    const/4 v12, 0x1

    goto :goto_25

    .line 131
    :cond_55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v7

    add-int/2addr v15, v7

    const/4 v7, 0x0

    .line 132
    :goto_26
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v12

    if-lez v12, :cond_56

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzn()I

    move-result v12

    if-ne v12, v3, :cond_56

    const/4 v12, 0x1

    .line 133
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    add-int/lit16 v7, v7, 0xff

    goto :goto_26

    :cond_56
    const/4 v12, 0x1

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    add-int/2addr v7, v3

    .line 135
    new-array v3, v15, [B

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v8

    const/4 v12, 0x0

    .line 136
    invoke-static {v11, v8, v3, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v15

    array-length v15, v11

    add-int/2addr v8, v7

    sub-int/2addr v15, v8

    .line 137
    new-array v7, v15, [B

    .line 138
    invoke-static {v11, v8, v7, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzgpe;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    goto :goto_28

    :cond_57
    const/4 v12, 0x0

    const-string v3, "audio/mp4a-latm"

    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 141
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzabz;->zza([B)Lcom/google/android/gms/internal/ads/zzaby;

    move-result-object v3

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzaby;->zza:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaby;->zzb:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaby;->zzc:Ljava/lang/String;

    goto :goto_27

    :cond_58
    move-object/from16 v3, p7

    .line 142
    :goto_27
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v8

    move-object v11, v1

    move-object v1, v3

    goto :goto_2a

    :cond_59
    const/4 v12, 0x0

    :goto_28
    move-object v11, v1

    :goto_29
    move-object/from16 v1, p7

    :goto_2a
    add-int v14, v14, v17

    move/from16 v3, p3

    move-object/from16 p7, v1

    move-object v7, v2

    move-object/from16 v15, v27

    move/from16 v12, v31

    move/from16 v2, p2

    goto/16 :goto_c

    :cond_5a
    move-object v2, v7

    .line 119
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v0, :cond_5d

    if-eqz v11, :cond_5d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 144
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 145
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzb(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 146
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    move-object/from16 v1, p7

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 148
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 149
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    move/from16 v1, v16

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 151
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 152
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    .line 153
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    if-eqz v24, :cond_5b

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaib;->zzc()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaib;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    goto :goto_2b

    :cond_5b
    if-eqz v25, :cond_5c

    .line 158
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzahz;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzh(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzahz;->zzb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zzb(J)I

    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 158
    :cond_5c
    :goto_2b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    :cond_5d
    return-void
.end method

.method private static zzp(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzaib;
    .locals 11

    add-int/lit8 p1, p1, 0xc

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzs(Lcom/google/android/gms/internal/ads/zzeg;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzs(Lcom/google/android/gms/internal/ads/zzeg;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zzf(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzs(Lcom/google/android/gms/internal/ads/zzeg;)I

    move-result p1

    .line 21
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    const-wide/16 p0, 0x0

    cmp-long v6, v3, p0

    const-wide/16 v7, -0x1

    if-gtz v6, :cond_4

    move-wide v9, v7

    goto :goto_0

    :cond_4
    move-wide v9, v3

    :goto_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v7

    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaib;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 15
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaib;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzeg;I)Lcom/google/android/gms/internal/ads/zzahz;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahz;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(JJ)V

    return-object v2
.end method

.method private static zzr(Lcom/google/android/gms/internal/ads/zzeg;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzajg;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzade;->zza(ZLjava/lang/String;)V

    .line 31
    sget-object v5, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajg;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzs(Lcom/google/android/gms/internal/ads/zzeg;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
