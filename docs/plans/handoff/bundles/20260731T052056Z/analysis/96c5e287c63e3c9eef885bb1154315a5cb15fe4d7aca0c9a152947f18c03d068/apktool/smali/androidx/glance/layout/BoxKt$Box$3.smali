.class public final Landroidx/glance/layout/BoxKt$Box$3;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$default:I

.field public final synthetic $content:Ljava/lang/Object;

.field public final synthetic $contentAlignment:Ljava/lang/Object;

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;III)V
    .locals 0

    .line 19
    iput p6, p0, Landroidx/glance/layout/BoxKt$Box$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/glance/layout/BoxKt$Box$3;->$modifier:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/layout/BoxKt$Box$3;->$contentAlignment:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/glance/layout/BoxKt$Box$3;->$content:Ljava/lang/Object;

    iput p4, p0, Landroidx/glance/layout/BoxKt$Box$3;->$$changed:I

    iput p5, p0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;III)V
    .locals 0

    .line 1
    const/4 p5, 0x3

    .line 2
    iput p5, p0, Landroidx/glance/layout/BoxKt$Box$3;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/layout/BoxKt$Box$3;->$contentAlignment:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/layout/BoxKt$Box$3;->$modifier:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/layout/BoxKt$Box$3;->$content:Ljava/lang/Object;

    .line 9
    .line 10
    iput p4, p0, Landroidx/glance/layout/BoxKt$Box$3;->$$changed:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/glance/layout/BoxKt$Box$3;->$r8$classId:I

    .line 4
    .line 5
    iget v2, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$changed:I

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/glance/layout/BoxKt$Box$3;->$content:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/glance/layout/BoxKt$Box$3;->$modifier:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/glance/layout/BoxKt$Box$3;->$contentAlignment:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v11, p1

    .line 19
    .line 20
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v1, p2

    .line 23
    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-object v7, v6

    .line 30
    check-cast v7, Ljava/lang/String;

    .line 31
    .line 32
    move-object v8, v5

    .line 33
    check-cast v8, Landroidx/glance/GlanceModifier;

    .line 34
    .line 35
    move-object v9, v4

    .line 36
    check-cast v9, Landroidx/glance/text/TextStyle;

    .line 37
    .line 38
    const/4 v12, 0x1

    .line 39
    iget v13, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    .line 40
    .line 41
    iget v10, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$changed:I

    .line 42
    .line 43
    invoke-static/range {v7 .. v13}, Lkotlin/ResultKt;->Text(Ljava/lang/String;Landroidx/glance/GlanceModifier;Landroidx/glance/text/TextStyle;ILandroidx/compose/runtime/GapComposer;II)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_0
    move-object/from16 v17, p1

    .line 48
    .line 49
    check-cast v17, Landroidx/compose/runtime/GapComposer;

    .line 50
    .line 51
    move-object/from16 v1, p2

    .line 52
    .line 53
    check-cast v1, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    move-object v14, v5

    .line 59
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    move-object v15, v6

    .line 62
    check-cast v15, Landroidx/compose/ui/window/DialogProperties;

    .line 63
    .line 64
    move-object/from16 v16, v4

    .line 65
    .line 66
    check-cast v16, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 67
    .line 68
    or-int/lit8 v1, v2, 0x1

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 71
    .line 72
    .line 73
    move-result v18

    .line 74
    iget v0, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    .line 75
    .line 76
    move/from16 v19, v0

    .line 77
    .line 78
    invoke-static/range {v14 .. v19}, Lcoil3/util/UtilsKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 79
    .line 80
    .line 81
    return-object v3

    .line 82
    :pswitch_1
    move-object/from16 v7, p1

    .line 83
    .line 84
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 85
    .line 86
    move-object/from16 v1, p2

    .line 87
    .line 88
    check-cast v1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 94
    .line 95
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    or-int/lit8 v1, v2, 0x1

    .line 100
    .line 101
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    iget v9, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    .line 106
    .line 107
    move-object/from16 v20, v6

    .line 108
    .line 109
    move-object v6, v4

    .line 110
    move-object v4, v5

    .line 111
    move-object/from16 v5, v20

    .line 112
    .line 113
    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 114
    .line 115
    .line 116
    return-object v3

    .line 117
    :pswitch_2
    move-object/from16 v13, p1

    .line 118
    .line 119
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 120
    .line 121
    move-object/from16 v1, p2

    .line 122
    .line 123
    check-cast v1, Ljava/lang/Number;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-object v10, v5

    .line 129
    check-cast v10, Landroidx/glance/GlanceModifier;

    .line 130
    .line 131
    move-object v11, v6

    .line 132
    check-cast v11, Landroidx/glance/layout/Alignment;

    .line 133
    .line 134
    move-object v12, v4

    .line 135
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    or-int/lit8 v14, v2, 0x1

    .line 138
    .line 139
    iget v15, v0, Landroidx/glance/layout/BoxKt$Box$3;->$$default:I

    .line 140
    .line 141
    invoke-static/range {v10 .. v15}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 142
    .line 143
    .line 144
    return-object v3

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
