.class public Lcom/facebook/react/views/text/TextLayoutManager;
.super Ljava/lang/Object;
.source "TextLayoutManager.java"


# static fields
.field public static final AS_KEY_BASE_ATTRIBUTES:S = 0x4s

.field public static final AS_KEY_CACHE_ID:S = 0x3s

.field public static final AS_KEY_FRAGMENTS:S = 0x2s

.field public static final AS_KEY_HASH:S = 0x0s

.field public static final AS_KEY_STRING:S = 0x1s

.field private static final DEFAULT_ADJUST_FONT_SIZE_TO_FIT:Z = false

.field private static final DEFAULT_INCLUDE_FONT_PADDING:Z = true

.field private static final ENABLE_MEASURE_LOGGING:Z

.field public static final FR_KEY_HEIGHT:S = 0x4s

.field public static final FR_KEY_IS_ATTACHMENT:S = 0x2s

.field public static final FR_KEY_REACT_TAG:S = 0x1s

.field public static final FR_KEY_STRING:S = 0x0s

.field public static final FR_KEY_TEXT_ATTRIBUTES:S = 0x5s

.field public static final FR_KEY_WIDTH:S = 0x3s

.field private static final INLINE_VIEW_PLACEHOLDER:Ljava/lang/String; = "0"

.field public static final PA_KEY_ADJUST_FONT_SIZE_TO_FIT:S = 0x3s

.field public static final PA_KEY_ELLIPSIZE_MODE:S = 0x1s

.field public static final PA_KEY_HYPHENATION_FREQUENCY:S = 0x5s

.field public static final PA_KEY_INCLUDE_FONT_PADDING:S = 0x4s

.field public static final PA_KEY_MAXIMUM_FONT_SIZE:S = 0x7s

.field public static final PA_KEY_MAX_NUMBER_OF_LINES:S = 0x0s

.field public static final PA_KEY_MINIMUM_FONT_SIZE:S = 0x6s

.field public static final PA_KEY_TEXT_BREAK_STRATEGY:S = 0x2s

.field private static final TAG:Ljava/lang/String;

