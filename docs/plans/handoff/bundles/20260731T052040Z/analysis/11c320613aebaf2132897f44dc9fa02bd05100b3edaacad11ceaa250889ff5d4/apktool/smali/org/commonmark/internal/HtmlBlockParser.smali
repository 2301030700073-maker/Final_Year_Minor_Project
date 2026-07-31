.class public final Lorg/commonmark/internal/HtmlBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;


# instance fields
.field public final block:Lorg/commonmark/node/Document;

.field public final closingPattern:Ljava/util/regex/Pattern;

.field public content:Lokio/PriorityQueue;

.field public finished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "^<(?:script|pre|style)(?:\\s|>|$)"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "</(?:script|pre|style)>"

    .line 9
    .line 10
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v0, v3, v4

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v2, v3, v0

    .line 21
    .line 22
    const-string v2, "^<!--"

    .line 23
    .line 24
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v5, "-->"

    .line 29
    .line 30
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-array v6, v1, [Ljava/util/regex/Pattern;

    .line 35
    .line 36
    aput-object v2, v6, v4

    .line 37
    .line 38
    aput-object v5, v6, v0

    .line 39
    .line 40
    const-string v2, "^<[?]"

    .line 41
    .line 42
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v5, "\\?>"

    .line 47
    .line 48
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-array v7, v1, [Ljava/util/regex/Pattern;

    .line 53
    .line 54
    aput-object v2, v7, v4

    .line 55
    .line 56
    aput-object v5, v7, v0

    .line 57
    .line 58
    const-string v2, "^<![A-Z]"

    .line 59
    .line 60
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v5, ">"

    .line 65
    .line 66
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-array v8, v1, [Ljava/util/regex/Pattern;

    .line 71
    .line 72
    aput-object v2, v8, v4

    .line 73
    .line 74
    aput-object v5, v8, v0

    .line 75
    .line 76
    const-string v2, "^<!\\[CDATA\\["

    .line 77
    .line 78
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v5, "\\]\\]>"

    .line 83
    .line 84
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    new-array v9, v1, [Ljava/util/regex/Pattern;

    .line 89
    .line 90
    aput-object v2, v9, v4

    .line 91
    .line 92
    aput-object v5, v9, v0

    .line 93
    .line 94
    const-string v2, "^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)"

    .line 95
    .line 96
    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-array v5, v1, [Ljava/util/regex/Pattern;

    .line 101
    .line 102
    aput-object v2, v5, v4

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    aput-object v2, v5, v0

    .line 106
    .line 107
    const-string v10, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$"

    .line 108
    .line 109
    invoke-static {v10, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    new-array v11, v1, [Ljava/util/regex/Pattern;

    .line 114
    .line 115
    aput-object v10, v11, v4

    .line 116
    .line 117
    aput-object v2, v11, v0

    .line 118
    .line 119
    const/16 v10, 0x8

    .line 120
    .line 121
    new-array v10, v10, [[Ljava/util/regex/Pattern;

    .line 122
    .line 123
    new-array v12, v1, [Ljava/util/regex/Pattern;

    .line 124
    .line 125
    aput-object v2, v12, v4

    .line 126
    .line 127
    aput-object v2, v12, v0

    .line 128
    .line 129
    aput-object v12, v10, v4

    .line 130
    .line 131
    aput-object v3, v10, v0

    .line 132
    .line 133
    aput-object v6, v10, v1

    .line 134
    .line 135
    const/4 v0, 0x3

    .line 136
    aput-object v7, v10, v0

    .line 137
    .line 138
    const/4 v0, 0x4

    .line 139
    aput-object v8, v10, v0

    .line 140
    .line 141
    const/4 v0, 0x5

    .line 142
    aput-object v9, v10, v0

    .line 143
    .line 144
    const/4 v0, 0x6

    .line 145
    aput-object v5, v10, v0

    .line 146
    .line 147
    const/4 v0, 0x7

    .line 148
    aput-object v11, v10, v0

    .line 149
    .line 150
    sput-object v10, Lorg/commonmark/internal/HtmlBlockParser;->BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;

    .line 151
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/commonmark/node/Document;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lorg/commonmark/node/Document;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->block:Lorg/commonmark/node/Document;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    .line 14
    .line 15
    new-instance v0, Lokio/PriorityQueue;

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2}, Lokio/PriorityQueue;-><init>(IB)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lokio/PriorityQueue;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final addLine(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lokio/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    iget v2, v0, Lokio/PriorityQueue;->size:I

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lokio/PriorityQueue;->size:I

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    add-int/2addr v1, v2

    .line 23
    iput v1, v0, Lokio/PriorityQueue;->size:I

    .line 24
    .line 25
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iput-boolean v2, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final closeBlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lokio/PriorityQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->content:Lokio/PriorityQueue;

    .line 7
    .line 8
    return-void
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/HtmlBlockParser;->block:Lorg/commonmark/node/Document;

    .line 2
    .line 3
    return-object p0
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/commonmark/internal/HtmlBlockParser;->finished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p1, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lorg/commonmark/internal/HtmlBlockParser;->closingPattern:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_1
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 17
    .line 18
    invoke-static {p0}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
