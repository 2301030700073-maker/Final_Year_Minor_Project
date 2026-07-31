.class public final Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final $element:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public _hasNext:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$element:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    iget-boolean p0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_1
    iget-boolean p0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$element:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-boolean v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 15
    .line 16
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;

    .line 17
    .line 18
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/util/OneElementArrayMap;->value:Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v1

    .line 25
    :pswitch_0
    iget-boolean v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iput-boolean v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 30
    .line 31
    move-object v1, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-object v1

    .line 37
    :pswitch_1
    iget-boolean v0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iput-boolean v3, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->_hasNext:Z

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-static {}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m()V

    .line 46
    .line 47
    .line 48
    :goto_2
    return-object v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget p0, p0, Lkotlin/sequences/SequencesKt__SequencesKt$sequenceOf$1$1;->$r8$classId:I

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
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string v0, "Operation is not supported for read-only collection"

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
