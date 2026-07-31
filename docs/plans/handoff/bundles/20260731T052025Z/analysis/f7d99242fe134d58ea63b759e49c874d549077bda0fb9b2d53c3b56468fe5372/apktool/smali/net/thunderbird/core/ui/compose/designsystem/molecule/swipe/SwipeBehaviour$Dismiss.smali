.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;


# instance fields
.field public final dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

.field public final enableHapticFeedback:Z

.field public final settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public final threshold:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->Companion:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;->DefaultDismissAnimation:Landroidx/compose/animation/core/TweenSpec;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x6

    .line 13
    const/16 v3, 0x96

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v3, v1, v4, v2}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0xc8

    .line 26
    .line 27
    const/16 v3, 0x32

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v3, 0xe

    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroidx/compose/animation/ExitTransitionImpl;->plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    const/high16 v2, 0x43160000    # 150.0f

    .line 51
    .line 52
    iput v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 53
    .line 54
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 58
    .line 59
    iput-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 10
    .line 11
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 12
    .line 13
    iget v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 41
    .line 42
    iget-object p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 53
    return p0
.end method

.method public final getEnableHapticFeedback()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSettleAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThreshold-D9Ej5fM()F
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

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
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x4cf

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x4d5

    .line 26
    .line 27
    :goto_0
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    .line 30
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/animation/TransitionData;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, v1

    .line 39
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->threshold:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Dismiss(threshold="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", settleAnimationSpec="

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", enableHapticFeedback="

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->enableHapticFeedback:Z

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", dismissTransition="

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;->dismissTransition:Landroidx/compose/animation/ExitTransitionImpl;

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ")"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
