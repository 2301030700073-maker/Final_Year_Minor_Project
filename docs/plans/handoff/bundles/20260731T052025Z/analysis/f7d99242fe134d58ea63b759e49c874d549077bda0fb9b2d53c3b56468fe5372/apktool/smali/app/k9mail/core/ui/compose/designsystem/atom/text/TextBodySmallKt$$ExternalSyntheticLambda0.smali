.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Lkotlinx/collections/immutable/PersistentMap;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 11
    .line 12
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput p7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$6:Lkotlinx/collections/immutable/PersistentMap;

    .line 17
    .line 18
    iput p9, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    iput p10, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

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
    iget p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$7:I

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
    iget-object v0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    iget-object v1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-wide v2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$2:J

    .line 22
    .line 23
    iget-object v4, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 24
    .line 25
    iget v5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$4:I

    .line 26
    .line 27
    iget v6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$5:I

    .line 28
    .line 29
    iget-object v7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$6:Lkotlinx/collections/immutable/PersistentMap;

    .line 30
    .line 31
    iget v10, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodySmallKt$$ExternalSyntheticLambda0;->f$8:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v10}, Lkotlin/math/MathKt;->TextBodySmall-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;II)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method
