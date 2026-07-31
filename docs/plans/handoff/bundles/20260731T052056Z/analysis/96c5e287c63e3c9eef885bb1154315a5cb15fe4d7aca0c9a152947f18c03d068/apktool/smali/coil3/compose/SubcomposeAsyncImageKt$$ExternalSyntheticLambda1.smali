.class public final synthetic Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcoil3/compose/internal/AsyncImageState;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$5:Landroidx/compose/ui/Alignment;

.field public final synthetic f$6:Landroidx/compose/ui/layout/ContentScale;


# direct methods
.method public synthetic constructor <init>(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$0:Lcoil3/compose/internal/AsyncImageState;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/ui/Alignment;

    .line 15
    .line 16
    iput-object p7, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/layout/ContentScale;

    .line 17
    .line 18
    iput-object p8, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 19
    .line 20
    iput p9, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$12:I

    .line 21
    .line 22
    iput p10, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$13:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$12:I

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
    iget p1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$13:I

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    iget-object v0, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$0:Lcoil3/compose/internal/AsyncImageState;

    .line 24
    .line 25
    iget-object v1, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    iget-object v3, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    iget-object v4, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    iget-object v5, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/ui/Alignment;

    .line 34
    .line 35
    iget-object v6, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/layout/ContentScale;

    .line 36
    .line 37
    iget-object v7, p0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda1;->f$11:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 38
    .line 39
    invoke-static/range {v0 .. v10}, Lcoil3/compose/AsyncImageKt;->SubcomposeAsyncImage-gl8XCv8(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method
