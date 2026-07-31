.class public final Lkotlin/sequences/SubSequence$iterator$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public iterator:Ljava/lang/Object;

.field public position:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/collection/MutableOrderedSetWrapper;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 35
    new-instance v0, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableOrderedSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableOrderedSetWrapper;Lkotlin/sequences/SubSequence$iterator$1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lorg/minidns/util/Base64;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

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
    invoke-static {v0}, Lorg/minidns/util/Base64;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

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

.method public constructor <init>(Lkotlin/sequences/DistinctSequence;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 27
    iput p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/SubSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 30
    iget-object p1, p1, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 31
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
    check-cast v1, Lkotlin/sequences/DistinctSequence;

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v1, Lkotlin/sequences/DistinctSequence;->source:Ljava/lang/Object;

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
    iget-object v0, v1, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    iput-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_1
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 38
    .line 39
    return-void
.end method

.method public final hasNext()Z
    .locals 6

    .line 1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lkotlin/sequences/SubSequence$iterator$1;->calcNext$1()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 16
    .line 17
    if-ne p0, v2, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    return v1

    .line 21
    :pswitch_0
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 33
    .line 34
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lkotlin/sequences/SubSequence;

    .line 42
    .line 43
    iget-object v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Ljava/util/Iterator;

    .line 46
    .line 47
    :goto_0
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 48
    .line 49
    iget v5, v0, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 50
    .line 51
    if-ge v4, v5, :cond_2

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 63
    .line 64
    add-int/2addr v4, v2

    .line 65
    iput v4, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 69
    .line 70
    iget v0, v0, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 71
    .line 72
    if-ge p0, v0, :cond_3

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    move v1, v2

    .line 81
    :cond_3
    return v1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
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
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/sequences/SubSequence$iterator$1;->calcNext$1()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object v1

    .line 31
    :pswitch_0
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 34
    .line 35
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lkotlin/sequences/SubSequence;

    .line 52
    .line 53
    iget-object v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->iterator:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ljava/util/Iterator;

    .line 56
    .line 57
    :goto_1
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 58
    .line 59
    iget v4, v0, Lkotlin/sequences/SubSequence;->startIndex:I

    .line 60
    .line 61
    if-ge v3, v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 73
    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 80
    .line 81
    iget v0, v0, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 82
    .line 83
    if-ge v3, v0, :cond_3

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    iput v3, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 95
    .line 96
    .line 97
    :goto_2
    return-object v1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Landroidx/collection/MutableSetWrapper;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/collection/MutableSetWrapper;->parent:Landroidx/collection/MutableScatterSet;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_1
    iget v0, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 32
    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    check-cast v1, Landroidx/collection/MutableOrderedSetWrapper;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/collection/MutableOrderedSetWrapper;->parent:Landroidx/collection/MutableOrderedScatterSet;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/collection/MutableOrderedScatterSet;->removeElementAt(I)V

    .line 40
    .line 41
    .line 42
    iput v2, p0, Lkotlin/sequences/SubSequence$iterator$1;->position:I

    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
