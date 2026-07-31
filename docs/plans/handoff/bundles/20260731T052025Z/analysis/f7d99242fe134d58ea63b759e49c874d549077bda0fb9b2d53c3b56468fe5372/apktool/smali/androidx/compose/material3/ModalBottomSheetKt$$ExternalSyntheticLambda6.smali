.class public final synthetic Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$11:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$12:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic f$13:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$2:Landroidx/compose/material3/SheetState;

.field public final synthetic f$3:F

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/material3/SheetState;

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$3:F

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$4:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$5:Landroidx/compose/ui/graphics/Shape;

    .line 13
    .line 14
    iput-wide p6, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$6:J

    .line 15
    .line 16
    iput-wide p8, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$7:J

    .line 17
    .line 18
    iput-wide p10, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$9:J

    .line 19
    .line 20
    iput-object p12, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$10:Lkotlin/jvm/functions/Function2;

    .line 21
    .line 22
    iput-object p13, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$11:Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    iput-object p14, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$12:Landroidx/compose/material3/ModalBottomSheetProperties;

    .line 25
    .line 26
    iput-object p15, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$13:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    move/from16 p1, p16

    .line 29
    .line 30
    iput p1, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$14:I

    .line 31
    .line 32
    move/from16 p1, p17

    .line 33
    .line 34
    iput p1, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$15:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$14:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v16

    .line 22
    iget v1, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$15:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v17

    .line 28
    iget-object v1, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$2:Landroidx/compose/material3/SheetState;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget v2, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$3:F

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-boolean v3, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$4:Z

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$5:Landroidx/compose/ui/graphics/Shape;

    .line 41
    .line 42
    move-object v7, v5

    .line 43
    iget-wide v5, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$6:J

    .line 44
    .line 45
    move-object v9, v7

    .line 46
    iget-wide v7, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$7:J

    .line 47
    .line 48
    move-object v11, v9

    .line 49
    iget-wide v9, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$9:J

    .line 50
    .line 51
    move-object v12, v11

    .line 52
    iget-object v11, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$10:Lkotlin/jvm/functions/Function2;

    .line 53
    .line 54
    move-object v13, v12

    .line 55
    iget-object v12, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$11:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    move-object v14, v13

    .line 58
    iget-object v13, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$12:Landroidx/compose/material3/ModalBottomSheetProperties;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda6;->f$13:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    move-object/from16 v18, v14

    .line 63
    .line 64
    move-object v14, v0

    .line 65
    move-object/from16 v0, v18

    .line 66
    .line 67
    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/ModalBottomSheetKt;->ModalBottomSheet-YbuCTN8(Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    .line 72
    return-object v0
.end method
