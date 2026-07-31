.class public final synthetic Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic f$5:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-boolean p7, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/material3/IconButtonColors;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/graphics/Shape;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x180001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/material3/IconButtonColors;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/ui/graphics/Shape;

    .line 23
    .line 24
    iget-object v6, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    iget-boolean v7, p0, Landroidx/compose/material3/IconButtonKt$$ExternalSyntheticLambda0;->f$2:Z

    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/BadgeKt;->IconButton(ILandroidx/compose/material3/IconButtonColors;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function0;Z)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
