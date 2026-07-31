.class public final Landroidx/compose/ui/draw/SimpleDropShadowElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0081\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/draw/SimpleDropShadowElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/draw/SimpleDropShadowNode;",
        "ui"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

.field public final shape:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/shape/RoundedCornerShape;Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/draw/SimpleDropShadowNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 11
    .line 12
    iput-object p0, v0, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/draw/SimpleDropShadowElement;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/ui/draw/SimpleDropShadowElement;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/shape/RoundedCornerShape;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/shadow/Shadow;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/shape/RoundedCornerShape;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/shadow/Shadow;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SimpleDropShadowElement(shape="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", shadow="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Landroidx/compose/ui/draw/SimpleDropShadowElement;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 16
    .line 17
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shadowPainter:Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    .line 25
    .line 26
    :cond_1
    iput-object v1, p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 27
    .line 28
    iput-object p0, p1, Landroidx/compose/ui/draw/SimpleDropShadowNode;->shadow:Landroidx/compose/ui/graphics/shadow/Shadow;

    .line 29
    .line 30
    return-void
.end method
