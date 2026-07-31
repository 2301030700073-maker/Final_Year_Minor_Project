.class public final Lkotlin/collections/IndexingIterable;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final iteratorFactory:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/IndexingIterable;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/IndexingIterable;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/collections/IndexingIterable;->iteratorFactory:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lkotlin/UIntArray$Iterator;

    .line 9
    .line 10
    check-cast p0, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lkotlin/UIntArray$Iterator;-><init>(Lkotlinx/serialization/internal/EnumDescriptor;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    check-cast p0, Lkotlin/text/DelimitedRangesSequence;

    .line 17
    .line 18
    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/text/DelimitedRangesSequence;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Lkotlin/collections/IndexingIterator;

    .line 25
    .line 26
    check-cast p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Lkotlin/collections/IndexingIterator;-><init>(Ljava/util/Iterator;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
