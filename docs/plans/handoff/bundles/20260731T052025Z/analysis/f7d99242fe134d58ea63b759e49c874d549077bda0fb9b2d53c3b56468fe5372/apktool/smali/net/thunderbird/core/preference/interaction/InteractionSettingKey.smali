.class public final enum Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 2
    .line 3
    const-string/jumbo v1, "useVolumeKeysForNavigation"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "UseVolumeKeysForNavigation"

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 13
    .line 14
    const-string v3, "messageViewPostDeleteAction"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const-string v5, "MessageViewPostDeleteAction"

    .line 18
    .line 19
    invoke-direct {v1, v4, v5, v3}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 23
    .line 24
    const-string v5, "swipeLeftAction"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const-string v7, "SwipeActionLeft"

    .line 28
    .line 29
    invoke-direct {v3, v6, v7, v5}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 33
    .line 34
    const-string v7, "swipeRightAction"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    const-string v9, "SwipeActionRight"

    .line 38
    .line 39
    invoke-direct {v5, v8, v9, v7}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 43
    .line 44
    const-string v9, "confirmDelete"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    const-string v11, "ConfirmDelete"

    .line 48
    .line 49
    invoke-direct {v7, v10, v11, v9}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 53
    .line 54
    const-string v11, "confirmDiscardMessage"

    .line 55
    .line 56
    const/4 v12, 0x5

    .line 57
    const-string v13, "ConfirmDiscardMessage"

    .line 58
    .line 59
    invoke-direct {v9, v12, v13, v11}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v11, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 63
    .line 64
    const-string v13, "confirmDeleteStarred"

    .line 65
    .line 66
    const/4 v14, 0x6

    .line 67
    const-string v15, "ConfirmDeleteStarred"

    .line 68
    .line 69
    invoke-direct {v11, v14, v15, v13}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v13, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 73
    .line 74
    const-string v15, "confirmSpam"

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    .line 78
    const/4 v2, 0x7

    .line 79
    move/from16 v17, v4

    .line 80
    .line 81
    const-string v4, "ConfirmSpam"

    .line 82
    .line 83
    invoke-direct {v13, v2, v4, v15}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v4, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 87
    .line 88
    const-string v15, "confirmDeleteFromNotification"

    .line 89
    .line 90
    move/from16 v18, v2

    .line 91
    .line 92
    const/16 v2, 0x8

    .line 93
    .line 94
    move/from16 v19, v6

    .line 95
    .line 96
    const-string v6, "ConfirmDeleteFromNotification"

    .line 97
    .line 98
    invoke-direct {v4, v2, v6, v15}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v6, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 102
    .line 103
    const-string v15, "confirmMarkAllRead"

    .line 104
    .line 105
    move/from16 v20, v2

    .line 106
    .line 107
    const/16 v2, 0x9

    .line 108
    .line 109
    move/from16 v21, v8

    .line 110
    .line 111
    const-string v8, "ConfirmMarkAllRead"

    .line 112
    .line 113
    invoke-direct {v6, v2, v8, v15}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v8, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 117
    .line 118
    const-string v15, "messageViewPostMarkAsReadAction"

    .line 119
    .line 120
    move/from16 v22, v2

    .line 121
    .line 122
    const/16 v2, 0xa

    .line 123
    .line 124
    move/from16 v23, v10

    .line 125
    .line 126
    const-string v10, "MessageViewPostMarkAsRead"

    .line 127
    .line 128
    invoke-direct {v8, v2, v10, v15}, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/16 v10, 0xb

    .line 132
    .line 133
    new-array v10, v10, [Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 134
    .line 135
    aput-object v0, v10, v16

    .line 136
    .line 137
    aput-object v1, v10, v17

    .line 138
    .line 139
    aput-object v3, v10, v19

    .line 140
    .line 141
    aput-object v5, v10, v21

    .line 142
    .line 143
    aput-object v7, v10, v23

    .line 144
    .line 145
    aput-object v9, v10, v12

    .line 146
    .line 147
    aput-object v11, v10, v14

    .line 148
    .line 149
    aput-object v13, v10, v18

    .line 150
    .line 151
    aput-object v4, v10, v20

    .line 152
    .line 153
    aput-object v6, v10, v22

    .line 154
    .line 155
    aput-object v8, v10, v2

    .line 156
    .line 157
    sput-object v10, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 158
    .line 159
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 160
    .line 161
    invoke-direct {v0, v10}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 162
    .line 163
    .line 164
    sput-object v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 165
    .line 166
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/interaction/InteractionSettingKey;

    .line 8
    .line 9
    return-object v0
.end method
