.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final enterAnim:I

.field public final exitAnim:I

.field public final popEnterAnim:I

.field public final popExitAnim:I

.field public final popUpToId:I

.field public final popUpToInclusive:Z

.field public popUpToRoute:Ljava/lang/String;

.field public final popUpToSaveState:Z

.field public final restoreState:Z

.field public final singleTop:Z


# direct methods
.method public constructor <init>(ZZIZZIIII)V
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
    iput p8, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 19
    .line 20
    iput p9, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    instance-of v0, p1, Landroidx/navigation/NavOptions;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, Landroidx/navigation/NavOptions;

    .line 12
    .line 13
    iget-boolean v0, p1, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 16
    .line 17
    if-ne v1, v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 20
    .line 21
    iget-boolean v1, p1, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    iget v0, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 26
    .line 27
    iget v1, p1, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 28
    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 42
    .line 43
    iget-boolean v1, p1, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 50
    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    iget v0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 54
    .line 55
    iget v1, p1, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    iget v0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 60
    .line 61
    iget v1, p1, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 62
    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    iget v0, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 66
    .line 67
    iget v1, p1, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 72
    .line 73
    iget p1, p1, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 74
    .line 75
    if-ne p0, p1, :cond_2

    .line 76
    .line 77
    :goto_0
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 80
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
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit16 v0, v0, 0x745f

    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 29
    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget v1, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget v1, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 49
    .line 50
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 54
    .line 55
    add-int/2addr v0, p0

    .line 56
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NavOptions("

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "launchSingleTop "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string v2, "restoreState "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_1
    const-string v2, ")"

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget v4, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 34
    .line 35
    if-eq v4, v3, :cond_5

    .line 36
    .line 37
    :cond_2
    if-eqz v0, :cond_5

    .line 38
    .line 39
    const-string v4, "popUpTo("

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const-string v0, " inclusive"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const-string v0, " saveState"

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_5
    iget v0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 69
    .line 70
    iget v4, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 71
    .line 72
    iget v5, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 73
    .line 74
    iget p0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 75
    .line 76
    if-ne p0, v3, :cond_6

    .line 77
    .line 78
    if-ne v5, v3, :cond_6

    .line 79
    .line 80
    if-ne v4, v3, :cond_6

    .line 81
    .line 82
    if-eq v0, v3, :cond_7

    .line 83
    .line 84
    :cond_6
    const-string v3, "anim(enterAnim=0x"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, " exitAnim=0x"

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p0, " popEnterAnim=0x"

    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p0, " popExitAnim=0x"

    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method
