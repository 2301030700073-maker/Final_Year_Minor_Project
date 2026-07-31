.class public final Lorg/commonmark/internal/DocumentParser;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final CORE_FACTORY_TYPES:Ljava/util/LinkedHashSet;

.field public static final NODES_TO_CORE_FACTORIES:Ljava/util/Map;


# instance fields
.field public final activeBlockParsers:Ljava/util/ArrayList;

.field public final allBlockParsers:Ljava/util/LinkedHashSet;

.field public blank:Z

.field public final blockParserFactories:Ljava/util/List;

.field public column:I

.field public columnIsInTab:Z

.field public final definitions:Ljava/util/LinkedHashMap;

.field public final delimiterProcessors:Ljava/util/List;

.field public final documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

.field public indent:I

.field public index:I

.field public final inlineParserFactory:Lokio/ByteString$Companion;

.field public line:Ljava/lang/CharSequence;

.field public nextNonSpace:I

.field public nextNonSpaceColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-class v3, Lorg/commonmark/node/BlockQuote;

    .line 8
    .line 9
    aput-object v3, v1, v2

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const-class v5, Lorg/commonmark/node/Heading;

    .line 13
    .line 14
    aput-object v5, v1, v4

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    const-class v7, Lorg/commonmark/node/FencedCodeBlock;

    .line 18
    .line 19
    aput-object v7, v1, v6

    .line 20
    .line 21
    const/4 v8, 0x3

    .line 22
    const-class v9, Lorg/commonmark/node/Document;

    .line 23
    .line 24
    aput-object v9, v1, v8

    .line 25
    .line 26
    const/4 v10, 0x4

    .line 27
    const-class v11, Lorg/commonmark/node/ThematicBreak;

    .line 28
    .line 29
    aput-object v11, v1, v10

    .line 30
    .line 31
    const/4 v12, 0x5

    .line 32
    const-class v13, Lorg/commonmark/node/ListBlock;

    .line 33
    .line 34
    aput-object v13, v1, v12

    .line 35
    .line 36
    const/4 v14, 0x6

    .line 37
    const-class v15, Lorg/commonmark/node/IndentedCodeBlock;

    .line 38
    .line 39
    aput-object v15, v1, v14

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/LinkedHashSet;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 56
    .line 57
    invoke-direct {v1, v4}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 72
    .line 73
    invoke-direct {v1, v6}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 80
    .line 81
    invoke-direct {v1, v8}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 88
    .line 89
    invoke-direct {v1, v14}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 96
    .line 97
    invoke-direct {v1, v12}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance v1, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 104
    .line 105
    invoke-direct {v1, v10}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lokio/ByteString$Companion;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 6
    .line 7
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 8
    .line 9
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 10
    .line 11
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 12
    .line 13
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    .line 37
    .line 38
    iput-object p2, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lokio/ByteString$Companion;

    .line 39
    .line 40
    iput-object p3, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    .line 41
    .line 42
    new-instance p1, Lorg/commonmark/internal/DocumentBlockParser;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p2}, Lorg/commonmark/internal/DocumentBlockParser;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final addChild(Lorg/commonmark/parser/block/AbstractBlockParser;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/commonmark/parser/block/AbstractBlockParser;->canContain(Lorg/commonmark/node/Block;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->finishReference()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->definitions:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/commonmark/node/LinkReferenceDefinition;

    .line 23
    .line 24
    iget-object v2, p1, Lorg/commonmark/internal/ParagraphParser;->block:Lorg/commonmark/node/Paragraph;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->unlink()V

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lorg/commonmark/node/Node;

    .line 32
    .line 33
    iput-object v3, v1, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iput-object v1, v3, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_1
    iput-object v2, v1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, v2, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v2, v2, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lorg/commonmark/node/Node;

    .line 46
    .line 47
    iput-object v2, v1, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v3, v1, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Lorg/commonmark/node/Node;

    .line 52
    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    iput-object v1, v2, Lorg/commonmark/node/Node;->firstChild:Ljava/lang/Object;

    .line 56
    .line 57
    :cond_2
    iget-object v2, v1, Lorg/commonmark/node/LinkReferenceDefinition;->label:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_0

    .line 66
    .line 67
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method

.method public final addLine()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 20
    .line 21
    rem-int/lit8 v1, v1, 0x4

    .line 22
    .line 23
    rsub-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v3, v1

    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v1, :cond_0

    .line 37
    .line 38
    const/16 v4, 0x20

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 55
    .line 56
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v0}, Lorg/commonmark/parser/block/AbstractBlockParser;->addLine(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final advance()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 10
    .line 11
    const/16 v2, 0x9

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 18
    .line 19
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 20
    .line 21
    rem-int/lit8 v1, v0, 0x4

    .line 22
    .line 23
    rsub-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 32
    .line 33
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 38
    .line 39
    return-void
.end method

.method public final finalize(Lorg/commonmark/parser/block/AbstractBlockParser;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Lorg/commonmark/internal/ParagraphParser;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lorg/commonmark/parser/block/AbstractBlockParser;->closeBlock()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final finalizeBlocks(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final findNextNonSpace()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 2
    .line 3
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 7
    .line 8
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    :goto_0
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x9

    .line 23
    .line 24
    if-eq v3, v4, :cond_1

    .line 25
    .line 26
    const/16 v4, 0x20

    .line 27
    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    rem-int/lit8 v3, v1, 0x4

    .line 42
    .line 43
    rsub-int/lit8 v3, v3, 0x4

    .line 44
    .line 45
    add-int/2addr v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 48
    .line 49
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 50
    .line 51
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 52
    .line 53
    sub-int/2addr v1, v0

    .line 54
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 55
    .line 56
    return-void
.end method

.method public final getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 9
    .line 10
    return-object p0
.end method

.method public final incorporateLine(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    if-ge v5, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    if-eqz v6, :cond_2

    .line 21
    .line 22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-nez v6, :cond_1

    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v1, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    const v7, 0xfffd

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    if-eqz v6, :cond_4

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_4
    iput-object v1, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 52
    .line 53
    iput v4, v0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 54
    .line 55
    iput v4, v0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 56
    .line 57
    iput-boolean v4, v0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 58
    .line 59
    iget-object v1, v0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v5, 0x1

    .line 66
    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    move v6, v5

    .line 75
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const/4 v8, -0x1

    .line 80
    if-eqz v7, :cond_8

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v0}, Lorg/commonmark/parser/block/AbstractBlockParser;->tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    iget-boolean v10, v9, Lorg/commonmark/internal/BlockContinueImpl;->finalize:Z

    .line 98
    .line 99
    if-eqz v10, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0, v7}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    iget v7, v9, Lorg/commonmark/internal/BlockContinueImpl;->newIndex:I

    .line 106
    .line 107
    if-eq v7, v8, :cond_6

    .line 108
    .line 109
    invoke-virtual {v0, v7}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    iget v7, v9, Lorg/commonmark/internal/BlockContinueImpl;->newColumn:I

    .line 114
    .line 115
    if-eq v7, v8, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual {v1, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    sub-int/2addr v6, v5

    .line 137
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-virtual {v6}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    instance-of v9, v9, Lorg/commonmark/node/Paragraph;

    .line 152
    .line 153
    if-nez v9, :cond_a

    .line 154
    .line 155
    invoke-virtual {v6}, Lorg/commonmark/parser/block/AbstractBlockParser;->isContainer()Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eqz v9, :cond_9

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    move v9, v4

    .line 163
    goto :goto_5

    .line 164
    :cond_a
    :goto_4
    move v9, v5

    .line 165
    :goto_5
    if-eqz v9, :cond_5b

    .line 166
    .line 167
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 168
    .line 169
    .line 170
    iget-boolean v10, v0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 171
    .line 172
    if-nez v10, :cond_b

    .line 173
    .line 174
    iget v10, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 175
    .line 176
    const/4 v11, 0x4

    .line 177
    if-ge v10, v11, :cond_c

    .line 178
    .line 179
    iget-object v10, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 180
    .line 181
    iget v12, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 182
    .line 183
    invoke-static {v10, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_c

    .line 192
    .line 193
    :cond_b
    move-object/from16 v21, v6

    .line 194
    .line 195
    goto/16 :goto_32

    .line 196
    .line 197
    :cond_c
    new-instance v10, Lokhttp3/ConnectionPool;

    .line 198
    .line 199
    const/16 v12, 0x17

    .line 200
    .line 201
    invoke-direct {v10, v6, v12}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    iget-object v12, v0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-eqz v13, :cond_53

    .line 215
    .line 216
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    check-cast v13, Lorg/commonmark/internal/HeadingParser$Factory;

    .line 221
    .line 222
    iget v13, v13, Lorg/commonmark/internal/HeadingParser$Factory;->$r8$classId:I

    .line 223
    .line 224
    const/16 v14, 0x2a

    .line 225
    .line 226
    move/from16 v16, v4

    .line 227
    .line 228
    const/16 v8, 0x20

    .line 229
    .line 230
    const/16 v3, 0x9

    .line 231
    .line 232
    packed-switch v13, :pswitch_data_0

    .line 233
    .line 234
    .line 235
    iget v13, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 236
    .line 237
    if-lt v13, v11, :cond_d

    .line 238
    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_d
    iget v13, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 242
    .line 243
    iget-object v11, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 244
    .line 245
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    move/from16 v15, v16

    .line 250
    .line 251
    move/from16 v20, v15

    .line 252
    .line 253
    move/from16 v21, v20

    .line 254
    .line 255
    :goto_7
    if-ge v13, v5, :cond_12

    .line 256
    .line 257
    invoke-interface {v11, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eq v4, v3, :cond_11

    .line 262
    .line 263
    if-eq v4, v8, :cond_11

    .line 264
    .line 265
    if-eq v4, v14, :cond_10

    .line 266
    .line 267
    const/16 v8, 0x2d

    .line 268
    .line 269
    if-eq v4, v8, :cond_f

    .line 270
    .line 271
    const/16 v8, 0x5f

    .line 272
    .line 273
    if-eq v4, v8, :cond_e

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_e
    move/from16 v4, v20

    .line 277
    .line 278
    add-int/lit8 v20, v4, 0x1

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_f
    move/from16 v4, v20

    .line 282
    .line 283
    add-int/lit8 v15, v15, 0x1

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_10
    move/from16 v4, v20

    .line 287
    .line 288
    move/from16 v8, v21

    .line 289
    .line 290
    add-int/lit8 v21, v8, 0x1

    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_11
    move/from16 v4, v20

    .line 294
    .line 295
    move/from16 v8, v21

    .line 296
    .line 297
    move/from16 v20, v4

    .line 298
    .line 299
    move/from16 v21, v8

    .line 300
    .line 301
    :goto_8
    add-int/lit8 v13, v13, 0x1

    .line 302
    .line 303
    const/16 v8, 0x20

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_12
    move/from16 v4, v20

    .line 307
    .line 308
    move/from16 v8, v21

    .line 309
    .line 310
    const/4 v13, 0x3

    .line 311
    if-lt v15, v13, :cond_13

    .line 312
    .line 313
    if-nez v4, :cond_13

    .line 314
    .line 315
    if-eqz v8, :cond_15

    .line 316
    .line 317
    :cond_13
    if-lt v4, v13, :cond_14

    .line 318
    .line 319
    if-nez v15, :cond_14

    .line 320
    .line 321
    if-eqz v8, :cond_15

    .line 322
    .line 323
    :cond_14
    if-lt v8, v13, :cond_16

    .line 324
    .line 325
    if-nez v15, :cond_16

    .line 326
    .line 327
    if-nez v4, :cond_16

    .line 328
    .line 329
    :cond_15
    new-instance v3, Lorg/commonmark/internal/DocumentBlockParser;

    .line 330
    .line 331
    const/4 v4, 0x1

    .line 332
    invoke-direct {v3, v4}, Lorg/commonmark/internal/DocumentBlockParser;-><init>(I)V

    .line 333
    .line 334
    .line 335
    new-array v5, v4, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 336
    .line 337
    aput-object v3, v5, v16

    .line 338
    .line 339
    new-instance v3, Lorg/commonmark/internal/BlockStartImpl;

    .line 340
    .line 341
    invoke-direct {v3, v5}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    iput v4, v3, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 349
    .line 350
    goto :goto_a

    .line 351
    :cond_16
    :goto_9
    const/4 v3, 0x0

    .line 352
    :goto_a
    move-object/from16 v21, v6

    .line 353
    .line 354
    goto/16 :goto_2d

    .line 355
    .line 356
    :pswitch_0
    iget-object v4, v10, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v4, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 359
    .line 360
    iget v5, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 361
    .line 362
    const/4 v8, 0x4

    .line 363
    if-lt v5, v8, :cond_17

    .line 364
    .line 365
    move-object/from16 v21, v6

    .line 366
    .line 367
    goto/16 :goto_14

    .line 368
    .line 369
    :cond_17
    iget v8, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 370
    .line 371
    iget v11, v0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 372
    .line 373
    add-int/2addr v11, v5

    .line 374
    instance-of v5, v4, Lorg/commonmark/internal/ParagraphParser;

    .line 375
    .line 376
    if-eqz v5, :cond_18

    .line 377
    .line 378
    move-object v5, v4

    .line 379
    check-cast v5, Lorg/commonmark/internal/ParagraphParser;

    .line 380
    .line 381
    iget-object v5, v5, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 382
    .line 383
    iget-object v5, v5, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    if-nez v13, :cond_19

    .line 390
    .line 391
    :cond_18
    const/4 v5, 0x0

    .line 392
    :cond_19
    if-eqz v5, :cond_1a

    .line 393
    .line 394
    const/4 v5, 0x1

    .line 395
    goto :goto_b

    .line 396
    :cond_1a
    move/from16 v5, v16

    .line 397
    .line 398
    :goto_b
    iget-object v13, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 399
    .line 400
    invoke-interface {v13, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    if-eq v15, v14, :cond_20

    .line 405
    .line 406
    const/16 v14, 0x2b

    .line 407
    .line 408
    if-eq v15, v14, :cond_20

    .line 409
    .line 410
    const/16 v14, 0x2d

    .line 411
    .line 412
    if-eq v15, v14, :cond_20

    .line 413
    .line 414
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 415
    .line 416
    .line 417
    move-result v14

    .line 418
    move v15, v8

    .line 419
    move/from16 v3, v16

    .line 420
    .line 421
    :goto_c
    move/from16 v20, v5

    .line 422
    .line 423
    if-ge v15, v14, :cond_1e

    .line 424
    .line 425
    invoke-interface {v13, v15}, Ljava/lang/CharSequence;->charAt(I)C

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    move-object/from16 v21, v6

    .line 430
    .line 431
    const/16 v6, 0x29

    .line 432
    .line 433
    if-eq v5, v6, :cond_1c

    .line 434
    .line 435
    const/16 v6, 0x2e

    .line 436
    .line 437
    if-eq v5, v6, :cond_1c

    .line 438
    .line 439
    packed-switch v5, :pswitch_data_1

    .line 440
    .line 441
    .line 442
    goto :goto_d

    .line 443
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 444
    .line 445
    const/16 v5, 0x9

    .line 446
    .line 447
    if-le v3, v5, :cond_1b

    .line 448
    .line 449
    goto :goto_d

    .line 450
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    .line 451
    .line 452
    move/from16 v5, v20

    .line 453
    .line 454
    move-object/from16 v6, v21

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_1c
    const/4 v6, 0x1

    .line 458
    if-lt v3, v6, :cond_1f

    .line 459
    .line 460
    add-int/lit8 v3, v15, 0x1

    .line 461
    .line 462
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    if-ge v3, v6, :cond_1d

    .line 467
    .line 468
    invoke-interface {v13, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    const/16 v14, 0x9

    .line 473
    .line 474
    if-eq v6, v14, :cond_1d

    .line 475
    .line 476
    const/16 v14, 0x20

    .line 477
    .line 478
    if-eq v6, v14, :cond_1d

    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_1d
    invoke-interface {v13, v8, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    new-instance v14, Lorg/commonmark/node/OrderedList;

    .line 490
    .line 491
    invoke-direct {v14}, Lorg/commonmark/node/Node;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v6

    .line 498
    iput v6, v14, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 499
    .line 500
    iput-char v5, v14, Lorg/commonmark/node/OrderedList;->delimiter:C

    .line 501
    .line 502
    new-instance v5, Lorg/commonmark/internal/ListBlockParser$ListData;

    .line 503
    .line 504
    invoke-direct {v5, v14, v3}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    .line 505
    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_1e
    move-object/from16 v21, v6

    .line 509
    .line 510
    :cond_1f
    :goto_d
    const/4 v5, 0x0

    .line 511
    goto :goto_e

    .line 512
    :cond_20
    move/from16 v20, v5

    .line 513
    .line 514
    move-object/from16 v21, v6

    .line 515
    .line 516
    add-int/lit8 v3, v8, 0x1

    .line 517
    .line 518
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    if-ge v3, v5, :cond_21

    .line 523
    .line 524
    invoke-interface {v13, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    const/16 v14, 0x9

    .line 529
    .line 530
    if-eq v5, v14, :cond_21

    .line 531
    .line 532
    const/16 v14, 0x20

    .line 533
    .line 534
    if-eq v5, v14, :cond_21

    .line 535
    .line 536
    goto :goto_d

    .line 537
    :cond_21
    new-instance v5, Lorg/commonmark/node/BulletList;

    .line 538
    .line 539
    invoke-direct {v5}, Lorg/commonmark/node/Node;-><init>()V

    .line 540
    .line 541
    .line 542
    iput-char v15, v5, Lorg/commonmark/node/BulletList;->bulletMarker:C

    .line 543
    .line 544
    new-instance v6, Lorg/commonmark/internal/ListBlockParser$ListData;

    .line 545
    .line 546
    invoke-direct {v6, v5, v3}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    .line 547
    .line 548
    .line 549
    move-object v5, v6

    .line 550
    :goto_e
    if-nez v5, :cond_22

    .line 551
    .line 552
    goto :goto_12

    .line 553
    :cond_22
    iget-object v3, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 554
    .line 555
    iget v5, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 556
    .line 557
    sub-int v6, v5, v8

    .line 558
    .line 559
    add-int/2addr v6, v11

    .line 560
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    move v11, v6

    .line 565
    :goto_f
    if-ge v5, v8, :cond_25

    .line 566
    .line 567
    invoke-interface {v13, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 568
    .line 569
    .line 570
    move-result v14

    .line 571
    const/16 v15, 0x9

    .line 572
    .line 573
    if-ne v14, v15, :cond_23

    .line 574
    .line 575
    rem-int/lit8 v14, v11, 0x4

    .line 576
    .line 577
    const/16 v18, 0x4

    .line 578
    .line 579
    rsub-int/lit8 v14, v14, 0x4

    .line 580
    .line 581
    add-int/2addr v14, v11

    .line 582
    move v11, v14

    .line 583
    goto :goto_10

    .line 584
    :cond_23
    const/16 v15, 0x20

    .line 585
    .line 586
    if-ne v14, v15, :cond_24

    .line 587
    .line 588
    add-int/lit8 v11, v11, 0x1

    .line 589
    .line 590
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 591
    .line 592
    goto :goto_f

    .line 593
    :cond_24
    const/4 v5, 0x1

    .line 594
    goto :goto_11

    .line 595
    :cond_25
    move/from16 v5, v16

    .line 596
    .line 597
    :goto_11
    if-eqz v20, :cond_27

    .line 598
    .line 599
    instance-of v8, v3, Lorg/commonmark/node/OrderedList;

    .line 600
    .line 601
    if-eqz v8, :cond_26

    .line 602
    .line 603
    move-object v8, v3

    .line 604
    check-cast v8, Lorg/commonmark/node/OrderedList;

    .line 605
    .line 606
    iget v8, v8, Lorg/commonmark/node/OrderedList;->startNumber:I

    .line 607
    .line 608
    const/4 v13, 0x1

    .line 609
    if-eq v8, v13, :cond_26

    .line 610
    .line 611
    goto :goto_12

    .line 612
    :cond_26
    if-nez v5, :cond_27

    .line 613
    .line 614
    :goto_12
    const/4 v5, 0x0

    .line 615
    goto :goto_13

    .line 616
    :cond_27
    if-eqz v5, :cond_28

    .line 617
    .line 618
    sub-int v5, v11, v6

    .line 619
    .line 620
    const/4 v8, 0x4

    .line 621
    if-le v5, v8, :cond_29

    .line 622
    .line 623
    :cond_28
    add-int/lit8 v11, v6, 0x1

    .line 624
    .line 625
    :cond_29
    new-instance v5, Lorg/commonmark/internal/ListBlockParser$ListData;

    .line 626
    .line 627
    invoke-direct {v5, v3, v11}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    .line 628
    .line 629
    .line 630
    :goto_13
    if-nez v5, :cond_2b

    .line 631
    .line 632
    :cond_2a
    :goto_14
    const/4 v3, 0x0

    .line 633
    goto/16 :goto_2d

    .line 634
    .line 635
    :cond_2b
    iget-object v3, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 636
    .line 637
    iget v5, v5, Lorg/commonmark/internal/ListBlockParser$ListData;->contentColumn:I

    .line 638
    .line 639
    new-instance v6, Lorg/commonmark/internal/ListItemParser;

    .line 640
    .line 641
    iget v8, v0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 642
    .line 643
    sub-int v8, v5, v8

    .line 644
    .line 645
    invoke-direct {v6, v8}, Lorg/commonmark/internal/ListItemParser;-><init>(I)V

    .line 646
    .line 647
    .line 648
    instance-of v8, v4, Lorg/commonmark/internal/ListBlockParser;

    .line 649
    .line 650
    if-eqz v8, :cond_2e

    .line 651
    .line 652
    check-cast v4, Lorg/commonmark/internal/ListBlockParser;

    .line 653
    .line 654
    iget-object v4, v4, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    .line 655
    .line 656
    instance-of v8, v4, Lorg/commonmark/node/BulletList;

    .line 657
    .line 658
    if-eqz v8, :cond_2c

    .line 659
    .line 660
    instance-of v8, v3, Lorg/commonmark/node/BulletList;

    .line 661
    .line 662
    if-eqz v8, :cond_2c

    .line 663
    .line 664
    check-cast v4, Lorg/commonmark/node/BulletList;

    .line 665
    .line 666
    iget-char v4, v4, Lorg/commonmark/node/BulletList;->bulletMarker:C

    .line 667
    .line 668
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    move-object v8, v3

    .line 673
    check-cast v8, Lorg/commonmark/node/BulletList;

    .line 674
    .line 675
    iget-char v8, v8, Lorg/commonmark/node/BulletList;->bulletMarker:C

    .line 676
    .line 677
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 678
    .line 679
    .line 680
    move-result-object v8

    .line 681
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    goto :goto_15

    .line 686
    :cond_2c
    instance-of v8, v4, Lorg/commonmark/node/OrderedList;

    .line 687
    .line 688
    if-eqz v8, :cond_2d

    .line 689
    .line 690
    instance-of v8, v3, Lorg/commonmark/node/OrderedList;

    .line 691
    .line 692
    if-eqz v8, :cond_2d

    .line 693
    .line 694
    check-cast v4, Lorg/commonmark/node/OrderedList;

    .line 695
    .line 696
    iget-char v4, v4, Lorg/commonmark/node/OrderedList;->delimiter:C

    .line 697
    .line 698
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 699
    .line 700
    .line 701
    move-result-object v4

    .line 702
    move-object v8, v3

    .line 703
    check-cast v8, Lorg/commonmark/node/OrderedList;

    .line 704
    .line 705
    iget-char v8, v8, Lorg/commonmark/node/OrderedList;->delimiter:C

    .line 706
    .line 707
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 708
    .line 709
    .line 710
    move-result-object v8

    .line 711
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v4

    .line 715
    goto :goto_15

    .line 716
    :cond_2d
    move/from16 v4, v16

    .line 717
    .line 718
    :goto_15
    if-nez v4, :cond_2f

    .line 719
    .line 720
    :cond_2e
    const/4 v4, 0x1

    .line 721
    goto :goto_16

    .line 722
    :cond_2f
    const/4 v4, 0x1

    .line 723
    new-array v3, v4, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 724
    .line 725
    aput-object v6, v3, v16

    .line 726
    .line 727
    new-instance v6, Lorg/commonmark/internal/BlockStartImpl;

    .line 728
    .line 729
    invoke-direct {v6, v3}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 730
    .line 731
    .line 732
    iput v5, v6, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 733
    .line 734
    move-object v3, v6

    .line 735
    goto/16 :goto_2d

    .line 736
    .line 737
    :goto_16
    new-instance v8, Lorg/commonmark/internal/ListBlockParser;

    .line 738
    .line 739
    invoke-direct {v8, v3}, Lorg/commonmark/internal/ListBlockParser;-><init>(Lorg/commonmark/node/ListBlock;)V

    .line 740
    .line 741
    .line 742
    iput-boolean v4, v3, Lorg/commonmark/node/ListBlock;->tight:Z

    .line 743
    .line 744
    const/4 v3, 0x2

    .line 745
    new-array v3, v3, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 746
    .line 747
    aput-object v8, v3, v16

    .line 748
    .line 749
    aput-object v6, v3, v4

    .line 750
    .line 751
    new-instance v4, Lorg/commonmark/internal/BlockStartImpl;

    .line 752
    .line 753
    invoke-direct {v4, v3}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 754
    .line 755
    .line 756
    iput v5, v4, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 757
    .line 758
    move-object v3, v4

    .line 759
    goto/16 :goto_2d

    .line 760
    .line 761
    :pswitch_2
    move-object/from16 v21, v6

    .line 762
    .line 763
    iget v3, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 764
    .line 765
    const/4 v8, 0x4

    .line 766
    if-lt v3, v8, :cond_2a

    .line 767
    .line 768
    iget-boolean v3, v0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 769
    .line 770
    if-nez v3, :cond_30

    .line 771
    .line 772
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-virtual {v3}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    instance-of v3, v3, Lorg/commonmark/node/Paragraph;

    .line 781
    .line 782
    if-nez v3, :cond_30

    .line 783
    .line 784
    new-instance v3, Lorg/commonmark/internal/HeadingParser;

    .line 785
    .line 786
    invoke-direct {v3}, Lorg/commonmark/internal/HeadingParser;-><init>()V

    .line 787
    .line 788
    .line 789
    const/4 v4, 0x1

    .line 790
    new-array v5, v4, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 791
    .line 792
    aput-object v3, v5, v16

    .line 793
    .line 794
    new-instance v3, Lorg/commonmark/internal/BlockStartImpl;

    .line 795
    .line 796
    invoke-direct {v3, v5}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 797
    .line 798
    .line 799
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 800
    .line 801
    const/4 v8, 0x4

    .line 802
    add-int/2addr v4, v8

    .line 803
    iput v4, v3, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 804
    .line 805
    goto/16 :goto_2d

    .line 806
    .line 807
    :cond_30
    const/4 v8, 0x4

    .line 808
    goto/16 :goto_14

    .line 809
    .line 810
    :pswitch_3
    move-object/from16 v21, v6

    .line 811
    .line 812
    move v8, v11

    .line 813
    iget v3, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 814
    .line 815
    iget-object v4, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 816
    .line 817
    iget v5, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 818
    .line 819
    if-ge v5, v8, :cond_2a

    .line 820
    .line 821
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 822
    .line 823
    .line 824
    move-result v5

    .line 825
    const/16 v6, 0x3c

    .line 826
    .line 827
    if-ne v5, v6, :cond_2a

    .line 828
    .line 829
    const/4 v5, 0x1

    .line 830
    :goto_17
    const/4 v6, 0x7

    .line 831
    if-gt v5, v6, :cond_2a

    .line 832
    .line 833
    if-ne v5, v6, :cond_31

    .line 834
    .line 835
    iget-object v6, v10, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v6, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 838
    .line 839
    invoke-virtual {v6}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 840
    .line 841
    .line 842
    move-result-object v6

    .line 843
    instance-of v6, v6, Lorg/commonmark/node/Paragraph;

    .line 844
    .line 845
    if-eqz v6, :cond_31

    .line 846
    .line 847
    goto :goto_18

    .line 848
    :cond_31
    sget-object v6, Lorg/commonmark/internal/HtmlBlockParser;->BLOCK_PATTERNS:[[Ljava/util/regex/Pattern;

    .line 849
    .line 850
    aget-object v6, v6, v5

    .line 851
    .line 852
    aget-object v8, v6, v16

    .line 853
    .line 854
    const/4 v13, 0x1

    .line 855
    aget-object v6, v6, v13

    .line 856
    .line 857
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 858
    .line 859
    .line 860
    move-result v11

    .line 861
    invoke-interface {v4, v3, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 862
    .line 863
    .line 864
    move-result-object v11

    .line 865
    invoke-virtual {v8, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 866
    .line 867
    .line 868
    move-result-object v8

    .line 869
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 870
    .line 871
    .line 872
    move-result v8

    .line 873
    if-eqz v8, :cond_32

    .line 874
    .line 875
    new-instance v3, Lorg/commonmark/internal/HtmlBlockParser;

    .line 876
    .line 877
    invoke-direct {v3, v6}, Lorg/commonmark/internal/HtmlBlockParser;-><init>(Ljava/util/regex/Pattern;)V

    .line 878
    .line 879
    .line 880
    new-array v4, v13, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 881
    .line 882
    aput-object v3, v4, v16

    .line 883
    .line 884
    new-instance v3, Lorg/commonmark/internal/BlockStartImpl;

    .line 885
    .line 886
    invoke-direct {v3, v4}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 887
    .line 888
    .line 889
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 890
    .line 891
    iput v4, v3, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 892
    .line 893
    goto/16 :goto_2d

    .line 894
    .line 895
    :cond_32
    :goto_18
    add-int/lit8 v5, v5, 0x1

    .line 896
    .line 897
    goto :goto_17

    .line 898
    :pswitch_4
    move-object/from16 v21, v6

    .line 899
    .line 900
    iget v3, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 901
    .line 902
    const/4 v8, 0x4

    .line 903
    if-lt v3, v8, :cond_33

    .line 904
    .line 905
    goto/16 :goto_14

    .line 906
    .line 907
    :cond_33
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 908
    .line 909
    iget-object v5, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 910
    .line 911
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 912
    .line 913
    .line 914
    move-result v6

    .line 915
    move v8, v4

    .line 916
    move/from16 v11, v16

    .line 917
    .line 918
    move v13, v11

    .line 919
    :goto_19
    const/16 v14, 0x7e

    .line 920
    .line 921
    const/16 v15, 0x60

    .line 922
    .line 923
    move/from16 v17, v4

    .line 924
    .line 925
    if-ge v8, v6, :cond_34

    .line 926
    .line 927
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 928
    .line 929
    .line 930
    move-result v4

    .line 931
    if-eq v4, v15, :cond_36

    .line 932
    .line 933
    if-eq v4, v14, :cond_35

    .line 934
    .line 935
    :cond_34
    const/4 v4, 0x3

    .line 936
    goto :goto_1b

    .line 937
    :cond_35
    add-int/lit8 v13, v13, 0x1

    .line 938
    .line 939
    goto :goto_1a

    .line 940
    :cond_36
    add-int/lit8 v11, v11, 0x1

    .line 941
    .line 942
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    .line 943
    .line 944
    move/from16 v4, v17

    .line 945
    .line 946
    goto :goto_19

    .line 947
    :goto_1b
    if-lt v11, v4, :cond_3b

    .line 948
    .line 949
    if-nez v13, :cond_3a

    .line 950
    .line 951
    add-int v4, v17, v11

    .line 952
    .line 953
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 954
    .line 955
    .line 956
    move-result v6

    .line 957
    :goto_1c
    if-ge v4, v6, :cond_38

    .line 958
    .line 959
    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 960
    .line 961
    .line 962
    move-result v8

    .line 963
    if-ne v8, v15, :cond_37

    .line 964
    .line 965
    :goto_1d
    const/4 v5, -0x1

    .line 966
    goto :goto_1e

    .line 967
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 968
    .line 969
    goto :goto_1c

    .line 970
    :cond_38
    const/4 v4, -0x1

    .line 971
    goto :goto_1d

    .line 972
    :goto_1e
    if-eq v4, v5, :cond_39

    .line 973
    .line 974
    goto :goto_1f

    .line 975
    :cond_39
    new-instance v4, Lorg/commonmark/internal/FencedCodeBlockParser;

    .line 976
    .line 977
    invoke-direct {v4, v15, v11, v3}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    .line 978
    .line 979
    .line 980
    goto :goto_20

    .line 981
    :cond_3a
    const/4 v4, 0x3

    .line 982
    :cond_3b
    if-lt v13, v4, :cond_3c

    .line 983
    .line 984
    if-nez v11, :cond_3c

    .line 985
    .line 986
    new-instance v4, Lorg/commonmark/internal/FencedCodeBlockParser;

    .line 987
    .line 988
    invoke-direct {v4, v14, v13, v3}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    .line 989
    .line 990
    .line 991
    goto :goto_20

    .line 992
    :cond_3c
    :goto_1f
    const/4 v4, 0x0

    .line 993
    :goto_20
    if-eqz v4, :cond_2a

    .line 994
    .line 995
    const/4 v13, 0x1

    .line 996
    new-array v3, v13, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 997
    .line 998
    aput-object v4, v3, v16

    .line 999
    .line 1000
    new-instance v5, Lorg/commonmark/internal/BlockStartImpl;

    .line 1001
    .line 1002
    invoke-direct {v5, v3}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v3, v4, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 1006
    .line 1007
    iget v3, v3, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    .line 1008
    .line 1009
    add-int v4, v17, v3

    .line 1010
    .line 1011
    iput v4, v5, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 1012
    .line 1013
    :goto_21
    move-object v3, v5

    .line 1014
    goto/16 :goto_2d

    .line 1015
    .line 1016
    :pswitch_5
    move-object/from16 v21, v6

    .line 1017
    .line 1018
    iget v3, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 1019
    .line 1020
    iget-object v4, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 1021
    .line 1022
    iget v5, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 1023
    .line 1024
    const/4 v8, 0x4

    .line 1025
    if-ge v5, v8, :cond_2a

    .line 1026
    .line 1027
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1028
    .line 1029
    .line 1030
    move-result v5

    .line 1031
    if-ge v3, v5, :cond_2a

    .line 1032
    .line 1033
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1034
    .line 1035
    .line 1036
    move-result v4

    .line 1037
    const/16 v5, 0x3e

    .line 1038
    .line 1039
    if-ne v4, v5, :cond_2a

    .line 1040
    .line 1041
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 1042
    .line 1043
    iget v5, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 1044
    .line 1045
    add-int/2addr v4, v5

    .line 1046
    add-int/lit8 v5, v4, 0x1

    .line 1047
    .line 1048
    iget-object v6, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 1049
    .line 1050
    add-int/lit8 v3, v3, 0x1

    .line 1051
    .line 1052
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 1053
    .line 1054
    .line 1055
    move-result v8

    .line 1056
    if-ge v3, v8, :cond_3e

    .line 1057
    .line 1058
    invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    const/16 v14, 0x9

    .line 1063
    .line 1064
    if-eq v3, v14, :cond_3d

    .line 1065
    .line 1066
    const/16 v14, 0x20

    .line 1067
    .line 1068
    if-eq v3, v14, :cond_3d

    .line 1069
    .line 1070
    goto :goto_22

    .line 1071
    :cond_3d
    add-int/lit8 v5, v4, 0x2

    .line 1072
    .line 1073
    :cond_3e
    :goto_22
    new-instance v3, Lorg/commonmark/internal/BlockQuoteParser;

    .line 1074
    .line 1075
    invoke-direct {v3}, Lorg/commonmark/internal/BlockQuoteParser;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    const/4 v4, 0x1

    .line 1079
    new-array v6, v4, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1080
    .line 1081
    aput-object v3, v6, v16

    .line 1082
    .line 1083
    new-instance v3, Lorg/commonmark/internal/BlockStartImpl;

    .line 1084
    .line 1085
    invoke-direct {v3, v6}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1086
    .line 1087
    .line 1088
    iput v5, v3, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 1089
    .line 1090
    goto/16 :goto_2d

    .line 1091
    .line 1092
    :pswitch_6
    move-object/from16 v21, v6

    .line 1093
    .line 1094
    const/4 v3, 0x2

    .line 1095
    iget v4, v0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 1096
    .line 1097
    const/4 v8, 0x4

    .line 1098
    if-lt v4, v8, :cond_3f

    .line 1099
    .line 1100
    goto/16 :goto_14

    .line 1101
    .line 1102
    :cond_3f
    iget-object v4, v0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 1103
    .line 1104
    iget v5, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 1105
    .line 1106
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1107
    .line 1108
    .line 1109
    move-result v6

    .line 1110
    const/16 v11, 0x23

    .line 1111
    .line 1112
    invoke-static {v11, v5, v6, v4}, Lkotlin/math/MathKt;->skip(CIILjava/lang/CharSequence;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v6

    .line 1116
    sub-int/2addr v6, v5

    .line 1117
    if-eqz v6, :cond_4b

    .line 1118
    .line 1119
    const/4 v13, 0x6

    .line 1120
    if-le v6, v13, :cond_40

    .line 1121
    .line 1122
    goto/16 :goto_29

    .line 1123
    .line 1124
    :cond_40
    add-int v13, v5, v6

    .line 1125
    .line 1126
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1127
    .line 1128
    .line 1129
    move-result v14

    .line 1130
    if-lt v13, v14, :cond_41

    .line 1131
    .line 1132
    new-instance v11, Lorg/commonmark/internal/HeadingParser;

    .line 1133
    .line 1134
    const-string v13, ""

    .line 1135
    .line 1136
    invoke-direct {v11, v6, v13}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_2a

    .line 1140
    .line 1141
    :cond_41
    invoke-interface {v4, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1142
    .line 1143
    .line 1144
    move-result v14

    .line 1145
    const/16 v15, 0x20

    .line 1146
    .line 1147
    const/16 v3, 0x9

    .line 1148
    .line 1149
    if-eq v14, v15, :cond_42

    .line 1150
    .line 1151
    if-eq v14, v3, :cond_42

    .line 1152
    .line 1153
    goto/16 :goto_29

    .line 1154
    .line 1155
    :cond_42
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1156
    .line 1157
    .line 1158
    move-result v14

    .line 1159
    const/16 v19, 0x1

    .line 1160
    .line 1161
    add-int/lit8 v14, v14, -0x1

    .line 1162
    .line 1163
    :goto_23
    if-lt v14, v13, :cond_44

    .line 1164
    .line 1165
    invoke-interface {v4, v14}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1166
    .line 1167
    .line 1168
    move-result v8

    .line 1169
    if-eq v8, v3, :cond_43

    .line 1170
    .line 1171
    if-eq v8, v15, :cond_43

    .line 1172
    .line 1173
    goto :goto_24

    .line 1174
    :cond_43
    add-int/lit8 v14, v14, -0x1

    .line 1175
    .line 1176
    const/16 v3, 0x9

    .line 1177
    .line 1178
    const/4 v8, 0x4

    .line 1179
    const/16 v15, 0x20

    .line 1180
    .line 1181
    goto :goto_23

    .line 1182
    :cond_44
    add-int/lit8 v14, v13, -0x1

    .line 1183
    .line 1184
    :goto_24
    move v3, v14

    .line 1185
    :goto_25
    if-lt v3, v13, :cond_46

    .line 1186
    .line 1187
    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1188
    .line 1189
    .line 1190
    move-result v8

    .line 1191
    if-eq v8, v11, :cond_45

    .line 1192
    .line 1193
    goto :goto_26

    .line 1194
    :cond_45
    add-int/lit8 v3, v3, -0x1

    .line 1195
    .line 1196
    goto :goto_25

    .line 1197
    :cond_46
    add-int/lit8 v3, v13, -0x1

    .line 1198
    .line 1199
    :goto_26
    move v8, v3

    .line 1200
    :goto_27
    if-lt v8, v13, :cond_49

    .line 1201
    .line 1202
    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1203
    .line 1204
    .line 1205
    move-result v11

    .line 1206
    const/16 v15, 0x9

    .line 1207
    .line 1208
    if-eq v11, v15, :cond_47

    .line 1209
    .line 1210
    const/16 v15, 0x20

    .line 1211
    .line 1212
    if-eq v11, v15, :cond_48

    .line 1213
    .line 1214
    goto :goto_28

    .line 1215
    :cond_47
    const/16 v15, 0x20

    .line 1216
    .line 1217
    :cond_48
    add-int/lit8 v8, v8, -0x1

    .line 1218
    .line 1219
    goto :goto_27

    .line 1220
    :cond_49
    add-int/lit8 v8, v13, -0x1

    .line 1221
    .line 1222
    :goto_28
    if-eq v8, v3, :cond_4a

    .line 1223
    .line 1224
    new-instance v11, Lorg/commonmark/internal/HeadingParser;

    .line 1225
    .line 1226
    add-int/lit8 v8, v8, 0x1

    .line 1227
    .line 1228
    invoke-interface {v4, v13, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v3

    .line 1236
    invoke-direct {v11, v6, v3}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    goto :goto_2a

    .line 1240
    :cond_4a
    new-instance v11, Lorg/commonmark/internal/HeadingParser;

    .line 1241
    .line 1242
    add-int/lit8 v14, v14, 0x1

    .line 1243
    .line 1244
    invoke-interface {v4, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v3

    .line 1252
    invoke-direct {v11, v6, v3}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    goto :goto_2a

    .line 1256
    :cond_4b
    :goto_29
    const/4 v11, 0x0

    .line 1257
    :goto_2a
    if-eqz v11, :cond_4c

    .line 1258
    .line 1259
    const/4 v13, 0x1

    .line 1260
    new-array v3, v13, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1261
    .line 1262
    aput-object v11, v3, v16

    .line 1263
    .line 1264
    new-instance v5, Lorg/commonmark/internal/BlockStartImpl;

    .line 1265
    .line 1266
    invoke-direct {v5, v3}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    iput v3, v5, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 1274
    .line 1275
    goto/16 :goto_21

    .line 1276
    .line 1277
    :cond_4c
    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 1278
    .line 1279
    .line 1280
    move-result v3

    .line 1281
    const/16 v14, 0x2d

    .line 1282
    .line 1283
    if-eq v3, v14, :cond_4e

    .line 1284
    .line 1285
    const/16 v6, 0x3d

    .line 1286
    .line 1287
    if-eq v3, v6, :cond_4d

    .line 1288
    .line 1289
    goto :goto_2b

    .line 1290
    :cond_4d
    add-int/lit8 v3, v5, 0x1

    .line 1291
    .line 1292
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1293
    .line 1294
    .line 1295
    move-result v8

    .line 1296
    invoke-static {v6, v3, v8, v4}, Lkotlin/math/MathKt;->skip(CIILjava/lang/CharSequence;)I

    .line 1297
    .line 1298
    .line 1299
    move-result v3

    .line 1300
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1301
    .line 1302
    .line 1303
    move-result v6

    .line 1304
    invoke-static {v4, v3, v6}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 1305
    .line 1306
    .line 1307
    move-result v3

    .line 1308
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1309
    .line 1310
    .line 1311
    move-result v6

    .line 1312
    if-lt v3, v6, :cond_4e

    .line 1313
    .line 1314
    const/4 v3, 0x1

    .line 1315
    goto :goto_2c

    .line 1316
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    .line 1317
    .line 1318
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1319
    .line 1320
    .line 1321
    move-result v3

    .line 1322
    const/16 v14, 0x2d

    .line 1323
    .line 1324
    invoke-static {v14, v5, v3, v4}, Lkotlin/math/MathKt;->skip(CIILjava/lang/CharSequence;)I

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1329
    .line 1330
    .line 1331
    move-result v5

    .line 1332
    invoke-static {v4, v3, v5}, Lkotlin/math/MathKt;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    .line 1333
    .line 1334
    .line 1335
    move-result v3

    .line 1336
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1337
    .line 1338
    .line 1339
    move-result v5

    .line 1340
    if-lt v3, v5, :cond_4f

    .line 1341
    .line 1342
    const/4 v3, 0x2

    .line 1343
    goto :goto_2c

    .line 1344
    :cond_4f
    :goto_2b
    move/from16 v3, v16

    .line 1345
    .line 1346
    :goto_2c
    if-lez v3, :cond_2a

    .line 1347
    .line 1348
    iget-object v5, v10, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 1349
    .line 1350
    check-cast v5, Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1351
    .line 1352
    instance-of v6, v5, Lorg/commonmark/internal/ParagraphParser;

    .line 1353
    .line 1354
    if-eqz v6, :cond_50

    .line 1355
    .line 1356
    check-cast v5, Lorg/commonmark/internal/ParagraphParser;

    .line 1357
    .line 1358
    iget-object v5, v5, Lorg/commonmark/internal/ParagraphParser;->linkReferenceDefinitionParser:Lorg/commonmark/internal/LinkReferenceDefinitionParser;

    .line 1359
    .line 1360
    iget-object v5, v5, Lorg/commonmark/internal/LinkReferenceDefinitionParser;->paragraph:Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 1363
    .line 1364
    .line 1365
    move-result v6

    .line 1366
    if-nez v6, :cond_51

    .line 1367
    .line 1368
    :cond_50
    const/4 v5, 0x0

    .line 1369
    :cond_51
    if-eqz v5, :cond_2a

    .line 1370
    .line 1371
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v5

    .line 1375
    new-instance v6, Lorg/commonmark/internal/HeadingParser;

    .line 1376
    .line 1377
    invoke-direct {v6, v3, v5}, Lorg/commonmark/internal/HeadingParser;-><init>(ILjava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    const/4 v13, 0x1

    .line 1381
    new-array v3, v13, [Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1382
    .line 1383
    aput-object v6, v3, v16

    .line 1384
    .line 1385
    new-instance v5, Lorg/commonmark/internal/BlockStartImpl;

    .line 1386
    .line 1387
    invoke-direct {v5, v3}, Lorg/commonmark/internal/BlockStartImpl;-><init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    iput v3, v5, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 1395
    .line 1396
    iput-boolean v13, v5, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    .line 1397
    .line 1398
    goto/16 :goto_21

    .line 1399
    .line 1400
    :goto_2d
    if-eqz v3, :cond_52

    .line 1401
    .line 1402
    goto :goto_2e

    .line 1403
    :cond_52
    move/from16 v4, v16

    .line 1404
    .line 1405
    move-object/from16 v6, v21

    .line 1406
    .line 1407
    const/4 v5, 0x1

    .line 1408
    const/4 v8, -0x1

    .line 1409
    const/4 v11, 0x4

    .line 1410
    goto/16 :goto_6

    .line 1411
    .line 1412
    :cond_53
    move/from16 v16, v4

    .line 1413
    .line 1414
    move-object/from16 v21, v6

    .line 1415
    .line 1416
    const/4 v3, 0x0

    .line 1417
    :goto_2e
    if-nez v3, :cond_54

    .line 1418
    .line 1419
    iget v1, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 1420
    .line 1421
    invoke-virtual {v0, v1}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 1422
    .line 1423
    .line 1424
    goto :goto_33

    .line 1425
    :cond_54
    if-nez v7, :cond_55

    .line 1426
    .line 1427
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 1428
    .line 1429
    .line 1430
    const/4 v7, 0x1

    .line 1431
    :cond_55
    iget v4, v3, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 1432
    .line 1433
    const/4 v5, -0x1

    .line 1434
    if-eq v4, v5, :cond_56

    .line 1435
    .line 1436
    invoke-virtual {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 1437
    .line 1438
    .line 1439
    goto :goto_2f

    .line 1440
    :cond_56
    iget v4, v3, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 1441
    .line 1442
    if-eq v4, v5, :cond_57

    .line 1443
    .line 1444
    invoke-virtual {v0, v4}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 1445
    .line 1446
    .line 1447
    :cond_57
    :goto_2f
    iget-boolean v4, v3, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    .line 1448
    .line 1449
    if-eqz v4, :cond_59

    .line 1450
    .line 1451
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1456
    .line 1457
    .line 1458
    move-result v6

    .line 1459
    const/16 v19, 0x1

    .line 1460
    .line 1461
    add-int/lit8 v6, v6, -0x1

    .line 1462
    .line 1463
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    iget-object v6, v0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/LinkedHashSet;

    .line 1467
    .line 1468
    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    instance-of v6, v4, Lorg/commonmark/internal/ParagraphParser;

    .line 1472
    .line 1473
    if-eqz v6, :cond_58

    .line 1474
    .line 1475
    move-object v6, v4

    .line 1476
    check-cast v6, Lorg/commonmark/internal/ParagraphParser;

    .line 1477
    .line 1478
    invoke-virtual {v0, v6}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 1479
    .line 1480
    .line 1481
    :cond_58
    invoke-virtual {v4}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v4

    .line 1485
    invoke-virtual {v4}, Lorg/commonmark/node/Node;->unlink()V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_30

    .line 1489
    :cond_59
    const/16 v19, 0x1

    .line 1490
    .line 1491
    :goto_30
    iget-object v3, v3, Lorg/commonmark/internal/BlockStartImpl;->blockParsers:[Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1492
    .line 1493
    array-length v4, v3

    .line 1494
    move/from16 v8, v16

    .line 1495
    .line 1496
    move-object/from16 v6, v21

    .line 1497
    .line 1498
    :goto_31
    if-ge v8, v4, :cond_5a

    .line 1499
    .line 1500
    aget-object v6, v3, v8

    .line 1501
    .line 1502
    invoke-virtual {v0, v6}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v6}, Lorg/commonmark/parser/block/AbstractBlockParser;->isContainer()Z

    .line 1506
    .line 1507
    .line 1508
    move-result v9

    .line 1509
    add-int/lit8 v8, v8, 0x1

    .line 1510
    .line 1511
    goto :goto_31

    .line 1512
    :cond_5a
    move v8, v5

    .line 1513
    move/from16 v4, v16

    .line 1514
    .line 1515
    move/from16 v5, v19

    .line 1516
    .line 1517
    goto/16 :goto_5

    .line 1518
    .line 1519
    :goto_32
    iget v1, v0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 1520
    .line 1521
    invoke-virtual {v0, v1}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    .line 1522
    .line 1523
    .line 1524
    goto :goto_33

    .line 1525
    :cond_5b
    move-object/from16 v21, v6

    .line 1526
    .line 1527
    :goto_33
    if-nez v7, :cond_5c

    .line 1528
    .line 1529
    iget-boolean v1, v0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 1530
    .line 1531
    if-nez v1, :cond_5c

    .line 1532
    .line 1533
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v1

    .line 1537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    .line 1539
    .line 1540
    instance-of v1, v1, Lorg/commonmark/internal/ParagraphParser;

    .line 1541
    .line 1542
    if-eqz v1, :cond_5c

    .line 1543
    .line 1544
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    .line 1545
    .line 1546
    .line 1547
    return-void

    .line 1548
    :cond_5c
    if-nez v7, :cond_5d

    .line 1549
    .line 1550
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 1551
    .line 1552
    .line 1553
    :cond_5d
    invoke-virtual/range {v21 .. v21}, Lorg/commonmark/parser/block/AbstractBlockParser;->isContainer()Z

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    if-nez v1, :cond_5e

    .line 1558
    .line 1559
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    .line 1560
    .line 1561
    .line 1562
    return-void

    .line 1563
    :cond_5e
    iget-boolean v1, v0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 1564
    .line 1565
    if-nez v1, :cond_5f

    .line 1566
    .line 1567
    new-instance v1, Lorg/commonmark/internal/ParagraphParser;

    .line 1568
    .line 1569
    invoke-direct {v1}, Lorg/commonmark/internal/ParagraphParser;-><init>()V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v0, v1}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/AbstractBlockParser;)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    .line 1576
    .line 1577
    .line 1578
    :cond_5f
    return-void

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final setNewColumn(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 6
    .line 7
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 8
    .line 9
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 18
    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 22
    .line 23
    if-eq v2, v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-le v1, p1, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 36
    .line 37
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 38
    .line 39
    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 44
    .line 45
    return-void
.end method

.method public final setNewIndex(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 6
    .line 7
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 8
    .line 9
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 18
    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    if-eq v1, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 29
    .line 30
    return-void
.end method
