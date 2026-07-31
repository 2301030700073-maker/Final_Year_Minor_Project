.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

.field public final synthetic f$2:I

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(ILorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;IFI)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$0:I

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 6
    .line 7
    iput p3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$3:F

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    sget-object v2, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$3:F

    .line 8
    .line 9
    iget v4, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$2:I

    .line 10
    .line 11
    iget-object v5, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$1:Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;

    .line 12
    .line 13
    iget p0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda8;->f$0:I

    .line 14
    .line 15
    check-cast p1, Landroidx/glance/layout/ColumnScopeImplInstance;

    .line 16
    .line 17
    move-object v9, p2

    .line 18
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v0, p3

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroidx/glance/AndroidResourceImageProvider;

    .line 34
    .line 35
    invoke-direct {v6, p0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/16 v11, 0x30

    .line 47
    .line 48
    const/16 v12, 0x18

    .line 49
    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v10, v9

    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-static/range {v6 .. v12}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12;

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-direct {p0, v4, v3, p1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12;-><init>(IFI)V

    .line 64
    .line 65
    .line 66
    const p1, 0x681fd1f2

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    move-object v9, v10

    .line 74
    const/16 v10, 0x180

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    sget-object v7, Landroidx/glance/layout/Alignment;->Center:Landroidx/glance/layout/Alignment;

    .line 78
    .line 79
    invoke-static/range {v6 .. v11}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_0
    move-object/from16 v0, p3

    .line 84
    .line 85
    check-cast v0, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v6, Landroidx/glance/AndroidResourceImageProvider;

    .line 94
    .line 95
    invoke-direct {v6, p0}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lorg/wikipedia/widgets/readingchallenge/LargeWidgetSize;->getTitleBarIconSize-D9Ej5fM()F

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    const/16 v11, 0x30

    .line 107
    .line 108
    const/16 v12, 0x18

    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    move-object v10, v9

    .line 112
    const/4 v9, 0x0

    .line 113
    invoke-static/range {v6 .. v12}, Lcoil3/util/ContextsKt;->Image-GCr5PR4(Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/GlanceModifier;ILandroidx/glance/ColorFilter;Landroidx/compose/runtime/GapComposer;II)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12;

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    invoke-direct {p0, v4, v3, p1}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeLargeWidgetContentKt$$ExternalSyntheticLambda12;-><init>(IFI)V

    .line 124
    .line 125
    .line 126
    const p1, -0x527ac5b3

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p0, v10}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    move-object v9, v10

    .line 134
    const/16 v10, 0x180

    .line 135
    .line 136
    const/4 v11, 0x0

    .line 137
    sget-object v7, Landroidx/glance/layout/Alignment;->Center:Landroidx/glance/layout/Alignment;

    .line 138
    .line 139
    invoke-static/range {v6 .. v11}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
