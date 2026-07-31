.class public Lorg/mozilla/javascript/ast/AstNode$PositionComparator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ast/AstNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/mozilla/javascript/ast/AstNode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    .line 2
    .line 3
    check-cast p2, Lorg/mozilla/javascript/ast/AstNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode$PositionComparator;->compare(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public compare(Lorg/mozilla/javascript/ast/AstNode;Lorg/mozilla/javascript/ast/AstNode;)I
    .locals 0

    .line 10
    iget p0, p1, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iget p1, p2, Lorg/mozilla/javascript/ast/AstNode;->position:I

    sub-int/2addr p0, p1

    return p0
.end method
