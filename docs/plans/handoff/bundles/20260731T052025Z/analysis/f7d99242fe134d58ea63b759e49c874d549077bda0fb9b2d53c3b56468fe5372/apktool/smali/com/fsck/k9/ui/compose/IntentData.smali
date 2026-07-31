.class public final Lcom/fsck/k9/ui/compose/IntentData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final extraStream:Ljava/util/List;

.field public final extraText:Ljava/lang/CharSequence;

.field public final intentType:Ljava/lang/String;

.field public final mailToUri:Landroid/net/Uri;

.field public final shouldInitFromSendOrViewIntent:Z

.field public final startedByExternalIntent:Z

.field public final subject:Ljava/lang/String;

.field public final trustId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLandroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p8, p0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static copy$default(Lcom/fsck/k9/ui/compose/IntentData;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Lcom/fsck/k9/ui/compose/IntentData;
    .locals 12

    .line 1
    move/from16 v0, p7

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 9
    .line 10
    move v4, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v2

    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 18
    .line 19
    :cond_1
    move v5, v2

    .line 20
    and-int/lit8 v1, v0, 0x4

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 25
    .line 26
    :cond_2
    move-object v6, p1

    .line 27
    and-int/lit8 p1, v0, 0x8

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object p2, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 32
    .line 33
    :cond_3
    move-object v7, p2

    .line 34
    and-int/lit8 p1, v0, 0x10

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 39
    .line 40
    move-object v8, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move-object v8, p3

    .line 43
    :goto_1
    and-int/lit8 p1, v0, 0x20

    .line 44
    .line 45
    if-eqz p1, :cond_5

    .line 46
    .line 47
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 48
    .line 49
    move-object v9, p1

    .line 50
    goto :goto_2

    .line 51
    :cond_5
    move-object/from16 v9, p4

    .line 52
    .line 53
    :goto_2
    and-int/lit8 p1, v0, 0x40

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object p1, p0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 58
    .line 59
    move-object v10, p1

    .line 60
    goto :goto_3

    .line 61
    :cond_6
    move-object/from16 v10, p5

    .line 62
    .line 63
    :goto_3
    and-int/lit16 p1, v0, 0x80

    .line 64
    .line 65
    if-eqz p1, :cond_7

    .line 66
    .line 67
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 68
    .line 69
    move-object v11, p0

    .line 70
    goto :goto_4

    .line 71
    :cond_7
    move-object/from16 v11, p6

    .line 72
    .line 73
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v3, Lcom/fsck/k9/ui/compose/IntentData;

    .line 77
    .line 78
    invoke-direct/range {v3 .. v11}, Lcom/fsck/k9/ui/compose/IntentData;-><init>(ZZLandroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/fsck/k9/ui/compose/IntentData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/fsck/k9/ui/compose/IntentData;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

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
    return v2

    .line 93
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

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
    const/16 v3, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v3

    .line 15
    iget-boolean v4, p0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    add-int/2addr v0, v1

    .line 21
    mul-int/2addr v0, v3

    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/2addr v0, v3

    .line 35
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    move v2, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v3

    .line 47
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    move v2, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_3
    add-int/2addr v0, v2

    .line 58
    mul-int/2addr v0, v3

    .line 59
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v2, v0, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v2, p0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :goto_4
    add-int/2addr v0, v2

    .line 76
    mul-int/2addr v0, v3

    .line 77
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 78
    .line 79
    if-nez p0, :cond_6

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_5
    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IntentData(startedByExternalIntent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->startedByExternalIntent:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", shouldInitFromSendOrViewIntent="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->shouldInitFromSendOrViewIntent:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mailToUri="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->mailToUri:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", extraText="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraText:Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", intentType="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->intentType:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", extraStream="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->extraStream:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", subject="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/fsck/k9/ui/compose/IntentData;->subject:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", trustId="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/fsck/k9/ui/compose/IntentData;->trustId:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ")"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
