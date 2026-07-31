.class public final Landroidx/compose/material3/TextFieldKt$TextField$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic $enabled:Z

.field public final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $value:Ljava/lang/String;

.field public final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 3
    .line 4
    move-object v11, p2

    .line 5
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    move-object/from16 p1, p3

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x6

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr p1, v0

    .line 29
    :cond_1
    and-int/lit8 v0, p1, 0x13

    .line 30
    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_1
    and-int/lit8 v1, p1, 0x1

    .line 39
    .line 40
    invoke-virtual {v11, v1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    .line 47
    .line 48
    shl-int/lit8 p1, p1, 0x3

    .line 49
    .line 50
    and-int/lit8 v12, p1, 0x70

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$value:Ljava/lang/String;

    .line 53
    .line 54
    iget-boolean v3, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$enabled:Z

    .line 55
    .line 56
    iget-object v4, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    iget-object v5, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    iget-object v7, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 63
    .line 64
    iget-object v8, p0, Landroidx/compose/material3/TextFieldKt$TextField$3$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    invoke-virtual/range {v0 .. v12}, Landroidx/compose/material3/TextFieldDefaults;->DecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method
