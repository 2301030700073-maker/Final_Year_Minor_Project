.class public final Lkotlin/io/FileTreeWalk;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final direction:Ljava/lang/Object;

.field public final start:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 15
    iput p1, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 5

    .line 1
    iget v0, p0, Lkotlin/io/FileTreeWalk;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lkotlin/text/DelimitedRangesSequence$iterator$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_1
    check-cast v2, Lkotlin/sequences/TransformingSequence;

    .line 23
    .line 24
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v2, Lkotlin/sequences/TransformingSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 30
    .line 31
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    iget-object v3, v2, Lkotlin/sequences/TransformingSequence;->transformer:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    check-cast v1, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$$inlined$sortedBy$1;

    .line 56
    .line 57
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_2
    check-cast v2, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->convertToListIfNotCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    check-cast v1, Lkotlin/io/LinesSequence;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-object p0, v1, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Ljava/lang/Iterable;

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-direct {v0, v2, p0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$$ExternalSyntheticLambda0;-><init>(ILjava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Lkotlin/sequences/FilteringSequence;

    .line 95
    .line 96
    invoke-direct {p0, v1, v2, v0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 102
    .line 103
    .line 104
    move-object p0, v0

    .line 105
    :goto_1
    return-object p0

    .line 106
    :pswitch_3
    new-instance v0, Lkotlin/sequences/SubSequence$iterator$1;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :pswitch_4
    new-instance v0, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;

    .line 113
    .line 114
    invoke-direct {v0, p0}, Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;-><init>(Lkotlin/io/FileTreeWalk;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
