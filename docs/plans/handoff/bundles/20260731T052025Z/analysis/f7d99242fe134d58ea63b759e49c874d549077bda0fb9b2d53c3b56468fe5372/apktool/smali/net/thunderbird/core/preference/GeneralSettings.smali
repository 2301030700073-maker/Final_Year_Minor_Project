.class public final Lnet/thunderbird/core/preference/GeneralSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

.field public final display:Lnet/thunderbird/core/preference/display/DisplaySettings;

.field public final interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

.field public final network:Lnet/thunderbird/core/preference/network/NetworkSettings;

.field public final notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

.field public final platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

.field public final privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 136
    iput-object p2, p0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 137
    iput-object p3, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 138
    iput-object p4, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 139
    iput-object p5, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 140
    iput-object p6, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 141
    iput-object p7, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/privacy/PrivacySettings;I)V
    .locals 19

    .line 1
    new-instance v2, Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/core/preference/network/NetworkSettingsKt;->NETWORK_SETTINGS_DEFAULT_BACKGROUND_OPS:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 4
    .line 5
    invoke-direct {v2, v0}, Lnet/thunderbird/core/preference/network/NetworkSettings;-><init>(Lnet/thunderbird/core/preference/BackgroundOps;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 9
    .line 10
    sget-object v8, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER:Ljava/util/List;

    .line 11
    .line 12
    sget-object v12, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR:Lnet/thunderbird/core/preference/NotificationQuickDelete;

    .line 13
    .line 14
    sget-object v13, Lnet/thunderbird/core/preference/notification/NotificationPreferenceKt;->NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY:Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const-string v5, "21:00"

    .line 18
    .line 19
    const-string v6, "7:00"

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    const/4 v9, 0x3

    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x1

    .line 25
    invoke-direct/range {v3 .. v13}, Lnet/thunderbird/core/preference/notification/NotificationPreference;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;IZZLnet/thunderbird/core/preference/NotificationQuickDelete;Lnet/thunderbird/core/preference/LockScreenNotificationVisibility;)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 29
    .line 30
    new-instance v5, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 31
    .line 32
    sget-object v7, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_APP_THEME:Lnet/thunderbird/core/preference/AppTheme;

    .line 33
    .line 34
    sget-object v8, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 35
    .line 36
    sget-object v9, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME:Lnet/thunderbird/core/preference/SubTheme;

    .line 37
    .line 38
    const-string v10, ""

    .line 39
    .line 40
    sget-object v11, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettingsKt;->DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    invoke-direct/range {v5 .. v11}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;-><init>(ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;)V

    .line 44
    .line 45
    .line 46
    new-instance v6, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 47
    .line 48
    const/4 v11, 0x1

    .line 49
    const/4 v12, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x1

    .line 53
    const/4 v10, 0x0

    .line 54
    invoke-direct/range {v6 .. v12}, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;-><init>(ZZZZZZ)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    const/16 v18, 0x7ff

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    invoke-direct/range {v7 .. v18}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;-><init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZZZZZZI)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-direct {v0, v1, v1}, Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;-><init>(ZZ)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v4, v5, v6, v7, v0}, Lnet/thunderbird/core/preference/display/DisplaySettings;-><init>(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/display/miscSettings/DisplayMiscSettings;)V

    .line 82
    .line 83
    .line 84
    and-int/lit8 v0, p3, 0x10

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    new-instance v0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 90
    .line 91
    invoke-direct {v0, v1, v1}, Lnet/thunderbird/core/preference/privacy/PrivacySettings;-><init>(ZZ)V

    .line 92
    .line 93
    .line 94
    move-object v5, v0

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-object/from16 v5, p2

    .line 97
    .line 98
    :goto_0
    new-instance v6, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-direct {v6, v1, v1, v1}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;-><init>(ZZZ)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 107
    .line 108
    sget-object v10, Lnet/thunderbird/core/preference/interaction/InteractionSettingsKt;->INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION:Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;

    .line 109
    .line 110
    sget-object v11, Lnet/thunderbird/core/preference/interaction/InteractionSettingsKt;->INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION:Lnet/thunderbird/core/common/action/SwipeActions;

    .line 111
    .line 112
    const/16 v16, 0x1

    .line 113
    .line 114
    const/16 v17, 0x1

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const-string v9, "ReturnToMessageList"

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v14, 0x1

    .line 122
    const/4 v15, 0x0

    .line 123
    invoke-direct/range {v7 .. v17}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;-><init>(ZLjava/lang/String;Lnet/thunderbird/core/preference/interaction/PostMarkAsUnreadNavigation;Lnet/thunderbird/core/common/action/SwipeActions;ZZZZZZ)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v0, p0

    .line 127
    .line 128
    move-object/from16 v1, p1

    .line 129
    .line 130
    invoke-direct/range {v0 .. v7}, Lnet/thunderbird/core/preference/GeneralSettings;-><init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/preference/GeneralSettings;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;I)Lnet/thunderbird/core/preference/GeneralSettings;
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    iget-object p1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 3
    .line 4
    and-int/lit8 v1, p7, 0x2

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 9
    .line 10
    :cond_0
    and-int/lit8 v1, p7, 0x4

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 15
    .line 16
    :cond_1
    and-int/lit8 v1, p7, 0x8

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object p3, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 21
    .line 22
    :cond_2
    and-int/lit8 v1, p7, 0x10

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-object p4, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 27
    .line 28
    :cond_3
    and-int/lit8 v1, p7, 0x20

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 33
    .line 34
    :cond_4
    and-int/lit8 p7, p7, 0x40

    .line 35
    .line 36
    if-eqz p7, :cond_5

    .line 37
    .line 38
    iget-object p6, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 39
    .line 40
    :cond_5
    move-object p7, p6

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance p0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 66
    .line 67
    move-object p6, p5

    .line 68
    move-object p5, p4

    .line 69
    move-object p4, p3

    .line 70
    move-object p3, p2

    .line 71
    move-object p2, v0

    .line 72
    invoke-direct/range {p0 .. p7}, Lnet/thunderbird/core/preference/GeneralSettings;-><init>(Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;Lnet/thunderbird/core/preference/network/NetworkSettings;Lnet/thunderbird/core/preference/notification/NotificationPreference;Lnet/thunderbird/core/preference/display/DisplaySettings;Lnet/thunderbird/core/preference/privacy/PrivacySettings;Lnet/thunderbird/core/preference/debugging/DebuggingSettings;Lnet/thunderbird/core/preference/interaction/InteractionSettings;)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 25
    .line 26
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 36
    .line 37
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 47
    .line 48
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 58
    .line 59
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 69
    .line 70
    iget-object v3, p1, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 80
    .line 81
    iget-object p1, p1, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 82
    .line 83
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-nez p0, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 10
    .line 11
    iget-object v1, v1, Lnet/thunderbird/core/preference/network/NetworkSettings;->backgroundOps:Lnet/thunderbird/core/preference/BackgroundOps;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    iget-object v0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 21
    .line 22
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/notification/NotificationPreference;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 30
    .line 31
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/display/DisplaySettings;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    mul-int/lit8 v1, v1, 0x1f

    .line 37
    .line 38
    iget-object v0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 39
    .line 40
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 48
    .line 49
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    mul-int/lit8 v1, v1, 0x1f

    .line 55
    .line 56
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 57
    .line 58
    invoke-virtual {p0}, Lnet/thunderbird/core/preference/interaction/InteractionSettings;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    add-int/2addr p0, v1

    .line 63
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GeneralSettings(platformConfigProvider="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->platformConfigProvider:Lnet/thunderbird/app/common/appConfig/AndroidPlatformConfigProvider;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", network="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->network:Lnet/thunderbird/core/preference/network/NetworkSettings;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", notification="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->notification:Lnet/thunderbird/core/preference/notification/NotificationPreference;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", display="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", privacy="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", debugging="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", interaction="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->interaction:Lnet/thunderbird/core/preference/interaction/InteractionSettings;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ")"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method
