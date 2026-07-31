.class public final Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;-><init>(Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$4:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcoil3/size/Size;

    .line 38
    .line 39
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$3:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 42
    .line 43
    iget-object p0, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 61
    .line 62
    check-cast p1, Landroidx/compose/ui/unit/Constraints;

    .line 63
    .line 64
    iget-wide p1, p1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolverKt;->access$inferredCoilSize-BRTryo0(J)Lcoil3/size/Size;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$2:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$3:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v3, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->L$4:Ljava/lang/Object;

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    iput p2, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->I$0:I

    .line 84
    .line 85
    iput v2, v0, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver$size$$inlined$mapNotNull$1$2$1;->label:I

    .line 86
    .line 87
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 92
    .line 93
    if-ne p0, p1, :cond_3

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method
