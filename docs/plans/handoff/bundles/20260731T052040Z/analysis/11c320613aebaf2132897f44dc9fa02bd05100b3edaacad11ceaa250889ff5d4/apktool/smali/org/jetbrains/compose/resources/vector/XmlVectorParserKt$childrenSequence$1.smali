.class public final Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $this_childrenSequence:Lorg/jetbrains/compose/resources/vector/xmldom/Element;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->$this_childrenSequence:Lorg/jetbrains/compose/resources/vector/xmldom/Element;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->$this_childrenSequence:Lorg/jetbrains/compose/resources/vector/xmldom/Element;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;-><init>(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 4
    .line 5
    iget v1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->I$1:I

    .line 13
    .line 14
    iget v3, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->I$0:I

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/2addr v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->$this_childrenSequence:Lorg/jetbrains/compose/resources/vector/xmldom/Element;

    .line 32
    .line 33
    check-cast p1, Lokhttp3/ConnectionPool;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lorg/w3c/dom/Node;

    .line 41
    .line 42
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    if-ge v3, v1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->$this_childrenSequence:Lorg/jetbrains/compose/resources/vector/xmldom/Element;

    .line 54
    .line 55
    check-cast p1, Lokhttp3/ConnectionPool;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lorg/w3c/dom/Node;

    .line 63
    .line 64
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    instance-of v4, p1, Lorg/w3c/dom/Element;

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    new-instance v4, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 84
    .line 85
    check-cast p1, Lorg/w3c/dom/Element;

    .line 86
    .line 87
    invoke-direct {v4, p1}, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;-><init>(Lorg/w3c/dom/Element;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance v4, Lokhttp3/ConnectionPool;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const/16 v5, 0x18

    .line 97
    .line 98
    invoke-direct {v4, p1, v5}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iput-object v0, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v3, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->I$0:I

    .line 104
    .line 105
    iput v1, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->I$1:I

    .line 106
    .line 107
    iput v2, p0, Lorg/jetbrains/compose/resources/vector/XmlVectorParserKt$childrenSequence$1;->label:I

    .line 108
    .line 109
    invoke-virtual {v0, v4, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p0
.end method
