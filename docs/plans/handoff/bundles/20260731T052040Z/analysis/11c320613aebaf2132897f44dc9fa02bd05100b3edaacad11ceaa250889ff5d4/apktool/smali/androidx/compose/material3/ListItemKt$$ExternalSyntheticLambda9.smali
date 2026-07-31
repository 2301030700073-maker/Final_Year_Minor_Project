.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$10:Landroidx/compose/material3/ListItemShapes;

.field public final synthetic f$11:Landroidx/compose/material3/ListItemColors;

.field public final synthetic f$12:Landroidx/compose/material3/ListItemElevation;

.field public final synthetic f$13:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$16:I

.field public final synthetic f$2:Z

.field public final synthetic f$7:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$2:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/ui/Alignment$Vertical;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$10:Landroidx/compose/material3/ListItemShapes;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$11:Landroidx/compose/material3/ListItemColors;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$12:Landroidx/compose/material3/ListItemElevation;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$13:Landroidx/compose/foundation/layout/PaddingValues;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    iput p9, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$16:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$16:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$0:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$2:Z

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$7:Landroidx/compose/ui/Alignment$Vertical;

    .line 22
    .line 23
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$10:Landroidx/compose/material3/ListItemShapes;

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$11:Landroidx/compose/material3/ListItemColors;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$12:Landroidx/compose/material3/ListItemElevation;

    .line 28
    .line 29
    iget-object v6, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$13:Landroidx/compose/foundation/layout/PaddingValues;

    .line 30
    .line 31
    iget-object v7, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda9;->f$15:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ListItemKt;->ListItem(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/material3/ListItemShapes;Landroidx/compose/material3/ListItemColors;Landroidx/compose/material3/ListItemElevation;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
