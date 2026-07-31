.class public final synthetic Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$11:Z

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$14:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic f$15:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$16:Landroidx/compose/material3/TextFieldColors;

.field public final synthetic f$17:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$18:I

.field public final synthetic f$19:I

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$7:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$11:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$12:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$13:Z

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$14:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 21
    .line 22
    iput-object p10, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$15:Landroidx/compose/foundation/layout/PaddingValues;

    .line 23
    .line 24
    iput-object p11, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$16:Landroidx/compose/material3/TextFieldColors;

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$17:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    iput p13, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$18:I

    .line 29
    .line 30
    iput p14, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$19:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    check-cast v12, Landroidx/compose/runtime/Composer;

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
    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$18:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$19:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v14

    .line 28
    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/CharSequence;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$2:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget-object v2, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$3:Landroidx/compose/material3/TextFieldLabelPosition$Attached;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-object v3, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$4:Lkotlin/jvm/functions/Function3;

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$7:Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    iget-boolean v5, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$11:Z

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    iget-boolean v6, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$12:Z

    .line 47
    .line 48
    move-object v8, v7

    .line 49
    iget-boolean v7, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$13:Z

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    iget-object v8, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$14:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 53
    .line 54
    move-object v10, v9

    .line 55
    iget-object v9, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$15:Landroidx/compose/foundation/layout/PaddingValues;

    .line 56
    .line 57
    move-object v11, v10

    .line 58
    iget-object v10, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$16:Landroidx/compose/material3/TextFieldColors;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda4;->f$17:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 61
    .line 62
    move-object v15, v11

    .line 63
    move-object v11, v0

    .line 64
    move-object v0, v15

    .line 65
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/internal/Icons$Filled;->CommonDecorationBox(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldLabelPosition$Attached;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object v0
.end method