.field private static final sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextPaintInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    sget-boolean v0, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    .line 90
    const-string v0, "TextLayoutManager"

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/facebook/react/views/text/TextLayoutManager$1;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextLayoutManager$1;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Ljava/lang/ThreadLocal;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustSpannableFontToFit(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;DIZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)V
    .locals 17

    move-object/from16 v10, p0

    move/from16 v11, p7

    move-object/from16 v12, p13

    .line 593
    invoke-static {v10, v12}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p12

    move-object/from16 v9, p13

    .line 595
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    .line 610
    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v1

    float-to-double v1, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p5

    :goto_0
    double-to-int v14, v1

    .line 614
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    const/4 v15, 0x0

    invoke-interface {v10, v15, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 615
    array-length v2, v1

    move v9, v14

    move v3, v15

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 616
    invoke-virtual {v4}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;->getSize()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_2
    if-le v1, v14, :cond_8

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v11, v2, :cond_3

    if-eqz v11, :cond_3

    .line 623
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-gt v2, v11, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v8, p4

    goto :goto_4

    :cond_3
    :goto_3
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    move-object/from16 v8, p4

    if-eq v8, v2, :cond_4

    .line 624
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p3

    if-gtz v2, :cond_5

    .line 625
    :cond_4
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-ne v2, v3, :cond_8

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_8

    :cond_5
    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 628
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v7, v1, v0

    int-to-float v0, v7

    int-to-float v1, v9

    div-float/2addr v0, v1

    .line 631
    invoke-virtual/range {p13 .. p13}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    mul-float/2addr v1, v0

    int-to-float v2, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 634
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v3, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    invoke-interface {v10, v15, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 635
    array-length v3, v1

    move v4, v15

    :goto_5
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 636
    new-instance v6, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    .line 637
    invoke-virtual {v5}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;->getSize()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v0

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v6, v15}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;-><init>(I)V

    .line 638
    invoke-interface {v10, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    move/from16 p6, v0

    .line 639
    invoke-interface {v10, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    move-object/from16 v16, v1

    .line 640
    invoke-interface {v10, v5}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 636
    invoke-interface {v10, v6, v15, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 641
    invoke-interface {v10, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p6

    move-object/from16 v1, v16

    const/4 v15, 0x0

    goto :goto_5

    :cond_6
    if-eqz v13, :cond_7

    .line 644
    invoke-static {v10, v12}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    move-object v13, v0

    :cond_7
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move v15, v7

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v16, v9

    move-object/from16 v9, p13

    .line 647
    invoke-static/range {v0 .. v9}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    move v1, v15

    move/from16 v9, v16

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method private static buildSpannableFromFragments(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/common/mapbuffer/MapBuffer;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/react/views/text/internal/span/SetSpanOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 235
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_10

    move-object/from16 v4, p1

    .line 236
    invoke-interface {v4, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v5

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/4 v7, 0x5

    .line 240
    invoke-interface {v5, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;

    move-result-object v7

    .line 243
    invoke-interface {v5, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    invoke-static {v8, v9}, Lcom/facebook/react/views/text/TextTransform;->apply(Ljava/lang/String;Lcom/facebook/react/views/text/TextTransform;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p2

    .line 242
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/4 v10, 0x1

    .line 247
    invoke-interface {v5, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_0

    invoke-interface {v5, v10}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v10

    goto :goto_1

    :cond_0
    move v10, v12

    :goto_1
    const/4 v11, 0x2

    .line 248
    invoke-interface {v5, v11}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5, v11}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v6, 0x3

    .line 249
    invoke-interface {v5, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v6

    const/4 v7, 0x4

    .line 250
    invoke-interface {v5, v7}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(D)F

    move-result v5

    .line 251
    new-instance v7, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const-string v11, "0"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v8, v11

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    new-instance v12, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    float-to-int v6, v6

    float-to-int v5, v5

    invoke-direct {v12, v10, v6, v5}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;-><init>(III)V

    invoke-direct {v7, v8, v11, v12}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 251
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    if-lt v8, v6, :cond_f

    .line 258
    iget-object v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    if-eqz v5, :cond_2

    .line 259
    iget-object v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    sget-object v11, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    if-ne v5, v11, :cond_3

    goto :goto_2

    .line 260
    :cond_2
    iget-object v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    sget-object v11, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->LINK:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    if-ne v5, v11, :cond_3

    .line 262
    :goto_2
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;

    invoke-direct {v11, v10}, Lcom/facebook/react/views/text/internal/span/ReactClickableSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_3
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v5, :cond_4

    .line 265
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/ReactForegroundColorSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    invoke-direct {v11, v13}, Lcom/facebook/react/views/text/internal/span/ReactForegroundColorSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_4
    iget-boolean v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v5, :cond_5

    .line 270
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/ReactBackgroundColorSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    invoke-direct {v11, v13}, Lcom/facebook/react/views/text/internal/span/ReactBackgroundColorSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_5
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getOpacity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_6

    .line 275
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/ReactOpacitySpan;

    .line 276
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getOpacity()F

    move-result v13

    invoke-direct {v11, v13}, Lcom/facebook/react/views/text/internal/span/ReactOpacitySpan;-><init>(F)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 275
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_6
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_7

    .line 279
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/CustomLetterSpacingSpan;

    .line 281
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v13

    invoke-direct {v11, v13}, Lcom/facebook/react/views/text/internal/span/CustomLetterSpacingSpan;-><init>(F)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 279
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_7
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v11, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-direct {v11, v13}, Lcom/facebook/react/views/text/internal/span/ReactAbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v5, v6, v8, v11}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    if-ne v5, v12, :cond_8

    iget v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    if-ne v5, v12, :cond_8

    iget-object v5, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 288
    :cond_8
    new-instance v5, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v15, Lcom/facebook/react/views/text/internal/span/CustomStyleSpan;

    iget v12, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    iget-object v14, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v11, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    move-object/from16 v17, v11

    move-object v11, v15

    move-object v2, v15

    move-object/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/facebook/react/views/text/internal/span/CustomStyleSpan;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-direct {v5, v6, v8, v2}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 288
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_9
    iget-boolean v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    if-eqz v2, :cond_a

    .line 300
    new-instance v2, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v5, Lcom/facebook/react/views/text/internal/span/ReactUnderlineSpan;

    invoke-direct {v5}, Lcom/facebook/react/views/text/internal/span/ReactUnderlineSpan;-><init>()V

    invoke-direct {v2, v6, v8, v5}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_a
    iget-boolean v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz v2, :cond_b

    .line 303
    new-instance v2, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v5, Lcom/facebook/react/views/text/internal/span/ReactStrikethroughSpan;

    invoke-direct {v5}, Lcom/facebook/react/views/text/internal/span/ReactStrikethroughSpan;-><init>()V

    invoke-direct {v2, v6, v8, v5}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_b
    iget v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_c

    iget v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_c

    iget v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_d

    :cond_c
    iget v2, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 308
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 309
    new-instance v2, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v5, Lcom/facebook/react/views/text/internal/span/ShadowStyleSpan;

    iget v11, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    iget v12, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    iget v13, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    iget v14, v7, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/facebook/react/views/text/internal/span/ShadowStyleSpan;-><init>(FFFI)V

    invoke-direct {v2, v6, v8, v5}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_d
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    .line 320
    new-instance v2, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v5, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;

    .line 322
    invoke-virtual {v7}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveLineHeight()F

    move-result v7

    invoke-direct {v5, v7}, Lcom/facebook/react/views/text/internal/span/CustomLineHeightSpan;-><init>(F)V

    invoke-direct {v2, v6, v8, v5}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_e
    new-instance v2, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    new-instance v5, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;

    invoke-direct {v5, v10}, Lcom/facebook/react/views/text/internal/span/ReactTagSpan;-><init>(I)V

    invoke-direct {v2, v6, v8, v5}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;-><init>(IILcom/facebook/react/views/text/internal/span/ReactSpan;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private static createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 507
    invoke-static {v0, v1, v3}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object v14

    const/4 v3, 0x3

    .line 510
    invoke-interface {v1, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 511
    const-class v0, Lcom/facebook/react/views/text/internal/span/ReactTextPaintHolderSpan;

    invoke-interface {v14, v6, v6, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/react/views/text/internal/span/ReactTextPaintHolderSpan;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/facebook/react/views/text/internal/span/ReactTextPaintHolderSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 514
    :cond_0
    invoke-interface {v1, v5}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/views/text/TextAttributeProps;->fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;

    move-result-object v4

    .line 515
    sget-object v7, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/TextPaint;

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/TextPaint;

    .line 516
    invoke-static {v7, v4, v0}, Lcom/facebook/react/views/text/TextLayoutManager;->updateTextPaint(Landroid/text/TextPaint;Lcom/facebook/react/views/text/TextAttributeProps;Landroid/content/Context;)V

    move-object v15, v7

    .line 519
    :goto_0
    invoke-static {v14, v15}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v16

    const/4 v0, 0x2

    .line 523
    invoke-interface {v2, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v17

    .line 525
    invoke-interface {v2, v5}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-interface {v2, v5}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move/from16 v18, v0

    const/4 v0, 0x5

    .line 530
    invoke-interface {v2, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Lcom/facebook/react/views/text/TextAttributeProps;->getHyphenationFrequency(Ljava/lang/String;)I

    move-result v19

    .line 532
    invoke-interface {v2, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v2, v3}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getBoolean(I)Z

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v6

    .line 536
    :goto_2
    invoke-interface {v2, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    invoke-interface {v2, v6}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, -0x1

    :goto_3
    move v7, v3

    .line 540
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignmentAttr(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 541
    invoke-static {v1, v14, v3}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v20

    .line 542
    invoke-static {v3}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextJustificationMode(Ljava/lang/String;)I

    move-result v21

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 546
    invoke-interface {v2, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 547
    invoke-interface {v2, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getDouble(I)D

    move-result-wide v0

    goto :goto_4

    :cond_4
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_4
    move-wide v5, v0

    .line 550
    sget-object v2, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    move-object v0, v14

    move/from16 v1, p3

    move/from16 v3, p4

    move/from16 v8, v18

    move/from16 v9, v17

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v21

    move-object v13, v15

    invoke-static/range {v0 .. v13}, Lcom/facebook/react/views/text/TextLayoutManager;->adjustSpannableFontToFit(Landroid/text/Spannable;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;DIZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)V

    .line 566
    :cond_5
    sget-object v3, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, p3

    move/from16 v4, v18

    move/from16 v5, v17

    move/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object v9, v15

    invoke-static/range {v0 .. v9}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method private static createLayout(Landroid/text/Spannable;Landroid/text/BoringLayout$Metrics;FLcom/facebook/yoga/YogaMeasureMode;ZIILandroid/text/Layout$Alignment;ILandroid/text/TextPaint;)Landroid/text/Layout;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v7, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v8, p9

    .line 391
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v9

    .line 392
    sget-object v10, Lcom/facebook/yoga/YogaMeasureMode;->UNDEFINED:Lcom/facebook/yoga/YogaMeasureMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    if-eq v2, v10, :cond_1

    cmpg-float v10, v1, v11

    if-gez v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    if-nez v6, :cond_2

    .line 393
    invoke-static {v0, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v14

    goto :goto_2

    :cond_2
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 394
    :goto_2
    sget-object v15, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-interface {v15, v0, v13, v9}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v15

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v6, :cond_7

    if-nez v10, :cond_3

    .line 398
    invoke-static {v14}, Lcom/facebook/yoga/YogaConstants;->isUndefined(F)Z

    move-result v16

    if-nez v16, :cond_7

    cmpg-float v16, v14, v1

    if-gtz v16, :cond_7

    .line 402
    :cond_3
    sget-object v6, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v6, :cond_4

    move v14, v1

    :cond_4
    float-to-double v1, v14

    .line 406
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 408
    invoke-static {v0, v13, v9, v8, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v11, v12}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v15, :cond_5

    .line 415
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_3

    :cond_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 414
    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_6

    const/4 v1, 0x1

    .line 418
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 421
    :cond_6
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    goto/16 :goto_6

    :cond_7
    if-eqz v6, :cond_b

    if-nez v10, :cond_8

    .line 423
    iget v10, v6, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v10, v10

    cmpg-float v10, v10, v1

    if-gtz v10, :cond_b

    .line 424
    :cond_8
    iget v3, v6, Landroid/text/BoringLayout$Metrics;->width:I

    .line 425
    sget-object v4, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v2, v4, :cond_9

    float-to-double v1, v1

    .line 426
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v3, v1

    .line 428
    :cond_9
    iget v1, v6, Landroid/text/BoringLayout$Metrics;->width:I

    if-gez v1, :cond_a

    .line 429
    sget-object v1, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v2, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Text width is invalid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v13

    goto :goto_4

    :cond_a
    move v2, v3

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v3, p7

    move v5, v9

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 436
    invoke-static/range {v0 .. v7}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v0

    goto :goto_6

    :cond_b
    float-to-double v1, v1

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v13, v9, v8, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0, v11, v12}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v15, :cond_c

    .line 448
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_5

    :cond_c
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 447
    :goto_5
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 450
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_d

    move/from16 v1, p8

    .line 451
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    .line 454
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    .line 458
    :cond_e
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method private static createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 3

    .line 353
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 360
    invoke-interface {p1, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p1

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/react/views/text/TextLayoutManager;->buildSpannableFromFragments(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    const/4 p0, 0x0

    .line 364
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    .line 365
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;

    .line 369
    invoke-virtual {p1, v0, p0}, Lcom/facebook/react/views/text/internal/span/SetSpanOperation;->execute(Landroid/text/SpannableStringBuilder;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 373
    invoke-interface {p2, v0}, Lcom/facebook/react/views/text/ReactTextViewManagerCallback;->onPostProcessSpannable(Landroid/text/Spannable;)V

    :cond_1
    return-object v0
.end method

.method public static deleteCachedSpannableForTag(I)V
    .locals 3

    .line 119
    sget-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete cached spannable for tag["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;
    .locals 2

    const/4 v0, 0x3

    .line 336
    invoke-interface {p1, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface {p1, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 338
    sget-object p1, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    goto :goto_0

    .line 341
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/text/TextLayoutManager;->createSpannableFromAttributedString(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Spannable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 3

    .line 188
    invoke-static {p0}, Lcom/facebook/react/views/text/TextLayoutManager;->isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z

    move-result p0

    .line 189
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 190
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 194
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    if-nez p2, :cond_2

    return-object p0

    .line 200
    :cond_2
    const-string p1, "center"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 202
    :cond_3
    const-string/jumbo p1, "right"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    .line 204
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :cond_5
    :goto_1
    return-object p0
.end method

.method private static getTextAlignmentAttr(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 153
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 157
    :cond_0
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 159
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/4 v0, 0x5

    .line 160
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/16 v0, 0xc

    .line 162
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static getTextGravity(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;I)I
    .locals 3

    .line 213
    invoke-static {p0}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignmentAttr(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0, p1, v0}, Lcom/facebook/react/views/text/TextLayoutManager;->getTextAlignment(Lcom/facebook/react/common/mapbuffer/MapBuffer;Landroid/text/Spannable;Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object p0

    .line 218
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    .line 219
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    .line 221
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-ne p0, v0, :cond_2

    if-eqz p1, :cond_1

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    goto :goto_1

    .line 223
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 225
    :cond_3
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p0, p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    :goto_1
    return p2
.end method

.method private static getTextJustificationMode(Ljava/lang/String;)I
    .locals 2

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 175
    const-string v0, "justified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isRTL(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Z
    .locals 3

    const/4 v0, 0x2

    .line 128
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 132
    :cond_0
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    .line 133
    invoke-interface {p0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 137
    :cond_1
    invoke-interface {p0, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/4 v0, 0x5

    .line 138
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getMapBuffer(I)Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object p0

    const/16 v0, 0x17

    .line 140
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 145
    :cond_2
    invoke-interface {p0, v0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-static {p0}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    move v2, v0

    :cond_3
    return v2
.end method

.method public static measureLines(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FF)Lcom/facebook/react/bridge/WritableArray;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 848
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;

    move-result-object p1

    .line 850
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget-object p3, Lcom/facebook/react/views/text/TextLayoutManager;->sTextPaintInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/TextPaint;

    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/TextPaint;

    .line 849
    invoke-static {p2, p1, p3, p0}, Lcom/facebook/react/views/text/FontMetricsUtil;->getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0
.end method

.method public static measureText(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;Lcom/facebook/react/views/text/ReactTextViewManagerCallback;[F)J
    .locals 18

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p7

    .line 673
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/views/text/TextLayoutManager;->createLayout(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FFLcom/facebook/react/views/text/ReactTextViewManagerCallback;)Landroid/text/Layout;

    move-result-object v0

    .line 680
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 687
    invoke-interface {v6, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->contains(I)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 688
    invoke-interface {v6, v2}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getInt(I)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 693
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 699
    :goto_2
    sget-object v5, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    const/16 v6, 0xa

    const/4 v9, 0x1

    if-ne v7, v5, :cond_4

    goto :goto_7

    :cond_4
    const/4 v5, 0x0

    move v10, v2

    :goto_3
    if-ge v10, v3, :cond_9

    .line 704
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    sub-int/2addr v11, v9

    invoke-interface {v1, v11}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_5

    move v11, v9

    goto :goto_4

    :cond_5
    move v11, v2

    :goto_4
    if-nez v11, :cond_6

    add-int/lit8 v12, v10, 0x1

    .line 705
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    if-ge v12, v13, :cond_6

    move/from16 v5, p3

    goto :goto_6

    :cond_6
    if-eqz v11, :cond_7

    .line 710
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineMax(I)F

    move-result v11

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    :goto_5
    cmpl-float v12, v11, v5

    if-lez v12, :cond_8

    move v5, v11

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 715
    :cond_9
    :goto_6
    sget-object v10, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v7, v10, :cond_a

    cmpl-float v7, v5, p3

    if-lez v7, :cond_a

    :goto_7
    move/from16 v5, p3

    .line 723
    :cond_a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    if-le v7, v10, :cond_b

    float-to-double v10, v5

    .line 724
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 728
    :cond_b
    sget-object v7, Lcom/facebook/yoga/YogaMeasureMode;->EXACTLY:Lcom/facebook/yoga/YogaMeasureMode;

    if-eq v8, v7, :cond_c

    sub-int/2addr v3, v9

    .line 729
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v3, v3

    .line 730
    sget-object v7, Lcom/facebook/yoga/YogaMeasureMode;->AT_MOST:Lcom/facebook/yoga/YogaMeasureMode;

    if-ne v8, v7, :cond_d

    cmpl-float v7, v3, p5

    if-lez v7, :cond_d

    :cond_c
    move/from16 v3, p5

    :cond_d
    move v7, v2

    move v8, v7

    .line 740
    :goto_8
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v10

    if-ge v7, v10, :cond_19

    .line 742
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v10

    const-class v11, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    invoke-interface {v1, v7, v10, v11}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v10

    .line 743
    const-class v11, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 744
    invoke-interface {v1, v7, v10, v11}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;

    .line 745
    array-length v11, v7

    move v12, v2

    :goto_9
    if-ge v12, v11, :cond_18

    aget-object v13, v7, v12

    .line 746
    invoke-interface {v1, v13}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 747
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 748
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v16

    if-lez v16, :cond_f

    .line 753
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v17

    add-int v2, v16, v17

    if-lt v14, v2, :cond_f

    .line 754
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-lt v14, v2, :cond_e

    goto :goto_a

    :cond_e
    move v4, v6

    move v6, v9

    goto/16 :goto_11

    .line 755
    :cond_f
    :goto_a
    invoke-virtual {v13}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 756
    invoke-virtual {v13}, Lcom/facebook/react/views/text/internal/span/TextInlineViewPlaceholderSpan;->getHeight()I

    move-result v13

    int-to-float v13, v13

    .line 758
    invoke-virtual {v0, v14}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .line 759
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v9, v4, :cond_10

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    .line 764
    :goto_b
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v4, v16, -0x1

    if-ne v14, v4, :cond_14

    .line 766
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_12

    .line 767
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    goto :goto_c

    :cond_11
    const/16 v6, 0xa

    :cond_12
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    :goto_c
    if-eqz v9, :cond_13

    sub-float v2, v5, v4

    goto :goto_d

    .line 774
    :cond_13
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    sub-float v2, v4, v2

    :goto_d
    move v4, v6

    goto :goto_10

    :cond_14
    const/16 v4, 0xa

    if-ne v9, v6, :cond_15

    .line 786
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v14

    goto :goto_e

    .line 787
    :cond_15
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v14

    :goto_e
    if-eqz v9, :cond_16

    if-nez v6, :cond_16

    .line 799
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    sub-float/2addr v9, v14

    sub-float v9, v5, v9

    goto :goto_f

    :cond_16
    move v9, v14

    :goto_f
    if-eqz v6, :cond_17

    sub-float v2, v9, v2

    goto :goto_10

    :cond_17
    move v2, v9

    .line 806
    :goto_10
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v13

    mul-int/lit8 v9, v8, 0x2

    .line 811
    invoke-static {v6}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v6

    aput v6, p8, v9

    const/4 v6, 0x1

    add-int/2addr v9, v6

    .line 813
    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    aput v2, p8, v9

    add-int/lit8 v8, v8, 0x1

    :goto_11
    add-int/lit8 v12, v12, 0x1

    move v9, v6

    const/4 v2, 0x0

    move v6, v4

    const/4 v4, -0x1

    goto/16 :goto_9

    :cond_18
    move v7, v10

    goto/16 :goto_8

    .line 819
    :cond_19
    invoke-static {v5}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v0

    .line 820
    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 822
    sget-boolean v4, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v4, :cond_1a

    .line 823
    sget-object v4, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TextMeasure call (\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\'): w: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " px - h: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " px - w : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sp - h: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_1a
    invoke-static {v0, v2}, Lcom/facebook/yoga/YogaMeasureOutput;->make(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setCachedSpannableForTag(ILandroid/text/Spannable;)V
    .locals 3

    .line 112
    sget-boolean v0, Lcom/facebook/react/views/text/TextLayoutManager;->ENABLE_MEASURE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set cached spannable for tag["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    sget-object v0, Lcom/facebook/react/views/text/TextLayoutManager;->sTagToSpannableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static updateTextPaint(Landroid/text/TextPaint;Lcom/facebook/react/views/text/TextAttributeProps;Landroid/content/Context;)V
    .locals 6

    .line 468
    invoke-virtual {p0}, Landroid/text/TextPaint;->reset()V

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 471
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveFontSize()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getEffectiveFontSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontStyle()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 476
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontWeight()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 477
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 481
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontStyle()I

    move-result v1

    .line 482
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontWeight()I

    move-result v4

    .line 483
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontFamily()Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    .line 479
    invoke-static {v3, v1, v4, v5, p2}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->applyStyles(Landroid/graphics/Typeface;IILjava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 485
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 487
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontStyle()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 488
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontStyle()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 490
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getFontStyle()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    not-int p2, p2

    and-int/2addr p1, p2

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 491
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/high16 p1, -0x41800000    # -0.25f

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 492
    :goto_2
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_5
    :goto_3
    return-void
.end method
