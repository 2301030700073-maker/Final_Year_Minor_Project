.class public final Lio/noties/markwon/core/CorePlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final onTextAddedListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method

.method public static visitCodeBlock(Lokhttp3/Dispatcher;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Block;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lio/noties/markwon/SpannableBuilder;

    .line 11
    .line 12
    iget-object v2, v1, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v3, 0xa0

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v4, Lcoil3/ComponentRegistry$Builder;

    .line 27
    .line 28
    iget-object v4, v4, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroidx/transition/Transition$1;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v1, v4, p2}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lokhttp3/Dispatcher;->ensureNewLine()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Lio/noties/markwon/RenderPropsImpl;

    .line 54
    .line 55
    sget-object v1, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    .line 56
    .line 57
    invoke-virtual {v1, p2, p1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderPropsImpl;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p3, v0}, Lokhttp3/Dispatcher;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p3}, Lokhttp3/Dispatcher;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final configureSpansFactory(Lio/noties/markwon/RenderPropsImpl;)V
    .locals 2

    .line 1
    new-instance p0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    invoke-direct {v0, v1}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    invoke-direct {v0, v1}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const-class v1, Lorg/commonmark/node/Emphasis;

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const-class v1, Lorg/commonmark/node/BlockQuote;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, v1}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const-class v1, Lorg/commonmark/node/Code;

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 49
    .line 50
    .line 51
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    .line 52
    .line 53
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 54
    .line 55
    .line 56
    const-class v0, Lorg/commonmark/node/IndentedCodeBlock;

    .line 57
    .line 58
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    invoke-direct {p0, v0}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const-class v0, Lorg/commonmark/node/ListItem;

    .line 68
    .line 69
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 70
    .line 71
    .line 72
    new-instance p0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    invoke-direct {p0, v0}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 76
    .line 77
    .line 78
    const-class v0, Lorg/commonmark/node/Heading;

    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 84
    .line 85
    const/4 v0, 0x5

    .line 86
    invoke-direct {p0, v0}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const-class v0, Lorg/commonmark/node/Link;

    .line 90
    .line 91
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Lio/noties/markwon/core/factory/CodeSpanFactory;

    .line 95
    .line 96
    const/16 v0, 0x8

    .line 97
    .line 98
    invoke-direct {p0, v0}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>(I)V

    .line 99
    .line 100
    .line 101
    const-class v0, Lorg/commonmark/node/ThematicBreak;

    .line 102
    .line 103
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->setFactory(Ljava/lang/Class;Lio/noties/markwon/core/factory/CodeSpanFactory;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final configureVisitor(Lio/noties/markwon/RenderPropsImpl;)V
    .locals 2

    .line 1
    new-instance v0, Lio/noties/markwon/core/CorePlugin$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/noties/markwon/core/CorePlugin$1;-><init>(Lio/noties/markwon/core/CorePlugin;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lorg/commonmark/node/Text;

    .line 7
    .line 8
    invoke-virtual {p1, p0, v0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const-class v0, Lorg/commonmark/node/StrongEmphasis;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 23
    .line 24
    const/4 v0, 0x7

    .line 25
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-class v0, Lorg/commonmark/node/Emphasis;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const-class v0, Lorg/commonmark/node/BlockQuote;

    .line 41
    .line 42
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 43
    .line 44
    .line 45
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 46
    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 50
    .line 51
    .line 52
    const-class v0, Lorg/commonmark/node/Code;

    .line 53
    .line 54
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 58
    .line 59
    const/16 v0, 0xa

    .line 60
    .line 61
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    .line 65
    .line 66
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 70
    .line 71
    const/16 v0, 0xb

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 74
    .line 75
    .line 76
    const-class v0, Lorg/commonmark/node/IndentedCodeBlock;

    .line 77
    .line 78
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 82
    .line 83
    const/16 v0, 0xc

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const-class v0, Lorg/commonmark/node/Image;

    .line 89
    .line 90
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 94
    .line 95
    const/16 v0, 0xe

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const-class v1, Lorg/commonmark/node/BulletList;

    .line 101
    .line 102
    invoke-virtual {p1, v1, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 103
    .line 104
    .line 105
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 106
    .line 107
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 108
    .line 109
    .line 110
    const-class v0, Lorg/commonmark/node/OrderedList;

    .line 111
    .line 112
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 116
    .line 117
    const/16 v0, 0xd

    .line 118
    .line 119
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 120
    .line 121
    .line 122
    const-class v0, Lorg/commonmark/node/ListItem;

    .line 123
    .line 124
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 125
    .line 126
    .line 127
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 131
    .line 132
    .line 133
    const-class v0, Lorg/commonmark/node/ThematicBreak;

    .line 134
    .line 135
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 139
    .line 140
    const/4 v0, 0x2

    .line 141
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 142
    .line 143
    .line 144
    const-class v0, Lorg/commonmark/node/Heading;

    .line 145
    .line 146
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 150
    .line 151
    const/4 v0, 0x3

    .line 152
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 153
    .line 154
    .line 155
    const-class v0, Lorg/commonmark/node/SoftLineBreak;

    .line 156
    .line 157
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 158
    .line 159
    .line 160
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 161
    .line 162
    const/4 v0, 0x4

    .line 163
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 164
    .line 165
    .line 166
    const-class v0, Lorg/commonmark/node/HardLineBreak;

    .line 167
    .line 168
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 169
    .line 170
    .line 171
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 172
    .line 173
    const/4 v0, 0x5

    .line 174
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 175
    .line 176
    .line 177
    const-class v0, Lorg/commonmark/node/Paragraph;

    .line 178
    .line 179
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lio/noties/markwon/core/CorePlugin$2;

    .line 183
    .line 184
    const/4 v0, 0x6

    .line 185
    invoke-direct {p0, v0}, Lio/noties/markwon/core/CorePlugin$2;-><init>(I)V

    .line 186
    .line 187
    .line 188
    const-class v0, Lorg/commonmark/node/Link;

    .line 189
    .line 190
    invoke-virtual {p1, v0, p0}, Lio/noties/markwon/RenderPropsImpl;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method
