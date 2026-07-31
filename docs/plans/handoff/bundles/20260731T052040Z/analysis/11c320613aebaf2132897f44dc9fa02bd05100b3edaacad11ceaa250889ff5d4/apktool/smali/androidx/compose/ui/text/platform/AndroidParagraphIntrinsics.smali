.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final annotations:Ljava/util/List;

.field public final charSequence:Ljava/lang/CharSequence;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final emojiCompatProcessed:Z

.field public final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public final placeholders:Ljava/util/List;

.field public resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

.field public final style:Landroidx/compose/ui/text/TextStyle;

.field public final text:Ljava/lang/String;

.field public final textDirectionHeuristic:I

.field public final textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    .line 2
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 4
    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    move-object/from16 v4, p4

    .line 5
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    move-object/from16 v4, p5

    .line 6
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 7
    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    .line 8
    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v5

    const/4 v6, 0x1

    .line 9
    invoke-direct {v4, v6}, Landroid/text/TextPaint;-><init>(I)V

    .line 10
    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 11
    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->None:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    const/4 v5, 0x3

    .line 12
    iput v5, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->backingBlendMode:I

    .line 13
    sget-object v7, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 14
    iput-object v7, v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 15
    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 16
    invoke-static {v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v7

    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v9, 0x0

    if-nez v7, :cond_0

    move v7, v9

    goto :goto_1

    .line 17
    :cond_0
    sget-object v7, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Lcoil3/memory/MemoryCacheService;

    .line 18
    sget-object v7, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Lcoil3/memory/MemoryCacheService;

    .line 19
    iget-object v10, v7, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/runtime/State;

    if-eqz v10, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 21
    invoke-virtual {v7}, Lcoil3/memory/MemoryCacheService;->getFontLoadState()Landroidx/compose/runtime/State;

    move-result-object v10

    iput-object v10, v7, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v10, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    .line 23
    :goto_0
    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 24
    :goto_1
    iput-boolean v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 25
    iget v7, v1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 26
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    const/4 v11, 0x4

    const/4 v13, 0x2

    if-ne v7, v11, :cond_4

    :cond_3
    :goto_2
    move v7, v13

    goto :goto_4

    :cond_4
    const/4 v11, 0x5

    if-ne v7, v11, :cond_6

    :cond_5
    move v7, v5

    goto :goto_4

    :cond_6
    if-ne v7, v6, :cond_7

    move v7, v9

    goto :goto_4

    :cond_7
    if-ne v7, v13, :cond_8

    move v7, v6

    goto :goto_4

    :cond_8
    if-ne v7, v5, :cond_9

    goto :goto_3

    :cond_9
    if-nez v7, :cond_78

    :goto_3
    if-eqz v10, :cond_a

    .line 27
    invoke-virtual {v10}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    move-result-object v7

    .line 28
    iget-object v7, v7, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    if-nez v7, :cond_b

    .line 29
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 30
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v6, :cond_5

    goto :goto_2

    .line 31
    :goto_4
    iput v7, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    .line 32
    new-instance v7, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v13}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 33
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v1, :cond_c

    .line 34
    sget-object v1, Landroidx/compose/ui/text/style/TextMotion;->Static:Landroidx/compose/ui/text/style/TextMotion;

    .line 35
    :cond_c
    iget-boolean v10, v1, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    if-eqz v10, :cond_d

    .line 36
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    or-int/lit16 v10, v10, 0x80

    goto :goto_5

    .line 37
    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v10

    and-int/lit16 v10, v10, -0x81

    .line 38
    :goto_5
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFlags(I)V

    .line 39
    iget v1, v1, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    if-ne v1, v6, :cond_e

    .line 40
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 41
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_e
    if-ne v1, v13, :cond_f

    .line 42
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 43
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_f
    if-ne v1, v5, :cond_10

    .line 44
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 45
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    .line 46
    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    .line 47
    :goto_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    move v10, v9

    :goto_7
    if-ge v10, v1, :cond_12

    .line 48
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 49
    move-object v14, v11

    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 50
    iget-object v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 51
    instance-of v14, v14, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v14, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_13

    move v1, v6

    goto :goto_9

    :cond_13
    move v1, v9

    .line 52
    :goto_9
    iget-wide v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    iget-object v2, v8, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v14, v8, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v15, v8, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    const/16 p1, 0x0

    iget-object v12, v8, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    move/from16 p4, v6

    iget-object v6, v8, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-object v5, v8, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-object/from16 p3, v14

    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    move-wide/from16 v17, v10

    .line 53
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v9

    move v11, v1

    move-object/from16 v19, v2

    const-wide v1, 0x100000000L

    .line 54
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v20

    if-eqz v20, :cond_14

    move-wide/from16 v1, v17

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_a

    :cond_14
    const-wide v1, 0x200000000L

    .line 55
    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 56
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    :cond_15
    :goto_a
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v1, :cond_17

    if-nez p3, :cond_17

    if-eqz v19, :cond_16

    goto :goto_b

    :cond_16
    move/from16 p3, v11

    move-object/from16 v17, v12

    goto :goto_11

    :cond_17
    :goto_b
    if-nez v19, :cond_18

    .line 58
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_c

    :cond_18
    move-object/from16 v2, v19

    :goto_c
    if-eqz p3, :cond_19

    move-object/from16 v9, p3

    .line 59
    iget v9, v9, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_d

    :cond_19
    const/4 v9, 0x0

    .line 60
    :goto_d
    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v10, :cond_1a

    .line 61
    iget v10, v10, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    :goto_e
    move/from16 p3, v11

    goto :goto_f

    :cond_1a
    const v10, 0xffff

    goto :goto_e

    .line 62
    :goto_f
    iget-object v11, v7, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object/from16 v17, v12

    .line 63
    iget-object v12, v11, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v12, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v12, v1, v2, v9, v10}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object v1

    .line 64
    instance-of v2, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    if-nez v2, :cond_1b

    .line 65
    new-instance v2, Lorg/acra/util/ProcessFinisher;

    iget-object v9, v11, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    invoke-direct {v2, v1, v9}, Lorg/acra/util/ProcessFinisher;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Lorg/acra/util/ProcessFinisher;)V

    .line 66
    iput-object v2, v11, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 67
    iget-object v1, v2, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_10

    .line 68
    :cond_1b
    iget-object v1, v1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/graphics/Typeface;

    .line 70
    :goto_10
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_11
    if-eqz v5, :cond_1e

    .line 71
    sget-object v1, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 72
    sget-object v1, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 73
    invoke-interface {v1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v2

    .line 74
    invoke-virtual {v5, v2}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v2, v9, :cond_1c

    .line 76
    invoke-static {v4, v5}, Lus/shandian/giga/util/Utility;->setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V

    goto :goto_13

    .line 77
    :cond_1c
    iget-object v2, v5, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 78
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 79
    invoke-interface {v1}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    move-result-object v1

    goto :goto_12

    .line 80
    :cond_1d
    invoke-virtual {v5}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    move-result-object v1

    .line 81
    :goto_12
    iget-object v1, v1, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 82
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    :cond_1e
    :goto_13
    if-eqz v15, :cond_1f

    .line 83
    const-string v1, ""

    .line 84
    invoke-virtual {v15, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 85
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1f
    if-eqz v6, :cond_20

    .line 86
    sget-object v1, Landroidx/compose/ui/text/style/TextGeometricTransform;->None:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 87
    invoke-virtual {v6, v1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 88
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    .line 89
    iget v2, v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    mul-float/2addr v1, v2

    .line 90
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    .line 92
    iget v2, v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    add-float/2addr v1, v2

    .line 93
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 94
    :cond_20
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 95
    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 96
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 97
    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v2

    .line 98
    invoke-virtual {v4, v1, v5, v6, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 99
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 100
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 101
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 102
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 103
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 104
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 105
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v1

    const-wide v5, 0x100000000L

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_21

    goto :goto_14

    .line 106
    :cond_21
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v5

    mul-float/2addr v5, v1

    .line 107
    invoke-interface {v3, v13, v14}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v1

    cmpg-float v3, v5, v2

    if-nez v3, :cond_22

    goto :goto_15

    :cond_22
    div-float/2addr v1, v5

    .line 108
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_15

    .line 109
    :cond_23
    :goto_14
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v5

    const-wide v9, 0x200000000L

    invoke-static {v5, v6, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 110
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 111
    :cond_24
    :goto_15
    iget-wide v3, v8, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 112
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz p3, :cond_26

    .line 113
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v5

    const-wide v8, 0x100000000L

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v5

    cmpg-float v5, v5, v2

    if-nez v5, :cond_25

    goto :goto_16

    :cond_25
    move/from16 v5, p4

    goto :goto_17

    :cond_26
    :goto_16
    const/4 v5, 0x0

    .line 114
    :goto_17
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 115
    invoke-static {v3, v4, v8, v9}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_27

    .line 116
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 117
    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_27

    move/from16 v6, p4

    goto :goto_18

    :cond_27
    const/4 v6, 0x0

    :goto_18
    if-eqz v1, :cond_29

    .line 118
    iget v10, v1, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 119
    invoke-static {v10, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_28

    goto :goto_19

    :cond_28
    move/from16 v10, p4

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v10, 0x0

    :goto_1a
    if-nez v5, :cond_2a

    if-nez v6, :cond_2a

    if-nez v10, :cond_2a

    move-object/from16 v1, p1

    goto :goto_1f

    :cond_2a
    if-eqz v5, :cond_2b

    :goto_1b
    move-wide/from16 v31, v13

    goto :goto_1c

    .line 120
    :cond_2b
    sget-wide v13, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    goto :goto_1b

    :goto_1c
    if-eqz v6, :cond_2c

    move-wide/from16 v36, v3

    goto :goto_1d

    :cond_2c
    move-wide/from16 v36, v8

    :goto_1d
    if-eqz v10, :cond_2d

    move-object/from16 v33, v1

    goto :goto_1e

    :cond_2d
    move-object/from16 v33, p1

    .line 121
    :goto_1e
    new-instance v21, Landroidx/compose/ui/text/SpanStyle;

    const/16 v39, 0x0

    const v40, 0xf67f

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v21 .. v40}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v1, v21

    .line 122
    :goto_1f
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 123
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v3, :cond_2f

    if-nez v5, :cond_2e

    .line 124
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 125
    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    .line 126
    invoke-direct {v6, v1, v9, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    goto :goto_21

    .line 127
    :cond_2e
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->annotations:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 128
    :goto_21
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2f
    move-object v3, v4

    .line 129
    :cond_30
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->text:Ljava/lang/String;

    .line 130
    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 131
    iget-object v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 132
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->placeholders:Ljava/util/List;

    .line 133
    iget-object v11, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->density:Landroidx/compose/ui/unit/Density;

    .line 134
    iget-boolean v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 135
    sget-object v9, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    if-eqz v8, :cond_34

    .line 136
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v8

    if-eqz v8, :cond_34

    .line 137
    iget-object v8, v5, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v8, :cond_31

    .line 138
    iget-object v8, v8, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v8, :cond_31

    .line 139
    iget v8, v8, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 140
    new-instance v9, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    goto :goto_22

    :cond_31
    move-object/from16 v9, p1

    :goto_22
    if-nez v9, :cond_33

    :cond_32
    const/4 v8, 0x0

    goto :goto_23

    .line 141
    :cond_33
    iget v8, v9, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_32

    move/from16 v8, p4

    .line 142
    :goto_23
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10, v8, v1}, Landroidx/emoji2/text/EmojiCompat;->process(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_24

    :cond_34
    move-object v8, v1

    .line 143
    :goto_24
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-wide/16 v12, 0x0

    const-wide v14, 0xff00000000L

    if-eqz v9, :cond_35

    .line 144
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 145
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 146
    iget-object v9, v9, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 147
    sget-object v10, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 148
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 149
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 150
    iget-wide v9, v9, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    and-long/2addr v9, v14

    cmp-long v9, v9, v12

    if-nez v9, :cond_35

    goto/16 :goto_4f

    .line 151
    :cond_35
    instance-of v9, v8, Landroid/text/Spannable;

    if-eqz v9, :cond_36

    .line 152
    check-cast v8, Landroid/text/Spannable;

    goto :goto_25

    .line 153
    :cond_36
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v8, v9

    .line 154
    :goto_25
    iget-object v9, v5, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    iget-object v10, v5, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 155
    iget-object v9, v9, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    move/from16 p2, v2

    .line 156
    sget-object v2, Landroidx/compose/ui/text/style/TextDecoration;->Underline:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0x21

    if-eqz v2, :cond_37

    .line 157
    sget-object v2, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->NoopSpan:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move-wide/from16 v17, v12

    const/4 v12, 0x0

    .line 158
    invoke-interface {v8, v2, v12, v1, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_26

    :cond_37
    move-wide/from16 v17, v12

    .line 159
    :goto_26
    iget-object v1, v5, Landroidx/compose/ui/text/TextStyle;->platformStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v1, :cond_38

    .line 160
    iget-object v1, v1, Landroidx/compose/ui/text/PlatformTextStyle;->paragraphStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v1, :cond_38

    .line 161
    iget-boolean v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    goto :goto_27

    :cond_38
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_3a

    .line 162
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_3a

    .line 163
    iget-wide v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 164
    invoke-static {v1, v2, v4, v11}, Landroidx/sqlite/SQLite;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_39

    .line 166
    new-instance v2, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v2, v1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v12, 0x0

    .line 167
    invoke-interface {v8, v2, v12, v1, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_39
    const/4 v12, 0x0

    goto/16 :goto_2d

    .line 168
    :cond_3a
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v1, :cond_3b

    .line 169
    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 170
    :cond_3b
    iget-wide v12, v10, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 171
    invoke-static {v12, v13, v4, v11}, Landroidx/sqlite/SQLite;->resolveLineHeightInPx-o2QH7mI(JFLandroidx/compose/ui/unit/Density;)F

    move-result v22

    .line 172
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_39

    .line 173
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_28

    .line 174
    :cond_3c
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_40

    .line 175
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 176
    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v12, 0xa

    if-ne v2, v12, :cond_3d

    .line 177
    :goto_28
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_29
    move/from16 v23, v2

    goto :goto_2a

    :cond_3d
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_29

    .line 178
    :goto_2a
    new-instance v21, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 179
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    and-int/lit8 v12, v2, 0x1

    if-lez v12, :cond_3e

    move/from16 v24, p4

    goto :goto_2b

    :cond_3e
    const/16 v24, 0x0

    :goto_2b
    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_3f

    move/from16 v25, p4

    goto :goto_2c

    :cond_3f
    const/16 v25, 0x0

    .line 180
    :goto_2c
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    .line 181
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    move/from16 v27, v1

    move/from16 v26, v2

    .line 182
    invoke-direct/range {v21 .. v27}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIZZFI)V

    move-object/from16 v1, v21

    .line 183
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v12, 0x0

    .line 184
    invoke-interface {v8, v1, v12, v2, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2d

    .line 185
    :cond_40
    const-string v0, "Char sequence is empty."

    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    throw p1

    .line 186
    :goto_2d
    iget-object v1, v10, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_42

    move/from16 v16, v12

    .line 187
    iget-wide v12, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    iget-wide v1, v1, Landroidx/compose/ui/text/style/TextIndent;->restLine:J

    move-wide/from16 v19, v14

    .line 188
    invoke-static/range {v16 .. v16}, Lkotlin/math/MathKt;->getSp(I)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_41

    invoke-static/range {v16 .. v16}, Lkotlin/math/MathKt;->getSp(I)J

    move-result-wide v14

    invoke-static {v1, v2, v14, v15}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    move-result v14

    if-nez v14, :cond_42

    :cond_41
    and-long v14, v12, v19

    cmp-long v14, v14, v17

    if-nez v14, :cond_43

    :cond_42
    :goto_2e
    move-object/from16 v17, v10

    goto/16 :goto_31

    :cond_43
    and-long v14, v1, v19

    cmp-long v14, v14, v17

    if-nez v14, :cond_44

    goto :goto_2e

    .line 189
    :cond_44
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v14

    move-object/from16 v17, v10

    const-wide v9, 0x100000000L

    .line 190
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v18

    if-eqz v18, :cond_45

    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v12

    const-wide v9, 0x200000000L

    goto :goto_2f

    :cond_45
    const-wide v9, 0x200000000L

    .line 191
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_46

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v12

    mul-float/2addr v12, v4

    goto :goto_2f

    :cond_46
    move/from16 v12, p2

    .line 192
    :goto_2f
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v13

    const-wide v9, 0x100000000L

    .line 193
    invoke-static {v13, v14, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v1

    goto :goto_30

    :cond_47
    const-wide v9, 0x200000000L

    .line 194
    invoke-static {v13, v14, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v13

    if-eqz v13, :cond_48

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    mul-float/2addr v1, v4

    goto :goto_30

    :cond_48
    move/from16 v1, p2

    .line 195
    :goto_30
    new-instance v2, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v9, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v4, v9

    float-to-int v4, v4

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v1, v9

    float-to-int v1, v1

    invoke-direct {v2, v4, v1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 196
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v4, 0x21

    const/4 v12, 0x0

    .line 197
    invoke-interface {v8, v2, v12, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :goto_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v2, :cond_4c

    .line 200
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 201
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 202
    iget-object v10, v9, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 203
    instance-of v12, v10, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v12, :cond_4b

    move-object v12, v10

    check-cast v12, Landroidx/compose/ui/text/SpanStyle;

    .line 204
    iget-object v13, v12, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v13, :cond_4a

    .line 205
    iget-object v13, v12, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v13, :cond_4a

    .line 206
    iget-object v12, v12, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v12, :cond_49

    goto :goto_33

    .line 207
    :cond_49
    check-cast v10, Landroidx/compose/ui/text/SpanStyle;

    .line 208
    iget-object v10, v10, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v10, :cond_4b

    .line 209
    :cond_4a
    :goto_33
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 210
    :cond_4c
    iget-object v2, v5, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 211
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    if-nez v4, :cond_4f

    .line 212
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v5, :cond_4f

    .line 213
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v5, :cond_4d

    goto :goto_34

    .line 214
    :cond_4d
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v5, :cond_4e

    goto :goto_34

    :cond_4e
    move-object/from16 v2, p1

    goto :goto_35

    .line 215
    :cond_4f
    :goto_34
    iget-object v5, v2, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 216
    iget-object v9, v2, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 217
    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 218
    new-instance v21, Landroidx/compose/ui/text/SpanStyle;

    const/16 v39, 0x0

    const v40, 0xffc3

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v9

    invoke-direct/range {v21 .. v40}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object/from16 v2, v21

    .line 219
    :goto_35
    new-instance v4, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, v8, v7, v5}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 220
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v7, p4

    if-gt v5, v7, :cond_51

    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    const/4 v12, 0x0

    .line 222
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 223
    iget-object v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 224
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    if-nez v2, :cond_50

    goto :goto_36

    .line 225
    :cond_50
    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v5

    .line 226
    :goto_36
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 227
    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 230
    iget v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    invoke-virtual {v4, v5, v2, v1}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3d

    .line 233
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v7, v5, 0x2

    .line 234
    new-array v9, v7, [I

    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_37
    if-ge v12, v10, :cond_52

    .line 236
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 237
    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 238
    iget v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 239
    aput v14, v9, v12

    add-int v14, v12, v5

    .line 240
    iget v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 241
    aput v13, v9, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    :cond_52
    const/4 v12, 0x1

    if-le v7, v12, :cond_53

    .line 242
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    :cond_53
    if-eqz v7, :cond_77

    const/16 v16, 0x0

    .line 243
    aget v5, v9, v16

    const/4 v10, 0x0

    :goto_38
    if-ge v10, v7, :cond_59

    .line 244
    aget v12, v9, v10

    if-ne v12, v5, :cond_54

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 v18, v7

    goto :goto_3c

    .line 245
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object v15, v2

    const/4 v14, 0x0

    :goto_39
    if-ge v14, v13, :cond_57

    .line 246
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 p5, v1

    .line 247
    move-object/from16 v1, v18

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 p6, v2

    .line 248
    iget v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    move/from16 v18, v7

    .line 249
    iget v7, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-eq v2, v7, :cond_56

    .line 250
    invoke-static {v5, v12, v2, v7}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 251
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 252
    check-cast v1, Landroidx/compose/ui/text/SpanStyle;

    if-nez v15, :cond_55

    :goto_3a
    move-object v15, v1

    goto :goto_3b

    .line 253
    :cond_55
    invoke-virtual {v15, v1}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v1

    goto :goto_3a

    :cond_56
    :goto_3b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v7, v18

    goto :goto_39

    :cond_57
    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 v18, v7

    if-eqz v15, :cond_58

    .line 254
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v15, v1, v2}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    move v5, v12

    :goto_3c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v7, v18

    goto :goto_38

    .line 255
    :cond_59
    :goto_3d
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3e
    if-ge v2, v1, :cond_6a

    .line 256
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 257
    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 258
    instance-of v9, v7, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v9, :cond_5a

    .line 259
    iget v12, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 260
    iget v13, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ltz v12, :cond_5a

    .line 261
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v12, v5, :cond_5a

    if-le v13, v12, :cond_5a

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v13, v5, :cond_5b

    :cond_5a
    move/from16 p5, v1

    move v5, v2

    move/from16 p3, v4

    move-object/from16 v1, v17

    goto/16 :goto_47

    .line 262
    :cond_5b
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v14, v7, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 263
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    if-eqz v5, :cond_5c

    .line 264
    iget v5, v5, Landroidx/compose/ui/text/style/BaselineShift;->multiplier:F

    .line 265
    new-instance v10, Landroidx/compose/ui/text/android/style/SkewXSpan;

    move/from16 p5, v1

    const/4 v1, 0x1

    invoke-direct {v10, v5, v1}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(FI)V

    const/16 v1, 0x21

    .line 266
    invoke-interface {v8, v10, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_3f
    move v5, v2

    goto :goto_40

    :cond_5c
    move/from16 p5, v1

    goto :goto_3f

    .line 267
    :goto_40
    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 268
    invoke-static {v8, v1, v2, v12, v13}, Landroidx/sqlite/SQLite;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    .line 269
    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    .line 270
    invoke-interface {v9}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result v2

    if-eqz v1, :cond_5e

    .line 271
    instance-of v9, v1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v9, :cond_5d

    .line 272
    check-cast v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 273
    iget-wide v1, v1, Landroidx/compose/ui/graphics/SolidColor;->value:J

    .line 274
    invoke-static {v8, v1, v2, v12, v13}, Landroidx/sqlite/SQLite;->setColor-RPmYEkk(Landroid/text/Spannable;JII)V

    goto :goto_41

    .line 275
    :cond_5d
    new-instance v9, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    check-cast v1, Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-direct {v9, v1, v2}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    const/16 v1, 0x21

    .line 276
    invoke-interface {v8, v9, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 277
    :cond_5e
    :goto_41
    iget-object v1, v7, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v1, :cond_61

    .line 278
    iget v1, v1, Landroidx/compose/ui/text/style/TextDecoration;->mask:I

    .line 279
    new-instance v2, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    or-int/lit8 v9, v1, 0x1

    if-ne v9, v1, :cond_5f

    const/4 v9, 0x1

    goto :goto_42

    :cond_5f
    const/4 v9, 0x0

    :goto_42
    or-int/lit8 v10, v1, 0x2

    if-ne v10, v1, :cond_60

    const/4 v1, 0x1

    goto :goto_43

    :cond_60
    const/4 v1, 0x0

    :goto_43
    invoke-direct {v2, v9, v1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    const/16 v1, 0x21

    .line 280
    invoke-interface {v8, v2, v12, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_44

    :cond_61
    const/16 v1, 0x21

    .line 281
    :goto_44
    iget-wide v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    move v2, v1

    move-object/from16 v1, v17

    .line 282
    invoke-static/range {v8 .. v13}, Landroidx/sqlite/SQLite;->setFontSize-KmRG4DE(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 283
    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    if-eqz v9, :cond_62

    .line 284
    new-instance v10, Lio/noties/markwon/core/spans/CodeSpan;

    move/from16 p3, v4

    const/4 v4, 0x1

    invoke-direct {v10, v9, v4}, Lio/noties/markwon/core/spans/CodeSpan;-><init>(Ljava/lang/Object;I)V

    .line 285
    invoke-interface {v8, v10, v12, v13, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_45

    :cond_62
    move/from16 p3, v4

    const/4 v4, 0x1

    .line 286
    :goto_45
    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v9, :cond_63

    .line 287
    new-instance v10, Landroid/text/style/ScaleXSpan;

    .line 288
    iget v4, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->scaleX:F

    .line 289
    invoke-direct {v10, v4}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 290
    invoke-interface {v8, v10, v12, v13, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 291
    new-instance v4, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 292
    iget v9, v9, Landroidx/compose/ui/text/style/TextGeometricTransform;->skewX:F

    const/4 v10, 0x0

    .line 293
    invoke-direct {v4, v9, v10}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(FI)V

    .line 294
    invoke-interface {v8, v4, v12, v13, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 295
    :cond_63
    iget-object v4, v7, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 296
    invoke-static {v8, v4, v12, v13}, Landroidx/sqlite/SQLite;->setLocaleList(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 297
    iget-wide v9, v7, Landroidx/compose/ui/text/SpanStyle;->background:J

    const-wide/16 v17, 0x10

    cmp-long v4, v9, v17

    if-eqz v4, :cond_64

    .line 298
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v9

    invoke-direct {v4, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 299
    invoke-interface {v8, v4, v12, v13, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 300
    :cond_64
    iget-object v4, v7, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v4, :cond_66

    .line 301
    iget-wide v9, v4, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 302
    new-instance v2, Landroidx/compose/ui/text/android/style/ShadowSpan;

    move-wide/from16 v18, v9

    .line 303
    iget-wide v9, v4, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 304
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v9

    const/16 v10, 0x20

    move-wide/from16 v21, v14

    shr-long v14, v18, v10

    long-to-int v10, v14

    .line 305
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const-wide v14, 0xffffffffL

    and-long v14, v18, v14

    long-to-int v14, v14

    .line 306
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    .line 307
    iget v4, v4, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    cmpg-float v15, v4, p2

    if-nez v15, :cond_65

    const/4 v4, 0x1

    .line 308
    :cond_65
    invoke-direct {v2, v9, v10, v14, v4}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    const/16 v4, 0x21

    .line 309
    invoke-interface {v8, v2, v12, v13, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_46

    :cond_66
    move v4, v2

    move-wide/from16 v21, v14

    .line 310
    :goto_46
    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->drawStyle:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-eqz v2, :cond_67

    .line 311
    new-instance v7, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;

    invoke-direct {v7, v2}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 312
    invoke-interface {v8, v7, v12, v13, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 313
    :cond_67
    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v9

    const-wide v12, 0x100000000L

    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v9

    const-wide v12, 0x200000000L

    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_68
    const/4 v4, 0x1

    goto :goto_48

    :cond_69
    :goto_47
    move/from16 v4, p3

    :goto_48
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v17, v1

    move/from16 v1, p5

    goto/16 :goto_3e

    :cond_6a
    move/from16 p3, v4

    move-object/from16 v1, v17

    if-eqz p3, :cond_70

    .line 314
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_49
    if-ge v9, v2, :cond_70

    .line 315
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 316
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 317
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 318
    instance-of v7, v5, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v7, :cond_6b

    .line 319
    iget v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 320
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ltz v7, :cond_6b

    .line 321
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v7, v10, :cond_6b

    if-le v4, v7, :cond_6b

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v4, v10, :cond_6c

    :cond_6b
    move v5, v9

    const/16 v10, 0x21

    goto :goto_4b

    .line 322
    :cond_6c
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 323
    iget-wide v12, v5, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 324
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v14

    move v5, v9

    const-wide v9, 0x100000000L

    .line 325
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v18

    if-eqz v18, :cond_6d

    new-instance v9, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-interface {v11, v12, v13}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v10

    invoke-direct {v9, v10}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    goto :goto_4a

    :cond_6d
    const-wide v9, 0x200000000L

    .line 326
    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 327
    new-instance v9, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v10

    invoke-direct {v9, v10}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    goto :goto_4a

    :cond_6e
    move-object/from16 v9, p1

    :goto_4a
    const/16 v10, 0x21

    if-eqz v9, :cond_6f

    .line 328
    invoke-interface {v8, v9, v7, v4, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6f
    :goto_4b
    add-int/lit8 v9, v5, 0x1

    goto :goto_49

    .line 329
    :cond_70
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v1, :cond_72

    .line 330
    iget-wide v1, v1, Landroidx/compose/ui/text/style/TextIndent;->firstLine:J

    .line 331
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v4

    const-wide v9, 0x100000000L

    .line 332
    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    goto :goto_4c

    :cond_71
    const-wide v9, 0x200000000L

    .line 333
    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 334
    :cond_72
    :goto_4c
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v1, :cond_73

    .line 335
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 336
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 337
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 338
    :cond_73
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_76

    const/4 v12, 0x0

    .line 339
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 340
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 341
    iget-object v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    if-nez v1, :cond_75

    .line 342
    iget v1, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 343
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 344
    const-class v2, Landroidx/emoji2/text/TypefaceEmojiSpan;

    invoke-interface {v8, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 345
    array-length v1, v0

    move v9, v12

    :goto_4e
    if-ge v9, v1, :cond_74

    aget-object v2, v0, v9

    check-cast v2, Landroidx/emoji2/text/TypefaceEmojiSpan;

    .line 346
    invoke-interface {v8, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    .line 347
    :cond_74
    new-instance v0, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 348
    throw p1

    .line 349
    :cond_75
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2()V

    throw p1

    .line 350
    :cond_76
    :goto_4f
    iput-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 351
    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textPaint:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->textDirectionHeuristic:I

    invoke-direct {v1, v8, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    .line 352
    :cond_77
    const-string v0, "Array is empty."

    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    throw p1

    :cond_78
    const/16 p1, 0x0

    .line 353
    const-string v0, "Invalid TextDirection."

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getHasStaleResolvedFonts()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Lorg/acra/util/ProcessFinisher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/acra/util/ProcessFinisher;->isStaleResolvedFont()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->emojiCompatProcessed:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->style:Landroidx/compose/ui/text/TextStyle;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->access$getHasEmojiCompat(Landroidx/compose/ui/text/TextStyle;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Lcoil3/memory/MemoryCacheService;

    .line 27
    .line 28
    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->delegate:Lcoil3/memory/MemoryCacheService;

    .line 29
    .line 30
    iget-object v0, p0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/runtime/State;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcoil3/memory/MemoryCacheService;->getFontLoadState()Landroidx/compose/runtime/State;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->Falsey:Landroidx/compose/ui/text/platform/ImmutableBool;

    .line 51
    .line 52
    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    return v1

    .line 66
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 10

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->textPaint:Landroid/text/TextPaint;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->charSequence:Ljava/lang/CharSequence;

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, v4, v3}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(ILjava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/PriorityQueue;

    .line 39
    .line 40
    sget-object v3, Landroidx/compose/ui/text/android/StaticLayoutFactory;->IntRangeComparator:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/16 v4, 0xa

    .line 43
    .line 44
    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_0
    const/4 v6, -0x1

    .line 53
    if-eq v3, v6, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x1

    .line 60
    if-ge v6, v4, :cond_1

    .line 61
    .line 62
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 63
    .line 64
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lkotlin/ranges/IntRange;

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget v8, v6, Lkotlin/ranges/IntProgression;->last:I

    .line 80
    .line 81
    iget v6, v6, Lkotlin/ranges/IntProgression;->first:I

    .line 82
    .line 83
    sub-int/2addr v8, v6

    .line 84
    sub-int v6, v3, v5

    .line 85
    .line 86
    if-ge v8, v6, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lkotlin/ranges/IntRange;

    .line 92
    .line 93
    invoke-direct {v6, v5, v3, v7}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    move v9, v5

    .line 104
    move v5, v3

    .line 105
    move v3, v9

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 130
    .line 131
    iget v3, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 132
    .line 133
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move v3, v2

    .line 144
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_5

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lkotlin/ranges/IntRange;

    .line 155
    .line 156
    iget v4, v2, Lkotlin/ranges/IntProgression;->first:I

    .line 157
    .line 158
    iget v2, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 159
    .line 160
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getCharSequenceForIntrinsicWidth()Ljava/lang/CharSequence;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v5, v4, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_2

    .line 173
    :cond_5
    :goto_3
    iput v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->_minIntrinsicWidth:F

    .line 174
    .line 175
    return v3

    .line 176
    :cond_6
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 177
    .line 178
    .line 179
    return v3
.end method
