.class public final Lorg/commonmark/internal/DocumentBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final document:Lorg/commonmark/node/Block;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lorg/commonmark/node/Document;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lorg/commonmark/node/Document;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Block;

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lorg/commonmark/node/ThematicBreak;

    .line 22
    .line 23
    invoke-direct {p1}, Lorg/commonmark/node/Node;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Block;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final addLine$org$commonmark$internal$DocumentBlockParser(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lorg/commonmark/parser/block/AbstractBlockParser;->canContain(Lorg/commonmark/node/Block;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/commonmark/internal/DocumentBlockParser;->document:Lorg/commonmark/node/Block;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/commonmark/node/ThematicBreak;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p0, Lorg/commonmark/node/Document;

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

.method public isContainer()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;->isContainer()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final tryContinue(Lorg/commonmark/internal/DocumentParser;)Lorg/commonmark/internal/BlockContinueImpl;
    .locals 0

    .line 1
    iget p0, p0, Lorg/commonmark/internal/DocumentBlockParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    iget p0, p1, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 9
    .line 10
    invoke-static {p0}, Lorg/commonmark/internal/BlockContinueImpl;->atIndex(I)Lorg/commonmark/internal/BlockContinueImpl;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
