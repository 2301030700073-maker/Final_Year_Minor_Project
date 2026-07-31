.class public final Lcom/facebook/react/uimanager/style/LinearGradient;
.super Ljava/lang/Object;
.source "LinearGradient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/style/LinearGradient$Direction;,
        Lcom/facebook/react/uimanager/style/LinearGradient$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinearGradient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearGradient.kt\ncom/facebook/react/uimanager/style/LinearGradient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n1872#2,3:365\n1#3:368\n*S KotlinDebug\n*F\n+ 1 LinearGradient.kt\ncom/facebook/react/uimanager/style/LinearGradient\n*L\n111#1:365,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0016H\u0002J,\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J3\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f2\u0006\u0010 \u001a\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010!J!\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002\u00a2\u0006\u0002\u0010%J!\u0010&\u001a\u0004\u0018\u00010\u00132\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010 \u001a\u00020\u0013H\u0002\u00a2\u0006\u0002\u0010)R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/style/LinearGradient;",
        "",
        "directionMap",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "colorStopsArray",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Landroid/content/Context;)V",
        "direction",
        "Lcom/facebook/react/uimanager/style/LinearGradient$Direction;",
        "colorStops",
        "Ljava/util/ArrayList;",
        "Lcom/facebook/react/uimanager/style/ColorStop;",
        "Lkotlin/collections/ArrayList;",
        "getShader",
        "Landroid/graphics/Shader;",
        "width",
        "",
        "height",
        "getAngleForKeyword",
        "",
        "keyword",
        "Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;",
        "endPointsFromAngle",
        "Lkotlin/Pair;",
        "",
        "angle",
        "getFixedColorStops",
        "",
        "Lcom/facebook/react/uimanager/style/ProcessedColorStop;",
        "gradientLineLength",
        "(Ljava/util/ArrayList;F)[Lcom/facebook/react/uimanager/style/ProcessedColorStop;",
        "processColorTransitionHints",
        "",
        "originalStops",
        "([Lcom/facebook/react/uimanager/style/ProcessedColorStop;)Ljava/util/List;",
        "resolveColorStopPosition",
        "position",
        "Lcom/facebook/react/uimanager/LengthPercentage;",
        "(Lcom/facebook/react/uimanager/LengthPercentage;F)Ljava/lang/Float;",
        "Direction",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final colorStops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/style/ColorStop;",
            ">;"
        }
    .end annotation
.end field

.field private final colorStopsArray:Lcom/facebook/react/bridge/ReadableArray;

.field private final context:Landroid/content/Context;

