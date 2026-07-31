.class public final synthetic Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:J

.field public final synthetic f$7:J

.field public final synthetic f$8:J

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 7
    .line 8
    iput-wide p4, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$4:J

    .line 9
    .line 10
    iput-wide p6, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$5:J

    .line 11
    .line 12
    iput-wide p8, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$6:J

    .line 13
    .line 14
    iput-wide p10, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$7:J

    .line 15
    .line 16
    iput-wide p12, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$8:J

    .line 17
    .line 18
    iput p14, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$9:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v13, p1

    .line 2
    .line 3
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$9:I

    .line 13
    .line 14
    or-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 17
    .line 18
    .line 19
    move-result v14

    .line 20
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/graphics/Shape;

    .line 24
    .line 25
    iget-wide v3, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$4:J

    .line 26
    .line 27
    iget-wide v5, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$5:J

    .line 28
    .line 29
    iget-wide v7, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$6:J

    .line 30
    .line 31
    iget-wide v9, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$7:J

    .line 32
    .line 33
    iget-wide v11, p0, Landroidx/compose/material3/SnackbarKt$$ExternalSyntheticLambda0;->f$8:J

    .line 34
    .line 35
    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/CardKt;->Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;I)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method
