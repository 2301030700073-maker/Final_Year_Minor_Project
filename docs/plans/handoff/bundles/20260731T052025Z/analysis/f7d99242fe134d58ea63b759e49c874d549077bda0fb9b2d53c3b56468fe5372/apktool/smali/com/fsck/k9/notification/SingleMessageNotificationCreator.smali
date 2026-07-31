.class public final Lcom/fsck/k9/notification/SingleMessageNotificationCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

.field public final application:Landroid/app/Application;

.field public final lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

.field public final notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

.field public final notificationPreferenceManager:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

.field public final scope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lcom/fsck/k9/notification/LockScreenNotificationCreator;Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->lockScreenNotificationCreator:Lcom/fsck/k9/notification/LockScreenNotificationCreator;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->notificationPreferenceManager:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->application:Landroid/app/Application;

    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 21
    .line 22
    sget-object p2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 23
    .line 24
    iget-object p2, p2, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 35
    .line 36
    return-void
.end method

.method public static final access$setAvatar(Lcom/fsck/k9/notification/SingleMessageNotificationCreator;Landroidx/core/app/NotificationCompat$Builder;Lcom/fsck/k9/notification/NotificationContent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;-><init>(Lcom/fsck/k9/notification/SingleMessageNotificationCreator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 36
    .line 37
    iget-object p2, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    .line 39
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->notificationPreferenceManager:Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;

    .line 53
    .line 54
    invoke-virtual {p3}, Lnet/thunderbird/core/preference/notification/DefaultNotificationPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 59
    .line 60
    iget-boolean p3, p3, Lnet/thunderbird/core/preference/notification/NotificationPreference;->isShowContactPictureInNotification:Z

    .line 61
    .line 62
    if-eqz p3, :cond_9

    .line 63
    .line 64
    iget-object p2, p2, Lcom/fsck/k9/notification/NotificationContent;->sender:Lcom/fsck/k9/mail/Address;

    .line 65
    .line 66
    iput-object p1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 67
    .line 68
    iput-object p1, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 69
    .line 70
    iput v2, v0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator$setAvatar$1;->label:I

    .line 71
    .line 72
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 73
    .line 74
    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 75
    .line 76
    new-instance v1, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 77
    .line 78
    const/16 v2, 0xc

    .line 79
    .line 80
    invoke-direct {v1, p2, v3, v2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p3, v1, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 88
    .line 89
    if-ne p3, p2, :cond_3

    .line 90
    .line 91
    return-object p2

    .line 92
    :cond_3
    move-object p2, p1

    .line 93
    :goto_1
    check-cast p3, Landroid/graphics/Bitmap;

    .line 94
    .line 95
    if-eqz p3, :cond_8

    .line 96
    .line 97
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 98
    .line 99
    const/4 v1, 0x5

    .line 100
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iput-object p3, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/notification/SingleMessageNotificationCreator;->application:Landroid/app/Application;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-nez p0, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->getType(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    const/4 v0, 0x2

    .line 122
    if-eq p3, v0, :cond_7

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    if-eq p3, v0, :cond_6

    .line 126
    .line 127
    const/4 v0, 0x6

    .line 128
    if-eq p3, v0, :cond_5

    .line 129
    .line 130
    new-instance p3, Landroidx/core/graphics/drawable/IconCompat;

    .line 131
    .line 132
    const/4 v0, -0x1

    .line 133
    invoke-direct {p3, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 134
    .line 135
    .line 136
    iput-object p0, p3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 137
    .line 138
    :goto_2
    move-object v3, p3

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    new-instance p3, Landroidx/core/graphics/drawable/IconCompat;

    .line 155
    .line 156
    invoke-direct {p3, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 157
    .line 158
    .line 159
    iput-object p0, p3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance p3, Landroidx/core/graphics/drawable/IconCompat;

    .line 177
    .line 178
    invoke-direct {p3, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 179
    .line 180
    .line 181
    iput-object p0, p3, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->getResId(Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    invoke-static {v3, p3, p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    move-object v3, p0

    .line 197
    :goto_3
    iput-object v3, p1, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 198
    .line 199
    :cond_8
    return-object p2

    .line 200
    :cond_9
    return-object p1
.end method
