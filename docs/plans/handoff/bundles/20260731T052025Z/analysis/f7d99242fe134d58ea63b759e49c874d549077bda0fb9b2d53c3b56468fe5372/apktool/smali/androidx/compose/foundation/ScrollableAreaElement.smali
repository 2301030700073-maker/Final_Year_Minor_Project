.class final Landroidx/compose/foundation/ScrollableAreaElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final enabled:Z

.field public final flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field public final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final state:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final useLocalOverscrollFactory:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    iput-boolean p6, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 13
    .line 14
    iput-boolean p7, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 17
    .line 18
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
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 19
    .line 20
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 25
    .line 26
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 27
    .line 28
    iput-boolean v1, v0, Landroidx/compose/foundation/ScrollableAreaNode;->useLocalOverscrollFactory:Z

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 31
    .line 32
    iput-object p0, v0, Landroidx/compose/foundation/ScrollableAreaNode;->userProvidedOverscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 33
    .line 34
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
    if-eqz p1, :cond_9

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
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 43
    .line 44
    iget-object v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

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
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 65
    .line 66
    iget-boolean v1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 67
    .line 68
    if-eq v0, v1, :cond_7

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_7
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 74
    .line 75
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_8
    :goto_0
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :cond_9
    :goto_1
    const/4 p0, 0x0

    .line 85
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
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

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
    mul-int/lit16 v1, v1, 0x3c1

    .line 61
    .line 62
    iget-boolean v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    move v2, v3

    .line 67
    :cond_3
    add-int/2addr v1, v2

    .line 68
    mul-int/lit8 v1, v1, 0x1f

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :cond_4
    add-int/2addr v1, v0

    .line 79
    return v1
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 8

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/foundation/ScrollableAreaNode;

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/compose/foundation/ScrollableAreaElement;->flingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 5
    .line 6
    iget-object v5, p0, Landroidx/compose/foundation/ScrollableAreaElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaElement;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/compose/foundation/ScrollableAreaElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 11
    .line 12
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 13
    .line 14
    iget-boolean v6, p0, Landroidx/compose/foundation/ScrollableAreaElement;->useLocalOverscrollFactory:Z

    .line 15
    .line 16
    iget-boolean v7, p0, Landroidx/compose/foundation/ScrollableAreaElement;->enabled:Z

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/ScrollableAreaNode;->update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
