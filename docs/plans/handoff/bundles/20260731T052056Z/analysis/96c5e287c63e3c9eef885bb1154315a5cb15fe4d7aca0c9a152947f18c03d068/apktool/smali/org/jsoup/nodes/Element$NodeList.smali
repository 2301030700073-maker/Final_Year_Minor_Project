.class public final Lorg/jsoup/nodes/Element$NodeList;
.super Ljava/util/ArrayList;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public validChildren:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/jsoup/nodes/Element$NodeList;->validChildren:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final incrementMod()V
    .locals 1

    .line 1
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final modCount()I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/ArrayList;->modCount:I

    .line 2
    .line 3
    return p0
.end method
