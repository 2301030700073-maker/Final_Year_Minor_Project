.class public final Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mActions:Ljava/util/ArrayList;

.field public final mAllowSystemGeneratedContextualActions:Z

.field public mCategory:Ljava/lang/String;

.field public final mChannelId:Ljava/lang/String;

.field public mColor:I

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public mExtras:Landroid/os/Bundle;

.field public mFgsDeferBehavior:I

.field public mGroupAlertBehavior:I

.field public mGroupKey:Ljava/lang/String;

.field public mGroupSummary:Z

.field public final mInvisibleActions:Ljava/util/ArrayList;

.field public mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mLocalOnly:Z

.field public final mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public final mPeople:Ljava/util/ArrayList;

.field public final mPersonList:Ljava/util/ArrayList;

.field public mPriority:I

.field public mPublicVersion:Landroid/app/Notification;

.field public mShowWhen:Z

.field public mSilent:Z

.field public mStyle:Landroidx/work/WorkRequest$Builder;

.field public mSubText:Ljava/lang/CharSequence;

.field public mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 30
    .line 31
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 32
    .line 33
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 34
    .line 35
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mGroupAlertBehavior:I

    .line 36
    .line 37
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mFgsDeferBehavior:I

    .line 38
    .line 39
    new-instance v2, Landroid/app/Notification;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 58
    .line 59
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 60
    .line 61
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 67
    .line 68
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 69
    .line 70
    return-void
.end method

