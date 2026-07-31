.class public final Lorg/commonmark/internal/HeadingParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final block:Lorg/commonmark/node/Block;

.field public final content:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/commonmark/node/IndentedCodeBlock;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/commonmark/node/Node;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Block;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/io/Serializable;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/commonmark/node/Heading;

    .line 24
    invoke-direct {v0}, Lorg/commonmark/node/Node;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Block;

    .line 26
    iput p1, v0, Lorg/commonmark/node/Heading;->level:I

    .line 27
    iput-object p2, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public closeBlock()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    move v5, v2

    .line 31
    :goto_1
    const/4 v6, -0x1

    .line 32
    if-ge v5, v4, :cond_1

    .line 33
    .line 34
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/16 v8, 0x20

    .line 39
    .line 40
    if-eq v7, v8, :cond_0

    .line 41
    .line 42
    packed-switch v7, :pswitch_data_1

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v6

    .line 50
    :goto_2
    if-ne v5, v6, :cond_2

    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_3
    add-int/lit8 v4, v1, 0x1

    .line 61
    .line 62
    if-ge v2, v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v4, 0xa

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object p0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Block;

    .line 86
    .line 87
    check-cast p0, Lorg/commonmark/node/IndentedCodeBlock;

    .line 88
    .line 89
    iput-object v0, p0, Lorg/commonmark/node/IndentedCodeBlock;->literal:Ljava/lang/String;

    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Block;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/commonmark/node/IndentedCodeBlock;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lorg/commonmark/node/Heading;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public parseInlines(Lorg/commonmark/internal/InlineParserImpl;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lorg/commonmark/internal/HeadingParser;->content:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/commonmark/internal/HeadingParser;->block:Lorg/commonmark/node/Block;

    .line 12
    .line 13
    check-cast p0, Lorg/commonmark/node/Heading;

    .line 14
    .line 15
    invoke-virtual {p1, v0, p0}, Lorg/commonmark/internal/InlineParserImpl;->parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 2

    .line 1
    iget p0, p0, Lorg/commonmark/internal/HeadingParser;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 13
    .line 14
    add-int/2addr p0, v1

    .line 15
    new-instance v0, Lorg/commonmark/internal/BlockContinueImpl;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p1, p0, v1}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean p0, p1, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 28
    .line 29
    invoke-static {p0}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    :pswitch_0
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
