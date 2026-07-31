.class public final Lcom/fsck/k9/ui/messagelist/MessageListItem;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final contactColor:I

.field public final databaseId:J

.field public final displayAddress:Lcom/fsck/k9/mail/Address;

.field public final displayMessageDateTime:Ljava/lang/String;

.field public final displayName:Ljava/lang/CharSequence;

.field public final folderId:J

.field public final hasAttachments:Z

.field public final internalDate:J

.field public final isAnswered:Z

.field public final isForwarded:Z

.field public final isMessageEncrypted:Z

.field public final isRead:Z

.field public final isStarred:Z

.field public final messageDate:J

.field public final messageUid:Ljava/lang/String;

.field public final previewText:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final threadCount:I

.field public final threadRoot:J

.field public final uniqueId:J


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;IJJLjava/lang/CharSequence;Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;ZZZZZZJJLjava/lang/String;JJI)V
    .locals 0

    .line 1
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 13
    .line 14
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 15
    .line 16
    iput-wide p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 17
    .line 18
    iput-wide p6, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 19
    .line 20
    iput-object p8, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 23
    .line 24
    iput-object p10, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p11, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p12, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 29
    .line 30
    iput-boolean p13, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 31
    .line 32
    iput-boolean p14, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 33
    .line 34
    iput-boolean p15, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 35
    .line 36
    move/from16 p1, p16

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 39
    .line 40
    move/from16 p1, p17

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 43
    .line 44
    move-wide/from16 p1, p18

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 47
    .line 48
    move-wide/from16 p1, p20

    .line 49
    .line 50
    iput-wide p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 51
    .line 52
    move-object/from16 p1, p22

    .line 53
    .line 54
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 55
    .line 56
    move-wide/from16 p1, p23

    .line 57
    .line 58
    iput-wide p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 59
    .line 60
    move-wide/from16 p1, p25

    .line 61
    .line 62
    iput-wide p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 63
    .line 64
    move/from16 p1, p27

    .line 65
    .line 66
    iput p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 67
    .line 68
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
    instance-of v0, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/android/account/LegacyAccount;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 38
    .line 39
    iget v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 40
    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_4
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 46
    .line 47
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 48
    .line 49
    cmp-long v0, v0, v2

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_5
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 56
    .line 57
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 58
    .line 59
    cmp-long v0, v0, v2

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 66
    .line 67
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_8
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_9
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_a

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :cond_a
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 114
    .line 115
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 116
    .line 117
    if-eq v0, v1, :cond_b

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_b
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 121
    .line 122
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 123
    .line 124
    if-eq v0, v1, :cond_c

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_c
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 128
    .line 129
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 130
    .line 131
    if-eq v0, v1, :cond_d

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_d
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 135
    .line 136
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 137
    .line 138
    if-eq v0, v1, :cond_e

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_e
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 142
    .line 143
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 144
    .line 145
    if-eq v0, v1, :cond_f

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_f
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 149
    .line 150
    iget-boolean v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 151
    .line 152
    if-eq v0, v1, :cond_10

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_10
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 156
    .line 157
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 158
    .line 159
    cmp-long v0, v0, v2

    .line 160
    .line 161
    if-eqz v0, :cond_11

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_11
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 165
    .line 166
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 167
    .line 168
    cmp-long v0, v0, v2

    .line 169
    .line 170
    if-eqz v0, :cond_12

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_12
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_13

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_13
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 185
    .line 186
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 187
    .line 188
    cmp-long v0, v0, v2

    .line 189
    .line 190
    if-eqz v0, :cond_14

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_14
    iget-wide v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 194
    .line 195
    iget-wide v2, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 196
    .line 197
    cmp-long v0, v0, v2

    .line 198
    .line 199
    if-eqz v0, :cond_15

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_15
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 203
    .line 204
    iget p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 205
    .line 206
    if-eq p0, p1, :cond_16

    .line 207
    .line 208
    :goto_0
    const/4 p0, 0x0

    .line 209
    return p0

    .line 210
    :cond_16
    :goto_1
    const/4 p0, 0x1

    .line 211
    return p0
.end method

