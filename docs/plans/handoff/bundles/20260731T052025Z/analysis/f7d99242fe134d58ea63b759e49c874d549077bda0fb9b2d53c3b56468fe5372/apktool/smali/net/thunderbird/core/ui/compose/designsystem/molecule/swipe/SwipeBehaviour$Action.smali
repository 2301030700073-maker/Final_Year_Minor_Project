.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;


# instance fields
.field public final autoCloseDelayMillis:J

.field public final enableHapticFeedback:Z

.field public final settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public final threshold:F


# direct methods
.method public constructor <init>()V
    .locals 4

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
    sget-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Companion;->DefaultSettleAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 10
    .line 11
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 12
    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lkotlin/time/InstantKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/high16 v3, 0x43160000    # 150.0f

    .line 25
    .line 26
    iput v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

    .line 27
    .line 28
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

    .line 32
    .line 33
    iput-wide v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 34
    .line 35
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
    instance-of v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 10
    .line 11
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

    .line 12
    .line 13
    iget v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

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
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-wide v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 41
    .line 42
    iget-wide p0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 43
    .line 44
    invoke-static {v0, v1, p0, p1}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

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
    iget-boolean p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSettleAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getThreshold-D9Ej5fM()F
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

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
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

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
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

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
    iget-wide v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/time/Duration;->hashCode-impl(J)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v1

    .line 37
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->threshold:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->autoCloseDelayMillis:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Action(threshold="

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, ", settleAnimationSpec="

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->settleAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", enableHapticFeedback="

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;->enableHapticFeedback:Z

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ", autoCloseDelayMillis="

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, ")"

    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
