.class public final enum Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 2
    .line 3
    const-string v1, "animations"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Animation"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 12
    .line 13
    const-string v3, "messageViewFixedWidthFont"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "MessageViewFixedWidthFont"

    .line 17
    .line 18
    invoke-direct {v1, v4, v5, v3}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 22
    .line 23
    const-string v5, "autofitWidth"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const-string v7, "AutoFitWidth"

    .line 27
    .line 28
    invoke-direct {v3, v6, v7, v5}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 32
    .line 33
    const-string v7, "messageViewBodyContentType"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const-string v9, "MessageViewBodyContentType"

    .line 37
    .line 38
    invoke-direct {v5, v8, v9, v7}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 42
    .line 43
    const-string v9, "drawerExpandAllFolder"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const-string v11, "DrawerExpandAllFolder"

    .line 47
    .line 48
    invoke-direct {v7, v10, v11, v9}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 52
    .line 53
    const-string v11, "messageViewArchiveActionVisible"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    const-string v13, "MessageViewArchiveActionVisible"

    .line 57
    .line 58
    invoke-direct {v9, v12, v13, v11}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v11, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 62
    .line 63
    const-string v13, "messageViewDeleteActionVisible"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    const-string v15, "MessageViewDeleteActionVisible"

    .line 67
    .line 68
    invoke-direct {v11, v14, v15, v13}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v13, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 72
    .line 73
    const-string v15, "messageViewMoveActionVisible"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    move/from16 v17, v4

    .line 79
    .line 80
    const-string v4, "MessageViewMoveActionVisible"

    .line 81
    .line 82
    invoke-direct {v13, v2, v4, v15}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 86
    .line 87
    const-string v15, "messageViewCopyActionVisible"

    .line 88
    .line 89
    move/from16 v18, v2

    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    move/from16 v19, v6

    .line 94
    .line 95
    const-string v6, "MessageViewCopyActionVisible"

    .line 96
    .line 97
    invoke-direct {v4, v2, v6, v15}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 101
    .line 102
    const-string v15, "messageViewSpamActionVisible"

    .line 103
    .line 104
    move/from16 v20, v2

    .line 105
    .line 106
    const/16 v2, 0x9

    .line 107
    .line 108
    move/from16 v21, v8

    .line 109
    .line 110
    const-string v8, "MessageViewSpamActionVisible"

    .line 111
    .line 112
    invoke-direct {v6, v2, v8, v15}, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v8, 0xa

    .line 116
    .line 117
    new-array v8, v8, [Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 118
    .line 119
    aput-object v0, v8, v16

    .line 120
    .line 121
    aput-object v1, v8, v17

    .line 122
    .line 123
    aput-object v3, v8, v19

    .line 124
    .line 125
    aput-object v5, v8, v21

    .line 126
    .line 127
    aput-object v7, v8, v10

    .line 128
    .line 129
    aput-object v9, v8, v12

    .line 130
    .line 131
    aput-object v11, v8, v14

    .line 132
    .line 133
    aput-object v13, v8, v18

    .line 134
    .line 135
    aput-object v4, v8, v20

    .line 136
    .line 137
    aput-object v6, v8, v2

    .line 138
    .line 139
    sput-object v8, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 140
    .line 141
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 142
    .line 143
    invoke-direct {v0, v8}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 144
    .line 145
    .line 146
    sput-object v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 147
    .line 148
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;->$VALUES:[Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingKey;

    .line 8
    .line 9
    return-object v0
.end method
