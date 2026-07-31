.class public Lorg/jsoup/select/Evaluator$IsNthChild;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->a:I

    .line 7
    .line 8
    iput p2, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 8

    .line 1
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    instance-of p1, p1, Lorg/jsoup/nodes/Document;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget p1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->$r8$classId:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 21
    .line 22
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :goto_0
    move v4, v0

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_1
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->childNodes:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    move v3, v0

    .line 36
    move v4, v3

    .line 37
    :goto_1
    if-ge v3, v2, :cond_8

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v7, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 48
    .line 49
    iget-object v7, v7, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    :cond_2
    if-ne v5, p2, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_0
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 66
    .line 67
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 68
    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move-object p1, p2

    .line 73
    move v2, v0

    .line 74
    :goto_2
    if-eqz p1, :cond_6

    .line 75
    .line 76
    iget-object v3, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 77
    .line 78
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 81
    .line 82
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    move v4, v2

    .line 98
    goto :goto_3

    .line 99
    :pswitch_1
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    .line 100
    .line 101
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 102
    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    sub-int/2addr p1, p2

    .line 119
    move v4, p1

    .line 120
    goto :goto_3

    .line 121
    :pswitch_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    add-int/lit8 v4, p1, 0x1

    .line 126
    .line 127
    :cond_8
    :goto_3
    iget p1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->a:I

    .line 128
    .line 129
    iget p0, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->b:I

    .line 130
    .line 131
    if-nez p1, :cond_9

    .line 132
    .line 133
    if-ne v4, p0, :cond_a

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_9
    sub-int/2addr v4, p0

    .line 137
    mul-int p0, v4, p1

    .line 138
    .line 139
    if-ltz p0, :cond_a

    .line 140
    .line 141
    rem-int/2addr v4, p1

    .line 142
    if-nez v4, :cond_a

    .line 143
    .line 144
    :goto_4
    return v1

    .line 145
    :cond_a
    :goto_5
    return v0

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->a:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v2, ":%s(%3$d)"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v2, ":%s(%2$dn)"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v2, ":%s(%2$dn%3$+d)"

    .line 16
    .line 17
    :goto_0
    iget p0, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->$r8$classId:I

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string p0, "nth-of-type"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    const-string p0, "nth-last-of-type"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :pswitch_1
    const-string p0, "nth-last-child"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_2
    const-string p0, "nth-child"

    .line 32
    .line 33
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v3, 0x3

    .line 42
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object p0, v3, v4

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    aput-object v1, v3, p0

    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    aput-object v0, v3, p0

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
