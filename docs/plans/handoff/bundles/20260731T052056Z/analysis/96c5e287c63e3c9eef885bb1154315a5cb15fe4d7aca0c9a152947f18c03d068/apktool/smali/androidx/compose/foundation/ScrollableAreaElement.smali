.class final Landroidx/compose/foundation/ScrollableAreaElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/ScrollableAreaElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/ScrollableAreaNode;",
        "foundation"
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
.field public final bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public final enabled:Z

.field public final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final state:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final useLocalOverscrollFactory:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 5
    .line 6
    iput-object p4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    iput-boolean p7, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 15
    .line 16
    iput-boolean p8, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/ScrollableAreaNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->enabled:Z

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 27
    .line 28
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->useLocalOverscrollFactory:Z

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 35
    .line 36
    iput-object p0, v0, Landroidx/compose/foundation/ScrollableAreaNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 37
    .line 38
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_a

    .line 5
    .line 6
    const-class v0, Landroidx/compose/foundation/ScrollableAreaElement;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Landroidx/compose/foundation/ScrollableAreaElement;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 36
    .line 37
    iget-boolean v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 38
    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 43
    .line 44
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 54
    .line 55
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 65
    .line 66
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_7
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 76
    .line 77
    iget-boolean v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 78
    .line 79
    if-eq v0, v1, :cond_8

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_9

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_9
    :goto_0
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    :cond_a
    :goto_1
    const/4 p0, 0x0

    .line 96
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 19
    .line 20
    const/16 v2, 0x4d5

    .line 21
    .line 22
    const/16 v3, 0x4cf

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    :goto_0
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v4, v0

    .line 46
    :goto_1
    add-int/2addr v1, v4

    .line 47
    mul-int/lit8 v1, v1, 0x1f

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v4, v0

    .line 59
    :goto_2
    add-int/2addr v1, v4

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v4, v0

    .line 72
    :goto_3
    add-int/2addr v1, v4

    .line 73
    mul-int/lit8 v1, v1, 0x1f

    .line 74
    .line 75
    iget-boolean v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 76
    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    move v2, v3

    .line 80
    :cond_4
    add-int/2addr v1, v2

    .line 81
    mul-int/lit8 v1, v1, 0x1f

    .line 82
    .line 83
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 84
    .line 85
    if-eqz p0, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :cond_5
    add-int/2addr v1, v0

    .line 92
    return v1
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/foundation/ScrollableAreaNode;

    .line 3
    .line 4
    iget-object v6, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/ScrollableAreaElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 13
    .line 14
    iget-object v5, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 15
    .line 16
    iget-boolean v7, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 17
    .line 18
    iget-boolean v8, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 19
    .line 20
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/ScrollableAreaNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
