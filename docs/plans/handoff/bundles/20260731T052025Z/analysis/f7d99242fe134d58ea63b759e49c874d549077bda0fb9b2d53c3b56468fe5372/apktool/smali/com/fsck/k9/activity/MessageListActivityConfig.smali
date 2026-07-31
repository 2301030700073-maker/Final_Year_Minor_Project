.class public final Lcom/fsck/k9/activity/MessageListActivityConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appTheme:Lnet/thunderbird/core/preference/AppTheme;

.field public final contactNameColor:I

.field public final fontSizeMessageListDate:I

.field public final fontSizeMessageListPreview:I

.field public final fontSizeMessageListSender:I

.field public final fontSizeMessageListSubject:I

.field public final fontSizeMessageViewContentAsPercent:I

.field public final fontSizeMessageViewDate:I

.field public final fontSizeMessageViewRecipients:I

.field public final fontSizeMessageViewSender:I

.field public final fontSizeMessageViewSubject:I

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final isChangeContactNameColor:Z

.field public final isColorizeMissingContactPictures:Z

.field public final isMessageListSenderAboveSubject:Z

.field public final isShowComposeButton:Z

.field public final isShowContactName:Z

.field public final isShowContactPicture:Z

.field public final isShowCorrespondentNames:Z

.field public final isShowMessageListStars:Z

.field public final isShowUnifiedInbox:Z

.field public final isUseBackgroundAsUnreadIndicator:Z

.field public final messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

.field public final messageListPreviewLines:I

.field public final messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

.field public final splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

.field public final swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