.method public final getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 4
    .line 5
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v2, v3, v1, p0}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/core/android/account/LegacyAccount;->hashCode()I

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
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move v3, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 24
    .line 25
    add-int/2addr v0, v3

    .line 26
    mul-int/2addr v0, v1

    .line 27
    iget-wide v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 28
    .line 29
    const/16 v5, 0x20

    .line 30
    .line 31
    ushr-long v6, v3, v5

    .line 32
    .line 33
    xor-long/2addr v3, v6

    .line 34
    long-to-int v3, v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    mul-int/2addr v0, v1

    .line 37
    iget-wide v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 38
    .line 39
    ushr-long v6, v3, v5

    .line 40
    .line 41
    xor-long/2addr v3, v6

    .line 42
    long-to-int v3, v3

    .line 43
    add-int/2addr v0, v3

    .line 44
    mul-int/2addr v0, v1

    .line 45
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v0

    .line 52
    mul-int/2addr v3, v1

    .line 53
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :goto_1
    add-int/2addr v3, v2

    .line 63
    mul-int/2addr v3, v1

    .line 64
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 77
    .line 78
    const/16 v3, 0x4d5

    .line 79
    .line 80
    const/16 v4, 0x4cf

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    move v2, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move v2, v3

    .line 87
    :goto_2
    add-int/2addr v0, v2

    .line 88
    mul-int/2addr v0, v1

    .line 89
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    move v2, v4

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move v2, v3

    .line 96
    :goto_3
    add-int/2addr v0, v2

    .line 97
    mul-int/2addr v0, v1

    .line 98
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    move v2, v4

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    move v2, v3

    .line 105
    :goto_4
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    move v2, v4

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    move v2, v3

    .line 114
    :goto_5
    add-int/2addr v0, v2

    .line 115
    mul-int/2addr v0, v1

    .line 116
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 117
    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    move v2, v4

    .line 121
    goto :goto_6

    .line 122
    :cond_6
    move v2, v3

    .line 123
    :goto_6
    add-int/2addr v0, v2

    .line 124
    mul-int/2addr v0, v1

    .line 125
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 126
    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    move v3, v4

    .line 130
    :cond_7
    add-int/2addr v0, v3

    .line 131
    mul-int/2addr v0, v1

    .line 132
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 133
    .line 134
    ushr-long v6, v2, v5

    .line 135
    .line 136
    xor-long/2addr v2, v6

    .line 137
    long-to-int v2, v2

    .line 138
    add-int/2addr v0, v2

    .line 139
    mul-int/2addr v0, v1

    .line 140
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 141
    .line 142
    ushr-long v6, v2, v5

    .line 143
    .line 144
    xor-long/2addr v2, v6

    .line 145
    long-to-int v2, v2

    .line 146
    add-int/2addr v0, v2

    .line 147
    mul-int/2addr v0, v1

    .line 148
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 155
    .line 156
    ushr-long v6, v2, v5

    .line 157
    .line 158
    xor-long/2addr v2, v6

    .line 159
    long-to-int v2, v2

    .line 160
    add-int/2addr v0, v2

    .line 161
    mul-int/2addr v0, v1

    .line 162
    iget-wide v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 163
    .line 164
    ushr-long v4, v2, v5

    .line 165
    .line 166
    xor-long/2addr v2, v4

    .line 167
    long-to-int v2, v2

    .line 168
    add-int/2addr v0, v2

    .line 169
    mul-int/2addr v0, v1

    .line 170
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 171
    .line 172
    add-int/2addr v0, p0

    .line 173
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageListItem(account="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", subject="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->subject:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", threadCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadCount:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", messageDate="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageDate:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", internalDate="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->internalDate:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", displayName="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayName:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", displayAddress="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayAddress:Lcom/fsck/k9/mail/Address;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", displayMessageDateTime="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", previewText="

    .line 79
    .line 80
    const-string v2, ", isMessageEncrypted="

    .line 81
    .line 82
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->displayMessageDateTime:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->previewText:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v1, ", isRead="

    .line 90
    .line 91
    const-string v2, ", isStarred="

    .line 92
    .line 93
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isMessageEncrypted:Z

    .line 94
    .line 95
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isRead:Z

    .line 96
    .line 97
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v1, ", isAnswered="

    .line 101
    .line 102
    const-string v2, ", isForwarded="

    .line 103
    .line 104
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isStarred:Z

    .line 105
    .line 106
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isAnswered:Z

    .line 107
    .line 108
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, ", hasAttachments="

    .line 112
    .line 113
    const-string v2, ", uniqueId="

    .line 114
    .line 115
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->isForwarded:Z

    .line 116
    .line 117
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->hasAttachments:Z

    .line 118
    .line 119
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", folderId="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->folderId:J

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, ", messageUid="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->messageUid:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", databaseId="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->databaseId:J

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, ", threadRoot="

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget-wide v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->threadRoot:J

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", contactColor="

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ")"

    .line 173
    .line 174
    iget p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->contactColor:I

    .line 175
    .line 176
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0
.end method
