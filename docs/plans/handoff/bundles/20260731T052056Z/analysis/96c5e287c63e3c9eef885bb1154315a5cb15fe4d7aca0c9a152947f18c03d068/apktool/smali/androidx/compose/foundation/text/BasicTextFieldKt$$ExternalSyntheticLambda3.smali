.class public final synthetic Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$10:I

.field public final synthetic f$11:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

.field public final synthetic f$12:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$13:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic f$14:Landroidx/compose/ui/graphics/SolidColor;

.field public final synthetic f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Z

.field public final synthetic f$5:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$6:Landroidx/compose/foundation/text/KeyboardOptions;

.field public final synthetic f$7:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$5:Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/foundation/text/KeyboardActions;

    .line 17
    .line 18
    iput-boolean p8, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$8:Z

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$9:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$10:I

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$11:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$12:Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    iput-object p13, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$13:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 29
    .line 30
    iput-object p14, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$14:Landroidx/compose/ui/graphics/SolidColor;

    .line 31
    .line 32
    iput-object p15, p0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
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
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 16
    .line 17
    .line 18
    move-result v16

    .line 19
    iget-object v1, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    iget-object v1, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    move-object v3, v2

    .line 25
    iget-object v2, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$2:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    iget-boolean v3, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$3:Z

    .line 29
    .line 30
    move-object v5, v4

    .line 31
    iget-object v4, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$5:Landroidx/compose/ui/text/TextStyle;

    .line 32
    .line 33
    move-object v6, v5

    .line 34
    iget-object v5, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$6:Landroidx/compose/foundation/text/KeyboardOptions;

    .line 35
    .line 36
    move-object v7, v6

    .line 37
    iget-object v6, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$7:Landroidx/compose/foundation/text/KeyboardActions;

    .line 38
    .line 39
    move-object v8, v7

    .line 40
    iget-boolean v7, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$8:Z

    .line 41
    .line 42
    move-object v9, v8

    .line 43
    iget v8, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$9:I

    .line 44
    .line 45
    move-object v10, v9

    .line 46
    iget v9, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$10:I

    .line 47
    .line 48
    move-object v11, v10

    .line 49
    iget-object v10, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$11:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    move-object v12, v11

    .line 52
    iget-object v11, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$12:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    move-object v13, v12

    .line 55
    iget-object v12, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$13:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 56
    .line 57
    move-object v14, v13

    .line 58
    iget-object v13, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$14:Landroidx/compose/ui/graphics/SolidColor;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/compose/foundation/text/BasicTextFieldKt$$ExternalSyntheticLambda3;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    move-object/from16 v17, v14

    .line 63
    .line 64
    move-object v14, v0

    .line 65
    move-object/from16 v0, v17

    .line 66
    .line 67
    invoke-static/range {v0 .. v16}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/SolidColor;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object v0
.end method
