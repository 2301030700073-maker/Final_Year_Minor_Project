.class public final Landroidx/compose/material3/TabIndicatorModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final selectedTabIndex:I

.field public final tabPositionsState:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;ILandroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material3/TabIndicatorOffsetNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 15
    .line 16
    iput-object p0, v0, Landroidx/compose/material3/TabIndicatorOffsetNode;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 17
    .line 18
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
    instance-of v0, p1, Landroidx/compose/material3/TabIndicatorModifier;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/compose/material3/TabIndicatorModifier;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    iget-object v1, p1, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 23
    .line 24
    iget v1, p1, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 32
    .line 33
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

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
    iget v1, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    add-int/lit16 v0, v0, 0x4d5

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TabIndicatorModifier(tabPositionsState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", selectedTabIndex="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", followContentSize=false, animationSpec="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/material3/TabIndicatorOffsetNode;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/TabIndicatorModifier;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object v0, p1, Landroidx/compose/material3/TabIndicatorOffsetNode;->tabPositionsState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iget v0, p0, Landroidx/compose/material3/TabIndicatorModifier;->selectedTabIndex:I

    .line 8
    .line 9
    iput v0, p1, Landroidx/compose/material3/TabIndicatorOffsetNode;->selectedTabIndex:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/material3/TabIndicatorModifier;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 12
    .line 13
    iput-object p0, p1, Landroidx/compose/material3/TabIndicatorOffsetNode;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 14
    .line 15
    return-void
.end method
