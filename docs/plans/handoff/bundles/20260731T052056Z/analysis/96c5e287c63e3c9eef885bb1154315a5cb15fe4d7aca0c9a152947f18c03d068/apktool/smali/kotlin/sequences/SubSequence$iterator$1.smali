.class public final Lkotlin/sequences/SubSequence$iterator$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public iterator:Ljava/lang/Object;

.field public position:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableOrderedSetWrapper;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 37
    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;Lkotlin/sequences/SubSequence$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/collection/MutableSetWrapper;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

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
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 11
    .line 12
    new-instance v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;Lkotlin/sequences/SubSequence$iterator$1;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/io/FileTreeWalk;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 31
    iput p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/SubSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 27
    iget-object p1, p1, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 28
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

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
    check-cast v1, Lkotlin/io/FileTreeWalk;

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

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
    iget-object v0, v1, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

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
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 38
    .line 39
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :pswitch_2
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 47
    .line 48
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_3
    check-cast v1, Lkotlin/sequences/SubSequence;

    .line 54
    .line 55
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/util/Iterator;

    .line 58
    .line 59
    :goto_0
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 60
    .line 61
    iget v5, v1, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 62
    .line 63
    if-ge v4, v5, :cond_3

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 75
    .line 76
    add-int/2addr v4, v3

    .line 77
    iput v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 81
    .line 82
    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 83
    .line 84
    if-ge p0, v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    move v2, v3

    .line 93
    :cond_4
    return v2

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
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
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

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
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object v2

    .line 91
    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 94
    .line 95
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_2
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 103
    .line 104
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_3
    check-cast v1, Lkotlin/sequences/SubSequence;

    .line 110
    .line 111
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Ljava/util/Iterator;

    .line 114
    .line 115
    :goto_2
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 116
    .line 117
    iget v4, v1, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 118
    .line 119
    if-ge v3, v4, :cond_4

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 131
    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 138
    .line 139
    iget v1, v1, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 140
    .line 141
    if-ge v3, v1, :cond_5

    .line 142
    .line 143
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 153
    .line 154
    .line 155
    :goto_3
    return-object v2

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "Operation is not supported for read-only collection"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Landroidx/collection/MutableSetWrapper;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/collection/MutableSetWrapper;->parent:Landroidx/collection/MutableScatterSet;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 32
    .line 33
    .line 34
    iput v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_2
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 38
    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    check-cast v1, Landroidx/collection/MutableOrderedSetWrapper;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/collection/MutableOrderedSetWrapper;->parent:Landroidx/collection/MutableOrderedScatterSet;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    .line 46
    .line 47
    .line 48
    iput v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 52
    .line 53
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
