.class public final Lcom/fsck/k9/mailstore/LocalMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public attachmentCount:I

.field public databaseId:J

.field public headerNeedsUpdating:Z

.field public final localStore:Lcom/fsck/k9/mailstore/LocalStore;

.field public mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

.field public messagePartId:J

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public mimeType:Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public previewType:I

.field public rootId:J

.field public subject:Ljava/lang/String;

.field public threadId:J


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;JLcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 1

    .line 1
    const/4 p5, 0x0

    .line 2
    invoke-direct {p0, p5}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 14
    .line 15
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 1

    const/4 p4, 0x0

    .line 18
    invoke-direct {p0, p4}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 21
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 22
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    return-void
.end method

.method public static synthetic access$001(Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic access$101(Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v4, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    iget-object p0, v1, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 15
    .line 16
    iget-object v7, p0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/mailstore/LocalFolder$14;

    .line 19
    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/mailstore/LocalFolder$14;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JJLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v7, v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

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
    const-class v0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 28
    .line 29
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 40
    .line 41
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 46
    .line 47
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    :goto_0
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasAttachments()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object v0, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const/16 v2, 0x1f

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v2

    .line 20
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/fsck/k9/mailstore/LocalFolder;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_1
    add-int/2addr v0, v1

    .line 29
    mul-int/2addr v0, v2

    .line 30
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    add-int/2addr p0, v0

    .line 37
    return p0
.end method

.method public final makeMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    iget-object v1, v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v2, v0, Lcom/fsck/k9/mailstore/LocalFolder;->databaseId:J

    .line 14
    .line 15
    new-instance v0, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v1, v4}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 25
    .line 26
    return-object p0
.end method

.method public final populateFromGetMessageCursor(Landroid/database/Cursor;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalMessage;->setSubject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    array-length v4, v3

    .line 26
    if-lez v4, :cond_1

    .line 27
    .line 28
    aget-object v3, v3, v0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v3, Ljava/util/Date;

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mailstore/LocalMessage;->setUid(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x4

    .line 54
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-lez v5, :cond_3

    .line 65
    .line 66
    const-string v5, ","

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    array-length v5, v3

    .line 73
    move v6, v0

    .line 74
    :goto_0
    if-ge v6, v5, :cond_3

    .line 75
    .line 76
    aget-object v7, v3, v6

    .line 77
    .line 78
    :try_start_0
    invoke-static {v7}, Lnet/thunderbird/core/common/mail/Flag;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/Flag;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-super {p0, v8, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    const-string v8, "X_BAD_FLAG"

    .line 87
    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_2

    .line 93
    .line 94
    new-array v8, v1, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v7, v8, v0

    .line 97
    .line 98
    const-string v7, "Unable to parse flag %s"

    .line 99
    .line 100
    invoke-static {v7, v8}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const/4 v3, 0x5

    .line 107
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    iput-wide v5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 112
    .line 113
    const/4 v3, 0x6

    .line 114
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    sget-object v5, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 119
    .line 120
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const/4 v5, 0x0

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    array-length v6, v3

    .line 128
    if-nez v6, :cond_5

    .line 129
    .line 130
    :cond_4
    move-object v3, v5

    .line 131
    :cond_5
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 132
    .line 133
    const/4 v3, 0x7

    .line 134
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    array-length v6, v3

    .line 145
    if-nez v6, :cond_7

    .line 146
    .line 147
    :cond_6
    move-object v3, v5

    .line 148
    :cond_7
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 149
    .line 150
    const/16 v3, 0x8

    .line 151
    .line 152
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    if-eqz v3, :cond_8

    .line 161
    .line 162
    array-length v6, v3

    .line 163
    if-nez v6, :cond_9

    .line 164
    .line 165
    :cond_8
    move-object v3, v5

    .line 166
    :cond_9
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 167
    .line 168
    iput-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 169
    .line 170
    const/16 v3, 0x9

    .line 171
    .line 172
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v3}, Lcom/fsck/k9/mail/K9MailLib;->unpack(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_b

    .line 181
    .line 182
    array-length v6, v3

    .line 183
    if-nez v6, :cond_a

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_a
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    :goto_2
    iput-object v5, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 190
    .line 191
    :goto_3
    iput-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 192
    .line 193
    const/16 v3, 0xa

    .line 194
    .line 195
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    iput v3, p0, Lcom/fsck/k9/mailstore/LocalMessage;->attachmentCount:I

    .line 200
    .line 201
    new-instance v3, Ljava/util/Date;

    .line 202
    .line 203
    const/16 v5, 0xb

    .line 204
    .line 205
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 206
    .line 207
    .line 208
    move-result-wide v5

    .line 209
    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 210
    .line 211
    .line 212
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 213
    .line 214
    const/16 v3, 0xc

    .line 215
    .line 216
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iput-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 221
    .line 222
    iput-boolean v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 223
    .line 224
    const/16 v3, 0x18

    .line 225
    .line 226
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    sget-object v6, Lcom/fsck/k9/mailstore/DatabasePreviewType;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v5}, Lcom/fsck/k9/mailstore/SendState$Companion;->fromDatabaseValue(Ljava/lang/String;)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    iget v5, v5, Lcom/fsck/k9/mailstore/DatabasePreviewType;->previewType:I

    .line 240
    .line 241
    iput v5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->previewType:I

    .line 242
    .line 243
    if-ne v5, v4, :cond_c

    .line 244
    .line 245
    const/16 v2, 0xe

    .line 246
    .line 247
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_c
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->preview:Ljava/lang/String;

    .line 255
    .line 256
    :goto_4
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 257
    .line 258
    if-nez v2, :cond_d

    .line 259
    .line 260
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 261
    .line 262
    const/16 v4, 0xd

    .line 263
    .line 264
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    int-to-long v4, v4

    .line 269
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 270
    .line 271
    invoke-direct {v2, v6, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 275
    .line 276
    .line 277
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 278
    .line 279
    :cond_d
    const/16 v2, 0xf

    .line 280
    .line 281
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    const-wide/16 v5, -0x1

    .line 286
    .line 287
    if-eqz v4, :cond_e

    .line 288
    .line 289
    move-wide v7, v5

    .line 290
    goto :goto_5

    .line 291
    :cond_e
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    :goto_5
    iput-wide v7, p0, Lcom/fsck/k9/mailstore/LocalMessage;->threadId:J

    .line 296
    .line 297
    const/16 v2, 0x10

    .line 298
    .line 299
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_f

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_f
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v5

    .line 310
    :goto_6
    iput-wide v5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->rootId:J

    .line 311
    .line 312
    const/16 v2, 0x11

    .line 313
    .line 314
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-ne v2, v1, :cond_10

    .line 319
    .line 320
    move v2, v1

    .line 321
    goto :goto_7

    .line 322
    :cond_10
    move v2, v0

    .line 323
    :goto_7
    const/16 v4, 0x12

    .line 324
    .line 325
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    if-ne v4, v1, :cond_11

    .line 330
    .line 331
    move v4, v1

    .line 332
    goto :goto_8

    .line 333
    :cond_11
    move v4, v0

    .line 334
    :goto_8
    const/16 v5, 0x13

    .line 335
    .line 336
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-ne v5, v1, :cond_12

    .line 341
    .line 342
    move v5, v1

    .line 343
    goto :goto_9

    .line 344
    :cond_12
    move v5, v0

    .line 345
    :goto_9
    const/16 v6, 0x14

    .line 346
    .line 347
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-ne v6, v1, :cond_13

    .line 352
    .line 353
    move v6, v1

    .line 354
    goto :goto_a

    .line 355
    :cond_13
    move v6, v0

    .line 356
    :goto_a
    const/16 v7, 0x15

    .line 357
    .line 358
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    if-ne v7, v1, :cond_14

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_14
    move v1, v0

    .line 366
    :goto_b
    sget-object v7, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 367
    .line 368
    invoke-super {p0, v7, v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 369
    .line 370
    .line 371
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 372
    .line 373
    invoke-super {p0, v2, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 374
    .line 375
    .line 376
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 377
    .line 378
    invoke-super {p0, v2, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 379
    .line 380
    .line 381
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 382
    .line 383
    invoke-super {p0, v2, v6}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 384
    .line 385
    .line 386
    sget-object v2, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 387
    .line 388
    invoke-super {p0, v2, v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 389
    .line 390
    .line 391
    const/16 v1, 0x16

    .line 392
    .line 393
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v1

    .line 397
    iput-wide v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 398
    .line 399
    const/16 v1, 0x17

    .line 400
    .line 401
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    sget-object v2, Lcom/fsck/k9/mail/MimeType;->MIME_TYPE:Lkotlin/text/Regex;

    .line 406
    .line 407
    invoke-static {v1}, Lcom/fsck/k9/mail/K9MailLib;->parseOrNull(Ljava/lang/String;)Lcom/fsck/k9/mail/MimeType;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-eqz v1, :cond_15

    .line 412
    .line 413
    invoke-virtual {v1}, Lcom/fsck/k9/mail/MimeType;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    goto :goto_c

    .line 418
    :cond_15
    const-string v1, "text/plain"

    .line 419
    .line 420
    :goto_c
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mimeType:Ljava/lang/String;

    .line 421
    .line 422
    const/16 v1, 0x19

    .line 423
    .line 424
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    if-eqz p1, :cond_16

    .line 429
    .line 430
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 431
    .line 432
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 433
    .line 434
    .line 435
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 436
    .line 437
    invoke-direct {p1, v3, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-static {v1, p1}, Lorg/jsoup/helper/Validate;->parse(Ljava/io/ByteArrayInputStream;Lcom/fsck/k9/mail/message/MessageHeaderCollector;)V

    .line 441
    .line 442
    .line 443
    goto :goto_d

    .line 444
    :cond_16
    const-string p1, "No headers available for this message!"

    .line 445
    .line 446
    new-array v1, v0, [Ljava/lang/Object;

    .line 447
    .line 448
    invoke-static {p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :goto_d
    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 452
    .line 453
    return-void
.end method

.method public final setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    invoke-virtual {v1, p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore;->notifyChange()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setFlagInternal(Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-super {p0, p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setFrom(Lcom/fsck/k9/mail/Address;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lcom/fsck/k9/mail/Address;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 6
    .line 7
    iput-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 10
    .line 11
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 5
    .line 6
    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 5
    .line 6
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->subject:Ljava/lang/String;

    .line 6
    .line 7
    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 13
    .line 14
    const-string v2, "Reply-to"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mReplyTo:[Lcom/fsck/k9/mail/Address;

    .line 37
    .line 38
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mTo:[Lcom/fsck/k9/mail/Address;

    .line 39
    .line 40
    const-string v2, "To"

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    array-length v3, v0

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_3
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mCc:[Lcom/fsck/k9/mail/Address;

    .line 60
    .line 61
    const-string v2, "CC"

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    array-length v3, v0

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    :goto_4
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_5
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mBcc:[Lcom/fsck/k9/mail/Address;

    .line 81
    .line 82
    const-string v2, "BCC"

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    array-length v3, v0

    .line 87
    if-nez v3, :cond_6

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->createHeaderValue([Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_7

    .line 98
    :cond_7
    :goto_6
    invoke-virtual {v1, v2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->removeHeader(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_7
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mFrom:[Lcom/fsck/k9/mail/Address;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    array-length v3, v0

    .line 107
    if-lez v3, :cond_8

    .line 108
    .line 109
    aget-object v0, v0, v2

    .line 110
    .line 111
    invoke-super {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    const-string v3, "Message-ID"

    .line 119
    .line 120
    invoke-virtual {v1, v3, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mMessageId:Ljava/lang/String;

    .line 124
    .line 125
    :cond_9
    iput-boolean v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->headerNeedsUpdating:Z

    .line 126
    .line 127
    :cond_a
    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
