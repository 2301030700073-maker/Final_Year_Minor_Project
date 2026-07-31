.class public final Lorg/commonmark/internal/BlockStartImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final blockParsers:[Lorg/commonmark/parser/block/AbstractBlockParser;

.field public newColumn:I

.field public newIndex:I

.field public replaceActiveBlockParser:Z


# direct methods
.method public varargs constructor <init>([Lorg/commonmark/parser/block/AbstractBlockParser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newIndex:I

    .line 6
    .line 7
    iput v0, p0, Lorg/commonmark/internal/BlockStartImpl;->newColumn:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/commonmark/internal/BlockStartImpl;->replaceActiveBlockParser:Z

    .line 11
    .line 12
    iput-object p1, p0, Lorg/commonmark/internal/BlockStartImpl;->blockParsers:[Lorg/commonmark/parser/block/AbstractBlockParser;

    .line 13
    .line 14
    return-void
.end method