.field public final swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/AppTheme;ZZZZZZZZZZILnet/thunderbird/core/preference/SubTheme;ILnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Lnet/thunderbird/core/preference/SplitViewMode;IIIIIIIIILnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 3
    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowUnifiedInbox:Z

    .line 4
    iput-boolean p3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowMessageListStars:Z

    .line 5
    iput-boolean p4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowCorrespondentNames:Z

    .line 6
    iput-boolean p5, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isMessageListSenderAboveSubject:Z

    .line 7
    iput-boolean p6, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactName:Z

    .line 8
    iput-boolean p7, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isChangeContactNameColor:Z

    .line 9
    iput-boolean p8, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactPicture:Z

    .line 10
    iput-boolean p9, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isColorizeMissingContactPictures:Z

    .line 11
    iput-boolean p10, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isUseBackgroundAsUnreadIndicator:Z

    .line 12
    iput-boolean p11, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowComposeButton:Z

    .line 13
    iput p12, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->contactNameColor:I

    .line 14
    iput-object p13, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 15
    iput p14, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListPreviewLines:I

    .line 16
    iput-object p15, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    move/from16 p1, p17

    .line 18
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSubject:I

    move/from16 p1, p18

    .line 19
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSender:I

    move/from16 p1, p19

    .line 20
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListDate:I

    move/from16 p1, p20

    .line 21
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListPreview:I

    move/from16 p1, p21

    .line 22
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSender:I

    move/from16 p1, p22

    .line 23
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewRecipients:I

    move/from16 p1, p23

    .line 24
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSubject:I

    move/from16 p1, p24

    .line 25
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewDate:I

    move/from16 p1, p25

    .line 26
    iput p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewContentAsPercent:I

    move-object/from16 p1, p26

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    move-object/from16 p1, p27

    .line 28
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    move-object/from16 p1, p28

    .line 29
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    return-void
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
    instance-of v1, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;

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
    check-cast p1, Lcom/fsck/k9/activity/MessageListActivityConfig;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowUnifiedInbox:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowUnifiedInbox:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowMessageListStars:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowMessageListStars:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowCorrespondentNames:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowCorrespondentNames:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isMessageListSenderAboveSubject:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isMessageListSenderAboveSubject:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactName:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactName:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isChangeContactNameColor:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isChangeContactNameColor:Z

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactPicture:Z

    .line 63
    .line 64
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactPicture:Z

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isColorizeMissingContactPictures:Z

    .line 70
    .line 71
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isColorizeMissingContactPictures:Z

    .line 72
    .line 73
    if-eq v1, v3, :cond_a

    .line 74
    .line 75
    return v2

    .line 76
    :cond_a
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isUseBackgroundAsUnreadIndicator:Z

    .line 77
    .line 78
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isUseBackgroundAsUnreadIndicator:Z

    .line 79
    .line 80
    if-eq v1, v3, :cond_b

    .line 81
    .line 82
    return v2

    .line 83
    :cond_b
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowComposeButton:Z

    .line 84
    .line 85
    iget-boolean v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowComposeButton:Z

    .line 86
    .line 87
    if-eq v1, v3, :cond_c

    .line 88
    .line 89
    return v2

    .line 90
    :cond_c
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->contactNameColor:I

    .line 91
    .line 92
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->contactNameColor:I

    .line 93
    .line 94
    if-eq v1, v3, :cond_d

    .line 95
    .line 96
    return v2

    .line 97
    :cond_d
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 100
    .line 101
    if-eq v1, v3, :cond_e

    .line 102
    .line 103
    return v2

    .line 104
    :cond_e
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListPreviewLines:I

    .line 105
    .line 106
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListPreviewLines:I

    .line 107
    .line 108
    if-eq v1, v3, :cond_f

    .line 109
    .line 110
    return v2

    .line 111
    :cond_f
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 112
    .line 113
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 114
    .line 115
    if-eq v1, v3, :cond_10

    .line 116
    .line 117
    return v2

    .line 118
    :cond_10
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 121
    .line 122
    if-eq v1, v3, :cond_11

    .line 123
    .line 124
    return v2

    .line 125
    :cond_11
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSubject:I

    .line 126
    .line 127
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSubject:I

    .line 128
    .line 129
    if-eq v1, v3, :cond_12

    .line 130
    .line 131
    return v2

    .line 132
    :cond_12
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSender:I

    .line 133
    .line 134
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSender:I

    .line 135
    .line 136
    if-eq v1, v3, :cond_13

    .line 137
    .line 138
    return v2

    .line 139
    :cond_13
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListDate:I

    .line 140
    .line 141
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListDate:I

    .line 142
    .line 143
    if-eq v1, v3, :cond_14

    .line 144
    .line 145
    return v2

    .line 146
    :cond_14
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListPreview:I

    .line 147
    .line 148
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListPreview:I

    .line 149
    .line 150
    if-eq v1, v3, :cond_15

    .line 151
    .line 152
    return v2

    .line 153
    :cond_15
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSender:I

    .line 154
    .line 155
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSender:I

    .line 156
    .line 157
    if-eq v1, v3, :cond_16

    .line 158
    .line 159
    return v2

    .line 160
    :cond_16
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewRecipients:I

    .line 161
    .line 162
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewRecipients:I

    .line 163
    .line 164
    if-eq v1, v3, :cond_17

    .line 165
    .line 166
    return v2

    .line 167
    :cond_17
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSubject:I

    .line 168
    .line 169
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSubject:I

    .line 170
    .line 171
    if-eq v1, v3, :cond_18

    .line 172
    .line 173
    return v2

    .line 174
    :cond_18
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewDate:I

    .line 175
    .line 176
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewDate:I

    .line 177
    .line 178
    if-eq v1, v3, :cond_19

    .line 179
    .line 180
    return v2

    .line 181
    :cond_19
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewContentAsPercent:I

    .line 182
    .line 183
    iget v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewContentAsPercent:I

    .line 184
    .line 185
    if-eq v1, v3, :cond_1a

    .line 186
    .line 187
    return v2

    .line 188
    :cond_1a
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 189
    .line 190
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 191
    .line 192
    if-eq v1, v3, :cond_1b

    .line 193
    .line 194
    return v2

    .line 195
    :cond_1b
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 196
    .line 197
    iget-object v3, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 198
    .line 199
    if-eq v1, v3, :cond_1c

    .line 200
    .line 201
    return v2

    .line 202
    :cond_1c
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/fsck/k9/activity/MessageListActivityConfig;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 205
    .line 206
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-nez p0, :cond_1d

    .line 211
    .line 212
    return v2

    .line 213
    :cond_1d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

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
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowUnifiedInbox:Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowMessageListStars:Z

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
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowCorrespondentNames:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_2
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isMessageListSenderAboveSubject:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v1, v2

    .line 50
    :goto_3
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactName:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move v1, v2

    .line 60
    :goto_4
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isChangeContactNameColor:Z

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    move v1, v3

    .line 68
    goto :goto_5

    .line 69
    :cond_5
    move v1, v2

    .line 70
    :goto_5
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactPicture:Z

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    move v1, v3

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move v1, v2

    .line 80
    :goto_6
    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isColorizeMissingContactPictures:Z

    .line 84
    .line 85
    if-eqz v1, :cond_7

    .line 86
    .line 87
    move v1, v3

    .line 88
    goto :goto_7

    .line 89
    :cond_7
    move v1, v2

    .line 90
    :goto_7
    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isUseBackgroundAsUnreadIndicator:Z

    .line 94
    .line 95
    if-eqz v1, :cond_8

    .line 96
    .line 97
    move v1, v3

    .line 98
    goto :goto_8

    .line 99
    :cond_8
    move v1, v2

    .line 100
    :goto_8
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowComposeButton:Z

    .line 104
    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    move v2, v3

    .line 108
    :cond_9
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->contactNameColor:I

    .line 112
    .line 113
    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    .line 115
    .line 116
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/2addr v1, v0

    .line 123
    mul-int/lit8 v1, v1, 0x1f

    .line 124
    .line 125
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListPreviewLines:I

    .line 126
    .line 127
    add-int/2addr v1, v0

    .line 128
    mul-int/lit8 v1, v1, 0x1f

    .line 129
    .line 130
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v1, v0

    .line 146
    mul-int/lit8 v1, v1, 0x1f

    .line 147
    .line 148
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSubject:I

    .line 149
    .line 150
    add-int/2addr v1, v0

    .line 151
    mul-int/lit8 v1, v1, 0x1f

    .line 152
    .line 153
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSender:I

    .line 154
    .line 155
    add-int/2addr v1, v0

    .line 156
    mul-int/lit8 v1, v1, 0x1f

    .line 157
    .line 158
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListDate:I

    .line 159
    .line 160
    add-int/2addr v1, v0

    .line 161
    mul-int/lit8 v1, v1, 0x1f

    .line 162
    .line 163
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListPreview:I

    .line 164
    .line 165
    add-int/2addr v1, v0

    .line 166
    mul-int/lit8 v1, v1, 0x1f

    .line 167
    .line 168
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSender:I

    .line 169
    .line 170
    add-int/2addr v1, v0

    .line 171
    mul-int/lit8 v1, v1, 0x1f

    .line 172
    .line 173
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewRecipients:I

    .line 174
    .line 175
    add-int/2addr v1, v0

    .line 176
    mul-int/lit8 v1, v1, 0x1f

    .line 177
    .line 178
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSubject:I

    .line 179
    .line 180
    add-int/2addr v1, v0

    .line 181
    mul-int/lit8 v1, v1, 0x1f

    .line 182
    .line 183
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewDate:I

    .line 184
    .line 185
    add-int/2addr v1, v0

    .line 186
    mul-int/lit8 v1, v1, 0x1f

    .line 187
    .line 188
    iget v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewContentAsPercent:I

    .line 189
    .line 190
    add-int/2addr v1, v0

    .line 191
    mul-int/lit8 v1, v1, 0x1f

    .line 192
    .line 193
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    .line 201
    .line 202
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    add-int/2addr v1, v0

    .line 209
    mul-int/lit8 v1, v1, 0x1f

    .line 210
    .line 211
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    add-int/2addr p0, v1

    .line 218
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageListActivityConfig(appTheme="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isShowUnifiedInbox="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowUnifiedInbox:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isShowMessageListStars="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", isShowCorrespondentNames="

    .line 29
    .line 30
    const-string v2, ", isMessageListSenderAboveSubject="

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowMessageListStars:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowCorrespondentNames:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", isShowContactName="

    .line 40
    .line 41
    const-string v2, ", isChangeContactNameColor="

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isMessageListSenderAboveSubject:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactName:Z

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ", isShowContactPicture="

    .line 51
    .line 52
    const-string v2, ", isColorizeMissingContactPictures="

    .line 53
    .line 54
    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isChangeContactNameColor:Z

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowContactPicture:Z

    .line 57
    .line 58
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, ", isUseBackgroundAsUnreadIndicator="

    .line 62
    .line 63
    const-string v2, ", isShowComposeButton="

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isColorizeMissingContactPictures:Z

    .line 66
    .line 67
    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isUseBackgroundAsUnreadIndicator:Z

    .line 68
    .line 69
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->isShowComposeButton:Z

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", contactNameColor="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->contactNameColor:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", messageViewTheme="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", messageListPreviewLines="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListPreviewLines:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ", messageListDensity="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->messageListDensity:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", splitViewMode="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", fontSizeMessageListSubject="

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", fontSizeMessageListSender="

    .line 133
    .line 134
    const-string v2, ", fontSizeMessageListDate="

    .line 135
    .line 136
    iget v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSubject:I

    .line 137
    .line 138
    iget v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListSender:I

    .line 139
    .line 140
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v1, ", fontSizeMessageListPreview="

    .line 144
    .line 145
    const-string v2, ", fontSizeMessageViewSender="

    .line 146
    .line 147
    iget v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListDate:I

    .line 148
    .line 149
    iget v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageListPreview:I

    .line 150
    .line 151
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v1, ", fontSizeMessageViewRecipients="

    .line 155
    .line 156
    const-string v2, ", fontSizeMessageViewSubject="

    .line 157
    .line 158
    iget v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSender:I

    .line 159
    .line 160
    iget v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewRecipients:I

    .line 161
    .line 162
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v1, ", fontSizeMessageViewDate="

    .line 166
    .line 167
    const-string v2, ", fontSizeMessageViewContentAsPercent="

    .line 168
    .line 169
    iget v3, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewSubject:I

    .line 170
    .line 171
    iget v4, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewDate:I

    .line 172
    .line 173
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->fontSizeMessageViewContentAsPercent:I

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v1, ", swipeRightAction="

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeRightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", swipeLeftAction="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->swipeLeftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, ", generalSettingsManager="

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageListActivityConfig;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 207
    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p0, ")"

    .line 212
    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0
.end method
