.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 12
    const/4 p3, 0x0

    iput p3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$0:Z

    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iget-boolean p0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v9, p1

    .line 14
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    and-int/lit8 p2, p1, 0x3

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eq p2, v0, :cond_0

    .line 27
    .line 28
    move p2, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p2, v4

    .line 31
    :goto_0
    and-int/2addr p1, v2

    .line 32
    invoke-virtual {v9, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const p1, 0x7f080113

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const p1, 0x7f080144

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-static {p1, v4, v9}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const p0, 0x7f12083f

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const p0, 0x7f12092f

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-static {p0, v9}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    sget-object p0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 65
    .line 66
    const/high16 p2, 0x42400000    # 48.0f

    .line 67
    .line 68
    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 83
    .line 84
    if-ne v2, p2, :cond_4

    .line 85
    .line 86
    :cond_3
    new-instance v2, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;

    .line 87
    .line 88
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    const/16 p2, 0xf

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    invoke-static {p2, p0, v0, v2, v4}, Landroidx/compose/foundation/ImageKt;->clickable-oSLSa3U$default(ILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const/high16 p2, 0x41400000    # 12.0f

    .line 104
    .line 105
    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    sget-object p0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 110
    .line 111
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 116
    .line 117
    iget-wide v7, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 118
    .line 119
    const/16 v10, 0x8

    .line 120
    .line 121
    const/4 v11, 0x0

    .line 122
    move-object v4, p1

    .line 123
    invoke-static/range {v4 .. v11}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-object v1

    .line 131
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 132
    .line 133
    check-cast p2, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-static {p0, v3, p1, p2}, Landroidx/work/Operation$State;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 143
    .line 144
    .line 145
    return-object v1

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
