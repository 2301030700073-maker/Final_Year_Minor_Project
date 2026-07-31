.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$4:I

    .line 11
    .line 12
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$5:I

    .line 13
    .line 14
    iput p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$7:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroidx/compose/runtime/Composer;

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
    move-result v7

    .line 14
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    .line 16
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    iget-wide v2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$2:J

    .line 19
    .line 20
    iget v4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$4:I

    .line 21
    .line 22
    iget v5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$5:I

    .line 23
    .line 24
    iget v8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda0;->f$7:I

    .line 25
    .line 26
    invoke-static/range {v0 .. v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method
