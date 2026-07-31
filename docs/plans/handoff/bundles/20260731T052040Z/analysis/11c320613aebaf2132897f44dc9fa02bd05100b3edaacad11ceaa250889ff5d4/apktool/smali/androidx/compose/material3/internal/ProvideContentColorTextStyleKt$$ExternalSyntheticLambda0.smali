.class public final synthetic Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function2;

    .line 9
    .line 10
    iput p5, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$3:I

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
    iget-wide v0, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$0:J

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/text/TextStyle;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/LayoutUtilKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method
