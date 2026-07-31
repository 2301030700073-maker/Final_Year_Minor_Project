.class public final Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final initialCapacity:I

.field private final maxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    .line 5
    .line 6
    iput p2, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/ParseErrorList;)V
    .locals 1

    .line 9
    iget v0, p1, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    iget p1, p1, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final canAddError()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final getMaxSize()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    .line 2
    .line 3
    return p0
.end method
