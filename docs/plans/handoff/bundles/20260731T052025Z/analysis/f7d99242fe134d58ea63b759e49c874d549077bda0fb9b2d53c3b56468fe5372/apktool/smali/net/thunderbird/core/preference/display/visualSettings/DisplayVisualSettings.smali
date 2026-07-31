.class public final Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

.field public final bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

.field public final drawerExpandAllFolder:Z

.field public final isAutoFitWidth:Z

.field public final isMessageViewArchiveActionVisible:Z

.field public final isMessageViewCopyActionVisible:Z

.field public final isMessageViewDeleteActionVisible:Z

.field public final isMessageViewMoveActionVisible:Z

.field public final isMessageViewSpamActionVisible:Z

.field public final isUseMessageViewFixedWidthFont:Z

.field public final messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 119
    iput-boolean p2, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 120
    iput-boolean p3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 121
    iput-object p4, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 122
    iput-boolean p5, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 123
    iput-object p6, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 124
    iput-boolean p7, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 125
    iput-boolean p8, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 126
    iput-boolean p9, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 127
    iput-boolean p10, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 128
    iput-boolean p11, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZZZZZZI)V
    .locals 19

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsKt;->DISPLAY_SETTINGS_DEFAULT_ANIMATION_PREFERENCE:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 8
    .line 9
    move-object v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v3, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x2

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move v4, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move/from16 v4, p2

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x4

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move v1, v5

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move/from16 v1, p3

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v6, v0, 0x8

    .line 32
    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    sget-object v6, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsKt;->DISPLAY_SETTINGS_DEFAULT_BODY_CONTENT_TYPE:Lnet/thunderbird/core/preference/BodyContentType;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object/from16 v6, p4

    .line 39
    .line 40
    :goto_3
    and-int/lit8 v7, v0, 0x10

    .line 41
    .line 42
    if-eqz v7, :cond_4

    .line 43
    .line 44
    move v7, v2

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move/from16 v7, p5

    .line 47
    .line 48
    :goto_4
    new-instance v8, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 49
    .line 50
    sget-object v16, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingsKt;->MESSAGE_LIST_SETTINGS_DEFAULT_UI_DENSITY:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 51
    .line 52
    const v17, -0xef6c0b

    .line 53
    .line 54
    .line 55
    sget-object v18, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettingsKt;->MESSAGE_LIST_SETTINGS_DEFAULT_DATE_TIME_FORMAT:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    const/4 v10, 0x0

    .line 59
    const/4 v11, 0x1

    .line 60
    const/4 v12, 0x1

    .line 61
    const/4 v13, 0x1

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x2

    .line 64
    invoke-direct/range {v8 .. v18}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;-><init>(ZZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)V

    .line 65
    .line 66
    .line 67
    and-int/lit8 v9, v0, 0x40

    .line 68
    .line 69
    if-eqz v9, :cond_5

    .line 70
    .line 71
    move v9, v2

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move/from16 v9, p6

    .line 74
    .line 75
    :goto_5
    and-int/lit16 v10, v0, 0x80

    .line 76
    .line 77
    if-eqz v10, :cond_6

    .line 78
    .line 79
    move v10, v5

    .line 80
    goto :goto_6

    .line 81
    :cond_6
    move/from16 v10, p7

    .line 82
    .line 83
    :goto_6
    and-int/lit16 v5, v0, 0x100

    .line 84
    .line 85
    if-eqz v5, :cond_7

    .line 86
    .line 87
    move v11, v2

    .line 88
    goto :goto_7

    .line 89
    :cond_7
    move/from16 v11, p8

    .line 90
    .line 91
    :goto_7
    and-int/lit16 v5, v0, 0x200

    .line 92
    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    move v12, v2

    .line 96
    goto :goto_8

    .line 97
    :cond_8
    move/from16 v12, p9

    .line 98
    .line 99
    :goto_8
    and-int/lit16 v0, v0, 0x400

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    move v13, v2

    .line 104
    move v5, v1

    .line 105
    move-object/from16 v2, p0

    .line 106
    .line 107
    goto :goto_9

    .line 108
    :cond_9
    move/from16 v13, p10

    .line 109
    .line 110
    move-object/from16 v2, p0

    .line 111
    .line 112
    move v5, v1

    .line 113
    :goto_9
    invoke-direct/range {v2 .. v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;-><init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZ)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZI)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;
    .locals 12

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean p2, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 15
    .line 16
    :cond_1
    move v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-boolean p3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 22
    .line 23
    :cond_2
    move v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 29
    .line 30
    move-object v4, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move-object/from16 v4, p4

    .line 33
    .line 34
    :goto_0
    and-int/lit8 p1, v0, 0x10

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 39
    .line 40
    move v5, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    move/from16 v5, p5

    .line 43
    .line 44
    :goto_1
    and-int/lit8 p1, v0, 0x20

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    iget-object p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 49
    .line 50
    move-object v6, p1

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move-object/from16 v6, p6

    .line 53
    .line 54
    :goto_2
    and-int/lit8 p1, v0, 0x40

    .line 55
    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 59
    .line 60
    move v7, p1

    .line 61
    goto :goto_3

    .line 62
    :cond_6
    move/from16 v7, p7

    .line 63
    .line 64
    :goto_3
    and-int/lit16 p1, v0, 0x80

    .line 65
    .line 66
    if-eqz p1, :cond_7

    .line 67
    .line 68
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 69
    .line 70
    move v8, p1

    .line 71
    goto :goto_4

    .line 72
    :cond_7
    move/from16 v8, p8

    .line 73
    .line 74
    :goto_4
    and-int/lit16 p1, v0, 0x100

    .line 75
    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 79
    .line 80
    move v9, p1

    .line 81
    goto :goto_5

    .line 82
    :cond_8
    move/from16 v9, p9

    .line 83
    .line 84
    :goto_5
    and-int/lit16 p1, v0, 0x200

    .line 85
    .line 86
    if-eqz p1, :cond_9

    .line 87
    .line 88
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 89
    .line 90
    move v10, p1

    .line 91
    goto :goto_6

    .line 92
    :cond_9
    move/from16 v10, p10

    .line 93
    .line 94
    :goto_6
    and-int/lit16 p1, v0, 0x400

    .line 95
    .line 96
    if-eqz p1, :cond_a

    .line 97
    .line 98
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 99
    .line 100
    move v11, p1

    .line 101
    goto :goto_7

    .line 102
    :cond_a
    move/from16 v11, p11

    .line 103
    .line 104
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 117
    .line 118
    invoke-direct/range {v0 .. v11}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;-><init>(Lnet/thunderbird/core/preference/AnimationPreference;ZZLnet/thunderbird/core/preference/BodyContentType;ZLnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;ZZZZZ)V

    .line 119
    .line 120
    .line 121
    return-object v0
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
    instance-of v1, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

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
    check-cast p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 35
    .line 36
    iget-object v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 49
    .line 50
    iget-object v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 67
    .line 68
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 69
    .line 70
    if-eq v1, v3, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 74
    .line 75
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 76
    .line 77
    if-eq v1, v3, :cond_a

    .line 78
    .line 79
    return v2

    .line 80
    :cond_a
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 81
    .line 82
    iget-boolean v3, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 83
    .line 84
    if-eq v1, v3, :cond_b

    .line 85
    .line 86
    return v2

    .line 87
    :cond_b
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 88
    .line 89
    iget-boolean p1, p1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 90
    .line 91
    if-eq p0, p1, :cond_c

    .line 92
    .line 93
    return v2

    .line 94
    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

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
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    mul-int/lit8 v1, v1, 0x1f

    .line 41
    .line 42
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_2
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    .line 52
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 53
    .line 54
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    move v1, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v1, v2

    .line 68
    :goto_3
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    move v1, v3

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move v1, v2

    .line 78
    :goto_4
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    move v1, v3

    .line 86
    goto :goto_5

    .line 87
    :cond_5
    move v1, v2

    .line 88
    :goto_5
    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    move v1, v3

    .line 96
    goto :goto_6

    .line 97
    :cond_6
    move v1, v2

    .line 98
    :goto_6
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    .line 101
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 102
    .line 103
    if-eqz p0, :cond_7

    .line 104
    .line 105
    move v2, v3

    .line 106
    :cond_7
    add-int/2addr v0, v2

    .line 107
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayVisualSettings(animationPreference="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->animationPreference:Lnet/thunderbird/core/preference/AnimationPreference;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isUseMessageViewFixedWidthFont="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isUseMessageViewFixedWidthFont:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isAutoFitWidth="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isAutoFitWidth:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", bodyContentType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", drawerExpandAllFolder="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->drawerExpandAllFolder:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", messageListSettings="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", isMessageViewArchiveActionVisible="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", isMessageViewDeleteActionVisible="

    .line 69
    .line 70
    const-string v2, ", isMessageViewMoveActionVisible="

    .line 71
    .line 72
    iget-boolean v3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewArchiveActionVisible:Z

    .line 73
    .line 74
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewDeleteActionVisible:Z

    .line 75
    .line 76
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, ", isMessageViewCopyActionVisible="

    .line 80
    .line 81
    const-string v2, ", isMessageViewSpamActionVisible="

    .line 82
    .line 83
    iget-boolean v3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewMoveActionVisible:Z

    .line 84
    .line 85
    iget-boolean v4, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewCopyActionVisible:Z

    .line 86
    .line 87
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, ")"

    .line 91
    .line 92
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->isMessageViewSpamActionVisible:Z

    .line 93
    .line 94
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method
