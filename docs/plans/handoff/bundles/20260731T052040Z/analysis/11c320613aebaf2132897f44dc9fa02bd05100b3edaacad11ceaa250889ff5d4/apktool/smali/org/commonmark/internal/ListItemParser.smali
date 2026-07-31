.class public final Lorg/commonmark/internal/ListItemParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final block:Lorg/commonmark/node/ListItem;

.field public final contentIndent:I

.field public hadBlankLine:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/commonmark/node/ListItem;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/commonmark/node/Node;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 10
    .line 11
    iput p1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final canContain(Lorg/commonmark/node/Block;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/commonmark/node/Node;->parent:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lorg/commonmark/node/Node;

    .line 10
    .line 11
    check-cast p0, Lorg/commonmark/node/Block;

    .line 12
    .line 13
    instance-of p1, p0, Lorg/commonmark/node/ListBlock;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast p0, Lorg/commonmark/node/ListBlock;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/commonmark/node/ListBlock;->tight:Z

    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isContainer()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 3

    .line 1
    iget-boolean v0, p1, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/commonmark/node/Node;->firstChild:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/commonmark/node/Node;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/commonmark/parser/block/AbstractBlockParser;->getBlock()Lorg/commonmark/node/Block;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Lorg/commonmark/node/Paragraph;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    instance-of v0, v0, Lorg/commonmark/node/ListItem;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v1, 0x1

    .line 32
    :cond_2
    iput-boolean v1, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    .line 33
    .line 34
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 35
    .line 36
    invoke-static {p0}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    iget v0, p1, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 42
    .line 43
    iget p0, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    .line 44
    .line 45
    if-lt v0, p0, :cond_4

    .line 46
    .line 47
    iget p1, p1, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 48
    .line 49
    add-int/2addr p1, p0

    .line 50
    new-instance p0, Lorg/commonmark/internal/BlockContinueImpl;

    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, v0, p1, v1}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method
