.class public final Lio/noties/markwon/core/CorePlugin$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# instance fields
.field public final synthetic this$0:Lio/noties/markwon/core/CorePlugin;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/CorePlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/noties/markwon/core/CorePlugin$1;->this$0:Lio/noties/markwon/core/CorePlugin;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final visit(Lokhttp3/Dispatcher;Lorg/commonmark/node/Node;)V
    .locals 13

    .line 1
    check-cast p2, Lorg/commonmark/node/Text;

    .line 2
    .line 3
    iget-object p2, p2, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lio/noties/markwon/SpannableBuilder;

    .line 8
    .line 9
    iget-object v1, p1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcoil3/ComponentRegistry$Builder;

    .line 12
    .line 13
    iget-object v2, v0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lio/noties/markwon/core/CorePlugin$1;->this$0:Lio/noties/markwon/core/CorePlugin;

    .line 19
    .line 20
    iget-object p0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-virtual {p1}, Lokhttp3/Dispatcher;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-int/2addr v2, v3

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object v3, v1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lokhttp3/ConnectionPool;

    .line 59
    .line 60
    iget-object v3, v3, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Ljava/util/Map;

    .line 63
    .line 64
    const-class v4, Lorg/commonmark/node/Link;

    .line 65
    .line 66
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 71
    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 76
    .line 77
    invoke-direct {v4, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x7

    .line 81
    invoke-static {v4, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_0

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const-class v6, Landroid/text/style/URLSpan;

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, [Landroid/text/style/URLSpan;

    .line 99
    .line 100
    if-eqz v5, :cond_0

    .line 101
    .line 102
    array-length v6, v5

    .line 103
    if-lez v6, :cond_0

    .line 104
    .line 105
    iget-object v6, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v6, Lio/noties/markwon/RenderPropsImpl;

    .line 108
    .line 109
    array-length v8, v5

    .line 110
    :goto_1
    if-ge v7, v8, :cond_0

    .line 111
    .line 112
    aget-object v9, v5, v7

    .line 113
    .line 114
    sget-object v10, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 115
    .line 116
    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v10, v6, v11}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1, v6}, Lio/noties/markwon/core/factory/CodeSpanFactory;->getSpans(Lcoil3/ComponentRegistry$Builder;Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    add-int/2addr v11, v2

    .line 132
    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    add-int/2addr v9, v2

    .line 137
    iget-object v12, v0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-le v9, v11, :cond_2

    .line 144
    .line 145
    if-ltz v11, :cond_2

    .line 146
    .line 147
    if-gt v9, v12, :cond_2

    .line 148
    .line 149
    invoke-static {v0, v10, v11, v9}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 150
    .line 151
    .line 152
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    return-void
.end method
