.class final Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final insets:Landroidx/compose/foundation/layout/FixedIntInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FixedIntInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 7
    .line 8
    iput-object p0, v0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/FixedIntInsets;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FixedIntInsets;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierElement;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/layout/FixedIntInsets;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-object p0, p1, Landroidx/compose/foundation/layout/UnionInsetsConsumingModifierNode;->insets:Landroidx/compose/foundation/layout/FixedIntInsets;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->insetsInvalidated()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
