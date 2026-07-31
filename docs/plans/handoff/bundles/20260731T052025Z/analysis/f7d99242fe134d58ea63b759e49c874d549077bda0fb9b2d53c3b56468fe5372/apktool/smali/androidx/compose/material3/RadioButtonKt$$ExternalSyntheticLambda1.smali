.class public final synthetic Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroidx/compose/material3/RadioButtonColors;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/material3/RadioButtonColors;

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$6:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$6:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-boolean v0, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    iget-boolean v3, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Landroidx/compose/material3/RadioButtonColors;

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/Composer;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method
