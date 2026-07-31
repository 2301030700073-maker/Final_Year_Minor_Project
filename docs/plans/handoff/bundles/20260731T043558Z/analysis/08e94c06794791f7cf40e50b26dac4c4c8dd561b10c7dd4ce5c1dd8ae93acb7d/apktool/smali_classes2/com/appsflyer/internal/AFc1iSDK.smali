.class public final Lcom/appsflyer/internal/AFc1iSDK;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFc1iSDK$AFa1zSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static areAllFieldsValid:I = 0x1

.field private static getMediationNetwork:I

.field private static getMonetizationNetwork:J

.field private static getRevenue:I


# instance fields
.field private final AFAdRevenueData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65354
    invoke-static {}, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/graphics/PointF;->length(FF)F

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    invoke-static {v3, v0, v0}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    invoke-static {}, Landroid/os/Process;->myPid()I

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    const-string v0, ""

    const/16 v1, 0x30

    invoke-static {v0, v1, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    sget v0, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 57
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static AFAdRevenueData()V
    .locals 2

    const v0, -0x206b69c

    .line 65353
    sput v0, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork:I

    const-wide v0, 0x728cd0b0e07cd4cfL    # 6.148485194690361E243

    sput-wide v0, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:J

    return-void
.end method

.method private static a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x2

    .line 129
    rem-int v1, v0, v0

    if-eqz p0, :cond_1

    sget v1, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    const/4 p0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    throw p0

    .line 0
    :cond_1
    :goto_0
    check-cast p0, [C

    .line 93
    new-instance v1, Lcom/appsflyer/internal/AFk1cSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1cSDK;-><init>()V

    .line 96
    new-array v2, p2, [C

    const/4 v3, 0x0

    .line 100
    iput v3, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    :goto_1
    iget v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    if-ge v4, p2, :cond_2

    .line 129
    sget v4, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    add-int/lit8 v4, v4, 0x2d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    rem-int/2addr v4, v0

    .line 101
    iget v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    aget-char v4, p0, v4

    iput v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->AFAdRevenueData:I

    .line 103
    iget v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    iget v5, v1, Lcom/appsflyer/internal/AFk1cSDK;->AFAdRevenueData:I

    add-int/2addr v5, p3

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 104
    iget v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    aget-char v5, v2, v4

    sget v6, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork:I

    int-to-long v6, v6

    const-wide v8, -0xfec32340206b6daL    # -7.686475903053402E231

    xor-long/2addr v6, v8

    long-to-int v6, v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    .line 100
    iget v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    .line 129
    sget p0, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p3, p0, 0x80

    sput p3, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    rem-int/2addr p0, v0

    .line 109
    iput p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getCurrencyIso4217Code:I

    .line 111
    new-array p0, p2, [C

    .line 113
    invoke-static {v2, v3, p0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getCurrencyIso4217Code:I

    sub-int p1, p2, p1

    iget p3, v1, Lcom/appsflyer/internal/AFk1cSDK;->getCurrencyIso4217Code:I

    invoke-static {p0, v3, v2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getCurrencyIso4217Code:I

    iget p3, v1, Lcom/appsflyer/internal/AFk1cSDK;->getCurrencyIso4217Code:I

    sub-int p3, p2, p3

    invoke-static {p0, p1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-eqz p4, :cond_5

    .line 120
    new-array p0, p2, [C

    .line 122
    iput v3, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    :goto_2
    iget p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    if-ge p1, p2, :cond_4

    .line 123
    iget p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    iget p3, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v2, p3

    aput-char p3, p0, p1

    .line 122
    iget p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/appsflyer/internal/AFk1cSDK;->getMonetizationNetwork:I

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 129
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    aput-object p0, p5, v3

    return-void
.end method

.method private static b(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 65
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    add-int/lit8 v2, v1, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    rem-int/2addr v2, v0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v1, 0x4a

    div-int/2addr v1, v2

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 65
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    rem-int/2addr v1, v0

    .line 0
    :cond_1
    check-cast p0, [C

    .line 51
    new-instance v1, Lcom/appsflyer/internal/AFk1gSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFk1gSDK;-><init>()V

    .line 54
    sget-wide v3, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:J

    const-wide v5, 0x6ead1657099863e0L    # 1.345828356704348E225

    xor-long/2addr v3, v5

    .line 55
    invoke-static {v3, v4, p0, p1}, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 59
    iput p1, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    :goto_1
    iget v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 65
    sget v3, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    add-int/lit8 v3, v3, 0x17

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    rem-int/2addr v3, v0

    .line 60
    iget v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    sub-int/2addr v3, p1

    iput v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getMediationNetwork:I

    .line 61
    iget v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    iget v4, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    aget-char v4, p0, v4

    iget v7, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    rem-int/2addr v7, p1

    aget-char v7, p0, v7

    xor-int/2addr v4, v7

    int-to-long v7, v4

    iget v4, v1, Lcom/appsflyer/internal/AFk1gSDK;->getMediationNetwork:I

    int-to-long v9, v4

    sget-wide v11, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:J

    xor-long/2addr v11, v5

    mul-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v4, v7

    int-to-char v4, v4

    aput-char v4, p0, v3

    .line 59
    iget v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/appsflyer/internal/AFk1gSDK;->getCurrencyIso4217Code:I

    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v2

    return-void
.end method

.method private static varargs getCurrencyIso4217Code([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 81
    rem-int v1, v0, v0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v2, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_4

    .line 74
    array-length v6, p0

    const/4 v6, 0x0

    move v7, v2

    move-object v8, v6

    :goto_2
    if-ge v7, v4, :cond_3

    .line 81
    sget v9, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v9, v9, 0x39

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    rem-int/2addr v9, v0

    .line 74
    aget-object v9, p0, v7

    .line 75
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-nez v8, :cond_2

    .line 81
    sget v8, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v8, v8, 0x45

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    rem-int/2addr v8, v0

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    throw v6

    .line 76
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    xor-int/2addr v9, v8

    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private getMediationNetwork()Ljava/lang/String;
    .locals 22

    move-object/from16 v1, p0

    const-string v0, ""

    const/4 v2, 0x2

    .line 117
    rem-int v3, v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 87
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 88
    iget-object v6, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v7, "\n\ufff7\u0003\u0006\ufff7\ufffc\ufff5\n\uffff\u0003\ufffb\t"

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v8

    const/4 v15, 0x4

    add-int/2addr v8, v15

    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v9

    rsub-int/lit8 v9, v9, 0xb

    invoke-static {v0, v4, v4}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v10

    add-int/lit16 v10, v10, 0xac

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v16, v12

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v7, v16, v4

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    iget-object v7, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v16, "\ufffa\u000b\ufffb\ufffd\u0007"

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x3

    rsub-int/lit8 v17, v8, 0x3

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    rsub-int/lit8 v18, v8, 0x5

    const/4 v8, 0x0

    invoke-static {v4, v8, v8}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v10

    cmpl-float v8, v10, v8

    add-int/lit16 v8, v8, 0xa9

    new-array v10, v3, [Ljava/lang/Object;

    const/16 v20, 0x1

    move/from16 v19, v8

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v21}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v8, v10, v4

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 92
    const-string v16, "\u0003\u0002\ufff8\u0002\ufff5\u0006\ufff6\u0013"

    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v17, v0, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v18, v0, 0x8

    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int v0, v0, 0x8e

    new-array v7, v3, [Ljava/lang/Object;

    const/16 v20, 0x1

    move/from16 v19, v0

    move-object/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v0, v7, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 98
    new-array v6, v9, [Ljava/lang/String;

    aput-object v5, v6, v4

    aput-object v7, v6, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v6}, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v15, :cond_1

    .line 117
    sget v6, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v6, v6, 0x61

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    rem-int/2addr v6, v2

    .line 102
    :try_start_1
    invoke-virtual {v0, v15, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v5, v15, :cond_2

    sget v6, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v6, v6, 0x59

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    rem-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x31

    .line 108
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_2
    :goto_1
    const-string/jumbo v2, "\ud375\u0185\u54c6\u9237\ud31e\ub6cf\u3afe"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v5, v5, v13

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 114
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    neg-int v2, v2

    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "\ucb07\udc3a\uf4e9\ua0d5\ucb27\u6b72\u9ad2\u852c\u17ed\u4fe3\ubfb8\ua2f9\u7206\uacbd\ud359\u7fb1\u5d5a\u9135\uf01e\u1b70\ub9d7\uf642\u15c2\u38c6\u84ce\uda93\u4a82\ud598\ue706\u3fc3\u6e48\uf100\uc248\u1c0c\u830d\u8e44\u2e8c\u4150\ua0ae\uab98\u09ec\ua598\uc467\u4894"

    invoke-static {v6, v2, v5}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    neg-int v5, v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "\u2568\u9cf5\ub2e4\ud117\u250e\u2bbb\udcd3\uf4f6\uf9b1\u0f7a\uf9de\ud339\u9c75\uec3c\u9557\u0e60\ub33d\ud1e2\ub61f\u6ab8\u57ff\ub6ca\u53c1\u490f\u6aa2\u9a0e\u0c85\ua44b\u0979\u7f42\u2855\u808b\u2c38\u5cce\uc546\uffc3\uc0f0\u0199\ue6bf\uda0a\ue780\ue557\u8271\u3950\uba0a\uca52"

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v6, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 117
    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    add-int/2addr v0, v3

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "\uc043w\uf497\ua70d\uc028\ub73d\u9aaf\u82b9\u1cc6\u93a5\ubfb4"

    invoke-static {v3, v0, v2}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v2, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMonetizationNetwork()Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    const-string/jumbo v2, "\u7f79\u5199\u47cd\u8001\u7f1f\ue6d7\u29fa\ua5e0\ua3a0\uc216\u0cf7\u822f\uc664\u2150\u607e\u5f76\ue92c\u1c8e\u4336\u3bae\u0dee\u7ba6\ua6e8\u1819\u30b3\u5762\uf9b1\uf559\u537d\ub27b\udd6e\ud1d4\u762a\u91a3\u303b\uaed8\u9ab9\uccf3\u138b\u8b0f\ubd80\u2822\u7743\u6841\ue04e\u0770\u4a41\u44c4"

    const-string v3, ""

    const/4 v4, 0x2

    .line 160
    rem-int v0, v4, v4

    const/16 v5, 0x30

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 125
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string v11, "\n\ufff7\u0003\u0006\ufff7\ufffc\ufff5\n\uffff\u0003\ufffb\t"

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v12

    shr-int/2addr v12, v8

    add-int/lit8 v12, v12, 0x4

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0xc

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v14

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0xac

    new-array v15, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v11, v17, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v11, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    const-string/jumbo v12, "\uffde\ufffb\u000e\uffff\u0000\u0003\u000c\r\u000e\uffe6\ufffb\u000f\u0008\ufffd\u0002"

    invoke-static {v3, v3, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/lit8 v13, v13, 0x4

    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v14

    cmp-long v14, v14, v6

    add-int/2addr v14, v8

    invoke-static {v10, v10}, Landroid/view/View;->getDefaultSize(II)I

    move-result v15

    add-int/lit16 v15, v15, 0xa8

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    const-string/jumbo v11, "\u4c15\u8897\ua287\uf38b\u4c23\u3f96\ucce8\ud631\u9087\u1b4f"

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v9

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v11, v13, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 128
    const-string/jumbo v12, "\uffe8\uffe5\uffe9\u001e-"

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    shr-int/2addr v13, v8

    rsub-int/lit8 v13, v13, 0x1

    invoke-static {v10, v10}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-static {v5}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v15

    rsub-int v15, v15, 0xb7

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v16, 0x1

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v5, v5, v10

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFj1bSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-static {v3, v3, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v12, v4, 0x17

    invoke-static {v3, v10}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v13, v4, 0x26

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int v14, v4, 0xa0

    new-array v4, v9, [Ljava/lang/Object;

    const-string v11, "\u0013\u0006\u000f\u0006\u0008\uffc1\u0005\u0006\r\n\u0002\u0007\uffc1\u0006\u0016\r\u0002\ufff7\uffd3\ufff7\u0015\u0006\u0008\u0006\u0016\r\u0002\u0017\uffc1\u0007\u0006\u000c\uffc1\u0008\u000f\n\u0015\u0002"

    const/4 v15, 0x1

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v2, v5, v11}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v11, v10

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int/lit8 v12, v4, 0x9

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v13, v4, 0x11

    invoke-static {v10, v10}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int v14, v4, 0x8a

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v11, "\uffe8\u001c\ufff1\uffe9\u001e\uffea\uffe8\uffe9\ufff0\u001a\u0019\u001a\u001d\u0019\u001d\uffe8\uffed\uffec"

    const/4 v15, 0x0

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v4, v4, v10

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    .line 139
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "\u0016\u0010\u000b\uffd5\u0010\u0015\u001b\u000c\u0015\u001b\uffd5\u0008\n\u001b\u0010\u0016\u0015\uffd5\uffe9\uffe8\ufffb\ufffb\uffec\ufff9\u0000\u0006\uffea\uffef\uffe8\ufff5\uffee\uffec\uffeb\u0008\u0015\u000b\u0019"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v13

    cmp-long v13, v13, v6

    rsub-int/lit8 v13, v13, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v14

    cmp-long v14, v14, v6

    add-int/lit8 v14, v14, 0x24

    invoke-static {v10, v10}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    add-int/lit16 v15, v15, 0x9b

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v12 .. v17}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v6, v6, v10

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v6, -0xa8c

    if-eqz v0, :cond_0

    .line 160
    sget v7, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    add-int/lit8 v7, v7, 0x2f

    rem-int/lit16 v11, v7, 0x80

    sput v11, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    const/4 v11, 0x2

    rem-int/2addr v7, v11

    .line 142
    :try_start_2
    const-string/jumbo v7, "\u28b6\u9b9c\ue044\u1692\u28c2\u2cd6\u8e77\u336f\uf46f\u0805\uab3f\u14af\u91bb\ueb49\uc7f7"

    const/16 v11, 0x30

    invoke-static {v3, v11, v10, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    neg-int v11, v12

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v7, v12, v10

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 144
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 145
    const-string/jumbo v7, "\uf68e\u3e65\u2e7d\u7b7b\uf6f6\u8972\u4015"

    invoke-static {v10, v10}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v7, v12, v10

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1

    .line 160
    sget v0, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    const/4 v7, 0x2

    rem-int/2addr v0, v7

    move v0, v9

    goto :goto_1

    :cond_1
    move v0, v10

    .line 146
    :goto_1
    :try_start_3
    iget-object v7, v1, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:Landroid/content/Context;

    const-string v11, "\u0004\u0000\u0003\u0004\ufff6\uffff"

    const/4 v15, 0x0

    invoke-static {v15, v15}, Landroid/graphics/PointF;->length(FF)F

    move-result v12

    cmpl-float v12, v12, v15

    add-int/lit8 v12, v12, 0x3

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v13

    shr-int/2addr v13, v8

    rsub-int/lit8 v13, v13, 0x6

    invoke-static {v3, v3, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v14

    rsub-int v14, v14, 0xb1

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    move/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v5, v5, v10

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    const/4 v7, -0x1

    .line 147
    invoke-virtual {v5, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u0113\u7509\uc355\ufa90\u0171"

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v12

    cmpl-float v12, v12, v18

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v11, v13, v10

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, "\uffd7)"

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v12

    add-int/lit8 v12, v12, -0x2e

    invoke-static {v3, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    const/4 v7, 0x2

    add-int/lit8 v13, v3, 0x2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/lit16 v14, v3, 0x91

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v3, v3, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\u8555\uceb7\u534d\udf3c\u8573\u79eb"

    invoke-static {v10}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    rsub-int/lit8 v6, v6, 0x1

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v7, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\udfe2\u0b94\u50ac\ubb4d\udfc4\ubccb"

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/2addr v5, v8

    rsub-int/lit8 v5, v5, 0x1

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v6, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 152
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1167
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1iSDK$AFa1zSDK;->getMonetizationNetwork(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1iSDK$AFa1zSDK;->AFAdRevenueData([B)[B

    move-result-object v0

    .line 2194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2195
    array-length v6, v0

    move v7, v10

    :goto_2
    if-ge v7, v6, :cond_3

    aget-byte v11, v0, v7

    .line 2196
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 2197
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v12, v9, :cond_2

    .line 160
    sget v12, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v12, v12, 0x9

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    const/4 v13, 0x2

    rem-int/2addr v12, v13

    .line 2198
    :try_start_4
    const-string v12, "0"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2200
    :cond_2
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2202
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const-wide/16 v5, 0x0

    .line 156
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    add-int/lit8 v12, v3, 0xa

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/2addr v3, v8

    rsub-int/lit8 v13, v3, 0x10

    invoke-static {v10, v10}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    add-int/lit16 v14, v3, 0xa2

    new-array v3, v9, [Ljava/lang/Object;

    const-string v11, "\u0005\u0015\u000c\u0001\ufff6\uffd2\ufff6\u0014\u0005\u0007\u0012\u000f\u0012\u0012\u0005\uffc0"

    const/4 v15, 0x1

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v3, v3, v10

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/2addr v5, v8

    add-int/2addr v5, v9

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v6, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    rsub-int/lit8 v4, v2, 0x9

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    rsub-int/lit8 v5, v2, 0x40

    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    add-int/lit16 v6, v2, 0x97

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "\u001b\uffdc\u001b\uffdd\uffdd\u000e\u0013\u001f\u000c\u0018\u0011\uffdb\u001c\uffdb\u001c\uffdc"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFc1iSDK;->a(Ljava/lang/String;IIIZ[Ljava/lang/Object;)V

    aget-object v2, v2, v10

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_3
    sget v2, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    const/4 v2, 0x0

    throw v2
.end method
