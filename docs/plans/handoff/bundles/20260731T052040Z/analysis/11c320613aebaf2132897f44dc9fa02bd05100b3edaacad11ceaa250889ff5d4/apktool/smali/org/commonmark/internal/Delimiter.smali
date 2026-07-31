.class public final Lorg/commonmark/internal/Delimiter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final canClose:Z

.field public final canOpen:Z

.field public final delimiterChar:C

.field public length:I

.field public next:Lorg/commonmark/internal/Delimiter;

.field public final node:Lorg/commonmark/node/Text;

.field public originalLength:I

.field public previous:Lorg/commonmark/internal/Delimiter;


# direct methods
.method public constructor <init>(Lorg/commonmark/node/Text;CZZLorg/commonmark/internal/Delimiter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/commonmark/internal/Delimiter;->length:I

    .line 6
    .line 7
    iput v0, p0, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 8
    .line 9
    iput-object p1, p0, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 10
    .line 11
    iput-char p2, p0, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 12
    .line 13
    iput-boolean p3, p0, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    .line 14
    .line 15
    iput-boolean p4, p0, Lorg/commonmark/internal/Delimiter;->canClose:Z

    .line 16
    .line 17
    iput-object p5, p0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 18
    .line 19
    return-void
.end method
