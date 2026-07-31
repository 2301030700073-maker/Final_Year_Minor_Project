.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final enterAnim:I

.field public final exitAnim:I

.field public final popUpToId:I

.field public final popUpToInclusive:Z

.field public final popUpToSaveState:Z

.field public final restoreState:Z

.field public final singleTop:Z


# direct methods
.method public constructor <init>(ZZIZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 7
    .line 8
    iput p3, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 13
    .line 14
    iput p6, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    instance-of v1, p1, Landroidx/navigation/NavOptions;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    check-cast p1, Landroidx/navigation/NavOptions;

    .line 13
    .line 14
    iget-boolean v1, p1, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 15
    .line 16
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 17
    .line 18
    if-ne v2, v1, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 21
    .line 22
    iget-boolean v2, p1, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 23
    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget v1, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 27
    .line 28
    iget v2, p1, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 29
    .line 30
    if-ne v1, v2, :cond_2

    .line 31
    .line 32
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 33
    .line 34
    iget-boolean v2, p1, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 35
    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 39
    .line 40
    iget-boolean v2, p1, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 45
    .line 46
    iget v2, p1, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 47
    .line 48
    if-ne v1, v2, :cond_2

    .line 49
    .line 50
    iget p0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 51
    .line 52
    iget p1, p1, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 53
    .line 54
    if-ne p0, p1, :cond_2

    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    const v1, 0xe1781

    .line 14
    .line 15
    .line 16
    mul-int/2addr v0, v1

    .line 17
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget p0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 33
    .line 34
    add-int/2addr v0, p0

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NavOptions("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "launchSingleTop "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v1, "restoreState "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v1, -0x1

    .line 27
    iget v2, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 28
    .line 29
    iget p0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 30
    .line 31
    if-ne p0, v1, :cond_2

    .line 32
    .line 33
    if-ne v2, v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "anim(enterAnim=0x"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p0, " exitAnim=0x"

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, " popEnterAnim=0x"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, " popExitAnim=0x"

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p0, ")"

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method
