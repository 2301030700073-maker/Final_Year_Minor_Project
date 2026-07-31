.class public final Lkotlin/sequences/MergingSequence;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final sequence1:Ljava/lang/Object;

.field public final sequence2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 12
    iput p3, p0, Lkotlin/sequences/MergingSequence;->$r8$classId:I

    iput-object p1, p0, Lkotlin/sequences/MergingSequence;->sequence1:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/sequences/MergingSequence;->sequence2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lkotlin/sequences/MergingSequence;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlin/sequences/MergingSequence;->sequence1:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lkotlin/sequences/MergingSequence;->sequence2:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/sequences/MergingSequence;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/core/view/TreeIterator;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/core/view/TreeIterator;-><init>(Lkotlin/sequences/MergingSequence;B)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lkotlin/sequences/SubSequence$iterator$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Landroidx/core/view/TreeIterator;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/core/view/TreeIterator;-><init>(Lkotlin/sequences/MergingSequence;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
