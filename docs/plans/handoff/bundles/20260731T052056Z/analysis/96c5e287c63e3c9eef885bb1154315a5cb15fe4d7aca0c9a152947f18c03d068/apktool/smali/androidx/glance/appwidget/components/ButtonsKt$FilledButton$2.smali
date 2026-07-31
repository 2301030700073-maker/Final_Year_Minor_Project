.class public final Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $colors:Ljava/lang/Object;

.field public final synthetic $enabled:Z

.field public final synthetic $icon:Ljava/lang/Object;

.field public final synthetic $maxLines:I

.field public final synthetic $modifier:Ljava/lang/Object;

.field public final synthetic $onClick:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Landroidx/glance/GlanceModifier;ZLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/ButtonColors;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$text:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$onClick:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$modifier:Ljava/lang/Object;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$enabled:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$icon:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$colors:Ljava/lang/Object;

    .line 15
    .line 16
    iput p7, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$maxLines:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$$changed:I

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$r8$classId:I

    .line 25
    iput-boolean p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$enabled:Z

    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$onClick:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$modifier:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$icon:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$text:Ljava/lang/String;

    iput-object p6, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$colors:Ljava/lang/Object;

    iput p7, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$maxLines:I

    iput p8, p0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$colors:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$icon:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$modifier:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$onClick:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v13, p1

    .line 19
    .line 20
    check-cast v13, Landroidx/compose/runtime/GapComposer;

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
    move-object v8, v6

    .line 30
    check-cast v8, Landroidx/compose/ui/Modifier;

    .line 31
    .line 32
    move-object v9, v5

    .line 33
    check-cast v9, Landroidx/compose/animation/EnterTransitionImpl;

    .line 34
    .line 35
    move-object v10, v4

    .line 36
    check-cast v10, Landroidx/compose/animation/ExitTransitionImpl;

    .line 37
    .line 38
    move-object v12, v3

    .line 39
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    iget v1, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$maxLines:I

    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    iget v15, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$$changed:I

    .line 50
    .line 51
    iget-boolean v7, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$enabled:Z

    .line 52
    .line 53
    iget-object v11, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$text:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static/range {v7 .. v15}, Landroidx/compose/animation/CrossfadeKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransitionImpl;Landroidx/compose/animation/ExitTransitionImpl;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :pswitch_0
    move-object/from16 v23, p1

    .line 60
    .line 61
    check-cast v23, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    move-object/from16 v1, p2

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-object/from16 v17, v6

    .line 71
    .line 72
    check-cast v17, Landroidx/glance/appwidget/action/RunCallbackAction;

    .line 73
    .line 74
    move-object/from16 v18, v5

    .line 75
    .line 76
    check-cast v18, Landroidx/glance/GlanceModifier;

    .line 77
    .line 78
    move-object/from16 v20, v4

    .line 79
    .line 80
    check-cast v20, Landroidx/glance/AndroidResourceImageProvider;

    .line 81
    .line 82
    move-object/from16 v21, v3

    .line 83
    .line 84
    check-cast v21, Landroidx/glance/ButtonColors;

    .line 85
    .line 86
    iget v1, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$$changed:I

    .line 87
    .line 88
    or-int/lit8 v24, v1, 0x1

    .line 89
    .line 90
    iget-object v1, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$text:Ljava/lang/String;

    .line 91
    .line 92
    iget-boolean v3, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$enabled:Z

    .line 93
    .line 94
    iget v0, v0, Landroidx/glance/appwidget/components/ButtonsKt$FilledButton$2;->$maxLines:I

    .line 95
    .line 96
    move/from16 v22, v0

    .line 97
    .line 98
    move-object/from16 v16, v1

    .line 99
    .line 100
    move/from16 v19, v3

    .line 101
    .line 102
    invoke-static/range {v16 .. v24}, Lcoil3/util/ContextsKt;->FilledButton(Ljava/lang/String;Landroidx/glance/appwidget/action/RunCallbackAction;Landroidx/glance/GlanceModifier;ZLandroidx/glance/AndroidResourceImageProvider;Landroidx/glance/ButtonColors;ILandroidx/compose/runtime/GapComposer;I)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
