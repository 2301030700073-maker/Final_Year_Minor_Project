.class public final Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcoil3/size/SizeResolver;


# static fields
.field public static final $stable:I


# instance fields
.field private final _constraints:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-wide v0, Lcom/skydoves/landscapist/ImageLoadKt;->ZeroConstraints:J

    .line 5
    .line 6
    new-instance v2, Landroidx/compose/ui/unit/Constraints;

    .line 7
    .line 8
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;->_constraints:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public setConstraints-BRTryo0(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;->_constraints:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/ui/unit/Constraints;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;->_constraints:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    new-instance v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
