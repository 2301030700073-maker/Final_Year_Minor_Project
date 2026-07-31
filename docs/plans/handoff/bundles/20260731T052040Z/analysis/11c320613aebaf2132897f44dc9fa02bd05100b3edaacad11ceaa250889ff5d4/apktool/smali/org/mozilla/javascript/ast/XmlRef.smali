.class public abstract Lorg/mozilla/javascript/ast/XmlRef;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field protected atPos:I

.field protected colonPos:I

.field protected namespace:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 6
    .line 7
    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 12
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 15
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method


# virtual methods
.method public getAtPos()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 2
    .line 3
    return p0
.end method

.method public getColonPos()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 2
    .line 3
    return p0
.end method

.method public getNamespace()Lorg/mozilla/javascript/ast/Name;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAttributeAccess()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public setAtPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    .line 2
    .line 3
    return-void
.end method

.method public setColonPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    .line 2
    .line 3
    return-void
.end method

.method public setNamespace(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
