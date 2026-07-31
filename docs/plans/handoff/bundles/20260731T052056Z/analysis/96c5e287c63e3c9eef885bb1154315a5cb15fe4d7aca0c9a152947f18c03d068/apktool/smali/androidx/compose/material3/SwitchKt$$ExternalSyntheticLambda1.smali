.class public final synthetic Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/material3/SwitchColors;

.field public final synthetic f$5:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic f$6:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/material3/SwitchColors;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/graphics/Shape;

    .line 15
    .line 16
    iput p7, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$7:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$7:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 20
    .line 21
    iget-boolean v2, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$2:Z

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/material3/SwitchColors;

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/graphics/Shape;

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/SwitchKt;->SwitchImpl(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/GapComposer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
