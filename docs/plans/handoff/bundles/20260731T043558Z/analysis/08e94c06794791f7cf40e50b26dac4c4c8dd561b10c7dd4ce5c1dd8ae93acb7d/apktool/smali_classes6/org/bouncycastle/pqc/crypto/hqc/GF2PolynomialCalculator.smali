.class Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;
.super Ljava/lang/Object;


# instance fields
.field private final PARAM_N:I

.field private final RED_MASK:J

.field private final VEC_N_SIZE_64:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    iput-wide p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    return-void
.end method

.method static addLongs([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private base_mul([JIJJ)V
    .locals 26

    const/16 v0, 0x10

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const-wide v5, 0xfffffffffffffffL

    and-long v5, p5, v5

    const/4 v7, 0x1

    aput-wide v5, v1, v7

    shl-long v8, v5, v7

    const/4 v10, 0x2

    aput-wide v8, v1, v10

    xor-long/2addr v8, v5

    const/4 v11, 0x3

    aput-wide v8, v1, v11

    shl-long v12, v5, v10

    const/4 v14, 0x4

    aput-wide v12, v1, v14

    xor-long/2addr v12, v5

    const/4 v15, 0x5

    aput-wide v12, v1, v15

    shl-long v15, v8, v7

    const/16 v17, 0x6

    aput-wide v15, v1, v17

    xor-long/2addr v15, v5

    const/16 v17, 0x7

    aput-wide v15, v1, v17

    shl-long v17, v5, v11

    const/16 v19, 0x8

    aput-wide v17, v1, v19

    const/16 v19, 0x9

    xor-long v17, v17, v5

    aput-wide v17, v1, v19

    shl-long/2addr v12, v7

    const/16 v17, 0xa

    aput-wide v12, v1, v17

    const/16 v17, 0xb

    xor-long/2addr v12, v5

    aput-wide v12, v1, v17

    shl-long/2addr v8, v10

    const/16 v12, 0xc

    aput-wide v8, v1, v12

    const/16 v12, 0xd

    xor-long/2addr v8, v5

    aput-wide v8, v1, v12

    shl-long v8, v15, v7

    const/16 v12, 0xe

    aput-wide v8, v1, v12

    const/16 v12, 0xf

    xor-long/2addr v5, v8

    aput-wide v5, v1, v12

    const-wide/16 v5, 0xf

    and-long v8, p3, v5

    move v12, v2

    move-wide v15, v3

    :goto_0
    const/16 v13, 0x3f

    const-wide/16 v17, 0x1

    if-ge v12, v0, :cond_0

    int-to-long v3, v12

    sub-long v3, v8, v3

    aget-wide v21, v1, v12

    neg-long v10, v3

    or-long/2addr v3, v10

    ushr-long/2addr v3, v13

    sub-long v3, v17, v3

    neg-long v3, v3

    and-long v3, v21, v3

    xor-long/2addr v15, v3

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v3, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto :goto_0

    :cond_0
    move v3, v14

    const-wide/16 v8, 0x0

    :goto_1
    const/16 v4, 0x40

    if-ge v3, v4, :cond_2

    shr-long v10, p3, v3

    and-long/2addr v10, v5

    move v4, v2

    const-wide/16 v21, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    int-to-long v5, v4

    sub-long v5, v10, v5

    aget-wide v23, v1, v4

    move-object/from16 v25, v1

    neg-long v0, v5

    or-long/2addr v0, v5

    ushr-long/2addr v0, v13

    sub-long v0, v17, v0

    neg-long v0, v0

    and-long v0, v23, v0

    xor-long v21, v21, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v25

    const/16 v0, 0x10

    const-wide/16 v5, 0xf

    goto :goto_2

    :cond_1
    move-object/from16 v25, v1

    shl-long v0, v21, v3

    xor-long/2addr v15, v0

    rsub-int/lit8 v0, v3, 0x40

    ushr-long v0, v21, v0

    xor-long/2addr v8, v0

    add-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    move-object/from16 v1, v25

    const/16 v0, 0x10

    const-wide/16 v5, 0xf

    goto :goto_1

    :cond_2
    const/16 v0, 0x3c

    shr-long v3, p5, v0

    and-long v3, v3, v17

    neg-long v3, v3

    const/16 v1, 0x3d

    shr-long v5, p5, v1

    and-long v5, v5, v17

    neg-long v5, v5

    const/16 v10, 0x3e

    shr-long v11, p5, v10

    and-long v11, v11, v17

    neg-long v11, v11

    shr-long v19, p5, v13

    and-long v0, v19, v17

    neg-long v0, v0

    new-array v13, v14, [J

    aput-wide v3, v13, v2

    aput-wide v5, v13, v7

    const/4 v3, 0x2

    aput-wide v11, v13, v3

    const/4 v3, 0x3

    aput-wide v0, v13, v3

    const/16 v0, 0x3c

    shl-long v0, p3, v0

    aget-wide v2, v13, v2

    and-long/2addr v0, v2

    xor-long/2addr v0, v15

    ushr-long v4, p3, v14

    and-long/2addr v2, v4

    xor-long/2addr v2, v8

    const/16 v4, 0x3d

    shl-long v4, p3, v4

    aget-wide v8, v13, v7

    and-long/2addr v4, v8

    xor-long/2addr v0, v4

    const/4 v4, 0x3

    ushr-long v5, p3, v4

    and-long/2addr v5, v8

    xor-long/2addr v2, v5

    shl-long v5, p3, v10

    const/4 v8, 0x2

    aget-wide v9, v13, v8

    and-long/2addr v5, v9

    xor-long/2addr v0, v5

    ushr-long v5, p3, v8

    and-long/2addr v5, v9

    xor-long/2addr v2, v5

    const/16 v5, 0x3f

    shl-long v5, p3, v5

    aget-wide v8, v13, v4

    and-long v4, v5, v8

    xor-long/2addr v0, v4

    ushr-long v4, p3, v7

    and-long/2addr v4, v8

    xor-long/2addr v2, v4

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    aput-wide v2, p1, v0

    return-void
.end method

.method private karatsuba([JI[JI[JII[JI)V
    .locals 18

    move/from16 v0, p7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-wide v0, p3, p4

    aget-wide v2, p5, p6

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move/from16 p5, p2

    move-wide/from16 p6, v0

    move-wide/from16 p8, v2

    invoke-direct/range {p3 .. p9}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->base_mul([JIJJ)V

    return-void

    :cond_0
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v1, p9, v0

    add-int v15, v1, v0

    mul-int/lit8 v3, v0, 0x2

    add-int v16, p2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int v17, p9, v3

    add-int v13, p4, v0

    add-int v14, p6, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move v10, v0

    move-object/from16 v11, p8

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, p3

    move v8, v13

    move-object/from16 v9, p5

    move v10, v14

    move v11, v2

    move-object/from16 v12, p8

    move/from16 v13, v17

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p8

    move v8, v1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move v13, v0

    move v14, v2

    invoke-direct/range {v4 .. v14}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add1([JI[JI[JI[JIII)V

    move-object/from16 v4, p8

    move v5, v15

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p8

    move v9, v1

    move v10, v0

    move-object/from16 v11, p8

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p8

    move v8, v15

    move-object/from16 v9, p1

    move/from16 v10, v16

    move v11, v0

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add2([JI[JI[JIII)V

    return-void
.end method

.method private karatsuba_add1([JI[JI[JI[JIII)V
    .locals 9

    move/from16 v0, p9

    move/from16 v1, p10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, v2, p2

    add-int v4, v2, p6

    aget-wide v4, p5, v4

    add-int v6, v2, v0

    add-int v7, v6, p6

    aget-wide v7, p5, v7

    xor-long/2addr v4, v7

    aput-wide v4, p1, v3

    add-int v3, v2, p4

    add-int v4, v2, p8

    aget-wide v4, p7, v4

    add-int v6, v6, p8

    aget-wide v6, p7, v6

    xor-long/2addr v4, v6

    aput-wide v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v0, :cond_1

    add-int v0, v1, p2

    add-int v2, v1, p6

    aget-wide v2, p5, v2

    aput-wide v2, p1, v0

    add-int v0, v1, p4

    add-int v1, v1, p8

    aget-wide v1, p7, v1

    aput-wide v1, p3, v0

    :cond_1
    return-void
.end method

.method private karatsuba_add2([JI[JI[JIII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    mul-int/lit8 v2, p7, 0x2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p4

    aget-wide v3, p3, v2

    add-int v5, v1, p2

    aget-wide v5, p1, v5

    xor-long/2addr v3, v5

    aput-wide v3, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    mul-int/lit8 v3, p8, 0x2

    if-ge v1, v3, :cond_1

    add-int v3, v1, p4

    aget-wide v4, p3, v3

    add-int v6, v1, p6

    aget-wide v6, p5, v6

    xor-long/2addr v4, v6

    aput-wide v4, p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, v2, :cond_2

    add-int v1, v0, p7

    add-int/2addr v1, p2

    aget-wide v3, p1, v1

    add-int v5, v0, p4

    aget-wide v5, p3, v5

    xor-long/2addr v3, v5

    aput-wide v3, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private reduce([J[J)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    if-ge v0, v1, :cond_0

    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p2, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    and-int/lit8 v5, v4, 0x3f

    ushr-long/2addr v2, v5

    add-int/2addr v1, v0

    aget-wide v5, p2, v1

    int-to-long v7, v4

    const-wide/16 v9, 0x3f

    and-long/2addr v7, v9

    const-wide/16 v9, 0x40

    sub-long/2addr v9, v7

    long-to-int v1, v9

    shl-long v4, v5, v1

    aget-wide v6, p2, v0

    xor-long v1, v6, v2

    xor-long/2addr v1, v4

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-wide v2, p1, v1

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method


# virtual methods
.method protected multLongs([J[J[J)V
    .locals 11

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v7, 0x3

    new-array v8, v0, [J

    shl-int/lit8 v0, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [J

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    invoke-direct {p0, p1, v10}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->reduce([J[J)V

    return-void
.end method
