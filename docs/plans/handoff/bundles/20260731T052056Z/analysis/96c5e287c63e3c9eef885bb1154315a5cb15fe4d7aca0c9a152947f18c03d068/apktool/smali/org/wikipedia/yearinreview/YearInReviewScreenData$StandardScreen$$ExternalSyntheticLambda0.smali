.class public final synthetic Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcoil3/compose/RealSubcomposeAsyncImageScope;

    .line 3
    .line 4
    check-cast p2, Lcoil3/compose/AsyncImagePainter$State$Success;

    .line 5
    .line 6
    move-object v8, p3

    .line 7
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    check-cast p4, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    and-int/lit8 p3, p1, 0x6

    .line 22
    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    const/4 p3, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p3, 0x2

    .line 34
    :goto_0
    or-int/2addr p3, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move p3, p1

    .line 37
    :goto_1
    and-int/lit8 p4, p1, 0x30

    .line 38
    .line 39
    if-nez p4, :cond_4

    .line 40
    .line 41
    and-int/lit8 p1, p1, 0x40

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v8, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :goto_2
    if-eqz p1, :cond_3

    .line 55
    .line 56
    const/16 p1, 0x20

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/16 p1, 0x10

    .line 60
    .line 61
    :goto_3
    or-int/2addr p3, p1

    .line 62
    :cond_4
    and-int/lit16 p1, p3, 0x93

    .line 63
    .line 64
    const/16 p4, 0x92

    .line 65
    .line 66
    if-eq p1, p4, :cond_5

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    goto :goto_4

    .line 70
    :cond_5
    const/4 p1, 0x0

    .line 71
    :goto_4
    and-int/lit8 p4, p3, 0x1

    .line 72
    .line 73
    invoke-virtual {v8, p4, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_9

    .line 78
    .line 79
    iget-object p1, p2, Lcoil3/compose/AsyncImagePainter$State$Success;->result:Lcoil3/request/SuccessResult;

    .line 80
    .line 81
    iget-object p1, p1, Lcoil3/request/SuccessResult;->image:Lcoil3/Image;

    .line 82
    .line 83
    iget-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p2}, Lcoil3/UriKt;->asDrawable(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    instance-of p2, p1, Landroid/graphics/drawable/Animatable;

    .line 97
    .line 98
    if-eqz p2, :cond_6

    .line 99
    .line 100
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    const/4 p1, 0x0

    .line 104
    :goto_5
    if-eqz p1, :cond_8

    .line 105
    .line 106
    iget-boolean p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenData$StandardScreen$$ExternalSyntheticLambda0;->f$1:Z

    .line 107
    .line 108
    if-eqz p0, :cond_7

    .line 109
    .line 110
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_7
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_8

    .line 119
    .line 120
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 121
    .line 122
    .line 123
    :cond_8
    :goto_6
    and-int/lit8 v9, p3, 0xe

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v4, 0x0

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    const/4 v7, 0x0

    .line 132
    invoke-static/range {v0 .. v9}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImageContent(Lcoil3/compose/RealSubcomposeAsyncImageScope;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FZLandroidx/compose/runtime/GapComposer;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0
.end method
