.class public final Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final canMoveDown:Z

.field public final canMoveUp:Z

.field public final dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

.field public final isDimmed:Z


# direct methods
.method public constructor <init>(ZZZLcom/fsck/k9/ui/settings/notificationactions/RowDragState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveUp:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveDown:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 11
    .line 12
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
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveUp:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveUp:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveDown:Z

    .line 26
    .line 27
    iget-boolean v1, p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveDown:Z

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveUp:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v1

    .line 21
    :goto_1
    add-int/2addr v0, v3

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveDown:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_2
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, v0

    .line 39
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ActionRowState(isDimmed="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->isDimmed:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", canMoveUp="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveUp:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", canMoveDown="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->canMoveDown:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", dragState="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/ActionRowState;->dragState:Lcom/fsck/k9/ui/settings/notificationactions/RowDragState;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
