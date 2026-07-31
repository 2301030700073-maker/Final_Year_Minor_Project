.class public final Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionIntentCreators:Ljava/util/List;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;->actionIntentCreators:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->label:I

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
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;-><init>(Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->label:I

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
    iget-object p0, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->L$3:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->L$2:Landroid/app/PendingIntent;

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
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator;->actionIntentCreators:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_6

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Lnet/thunderbird/feature/notification/impl/intent/action/NotificationActionIntentCreator;

    .line 69
    .line 70
    invoke-interface {p3, p1, p2}, Lnet/thunderbird/feature/notification/impl/intent/action/NotificationActionIntentCreator;->accept(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-interface {p3, p1, p2}, Lnet/thunderbird/feature/notification/impl/intent/action/NotificationActionIntentCreator;->create(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)Landroid/app/PendingIntent;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;->getIcon()Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;->systemNotificationIcon:Ljava/lang/Integer;

    .line 87
    .line 88
    :cond_4
    iput-object p1, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->L$2:Landroid/app/PendingIntent;

    .line 89
    .line 90
    iput-object v3, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->L$3:Ljava/lang/Integer;

    .line 91
    .line 92
    iput v2, v0, Lnet/thunderbird/feature/notification/impl/ui/action/DefaultSystemNotificationActionCreator$create$1;->label:I

    .line 93
    .line 94
    invoke-static {p2, v0}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;->resolveTitle$suspendImpl(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 99
    .line 100
    if-ne p3, p0, :cond_5

    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_5
    move-object p0, v3

    .line 104
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 105
    .line 106
    new-instance p2, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;

    .line 107
    .line 108
    invoke-direct {p2, p0, p3, p1}, Lnet/thunderbird/feature/notification/impl/ui/action/AndroidNotificationAction;-><init>(Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 109
    .line 110
    .line 111
    return-object p2

    .line 112
    :cond_6
    const-string p0, "Collection contains no element matching the predicate."

    .line 113
    .line 114
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v3
.end method
