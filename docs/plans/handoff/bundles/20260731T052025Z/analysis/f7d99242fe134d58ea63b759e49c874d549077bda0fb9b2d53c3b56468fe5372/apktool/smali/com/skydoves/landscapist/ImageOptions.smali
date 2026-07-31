.class public final Lcom/skydoves/landscapist/ImageOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final $stable:I = 0x0

.field private static final Companion:Lcom/skydoves/landscapist/ImageOptions$Companion;

.field public static final DEFAULT_IMAGE_SIZE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private final alpha:F

.field private final colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private final contentDescription:Ljava/lang/String;

.field private final contentScale:Landroidx/compose/ui/layout/ContentScale;

.field private final placeholderAspectRatio:Ljava/lang/Float;

.field private final requestSize:J

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/ImageOptions$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/skydoves/landscapist/ImageOptions;->Companion:Lcom/skydoves/landscapist/ImageOptions$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 89
    iput-object p2, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 91
    iput-object p4, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 92
    iput p5, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 93
    iput-wide p6, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 94
    iput-object p8, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 95
    iput-object p9, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v2, p2

    .line 19
    :goto_1
    and-int/lit8 v4, v0, 0x4

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->Crop:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object v4, p3

    .line 27
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    move-object v5, v3

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object v5, p4

    .line 34
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 35
    .line 36
    if-eqz v6, :cond_4

    .line 37
    .line 38
    const/high16 v6, 0x3f800000    # 1.0f

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move v6, p5

    .line 42
    :goto_4
    and-int/lit8 v7, v0, 0x20

    .line 43
    .line 44
    if-eqz v7, :cond_5

    .line 45
    .line 46
    const-wide/16 v7, -0x1

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-wide/from16 v7, p6

    .line 50
    .line 51
    :goto_5
    and-int/lit8 v9, v0, 0x40

    .line 52
    .line 53
    if-eqz v9, :cond_6

    .line 54
    .line 55
    const-string v9, ""

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_6
    move-object/from16 v9, p8

    .line 59
    .line 60
    :goto_6
    and-int/lit16 v0, v0, 0x80

    .line 61
    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    goto :goto_7

    .line 65
    :cond_7
    move-object/from16 v3, p9

    .line 66
    .line 67
    :goto_7
    const/4 v0, 0x0

    .line 68
    move-object p1, p0

    .line 69
    move-object/from16 p11, v0

    .line 70
    .line 71
    move-object p2, v1

    .line 72
    move-object p3, v2

    .line 73
    move-object/from16 p10, v3

    .line 74
    .line 75
    move-object p4, v4

    .line 76
    move-object p5, v5

    .line 77
    move/from16 p6, v6

    .line 78
    .line 79
    move-wide/from16 p7, v7

    .line 80
    .line 81
    move-object/from16 p9, v9

    .line 82
    .line 83
    invoke-direct/range {p1 .. p11}, Lcom/skydoves/landscapist/ImageOptions;-><init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p9}, Lcom/skydoves/landscapist/ImageOptions;-><init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic copy-KoMkP_o$default(Lcom/skydoves/landscapist/ImageOptions;Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/skydoves/landscapist/ImageOptions;
    .locals 0

    .line 1
    and-int/lit8 p11, p10, 0x1

    .line 2
    .line 3
    if-eqz p11, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x2

    .line 8
    .line 9
    if-eqz p11, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 14
    .line 15
    if-eqz p11, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p11, p10, 0x8

    .line 20
    .line 21
    if-eqz p11, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p11, p10, 0x10

    .line 26
    .line 27
    if-eqz p11, :cond_4

    .line 28
    .line 29
    iget p5, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 30
    .line 31
    :cond_4
    and-int/lit8 p11, p10, 0x20

    .line 32
    .line 33
    if-eqz p11, :cond_5

    .line 34
    .line 35
    iget-wide p6, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 36
    .line 37
    :cond_5
    and-int/lit8 p11, p10, 0x40

    .line 38
    .line 39
    if-eqz p11, :cond_6

    .line 40
    .line 41
    iget-object p8, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 42
    .line 43
    :cond_6
    and-int/lit16 p10, p10, 0x80

    .line 44
    .line 45
    if-eqz p10, :cond_7

    .line 46
    .line 47
    iget-object p9, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 48
    .line 49
    :cond_7
    move-object p10, p8

    .line 50
    move-object p11, p9

    .line 51
    move-wide p8, p6

    .line 52
    move-object p6, p4

    .line 53
    move p7, p5

    .line 54
    move-object p4, p2

    .line 55
    move-object p5, p3

    .line 56
    move-object p2, p0

    .line 57
    move-object p3, p1

    .line 58
    invoke-virtual/range {p2 .. p11}, Lcom/skydoves/landscapist/ImageOptions;->copy-KoMkP_o(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;)Lcom/skydoves/landscapist/ImageOptions;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static synthetic getLoadingOptionsKey$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component4()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component5()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 2
    .line 3
    return p0
.end method

.method public final component6-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component8()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy-KoMkP_o(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;)Lcom/skydoves/landscapist/ImageOptions;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/skydoves/landscapist/ImageOptions;

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, p3

    .line 16
    move-object v4, p4

    .line 17
    move/from16 v5, p5

    .line 18
    .line 19
    move-wide/from16 v6, p6

    .line 20
    .line 21
    move-object/from16 v8, p8

    .line 22
    .line 23
    move-object/from16 v9, p9

    .line 24
    .line 25
    invoke-direct/range {v0 .. v10}, Lcom/skydoves/landscapist/ImageOptions;-><init>(Landroidx/compose/ui/Alignment;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/ColorFilter;FJLjava/lang/String;Ljava/lang/Float;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/skydoves/landscapist/ImageOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/skydoves/landscapist/ImageOptions;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget v0, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 56
    .line 57
    iget v1, p1, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-wide v0, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 67
    .line 68
    iget-wide v2, p1, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 69
    .line 70
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 91
    .line 92
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_9

    .line 97
    .line 98
    :goto_0
    const/4 p0, 0x0

    .line 99
    return p0

    .line 100
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 101
    return p0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 2
    .line 3
    return p0
.end method

.method public final getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentScale()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLoadingOptionsKey()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/skydoves/landscapist/LoadingOptionsKey;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 4
    .line 5
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/skydoves/landscapist/LoadingOptionsKey;-><init>(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getPlaceholderAspectRatio()Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequestSize-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v0

    .line 30
    mul-int/2addr v2, v1

    .line 31
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    move v0, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_1
    add-int/2addr v2, v0

    .line 42
    mul-int/2addr v2, v1

    .line 43
    iget v0, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 44
    .line 45
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(IFI)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-wide v4, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 50
    .line 51
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->hashCode-impl(J)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/2addr v2, v0

    .line 56
    mul-int/2addr v2, v1

    .line 57
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 64
    .line 65
    if-nez p0, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    :goto_2
    add-int/2addr v0, v3

    .line 73
    return v0
.end method

.method public final isValidSize()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getRequestSize-YbymL2g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    shr-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getRequestSize-YbymL2g()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide v2, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v0, v2

    .line 21
    long-to-int p0, v0

    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/skydoves/landscapist/ImageOptions;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/ImageOptions;->contentDescription:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/landscapist/ImageOptions;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/skydoves/landscapist/ImageOptions;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 8
    .line 9
    iget v4, p0, Lcom/skydoves/landscapist/ImageOptions;->alpha:F

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/skydoves/landscapist/ImageOptions;->requestSize:J

    .line 12
    .line 13
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->toString-impl(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget-object v6, p0, Lcom/skydoves/landscapist/ImageOptions;->tag:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageOptions;->placeholderAspectRatio:Ljava/lang/Float;

    .line 20
    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v8, "ImageOptions(alignment="

    .line 24
    .line 25
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ", contentDescription="

    .line 32
    .line 33
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", contentScale="

    .line 40
    .line 41
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, ", colorFilter="

    .line 48
    .line 49
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", alpha="

    .line 56
    .line 57
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ", requestSize="

    .line 64
    .line 65
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", tag="

    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ", placeholderAspectRatio="

    .line 80
    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, ")"

    .line 88
    .line 89
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
