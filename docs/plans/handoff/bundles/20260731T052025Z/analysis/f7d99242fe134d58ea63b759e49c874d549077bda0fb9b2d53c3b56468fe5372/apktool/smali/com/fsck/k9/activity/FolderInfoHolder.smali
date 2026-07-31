.class public final Lcom/fsck/k9/activity/FolderInfoHolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final databaseId:J

.field public final displayName:Ljava/lang/String;

.field public loading:Z

.field public moreMessages:Z


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/android/account/LegacyAccount;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p3, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 16
    .line 17
    iget-object v2, p3, Lcom/fsck/k9/mailstore/LocalFolder;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v3, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->inboxFolderId:Ljava/lang/Long;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    cmp-long v3, v0, v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->INBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v3, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 40
    .line 41
    invoke-static {p2, v3}, Lkotlinx/io/Sink$-CC;->getOutboxFolderIdSync$default(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/feature/account/AccountId;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmp-long p2, v0, v3

    .line 46
    .line 47
    if-nez p2, :cond_2

    .line 48
    .line 49
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->OUTBOX:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 50
    .line 51
    goto :goto_6

    .line 52
    :cond_2
    iget-object p2, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->archiveFolderId:Ljava/lang/Long;

    .line 53
    .line 54
    if-nez p2, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    cmp-long p2, v0, v3

    .line 62
    .line 63
    if-nez p2, :cond_4

    .line 64
    .line 65
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->ARCHIVE:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_4
    :goto_1
    iget-object p2, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->draftsFolderId:Ljava/lang/Long;

    .line 69
    .line 70
    if-nez p2, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    cmp-long p2, v0, v3

    .line 78
    .line 79
    if-nez p2, :cond_6

    .line 80
    .line 81
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->DRAFTS:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_6
    :goto_2
    iget-object p2, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->sentFolderId:Ljava/lang/Long;

    .line 85
    .line 86
    if-nez p2, :cond_7

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    cmp-long p2, v0, v3

    .line 94
    .line 95
    if-nez p2, :cond_8

    .line 96
    .line 97
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SENT:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_8
    :goto_3
    iget-object p2, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->spamFolderId:Ljava/lang/Long;

    .line 101
    .line 102
    if-nez p2, :cond_9

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    cmp-long p2, v0, v3

    .line 110
    .line 111
    if-nez p2, :cond_a

    .line 112
    .line 113
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->SPAM:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_a
    :goto_4
    iget-object p2, p4, Lnet/thunderbird/core/android/account/LegacyAccount;->trashFolderId:Ljava/lang/Long;

    .line 117
    .line 118
    if-nez p2, :cond_b

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v3

    .line 125
    cmp-long p2, v0, v3

    .line 126
    .line 127
    if-nez p2, :cond_c

    .line 128
    .line 129
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->TRASH:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_c
    :goto_5
    sget-object p2, Lnet/thunderbird/feature/mail/folder/api/FolderType;->REGULAR:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 133
    .line 134
    :goto_6
    iget-boolean p4, p3, Lcom/fsck/k9/mailstore/LocalFolder;->localOnly:Z

    .line 135
    .line 136
    iget-object p1, p1, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->resources:Landroid/content/res/Resources;

    .line 137
    .line 138
    const/4 v0, 0x2

    .line 139
    const/4 v1, 0x5

    .line 140
    if-eqz p4, :cond_11

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eq p2, v0, :cond_10

    .line 147
    .line 148
    const/4 p4, 0x3

    .line 149
    if-eq p2, p4, :cond_f

    .line 150
    .line 151
    const/4 p4, 0x4

    .line 152
    if-eq p2, p4, :cond_e

    .line 153
    .line 154
    if-eq p2, v1, :cond_d

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_d
    const p2, 0x7f120617

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    goto :goto_7

    .line 165
    :cond_e
    const p2, 0x7f12061b

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    goto :goto_7

    .line 173
    :cond_f
    const p2, 0x7f12061a

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    goto :goto_7

    .line 181
    :cond_10
    const p2, 0x7f120619

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_11
    sget-object p4, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 193
    .line 194
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    aget p2, p4, p2

    .line 199
    .line 200
    if-ne p2, v1, :cond_12

    .line 201
    .line 202
    const p2, 0x7f120618

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    :goto_8
    iput-object v2, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->displayName:Ljava/lang/String;

    .line 213
    .line 214
    iget p1, p3, Lcom/fsck/k9/mailstore/LocalFolder;->moreMessages:I

    .line 215
    .line 216
    if-eq p1, v0, :cond_13

    .line 217
    .line 218
    const/4 p1, 0x1

    .line 219
    goto :goto_9

    .line 220
    :cond_13
    const/4 p1, 0x0

    .line 221
    :goto_9
    iput-boolean p1, p0, Lcom/fsck/k9/activity/FolderInfoHolder;->moreMessages:Z

    .line 222
    .line 223
    return-void
.end method
