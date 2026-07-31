.class public final synthetic Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroidx/compose/material3/SwitchColors;


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/material3/SwitchColors;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    iget-boolean v0, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$0:Z

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget-boolean v3, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$4:Z

    .line 21
    .line 22
    iget-object v4, p0, Landroidx/compose/material3/SwitchKt$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/material3/SwitchColors;

    .line 23
    .line 24
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/GapComposer;I)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method
