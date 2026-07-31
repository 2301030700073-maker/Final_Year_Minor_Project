.class public final synthetic Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$1:Landroidx/compose/ui/unit/Density;

.field public final synthetic f$2:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

.field public final synthetic f$3:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

.field public final synthetic f$4:Lkotlinx/collections/immutable/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lkotlinx/collections/immutable/ImmutableList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$4:Lkotlinx/collections/immutable/ImmutableList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/4 v9, 0x0

    .line 5
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 10
    .line 11
    iget-object v4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 12
    .line 13
    iget-object v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowStateKt$$ExternalSyntheticLambda0;->f$4:Lkotlinx/collections/immutable/ImmutableList;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    sget-object v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->Settled:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 17
    .line 18
    invoke-direct/range {v0 .. v9}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lkotlinx/collections/immutable/ImmutableList;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;FF)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method
