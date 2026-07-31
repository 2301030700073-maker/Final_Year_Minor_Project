.class public final synthetic Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:F

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput p6, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/ui/Modifier;

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 20
    .line 21
    iget-wide v2, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 22
    .line 23
    iget v6, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$4:I

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method