.field private final direction:Lcom/facebook/react/uimanager/style/LinearGradient$Direction;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Landroid/content/Context;)V
    .locals 4

    const-string v0, "directionMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorStopsArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStopsArray:Lcom/facebook/react/bridge/ReadableArray;

    .line 34
    iput-object p3, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->context:Landroid/content/Context;

    .line 50
    const-string/jumbo p2, "type"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 51
    const-string p3, "angle"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const-string/jumbo v0, "value"

    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 53
    new-instance p3, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Angle;

    invoke-direct {p3, p1, p2}, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Angle;-><init>(D)V

    check-cast p3, Lcom/facebook/react/uimanager/style/LinearGradient$Direction;

    goto :goto_1

    .line 56
    :cond_0
    const-string p3, "keyword"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 58
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string/jumbo p3, "to top right"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 59
    sget-object p1, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;->TO_TOP_RIGHT:Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;

    goto :goto_0

    .line 58
    :sswitch_1
    const-string/jumbo p3, "to top left"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 61
    sget-object p1, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;->TO_TOP_LEFT:Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;

    goto :goto_0

    .line 58
    :sswitch_2
    const-string/jumbo p3, "to bottom right"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 60
    sget-object p1, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;->TO_BOTTOM_RIGHT:Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;

    goto :goto_0

    .line 58
    :sswitch_3
    const-string/jumbo p3, "to bottom left"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 62
    sget-object p1, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;->TO_BOTTOM_LEFT:Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;

    .line 67
    :goto_0
    new-instance p2, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keyword;

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keyword;-><init>(Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;)V

    move-object p3, p2

    check-cast p3, Lcom/facebook/react/uimanager/style/LinearGradient$Direction;

    .line 50
    :goto_1
    iput-object p3, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->direction:Lcom/facebook/react/uimanager/style/LinearGradient$Direction;

    .line 73
    move-object p1, p0

    check-cast p1, Lcom/facebook/react/uimanager/style/LinearGradient;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStopsArray:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    iget-object p2, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStopsArray:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_5

    .line 76
    iget-object v0, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStopsArray:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, p3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_5

    .line 79
    :cond_1
    const-string v1, "color"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 82
    :cond_2
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v2, v3, :cond_3

    .line 83
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    .line 85
    :cond_3
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 88
    :goto_4
    sget-object v2, Lcom/facebook/react/uimanager/LengthPercentage;->Companion:Lcom/facebook/react/uimanager/LengthPercentage$Companion;

    const-string v3, "position"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDynamic(Ljava/lang/String;)Lcom/facebook/react/bridge/Dynamic;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/react/uimanager/LengthPercentage$Companion;->setFromDynamic(Lcom/facebook/react/bridge/Dynamic;)Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v0

    .line 90
    new-instance v2, Lcom/facebook/react/uimanager/style/ColorStop;

    invoke-direct {v2, v1, v0}, Lcom/facebook/react/uimanager/style/ColorStop;-><init>(Ljava/lang/Integer;Lcom/facebook/react/uimanager/LengthPercentage;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 73
    :cond_5
    iput-object p1, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStops:Ljava/util/ArrayList;

    return-void

    .line 64
    :cond_6
    :goto_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid linear gradient direction keyword: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 70
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid direction type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6e438d49 -> :sswitch_3
        -0x59d7ba94 -> :sswitch_2
        -0x5108b809 -> :sswitch_1
        0x3048182c -> :sswitch_0
    .end sparse-switch
.end method

.method private final endPointsFromAngle(DFF)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DFF)",
            "Lkotlin/Pair<",
            "[F[F>;"
        }
    .end annotation

    const/16 v0, 0x168

    int-to-double v0, v0

    rem-double/2addr p1, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    add-double/2addr p1, v0

    :cond_0
    cmpg-double v0, p1, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    .line 160
    new-instance p1, Lkotlin/Pair;

    new-array p2, v4, [F

    aput v3, p2, v2

    aput p3, p2, v1

    new-array p3, v4, [F

    fill-array-data p3, :array_0

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-wide v5, 0x4056800000000000L    # 90.0

    cmpg-double v0, p1, v5

    if-nez v0, :cond_2

    .line 161
    new-instance p1, Lkotlin/Pair;

    new-array p2, v4, [F

    fill-array-data p2, :array_1

    new-array p3, v4, [F

    aput p4, p3, v2

    aput v3, p3, v1

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    const-wide v5, 0x4066800000000000L    # 180.0

    cmpg-double v5, p1, v5

    if-nez v5, :cond_3

    .line 162
    new-instance p1, Lkotlin/Pair;

    new-array p2, v4, [F

    fill-array-data p2, :array_2

    new-array p4, v4, [F

    aput v3, p4, v2

    aput p3, p4, v1

    invoke-direct {p1, p2, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    const-wide v6, 0x4070e00000000000L    # 270.0

    cmpg-double v6, p1, v6

    if-nez v6, :cond_4

    .line 163
    new-instance p1, Lkotlin/Pair;

    new-array p2, v4, [F

    aput p4, p2, v2

    aput v3, p2, v1

    new-array p3, v4, [F

    fill-array-data p3, :array_3

    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const/16 v3, 0x5a

    int-to-double v7, v3

    sub-double/2addr v7, p1

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, -0x1

    int-to-float p2, p2

    div-float/2addr p2, p1

    int-to-float v3, v4

    div-float/2addr p3, v3

    div-float/2addr p4, v3

    if-gez v0, :cond_5

    .line 174
    new-array v0, v4, [F

    aput p4, v0, v2

    aput p3, v0, v1

    goto :goto_0

    :cond_5
    if-gez v5, :cond_6

    .line 175
    new-array v0, v4, [F

    aput p4, v0, v2

    neg-float v3, p3

    aput v3, v0, v1

    goto :goto_0

    :cond_6
    if-gez v6, :cond_7

    .line 176
    new-array v0, v4, [F

    neg-float v3, p4

    aput v3, v0, v2

    neg-float v3, p3

    aput v3, v0, v1

    goto :goto_0

    .line 177
    :cond_7
    new-array v0, v4, [F

    neg-float v3, p4

    aput v3, v0, v2

    aput p3, v0, v1

    .line 180
    :goto_0
    aget v3, v0, v1

    aget v0, v0, v2

    mul-float/2addr v0, p2

    sub-float/2addr v3, v0

    sub-float/2addr p1, p2

    div-float p1, v3, p1

    mul-float/2addr p2, p1

    add-float/2addr p2, v3

    add-float v0, p4, p1

    sub-float v3, p3, p2

    .line 184
    new-array v5, v4, [F

    aput v0, v5, v2

    aput v3, v5, v1

    sub-float/2addr p4, p1

    add-float/2addr p3, p2

    .line 185
    new-array p1, v4, [F

    aput p4, p1, v2

    aput p3, p1, v1

    .line 187
    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final getAngleForKeyword(Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;DD)D
    .locals 2

    .line 135
    sget-object v0, Lcom/facebook/react/uimanager/style/LinearGradient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x5a

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    div-double/2addr p4, p2

    .line 142
    invoke-static {p4, p5}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const/16 p3, 0xb4

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    div-double/2addr p2, p4

    .line 141
    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const/16 p3, 0x10e

    :goto_0
    int-to-double p3, p3

    goto :goto_1

    :cond_2
    div-double/2addr p2, p4

    .line 140
    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    int-to-double p3, v1

    :goto_1
    add-double/2addr p1, p3

    goto :goto_2

    :cond_3
    div-double/2addr p2, p4

    .line 137
    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    int-to-double p3, v1

    sub-double p1, p3, p1

    :goto_2
    return-wide p1
.end method

.method private final getFixedColorStops(Ljava/util/ArrayList;F)[Lcom/facebook/react/uimanager/style/ProcessedColorStop;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/uimanager/style/ColorStop;",
            ">;F)[",
            "Lcom/facebook/react/uimanager/style/ProcessedColorStop;"
        }
    .end annotation

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    new-instance v5, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v4, v6, v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/style/ColorStop;

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/ColorStop;->getPosition()Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/facebook/react/uimanager/style/LinearGradient;->resolveColorStopPosition(Lcom/facebook/react/uimanager/LengthPercentage;F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v5

    .line 199
    :goto_1
    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v2

    move v8, v7

    :goto_2
    const/4 v9, 0x1

    if-ge v7, v6, :cond_6

    .line 200
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "get(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/facebook/react/uimanager/style/ColorStop;

    .line 201
    invoke-virtual {v10}, Lcom/facebook/react/uimanager/style/ColorStop;->getPosition()Lcom/facebook/react/uimanager/LengthPercentage;

    move-result-object v11

    invoke-direct {p0, v11, p2}, Lcom/facebook/react/uimanager/style/LinearGradient;->resolveColorStopPosition(Lcom/facebook/react/uimanager/LengthPercentage;F)Ljava/lang/Float;

    move-result-object v11

    if-nez v11, :cond_4

    if-nez v7, :cond_2

    .line 210
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_3

    .line 211
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    if-ne v7, v11, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v4

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 221
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 222
    new-instance v9, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v10}, Lcom/facebook/react/uimanager/style/ColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    aput-object v9, v1, v7

    .line 223
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_4

    :cond_5
    move v8, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_9

    move p2, v9

    :goto_5
    if-ge p2, v0, :cond_9

    .line 237
    aget-object v3, v1, p2

    invoke-virtual {v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_8

    sub-int v4, p2, v2

    add-int/lit8 v5, v4, -0x1

    if-lez v5, :cond_7

    .line 241
    aget-object v6, v1, v2

    invoke-virtual {v6}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 243
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v3, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    if-gt v9, v5, :cond_7

    move v4, v9

    :goto_6
    add-int v7, v2, v4

    .line 246
    new-instance v8, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    .line 247
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/react/uimanager/style/ColorStop;

    invoke-virtual {v10}, Lcom/facebook/react/uimanager/style/ColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    int-to-float v12, v4

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 246
    invoke-direct {v8, v10, v11}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    aput-object v8, v1, v7

    if-eq v4, v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move v2, p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    return-object v1
.end method

.method private final processColorTransitionHints([Lcom/facebook/react/uimanager/style/ProcessedColorStop;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/react/uimanager/style/ProcessedColorStop;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/style/ProcessedColorStop;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 262
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 265
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_e

    .line 267
    aget-object v7, v0, v5

    invoke-virtual {v7}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int v7, v5, v6

    if-ge v7, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v7, -0x1

    .line 276
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v9}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    .line 277
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v11}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v11

    .line 278
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v12}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v12

    if-eqz v9, :cond_3

    if-eqz v11, :cond_3

    if-nez v12, :cond_2

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float/2addr v13, v14

    .line 283
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v14, v15

    .line 284
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sub-float/2addr v11, v15

    .line 285
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v8}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v8

    .line 286
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v10}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v10

    .line 288
    invoke-static {v13, v14}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 289
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_3
    :goto_1
    move/from16 v20, v2

    goto/16 :goto_6

    :cond_4
    const/4 v15, 0x0

    .line 294
    invoke-static {v13, v15}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 295
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v7, v10}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->setColor(Ljava/lang/Integer;)V

    goto :goto_1

    .line 299
    :cond_5
    invoke-static {v14, v15}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 300
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v7, v8}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->setColor(Ljava/lang/Integer;)V

    goto :goto_1

    .line 304
    :cond_6
    new-instance v15, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    cmpl-float v3, v13, v14

    const/high16 v17, 0x41500000    # 13.0f

    const v18, 0x3f2aaaab

    const v19, 0x3eaaaaab

    if-lez v3, :cond_8

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x7

    if-ge v3, v4, :cond_7

    .line 309
    new-instance v4, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/high16 v21, 0x40e00000    # 7.0f

    int-to-float v0, v3

    add-float v0, v0, v21

    div-float v0, v0, v17

    mul-float/2addr v0, v13

    add-float v20, v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v4, v2, v0}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v20

    goto :goto_2

    :cond_7
    move/from16 v20, v2

    const/4 v2, 0x0

    .line 311
    new-instance v0, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v19, v19, v14

    add-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v14, v14, v18

    add-float/2addr v3, v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move/from16 v20, v2

    const/4 v2, 0x0

    .line 314
    new-instance v0, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v19, v19, v13

    add-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v0, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v18, v18, v13

    add-float v3, v3, v18

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_3
    const/4 v3, 0x7

    if-ge v0, v3, :cond_9

    .line 317
    new-instance v4, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v18

    int-to-float v3, v0

    div-float v3, v3, v17

    mul-float/2addr v3, v14

    add-float v18, v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;-><init>(Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    div-float/2addr v13, v11

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 323
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    double-to-float v0, v12

    float-to-double v12, v0

    div-double/2addr v2, v12

    .line 325
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v4, "iterator(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v12, "next(...)"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    .line 326
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v12

    if-nez v12, :cond_b

    goto :goto_5

    .line 329
    :cond_b
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    float-to-double v12, v12

    .line 330
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 332
    invoke-static {v12}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_5

    :cond_c
    if-eqz v8, :cond_a

    .line 337
    move-object v13, v8

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eqz v10, :cond_a

    .line 338
    move-object v14, v10

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-static {v13, v14, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->setColor(Ljava/lang/Integer;)V

    goto :goto_5

    .line 343
    :cond_d
    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 344
    check-cast v15, Ljava/util/Collection;

    invoke-interface {v1, v7, v15}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x8

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move/from16 v2, v20

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_e
    return-object v1
.end method

.method private final resolveColorStopPosition(Lcom/facebook/react/uimanager/LengthPercentage;F)Ljava/lang/Float;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/LengthPercentage;->getType()Lcom/facebook/react/uimanager/LengthPercentageType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/uimanager/style/LinearGradient$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/LengthPercentageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 360
    invoke-virtual {p1, p2}, Lcom/facebook/react/uimanager/LengthPercentage;->resolve(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 357
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/LengthPercentage;->resolve(F)F

    move-result p1

    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getShader(FF)Landroid/graphics/Shader;
    .locals 12

    .line 97
    iget-object v0, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->direction:Lcom/facebook/react/uimanager/style/LinearGradient$Direction;

    .line 98
    instance-of v1, v0, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Angle;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Angle;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Angle;->getValue()D

    move-result-wide v0

    goto :goto_0

    .line 99
    :cond_0
    instance-of v1, v0, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keyword;

    if-eqz v1, :cond_4

    .line 100
    check-cast v0, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keyword;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keyword;->getValue()Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;

    move-result-object v2

    float-to-double v3, p1

    float-to-double v5, p2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/style/LinearGradient;->getAngleForKeyword(Lcom/facebook/react/uimanager/style/LinearGradient$Direction$Keywords;DD)D

    move-result-wide v0

    .line 102
    :goto_0
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/facebook/react/uimanager/style/LinearGradient;->endPointsFromAngle(DFF)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x0

    .line 103
    aget v1, p1, v0

    aget v2, p2, v0

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    .line 104
    aget v3, p1, v2

    aget v4, p2, v2

    sub-float/2addr v3, v4

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 106
    iget-object v3, p0, Lcom/facebook/react/uimanager/style/LinearGradient;->colorStops:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/facebook/react/uimanager/style/LinearGradient;->getFixedColorStops(Ljava/util/ArrayList;F)[Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    move-result-object v1

    .line 107
    invoke-direct {p0, v1}, Lcom/facebook/react/uimanager/style/LinearGradient;->processColorTransitionHints([Lcom/facebook/react/uimanager/style/ProcessedColorStop;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v9, v3, [I

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v10, v3, [F

    .line 111
    check-cast v1, Ljava/lang/Iterable;

    .line 366
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Lcom/facebook/react/uimanager/style/ProcessedColorStop;

    .line 112
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 113
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 114
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v9, v3

    .line 115
    invoke-virtual {v4}, Lcom/facebook/react/uimanager/style/ProcessedColorStop;->getPosition()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v10, v3

    :cond_2
    move v3, v5

    goto :goto_1

    .line 118
    :cond_3
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 119
    aget v5, p2, v0

    .line 120
    aget v6, p2, v2

    .line 121
    aget v7, p1, v0

    .line 122
    aget v8, p1, v2

    .line 125
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    .line 118
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    return-object v1

    .line 97
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
