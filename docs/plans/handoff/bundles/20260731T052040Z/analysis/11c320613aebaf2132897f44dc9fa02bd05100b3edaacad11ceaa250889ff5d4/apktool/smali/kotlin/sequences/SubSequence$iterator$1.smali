.class public final Lkotlin/sequences/SubSequence$iterator$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public iterator:Ljava/lang/Object;

.field public position:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/MergingSequence;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 22
    iput p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/SubSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p1, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 10
    .line 11
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public calcNext$1()V
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlin/sequences/MergingSequence;

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lkotlin/sequences/MergingSequence;->sequence1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v1, Lkotlin/sequences/MergingSequence;->sequence2:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    iput-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    :goto_1
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 40
    .line 41
    return-void
.end method

.method public final hasNext()Z
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlin/sequences/SubSequence$iterator$1;->calcNext$1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 18
    .line 19
    if-ne p0, v3, :cond_1

    .line 20
    .line 21
    move v2, v3

    .line 22
    :cond_1
    return v2

    .line 23
    :pswitch_0
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 24
    .line 25
    check-cast v1, Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ge p0, v0, :cond_2

    .line 32
    .line 33
    move v2, v3

    .line 34
    :cond_2
    return v2

    .line 35
    :pswitch_1
    check-cast v1, Lkotlin/sequences/SubSequence;

    .line 36
    .line 37
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Ljava/util/Iterator;

    .line 40
    .line 41
    :goto_0
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 42
    .line 43
    iget v5, v1, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 44
    .line 45
    if-ge v4, v5, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 57
    .line 58
    add-int/2addr v4, v3

    .line 59
    iput v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 63
    .line 64
    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 65
    .line 66
    if-ge p0, v1, :cond_4

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    move v2, v3

    .line 75
    :cond_4
    return v2

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlin/sequences/SubSequence$iterator$1;->calcNext$1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v2

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lkotlin/sequences/SubSequence$iterator$1;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 40
    .line 41
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 46
    .line 47
    check-cast v1, Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 56
    .line 57
    iget-object v0, v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->next:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Hash code of an element ("

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ") has changed after it was added to the persistent set."

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object v2

    .line 91
    :pswitch_1
    check-cast v1, Lkotlin/sequences/SubSequence;

    .line 92
    .line 93
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/util/Iterator;

    .line 96
    .line 97
    :goto_2
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 98
    .line 99
    iget v4, v1, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 100
    .line 101
    if-ge v3, v4, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 113
    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    .line 116
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 120
    .line 121
    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 122
    .line 123
    if-ge v3, v1, :cond_5

    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 135
    .line 136
    .line 137
    :goto_3
    return-object v2

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v0, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string v0, "Operation is not supported for read-only collection"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