.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v2, ""

    .line 8
    .line 9
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    invoke-direct/range {v0 .. v7}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZZ)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final build()Landroid/app/Notification;
    .locals 8

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/core/app/NotificationCompat$Builder;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/work/WorkRequest$Builder;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->apply(Lkotlinx/coroutines/flow/SharingConfig;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, v0, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroid/app/Notification$Builder;

    .line 20
    .line 21
    iget v3, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 22
    .line 23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v5, 0x1a

    .line 26
    .line 27
    if-lt v4, v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v5, 0x18

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x2

    .line 38
    if-lt v4, v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v3, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0x200

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    if-ne v3, v7, :cond_2

    .line 59
    .line 60
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingConfig;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 70
    .line 71
    and-int/lit16 v2, v2, 0x200

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    if-ne v3, v6, :cond_5

    .line 76
    .line 77
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingConfig;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, v0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 101
    .line 102
    and-int/lit16 v2, v2, 0x200

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    if-ne v3, v7, :cond_4

    .line 107
    .line 108
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingConfig;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 118
    .line 119
    and-int/lit16 v2, v2, 0x200

    .line 120
    .line 121
    if-nez v2, :cond_5

    .line 122
    .line 123
    if-ne v3, v6, :cond_5

    .line 124
    .line 125
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingConfig;->removeSoundAndVibration(Landroid/app/Notification;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    .line 129
    .line 130
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/work/WorkRequest$Builder;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    :cond_6
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 138
    .line 139
    if-eqz p0, :cond_9

    .line 140
    .line 141
    iget-boolean v2, v1, Landroidx/work/WorkRequest$Builder;->backoffCriteriaSet:Z

    .line 142
    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    iget-object v2, v1, Landroidx/work/WorkRequest$Builder;->tags:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, Ljava/lang/CharSequence;

    .line 148
    .line 149
    const-string v3, "android.summaryText"

    .line 150
    .line 151
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    iget-object v2, v1, Landroidx/work/WorkRequest$Builder;->workSpec:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v2, Ljava/lang/CharSequence;

    .line 157
    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    const-string v3, "android.title.big"

    .line 161
    .line 162
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->getClassName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 170
    .line 171
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_9
    return-object v0
.end method

.method public final extend(Landroidx/collection/LruCache;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_7

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p1, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p1, Landroidx/collection/LruCache;->map:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_6

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action;->getIconCompat()Landroidx/core/graphics/drawable/IconCompat;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-boolean v5, v3, Landroidx/core/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 54
    .line 55
    iget-object v6, v3, Landroidx/core/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 56
    .line 57
    new-instance v7, Landroid/app/Notification$Action$Builder;

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    move-object v4, v8

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v4, v8}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :goto_1
    iget-object v9, v3, Landroidx/core/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 69
    .line 70
    iget-object v10, v3, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 71
    .line 72
    invoke-direct {v7, v4, v9, v10}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 73
    .line 74
    .line 75
    if-eqz v6, :cond_1

    .line 76
    .line 77
    new-instance v4, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_2
    const-string v6, "android.support.allowGeneratedReplies"

    .line 89
    .line 90
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v9, 0x18

    .line 96
    .line 97
    if-lt v6, v9, :cond_2

    .line 98
    .line 99
    invoke-static {v7, v5}, Landroidx/core/app/NotificationCompat$WearableExtender$Api24Impl;->setAllowGeneratedReplies(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 100
    .line 101
    .line 102
    :cond_2
    const/16 v5, 0x1f

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    if-lt v6, v5, :cond_3

    .line 106
    .line 107
    invoke-static {v7, v9}, Landroidx/core/app/NotificationCompat$WearableExtender$Api31Impl;->setAuthenticationRequired(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {v7, v4}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 111
    .line 112
    .line 113
    iget-object v3, v3, Landroidx/core/app/NotificationCompat$Action;->mRemoteInputs:[Landroidx/core/app/RemoteInput;

    .line 114
    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    array-length v4, v3

    .line 118
    new-array v4, v4, [Landroid/app/RemoteInput;

    .line 119
    .line 120
    array-length v5, v3

    .line 121
    if-gtz v5, :cond_4

    .line 122
    .line 123
    array-length v3, v4

    .line 124
    :goto_3
    if-ge v9, v3, :cond_5

    .line 125
    .line 126
    aget-object v5, v4, v9

    .line 127
    .line 128
    invoke-virtual {v7, v5}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v9, v9, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    aget-object p0, v3, v9

    .line 135
    .line 136
    new-instance p0, Landroid/app/RemoteInput$Builder;

    .line 137
    .line 138
    throw v8

    .line 139
    :cond_5
    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    const-string v2, "actions"

    .line 148
    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget v1, p1, Landroidx/collection/LruCache;->maxSize:I

    .line 153
    .line 154
    const/4 v2, 0x1

    .line 155
    if-eq v1, v2, :cond_8

    .line 156
    .line 157
    const-string v2, "flags"

    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    iget-object v1, p1, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_9

    .line 171
    .line 172
    iget-object v1, p1, Landroidx/collection/LruCache;->lock:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    new-array v2, v2, [Landroid/app/Notification;

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, [Landroid/os/Parcelable;

    .line 187
    .line 188
    const-string v2, "pages"

    .line 189
    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    iget v1, p1, Landroidx/collection/LruCache;->size:I

    .line 194
    .line 195
    const v2, 0x800005

    .line 196
    .line 197
    .line 198
    if-eq v1, v2, :cond_a

    .line 199
    .line 200
    const-string v2, "contentIconGravity"

    .line 201
    .line 202
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    :cond_a
    iget v1, p1, Landroidx/collection/LruCache;->hitCount:I

    .line 206
    .line 207
    const/4 v2, -0x1

    .line 208
    if-eq v1, v2, :cond_b

    .line 209
    .line 210
    const-string v2, "contentActionIndex"

    .line 211
    .line 212
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    :cond_b
    iget p1, p1, Landroidx/collection/LruCache;->missCount:I

    .line 216
    .line 217
    const/16 v1, 0x50

    .line 218
    .line 219
    if-eq p1, v1, :cond_c

    .line 220
    .line 221
    const-string v1, "gravity"

    .line 222
    .line 223
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    :cond_c
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 227
    .line 228
    if-nez p1, :cond_d

    .line 229
    .line 230
    new-instance p1, Landroid/os/Bundle;

    .line 231
    .line 232
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 233
    .line 234
    .line 235
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 236
    .line 237
    :cond_d
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 238
    .line 239
    const-string p1, "android.wearable.EXTENSIONS"

    .line 240
    .line 241
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final setFlag(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 12
    .line 13
    not-int p1, p1

    .line 14
    and-int/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 16
    .line 17
    return-void
.end method

.method public final setStyle(Landroidx/work/WorkRequest$Builder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/work/WorkRequest$Builder;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/work/WorkRequest$Builder;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/work/WorkRequest$Builder;->id:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 10
    .line 11
    if-eq v0, p0, :cond_0

    .line 12
    .line 13
    iput-object p0, p1, Landroidx/work/WorkRequest$Builder;->id:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/work/WorkRequest$Builder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setTicker(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-void
.end method
