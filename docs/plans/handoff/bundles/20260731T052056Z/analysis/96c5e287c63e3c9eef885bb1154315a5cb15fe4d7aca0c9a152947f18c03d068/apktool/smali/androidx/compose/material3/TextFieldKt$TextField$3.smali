.class public final Landroidx/compose/material3/TextFieldKt$TextField$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic $enabled:Z

.field public final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic $keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic $maxLines:I

.field public final synthetic $mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic $minLines:I

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;

.field public final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $value:Ljava/lang/String;

.field public final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;IILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 27
    .line 28
    iput-object p13, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    iput-object p14, p0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    and-int/2addr v1, v4

    .line 25
    invoke-virtual {v15, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const v1, 0x7f1200f9

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v15}, Landroidx/compose/material3/internal/LayoutUtilKt;->getString-2EP1pXo(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const/high16 v1, 0x438c0000    # 280.0f

    .line 38
    .line 39
    const/high16 v2, 0x42600000    # 56.0f

    .line 40
    .line 41
    iget-object v3, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    invoke-static {v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    .line 48
    .line 49
    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    .line 50
    .line 51
    iget-wide v3, v10, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    .line 52
    .line 53
    invoke-direct {v13, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Landroidx/compose/material3/TextFieldKt$TextField$3$1;

    .line 57
    .line 58
    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 59
    .line 60
    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 61
    .line 62
    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Ljava/lang/String;

    .line 63
    .line 64
    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    .line 65
    .line 66
    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 69
    .line 70
    invoke-direct/range {v3 .. v10}, Landroidx/compose/material3/TextFieldKt$TextField$3$1;-><init>(Ljava/lang/String;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V

    .line 71
    .line 72
    .line 73
    const v1, 0x568400e5

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v3, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 83
    .line 84
    move-object v3, v4

    .line 85
    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    .line 86
    .line 87
    move-object v8, v3

    .line 88
    move v3, v5

    .line 89
    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 90
    .line 91
    move-object v10, v6

    .line 92
    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    .line 93
    .line 94
    move-object v12, v7

    .line 95
    const/4 v7, 0x0

    .line 96
    move-object v9, v8

    .line 97
    iget v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    .line 98
    .line 99
    iget v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    move-object/from16 v17, v9

    .line 103
    .line 104
    move v9, v0

    .line 105
    move-object/from16 v0, v17

    .line 106
    .line 107
    invoke-static/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    return-object v0
.end method
