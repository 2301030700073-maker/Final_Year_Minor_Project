.class public final synthetic Landroidx/compose/foundation/text/HeightInLinesNode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/foundation/text/HeightInLinesNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/HeightInLinesNode;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "Font resolution state is not set."

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/HeightInLinesNode;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-static {v1}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0

    .line 22
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-static {v1}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    throw p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
