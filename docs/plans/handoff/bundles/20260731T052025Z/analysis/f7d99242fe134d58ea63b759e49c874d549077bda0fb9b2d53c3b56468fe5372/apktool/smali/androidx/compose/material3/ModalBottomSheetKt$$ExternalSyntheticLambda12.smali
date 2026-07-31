.class public final synthetic Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;ZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-boolean p4, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$2:Z

    .line 9
    .line 10
    iput-boolean p5, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$3:Z

    .line 11
    .line 12
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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v6

    .line 14
    iget-wide v0, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$0:J

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$1:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iget-boolean v3, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$2:Z

    .line 19
    .line 20
    iget-boolean v4, p0, Landroidx/compose/material3/ModalBottomSheetKt$$ExternalSyntheticLambda12;->f$3:Z

    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ModalBottomSheetKt;->Scrim-KTwxG1Y(JLkotlin/jvm/functions/Function0;ZZLandroidx/compose/runtime/Composer;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
