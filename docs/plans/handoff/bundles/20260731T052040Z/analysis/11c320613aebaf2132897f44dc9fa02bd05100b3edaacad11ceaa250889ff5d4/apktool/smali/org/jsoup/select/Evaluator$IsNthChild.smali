.class public Lorg/jsoup/select/Evaluator$IsNthChild;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_b

    .line 5
    .line 6
    instance-of p1, p1, Lorg/jsoup/nodes/Document;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    iget p1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->$r8$classId:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    :goto_0
    move v4, v0

    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_1
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    move v3, v0

    .line 32
    move v4, v3

    .line 33
    :goto_1
    if-ge v3, v2, :cond_9

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v7, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 44
    .line 45
    iget-object v7, v7, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    :cond_2
    if-ne v5, p2, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_0
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move-object p1, p2

    .line 67
    move v2, v0

    .line 68
    :goto_2
    if-eqz p1, :cond_6

    .line 69
    .line 70
    iget-object v3, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 71
    .line 72
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 75
    .line 76
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v4, v2

    .line 92
    goto :goto_4

    .line 93
    :pswitch_1
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 94
    .line 95
    if-nez p1, :cond_7

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->childNodes:Lorg/jsoup/nodes/Element$NodeList;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    move p1, v0

    .line 107
    goto :goto_3

    .line 108
    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    :goto_3
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    sub-int/2addr p1, p2

    .line 121
    move v4, p1

    .line 122
    goto :goto_4

    .line 123
    :pswitch_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    add-int/lit8 v4, p1, 0x1

    .line 128
    .line 129
    :cond_9
    :goto_4
    iget p1, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->a:I

    .line 130
    .line 131
    iget p0, p0, Lorg/jsoup/select/Evaluator$IsNthChild;->b:I

    .line 132
    .line 133
    if-nez p1, :cond_a

    .line 134
    .line 135
    if-ne v4, p0, :cond_b

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_a
    sub-int/2addr v4, p0

    .line 139
    mul-int p0, v4, p1

    .line 140
    .line 141
    if-ltz p0, :cond_b

    .line 142
    .line 143
    rem-int/2addr v4, p1

    .line 144
    if-nez v4, :cond_b

    .line 145
    .line 146
    :goto_5
    return v1

    .line 147
    :cond_b
    :goto_6
    return v0

    .line 148
    nop

    .line 149
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
