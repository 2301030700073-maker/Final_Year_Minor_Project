.class public final Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final NodeIterPool:Lokhttp3/FormBody$Builder;


# instance fields
.field public final checkSiblings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/util/function/Supplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lokhttp3/FormBody$Builder;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lorg/jsoup/select/CombiningEvaluator;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lorg/jsoup/select/CombiningEvaluator;

    .line 9
    .line 10
    iget-object p1, p1, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lorg/jsoup/select/Evaluator;

    .line 27
    .line 28
    instance-of v1, v0, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    instance-of v0, v0, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_0
    iput-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->checkSiblings:Z

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final cost()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->cost()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    mul-int/lit8 p0, p0, 0xa

    .line 8
    .line 9
    return p0
.end method

.method public final evaluateMatch(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->checkSiblings:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, p2

    .line 18
    :goto_0
    if-eqz p1, :cond_2

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object p1, Lorg/jsoup/select/StructuralEvaluator$Has;->NodeIterPool:Lokhttp3/FormBody$Builder;

    .line 35
    .line 36
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->borrow()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lorg/jsoup/nodes/NodeIterator;

    .line 41
    .line 42
    iget-object v2, v1, Lorg/jsoup/nodes/NodeIterator;->type:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    iput-object p2, v1, Lorg/jsoup/nodes/NodeIterator;->next:Lorg/jsoup/nodes/Node;

    .line 51
    .line 52
    :cond_3
    iput-object p2, v1, Lorg/jsoup/nodes/NodeIterator;->current:Lorg/jsoup/nodes/Node;

    .line 53
    .line 54
    iput-object p2, v1, Lorg/jsoup/nodes/NodeIterator;->previous:Lorg/jsoup/nodes/Node;

    .line 55
    .line 56
    iput-object p2, v1, Lorg/jsoup/nodes/NodeIterator;->root:Lorg/jsoup/nodes/Node;

    .line 57
    .line 58
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iput-object v2, v1, Lorg/jsoup/nodes/NodeIterator;->currentParent:Lorg/jsoup/nodes/Node;

    .line 63
    .line 64
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/NodeIterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_7

    .line 69
    .line 70
    invoke-virtual {v1}, Lorg/jsoup/nodes/NodeIterator;->maybeFindNext()V

    .line 71
    .line 72
    .line 73
    iget-object v2, v1, Lorg/jsoup/nodes/NodeIterator;->next:Lorg/jsoup/nodes/Node;

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget-object v3, v1, Lorg/jsoup/nodes/NodeIterator;->current:Lorg/jsoup/nodes/Node;

    .line 78
    .line 79
    iput-object v3, v1, Lorg/jsoup/nodes/NodeIterator;->previous:Lorg/jsoup/nodes/Node;

    .line 80
    .line 81
    iput-object v2, v1, Lorg/jsoup/nodes/NodeIterator;->current:Lorg/jsoup/nodes/Node;

    .line 82
    .line 83
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Element;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, v1, Lorg/jsoup/nodes/NodeIterator;->currentParent:Lorg/jsoup/nodes/Node;

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    iput-object v3, v1, Lorg/jsoup/nodes/NodeIterator;->next:Lorg/jsoup/nodes/Node;

    .line 91
    .line 92
    if-ne v2, p2, :cond_5

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {p0, p2, v2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 96
    .line 97
    .line 98
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lokhttp3/FormBody$Builder;->release(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return v0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    :try_start_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_7
    invoke-virtual {p1, v1}, Lokhttp3/FormBody$Builder;->release(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x0

    .line 117
    return p0

    .line 118
    :goto_2
    invoke-virtual {p1, v1}, Lokhttp3/FormBody$Builder;->release(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    .line 6
    .line 7
    aput-object p0, v0, v1

    .line 8
    .line 9
    const-string p0, ":has(%s)"

    .line 10
    .line 11
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
