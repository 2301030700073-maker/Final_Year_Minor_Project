.class public final Lapp/k9mail/feature/widget/message/list/MessageListItem;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountColor:I

.field public final displayDate:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final hasAttachments:Z

.field public final isRead:Z

.field public final messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public final preview:Ljava/lang/String;

.field public final sortDatabaseId:J

.field public final sortInternalDate:J

.field public final sortIsStarred:Z

.field public final sortMessageDate:J

.field public final sortSubject:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final threadCount:I

.field public final uniqueId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILapp/k9mail/legacy/message/controller/MessageReference;JLjava/lang/String;JJZJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 16
    .line 17
    iput-boolean p6, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 18
    .line 19
    iput p7, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 20
    .line 21
    iput p8, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 22
    .line 23
    iput-object p9, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 24
    .line 25
    iput-wide p10, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 26
    .line 27
    iput-object p12, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortSubject:Ljava/lang/String;

    .line 28
    .line 29
    iput-wide p13, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 30
    .line 31
    move-wide p1, p15

    .line 32
    iput-wide p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortInternalDate:J

    .line 33
    .line 34
    move/from16 p1, p17

    .line 35
    .line 36
    iput-boolean p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortIsStarred:Z

    .line 37
    .line 38
    move-wide/from16 p1, p18

    .line 39
    .line 40
    iput-wide p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortDatabaseId:J

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 12
    .line 13
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    iget-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 61
    .line 62
    iget-boolean v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 63
    .line 64
    if-eq v0, v1, :cond_6

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    iget-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 68
    .line 69
    iget-boolean v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 70
    .line 71
    if-eq v0, v1, :cond_7

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_7
    iget v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 75
    .line 76
    iget v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 77
    .line 78
    if-eq v0, v1, :cond_8

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_8
    iget v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 82
    .line 83
    iget v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 84
    .line 85
    if-eq v0, v1, :cond_9

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_9
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 89
    .line 90
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_a

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_a
    iget-wide v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 100
    .line 101
    iget-wide v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 102
    .line 103
    cmp-long v0, v0, v2

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_b
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortSubject:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortSubject:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_c

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_c
    iget-wide v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 120
    .line 121
    iget-wide v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 122
    .line 123
    cmp-long v0, v0, v2

    .line 124
    .line 125
    if-eqz v0, :cond_d

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_d
    iget-wide v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortInternalDate:J

    .line 129
    .line 130
    iget-wide v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortInternalDate:J

    .line 131
    .line 132
    cmp-long v0, v0, v2

    .line 133
    .line 134
    if-eqz v0, :cond_e

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_e
    iget-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortIsStarred:Z

    .line 138
    .line 139
    iget-boolean v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortIsStarred:Z

    .line 140
    .line 141
    if-eq v0, v1, :cond_f

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_f
    iget-wide v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortDatabaseId:J

    .line 145
    .line 146
    iget-wide p0, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortDatabaseId:J

    .line 147
    .line 148
    cmp-long p0, v0, p0

    .line 149
    .line 150
    if-eqz p0, :cond_10

    .line 151
    .line 152
    :goto_0
    const/4 p0, 0x0

    .line 153
    return p0

    .line 154
    :cond_10
    :goto_1
    const/4 p0, 0x1

    .line 155
    return p0
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-boolean v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 29
    .line 30
    const/16 v3, 0x4d5

    .line 31
    .line 32
    const/16 v4, 0x4cf

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v2, v3

    .line 39
    :goto_0
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-boolean v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v3

    .line 48
    :goto_1
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    mul-int/2addr v0, v1

    .line 54
    iget v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 55
    .line 56
    add-int/2addr v0, v2

    .line 57
    mul-int/2addr v0, v1

    .line 58
    iget-object v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 59
    .line 60
    invoke-virtual {v2}, Lapp/k9mail/legacy/message/controller/MessageReference;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v0

    .line 65
    mul-int/2addr v2, v1

    .line 66
    iget-wide v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 67
    .line 68
    const/16 v0, 0x20

    .line 69
    .line 70
    ushr-long v7, v5, v0

    .line 71
    .line 72
    xor-long/2addr v5, v7

    .line 73
    long-to-int v5, v5

    .line 74
    add-int/2addr v2, v5

    .line 75
    mul-int/2addr v2, v1

    .line 76
    iget-object v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortSubject:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    :goto_2
    add-int/2addr v2, v5

    .line 87
    mul-int/2addr v2, v1

    .line 88
    iget-wide v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 89
    .line 90
    ushr-long v7, v5, v0

    .line 91
    .line 92
    xor-long/2addr v5, v7

    .line 93
    long-to-int v5, v5

    .line 94
    add-int/2addr v2, v5

    .line 95
    mul-int/2addr v2, v1

    .line 96
    iget-wide v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortInternalDate:J

    .line 97
    .line 98
    ushr-long v7, v5, v0

    .line 99
    .line 100
    xor-long/2addr v5, v7

    .line 101
    long-to-int v5, v5

    .line 102
    add-int/2addr v2, v5

    .line 103
    mul-int/2addr v2, v1

    .line 104
    iget-boolean v5, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortIsStarred:Z

    .line 105
    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    move v3, v4

    .line 109
    :cond_3
    add-int/2addr v2, v3

    .line 110
    mul-int/2addr v2, v1

    .line 111
    iget-wide v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortDatabaseId:J

    .line 112
    .line 113
    ushr-long v0, v3, v0

    .line 114
    .line 115
    xor-long/2addr v0, v3

    .line 116
    long-to-int p0, v0

    .line 117
    add-int/2addr v2, p0

    .line 118
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", displayDate="

    .line 2
    .line 3
    const-string v1, ", subject="

    .line 4
    .line 5
    const-string v2, "MessageListItem(displayName="

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", preview="

    .line 16
    .line 17
    const-string v2, ", isRead="

    .line 18
    .line 19
    iget-object v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ", hasAttachments="

    .line 27
    .line 28
    const-string v2, ", threadCount="

    .line 29
    .line 30
    iget-boolean v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 31
    .line 32
    iget-boolean v4, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 33
    .line 34
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ", accountColor="

    .line 38
    .line 39
    const-string v2, ", messageReference="

    .line 40
    .line 41
    iget v3, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 42
    .line 43
    iget v4, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", uniqueId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", sortSubject="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortSubject:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", sortMessageDate="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortMessageDate:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", sortInternalDate="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortInternalDate:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", sortIsStarred="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortIsStarred:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", sortDatabaseId="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-wide v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->sortDatabaseId:J

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p0, ")"

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method
