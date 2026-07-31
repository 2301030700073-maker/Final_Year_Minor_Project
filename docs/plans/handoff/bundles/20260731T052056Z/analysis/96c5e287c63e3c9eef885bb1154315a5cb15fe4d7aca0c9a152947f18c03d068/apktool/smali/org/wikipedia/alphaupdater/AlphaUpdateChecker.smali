.class public final Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;
.super Lorg/wikipedia/recurring/RecurringTask;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/wikipedia/WikipediaApp;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Ljava/lang/Object;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const p2, 0x7f120693

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "alpha-update-checker"

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 12
    .line 13
    new-instance v3, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 14
    .line 15
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v3, p1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    if-ne p0, p1, :cond_0

    .line 25
    .line 26
    move-object v1, p0

    .line 27
    :cond_0
    return-object v1

    .line 28
    :pswitch_0
    instance-of v0, p1, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;

    .line 34
    .line 35
    iget v3, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->label:I

    .line 36
    .line 37
    const/high16 v4, -0x80000000

    .line 38
    .line 39
    and-int v5, v3, v4

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    sub-int/2addr v3, v4

    .line 44
    iput v3, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->label:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;

    .line 48
    .line 49
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;-><init>(Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->result:Ljava/lang/Object;

    .line 55
    .line 56
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v4, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->label:I

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x1

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    if-ne v4, v6, :cond_2

    .line 65
    .line 66
    iget-object v0, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object v1, v2

    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_3
    invoke-static {p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 85
    .line 86
    sget-object v4, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 87
    .line 88
    new-instance v7, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;

    .line 89
    .line 90
    invoke-direct {v7, p1, v2, v5}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;I)V

    .line 91
    .line 92
    .line 93
    iput-object p1, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    iput v6, v0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker$run$1;->label:I

    .line 96
    .line 97
    invoke-static {v4, v7, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-ne v0, v3, :cond_4

    .line 102
    .line 103
    move-object v1, v3

    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_4
    move-object v0, p1

    .line 107
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ljava/lang/String;

    .line 110
    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    const-string v0, ""

    .line 114
    .line 115
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "alpha_last_checked_commit"

    .line 120
    .line 121
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    iget-object p0, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->context:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Lorg/wikipedia/WikipediaApp;

    .line 134
    .line 135
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 136
    .line 137
    invoke-static {p0, v0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 145
    .line 146
    const-string v2, "https://github.com/wikimedia/apps-android-wikipedia/releases/download/latest/app-alpha-universal-release.apk"

    .line 147
    .line 148
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-string v4, "android.intent.action.VIEW"

    .line 156
    .line 157
    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0, v5, v0, v5}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Landroidx/core/app/NotificationManagerCompat;

    .line 165
    .line 166
    invoke-direct {v2, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    sget-object v4, Lorg/wikipedia/notifications/NotificationCategory;->ALPHA_BUILD_CHECKER:Lorg/wikipedia/notifications/NotificationCategory;

    .line 170
    .line 171
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    .line 172
    .line 173
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-direct {v5, p0, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationCategory;->getTitle()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v7}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    iput-object v7, v5, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 193
    .line 194
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationCategory;->getDescription()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    iput-object p0, v5, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 207
    .line 208
    iput-object v0, v5, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 209
    .line 210
    const/16 p0, 0x10

    .line 211
    .line 212
    invoke-virtual {v5, p0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lorg/wikipedia/notifications/NotificationCategory;->getIconResId()I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    iget-object v0, v5, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 220
    .line 221
    iput p0, v0, Landroid/app/Notification;->icon:I

    .line 222
    .line 223
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v2, v6, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 228
    .line 229
    .line 230
    :cond_6
    :goto_2
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    .line 247
    .line 248
    :cond_7
    :goto_3
    return-object v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldRun(Ljava/util/Date;)Z
    .locals 4

    .line 1
    iget p0, p0, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lorg/wikipedia/recurring/RecurringTask;->millisSinceLastRun(Ljava/util/Date;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    const-wide/32 v2, 0x240c8400

    .line 13
    .line 14
    .line 15
    cmp-long p0, p0, v2

    .line 16
    .line 17
    if-lez p0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    return v0

    .line 21
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    sub-long/2addr v2, p0

    .line 30
    const-wide/32 p0, 0x5265c00

    .line 31
    .line 32
    .line 33
    cmp-long p0, v2, p0

    .line 34
    .line 35
    if-ltz p0, :cond_1

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_1
    return v0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
