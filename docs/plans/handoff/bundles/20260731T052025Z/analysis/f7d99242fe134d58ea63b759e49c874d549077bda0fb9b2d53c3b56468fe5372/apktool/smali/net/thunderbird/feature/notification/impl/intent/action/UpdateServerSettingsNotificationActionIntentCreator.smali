.class public final Lnet/thunderbird/feature/notification/impl/intent/action/UpdateServerSettingsNotificationActionIntentCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/impl/intent/action/NotificationActionIntentCreator;


# instance fields
.field public final context:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lnet/thunderbird/core/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/intent/action/UpdateServerSettingsNotificationActionIntentCreator;->context:Landroid/app/Application;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p0, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    instance-of p0, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    instance-of p0, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final create(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p1, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 8
    .line 9
    const-class v0, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/intent/action/UpdateServerSettingsNotificationActionIntentCreator;->context:Landroid/app/Application;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    check-cast p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 16
    .line 17
    iget p1, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;->accountNumber:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 24
    .line 25
    iget-object p2, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;->accountUuid:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;

    .line 31
    .line 32
    invoke-direct {v1, p2}, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$IncomingServerSettings;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "app://account/edit/incoming/"

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    new-instance p2, Lkotlin/Pair;

    .line 54
    .line 55
    invoke-direct {p2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    instance-of p1, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    check-cast p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 64
    .line 65
    iget p1, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;->accountNumber:I

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 72
    .line 73
    iget-object p2, p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;->accountUuid:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v1, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;

    .line 79
    .line 80
    invoke-direct {v1, p2}, Lapp/k9mail/feature/account/edit/navigation/AccountEditRoute$OutgoingServerSettings;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "app://account/edit/outgoing/"

    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v1, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    new-instance p2, Lkotlin/Pair;

    .line 102
    .line 103
    invoke-direct {p2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object p1, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget-object p2, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p2, Landroid/content/Intent;

    .line 117
    .line 118
    const/high16 v0, 0x8000000

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_1
    const-string p0, "Unsupported action: "

    .line 127
    .line 128
    invoke-static {p2, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x0

    .line 132
    return-object p0
.end method
