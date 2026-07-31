.class public final Lkotlin/sequences/DistinctSequence;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final keySelector:Lkotlin/jvm/functions/Function1;

.field public final source:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/DistinctSequence;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/sequences/DistinctSequence;->source:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/sequences/DistinctSequence;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/sequences/SubSequence$iterator$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/DistinctSequence;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lkotlin/sequences/DistinctIterator;

    .line 13
    .line 14
    iget-object v1, p0, Lkotlin/sequences/DistinctSequence;->source:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lkotlin/sequences/TakeWhileSequence;

    .line 17
    .line 18
    new-instance v2, Landroidx/core/view/TreeIterator;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Landroidx/core/view/TreeIterator;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    check-cast p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v0, v2, p0}, Lkotlin/sequences/DistinctIterator;-><init>(Ljava/util/Iterator;Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
