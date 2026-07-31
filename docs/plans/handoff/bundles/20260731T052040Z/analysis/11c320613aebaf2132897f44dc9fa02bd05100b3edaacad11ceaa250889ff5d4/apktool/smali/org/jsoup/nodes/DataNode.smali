.class public final Lorg/jsoup/nodes/DataNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/jsoup/nodes/DataNode;

    .line 6
    .line 7
    return-object p0
.end method

.method public final clone()Lorg/jsoup/nodes/Node;
    .locals 0

    .line 8
    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/DataNode;

    return-object p0
.end method

.method public final nodeName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "#data"

    .line 2
    .line 3
    return-object p0
.end method

.method public final outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p2, p2, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne p2, v1, :cond_2

    .line 9
    .line 10
    const-string p2, "<![CDATA["

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 23
    .line 24
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "script"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const-string p0, "//<![CDATA[\n"

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "\n//]]>"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 57
    .line 58
    const-string/jumbo v1, "style"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    const-string p0, "/*<![CDATA[*/\n"

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "\n/*]]>*/"

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "]]>"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {p1, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 98
    .line 99
    .line 100
    return-void
.end method
