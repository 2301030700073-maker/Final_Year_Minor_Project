.class public final Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/receiver/NotificationNotifier;


# instance fields
.field public final applicationContext:Landroid/app/Application;

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final notificationActionCreator:Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

.field public final notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field public final notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Landroid/app/Application;Lnet/thunderbird/feature/notification/api/NotificationRegistry;Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->applicationContext:Landroid/app/Application;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationActionCreator:Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 11
    .line 12
    new-instance p1, Landroidx/core/app/NotificationManagerCompat;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final dismiss-XSUv0x4(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iget-object v2, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 9
    .line 10
    const-string v3, "AndroidSystemNotificationNotifier"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v3, v4, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 22
    .line 23
    check-cast p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-RiqCqwk(I)Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->unregister(Lnet/thunderbird/feature/notification/api/content/Notification;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 8

    .line 1
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;-><init>(Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    iget p1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->I$0:I

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {p2, p1, v1}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 68
    .line 69
    const-string v6, "AndroidSystemNotificationNotifier"

    .line 70
    .line 71
    invoke-static {v1, v6, v2, p2, v3}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 72
    .line 73
    .line 74
    iput-object p1, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 75
    .line 76
    iput v4, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 77
    .line 78
    iget-object p2, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationRegistry:Lnet/thunderbird/feature/notification/api/NotificationRegistry;

    .line 79
    .line 80
    check-cast p2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;

    .line 81
    .line 82
    invoke-virtual {p2, p1, v0}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->register-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-ne p2, v5, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    :goto_1
    check-cast p2, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 90
    .line 91
    iget p2, p2, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 92
    .line 93
    iput-object v2, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 94
    .line 95
    iput p2, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->I$0:I

    .line 96
    .line 97
    iput v3, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->toAndroidNotification(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v5, :cond_5

    .line 104
    .line 105
    :goto_2
    return-object v5

    .line 106
    :cond_5
    move v7, p2

    .line 107
    move-object p2, p1

    .line 108
    move p1, v7

    .line 109
    :goto_3
    check-cast p2, Landroid/app/Notification;

    .line 110
    .line 111
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 114
    .line 115
    .line 116
    new-instance p0, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 117
    .line 118
    invoke-direct {p0, p1}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V

    .line 119
    .line 120
    .line 121
    return-object p0
.end method

.method public final bridge synthetic show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 0

    .line 122
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public final toAndroidNotification(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;

    .line 13
    .line 14
    iget v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;-><init>(Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 34
    .line 35
    iget-object v5, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->notificationActionCreator:Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x2

    .line 40
    const/4 v9, 0x0

    .line 41
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eq v4, v7, :cond_3

    .line 46
    .line 47
    if-eq v4, v8, :cond_2

    .line 48
    .line 49
    if-ne v4, v6, :cond_1

    .line 50
    .line 51
    iget-object v0, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$7:Ljava/util/Iterator;

    .line 52
    .line 53
    iget-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$5:Landroidx/core/app/NotificationCompat$Builder;

    .line 54
    .line 55
    check-cast v1, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;

    .line 56
    .line 57
    iget-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    .line 59
    iget-object v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 60
    .line 61
    iget-object v7, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_9

    .line 67
    .line 68
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v9

    .line 74
    :cond_2
    iget-object v0, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 75
    .line 76
    iget-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 77
    .line 78
    iget-object v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 79
    .line 80
    iget-object v7, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 81
    .line 82
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_3
    iget-object v0, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$5:Landroidx/core/app/NotificationCompat$Builder;

    .line 88
    .line 89
    iget-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 90
    .line 91
    iget-object v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 92
    .line 93
    iget-object v7, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 94
    .line 95
    iget-object v11, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 96
    .line 97
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object/from16 v21, v2

    .line 101
    .line 102
    move-object v2, v1

    .line 103
    move-object v1, v7

    .line 104
    move-object v7, v4

    .line 105
    move-object/from16 v4, v21

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    invoke-direct {v2, v1, v7}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;I)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 118
    .line 119
    const-string v11, "AndroidSystemNotificationNotifier"

    .line 120
    .line 121
    invoke-static {v4, v11, v9, v2, v8}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 125
    .line 126
    iget-object v4, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 127
    .line 128
    iget-object v4, v4, Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;->id:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v11, v0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->applicationContext:Landroid/app/Application;

    .line 131
    .line 132
    invoke-direct {v2, v11, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v4, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 136
    .line 137
    iget-object v4, v4, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;->systemNotificationIcon:Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    iget-object v11, v2, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 144
    .line 145
    iput v4, v11, Landroid/app/Notification;->icon:I

    .line 146
    .line 147
    iget-object v4, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iput-object v4, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 154
    .line 155
    move-object v4, v1

    .line 156
    check-cast v4, Lnet/thunderbird/feature/notification/api/content/AppNotification;

    .line 157
    .line 158
    iget-object v12, v4, Lnet/thunderbird/feature/notification/api/content/AppNotification;->accessibilityText:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v2, v12}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    iget-object v12, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 164
    .line 165
    if-eqz v12, :cond_5

    .line 166
    .line 167
    invoke-static {v12}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iput-object v12, v2, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 172
    .line 173
    :cond_5
    iget-object v12, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 174
    .line 175
    iget-boolean v12, v12, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->dismissable:Z

    .line 176
    .line 177
    xor-int/2addr v12, v7

    .line 178
    invoke-virtual {v2, v8, v12}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 179
    .line 180
    .line 181
    iget-object v4, v4, Lnet/thunderbird/feature/notification/api/content/AppNotification;->createdAt:Lkotlinx/datetime/LocalDateTime;

    .line 182
    .line 183
    sget-object v12, Lkotlinx/datetime/TimeZone;->UTC:Lkotlinx/datetime/FixedOffsetTimeZone;

    .line 184
    .line 185
    invoke-static {}, Lkotlin/text/CharsKt__CharKt;->currentSystemDefault()Lkotlinx/datetime/TimeZone;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v4, v4, Lkotlinx/datetime/LocalDateTime;->value:Lj$/time/LocalDateTime;

    .line 193
    .line 194
    iget-object v12, v12, Lkotlinx/datetime/TimeZone;->zoneId:Lj$/time/ZoneId;

    .line 195
    .line 196
    invoke-virtual {v4, v12}, Lj$/time/LocalDateTime;->atZone(Lj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->toInstant()Lj$/time/Instant;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    sget-object v12, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 208
    .line 209
    invoke-virtual {v4}, Lj$/time/Instant;->getEpochSecond()J

    .line 210
    .line 211
    .line 212
    move-result-wide v12

    .line 213
    invoke-virtual {v4}, Lj$/time/Instant;->getNano()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    invoke-static {v4, v12, v13}, Lkotlin/time/InstantKt;->fromEpochSeconds(IJ)Lkotlin/time/Instant;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 222
    .line 223
    .line 224
    move-result-wide v12

    .line 225
    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 226
    .line 227
    iget-boolean v15, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 228
    .line 229
    iget-object v4, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 230
    .line 231
    iget v11, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 232
    .line 233
    iget-object v12, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v13, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 236
    .line 237
    new-instance v14, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 238
    .line 239
    const/16 v19, 0x0

    .line 240
    .line 241
    move-object/from16 v16, v4

    .line 242
    .line 243
    move/from16 v17, v11

    .line 244
    .line 245
    move-object/from16 v18, v12

    .line 246
    .line 247
    move-object/from16 v20, v13

    .line 248
    .line 249
    invoke-direct/range {v14 .. v20}, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v1}, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-nez v4, :cond_7

    .line 257
    .line 258
    iput-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 259
    .line 260
    iput-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 261
    .line 262
    iput-object v2, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 263
    .line 264
    iput-object v2, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 265
    .line 266
    iput-object v2, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$5:Landroidx/core/app/NotificationCompat$Builder;

    .line 267
    .line 268
    iput v7, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 269
    .line 270
    invoke-virtual {v0, v14, v3}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->toAndroidNotification(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-ne v0, v10, :cond_6

    .line 275
    .line 276
    goto/16 :goto_8

    .line 277
    .line 278
    :cond_6
    move-object v4, v0

    .line 279
    move-object v11, v1

    .line 280
    move-object v0, v2

    .line 281
    move-object v7, v0

    .line 282
    :goto_1
    check-cast v4, Landroid/app/Notification;

    .line 283
    .line 284
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 285
    .line 286
    move-object v0, v2

    .line 287
    move-object v2, v7

    .line 288
    goto :goto_2

    .line 289
    :cond_7
    move-object v11, v1

    .line 290
    move-object v0, v2

    .line 291
    :goto_2
    iget-object v4, v1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->actions:Lkotlin/collections/builders/SetBuilder;

    .line 292
    .line 293
    invoke-virtual {v4}, Lkotlin/collections/builders/SetBuilder;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    :cond_8
    move-object v7, v4

    .line 298
    check-cast v7, Landroidx/emoji2/text/flatbuffer/Table;

    .line 299
    .line 300
    invoke-virtual {v7}, Landroidx/emoji2/text/flatbuffer/Table;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_9

    .line 305
    .line 306
    move-object v7, v4

    .line 307
    check-cast v7, Lkotlin/collections/builders/MapBuilder$KeysItr;

    .line 308
    .line 309
    invoke-virtual {v7}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    move-object v12, v7

    .line 314
    check-cast v12, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 315
    .line 316
    instance-of v13, v12, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 317
    .line 318
    if-eqz v13, :cond_8

    .line 319
    .line 320
    check-cast v12, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 321
    .line 322
    iget-object v12, v12, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 323
    .line 324
    if-eqz v12, :cond_8

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_9
    move-object v7, v9

    .line 328
    :goto_3
    instance-of v4, v7, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 329
    .line 330
    if-eqz v4, :cond_a

    .line 331
    .line 332
    check-cast v7, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_a
    move-object v7, v9

    .line 336
    :goto_4
    if-eqz v7, :cond_b

    .line 337
    .line 338
    iget-object v4, v7, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 339
    .line 340
    if-nez v4, :cond_c

    .line 341
    .line 342
    :cond_b
    new-instance v4, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 343
    .line 344
    invoke-direct {v4, v9}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;-><init>(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 345
    .line 346
    .line 347
    :cond_c
    iput-object v11, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 348
    .line 349
    iput-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 350
    .line 351
    iput-object v2, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 352
    .line 353
    iput-object v0, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 354
    .line 355
    iput-object v9, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$5:Landroidx/core/app/NotificationCompat$Builder;

    .line 356
    .line 357
    iput v8, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 358
    .line 359
    invoke-virtual {v5, v1, v4, v3}, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;->create(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    if-ne v4, v10, :cond_d

    .line 364
    .line 365
    goto/16 :goto_8

    .line 366
    .line 367
    :cond_d
    move-object v7, v4

    .line 368
    move-object v4, v1

    .line 369
    move-object v1, v2

    .line 370
    move-object v2, v7

    .line 371
    move-object v7, v11

    .line 372
    :goto_5
    check-cast v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;

    .line 373
    .line 374
    iget-object v2, v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;->pendingIntent:Landroid/app/PendingIntent;

    .line 375
    .line 376
    iput-object v2, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    sget-object v2, Lnet/thunderbird/feature/notification/api/ui/style/SystemNotificationStyle$Undefined;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/style/SystemNotificationStyle$Undefined;

    .line 382
    .line 383
    invoke-virtual {v2, v2}, Lnet/thunderbird/feature/notification/api/ui/style/SystemNotificationStyle$Undefined;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_14

    .line 388
    .line 389
    iget-object v2, v7, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->actions:Lkotlin/collections/builders/SetBuilder;

    .line 390
    .line 391
    new-instance v7, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Lkotlin/collections/builders/SetBuilder;->iterator()Ljava/util/Iterator;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    :cond_e
    :goto_6
    move-object v8, v2

    .line 401
    check-cast v8, Landroidx/emoji2/text/flatbuffer/Table;

    .line 402
    .line 403
    invoke-virtual {v8}, Landroidx/emoji2/text/flatbuffer/Table;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-eqz v8, :cond_f

    .line 408
    .line 409
    move-object v8, v2

    .line 410
    check-cast v8, Lkotlin/collections/builders/MapBuilder$KeysItr;

    .line 411
    .line 412
    invoke-virtual {v8}, Lkotlin/collections/builders/MapBuilder$KeysItr;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    move-object v11, v8

    .line 417
    check-cast v11, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 418
    .line 419
    instance-of v11, v11, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 420
    .line 421
    if-nez v11, :cond_e

    .line 422
    .line 423
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_13

    .line 432
    .line 433
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    move-object v7, v4

    .line 438
    move-object v4, v1

    .line 439
    move-object v1, v0

    .line 440
    move-object v0, v2

    .line 441
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_12

    .line 446
    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 452
    .line 453
    iput-object v9, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 454
    .line 455
    iput-object v7, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$1:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 456
    .line 457
    iput-object v4, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$2:Landroidx/core/app/NotificationCompat$Builder;

    .line 458
    .line 459
    iput-object v1, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$3:Landroidx/core/app/NotificationCompat$Builder;

    .line 460
    .line 461
    iput-object v9, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$5:Landroidx/core/app/NotificationCompat$Builder;

    .line 462
    .line 463
    iput-object v0, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->L$7:Ljava/util/Iterator;

    .line 464
    .line 465
    iput v6, v3, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$toAndroidNotification$1;->label:I

    .line 466
    .line 467
    invoke-virtual {v5, v7, v2, v3}, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;->create(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    if-ne v2, v10, :cond_10

    .line 472
    .line 473
    :goto_8
    return-object v10

    .line 474
    :cond_10
    :goto_9
    check-cast v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;

    .line 475
    .line 476
    iget-object v8, v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;->icon:Ljava/lang/Integer;

    .line 477
    .line 478
    if-eqz v8, :cond_11

    .line 479
    .line 480
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    goto :goto_a

    .line 485
    :cond_11
    const/4 v8, 0x0

    .line 486
    :goto_a
    iget-object v11, v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;->title:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v2, v2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;->pendingIntent:Landroid/app/PendingIntent;

    .line 489
    .line 490
    invoke-virtual {v1, v8, v11, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 491
    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_12
    move-object v1, v4

    .line 495
    :cond_13
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 500
    .line 501
    .line 502
    return-object v0

    .line 503
    :cond_14
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 504
    .line 505
    .line 506
    return-object v9
.end method
