.class public Lorg/mozilla/javascript/ast/CatchClause;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private body:Lorg/mozilla/javascript/ast/Scope;

.field private catchCondition:Lorg/mozilla/javascript/ast/AstNode;

.field private ifPosition:I

.field private lp:I

.field private rp:I

.field private varName:Lorg/mozilla/javascript/ast/Name;


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
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 6
    .line 7
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 8
    .line 9
    iput v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 10
    .line 11
    const/16 v0, 0x89

    .line 12
    .line 13
    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 18
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 19
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x89

    .line 20
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 23
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 24
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    const/16 p1, 0x89

    .line 25
    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getBody()Lorg/mozilla/javascript/ast/Scope;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIfPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 2
    .line 3
    return p0
.end method

.method public getLp()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 2
    .line 3
    return p0
.end method

.method public getRp()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 2
    .line 3
    return p0
.end method

.method public getVarName()Lorg/mozilla/javascript/ast/Name;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBody(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCatchCondition(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

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

.method public setIfPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->ifPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public setLp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 2
    .line 3
    return-void
.end method

.method public setParens(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->lp:I

    .line 2
    .line 3
    iput p2, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 4
    .line 5
    return-void
.end method

.method public setRp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->rp:I

    .line 2
    .line 3
    return-void
.end method

.method public setVarName(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

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

.method public toSource(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "catch ("

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string p1, " if "

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string p1, ") "

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/ast/Scope;->toSource(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->varName:Lorg/mozilla/javascript/ast/Name;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/javascript/ast/CatchClause;->catchCondition:Lorg/mozilla/javascript/ast/AstNode;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lorg/mozilla/javascript/ast/CatchClause;->body:Lorg/mozilla/javascript/ast/Scope;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Scope;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
