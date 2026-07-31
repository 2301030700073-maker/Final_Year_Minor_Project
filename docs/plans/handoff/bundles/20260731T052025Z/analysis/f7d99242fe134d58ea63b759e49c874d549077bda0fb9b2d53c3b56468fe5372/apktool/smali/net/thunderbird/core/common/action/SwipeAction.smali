.class public final enum Lnet/thunderbird/core/common/action/SwipeAction;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum Archive:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum ArchiveDisabled:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum ArchiveSetupArchiveFolder:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum Delete:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum Move:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum None:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum Spam:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum ToggleRead:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

.field public static final enum ToggleStar:Lnet/thunderbird/core/common/action/SwipeAction;


# instance fields
.field public final removesItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "None"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/common/action/SwipeAction;->None:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 10
    .line 11
    new-instance v2, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "ToggleSelection"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleSelection:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 20
    .line 21
    new-instance v4, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "ToggleRead"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleRead:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 30
    .line 31
    new-instance v6, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "ToggleStar"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lnet/thunderbird/core/common/action/SwipeAction;->ToggleStar:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 40
    .line 41
    new-instance v8, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "Archive"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lnet/thunderbird/core/common/action/SwipeAction;->Archive:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 50
    .line 51
    new-instance v10, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "ArchiveDisabled"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lnet/thunderbird/core/common/action/SwipeAction;->ArchiveDisabled:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 60
    .line 61
    new-instance v12, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "ArchiveSetupArchiveFolder"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v1}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lnet/thunderbird/core/common/action/SwipeAction;->ArchiveSetupArchiveFolder:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 70
    .line 71
    new-instance v14, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v1

    .line 75
    .line 76
    const-string v1, "Delete"

    .line 77
    .line 78
    invoke-direct {v14, v15, v1, v3}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lnet/thunderbird/core/common/action/SwipeAction;->Delete:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 82
    .line 83
    new-instance v1, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 84
    .line 85
    move/from16 v17, v5

    .line 86
    .line 87
    const/16 v5, 0x8

    .line 88
    .line 89
    move/from16 v18, v7

    .line 90
    .line 91
    const-string v7, "Spam"

    .line 92
    .line 93
    invoke-direct {v1, v5, v7, v3}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v1, Lnet/thunderbird/core/common/action/SwipeAction;->Spam:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 97
    .line 98
    new-instance v7, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 99
    .line 100
    move/from16 v19, v5

    .line 101
    .line 102
    const/16 v5, 0x9

    .line 103
    .line 104
    move/from16 v20, v9

    .line 105
    .line 106
    const-string v9, "Move"

    .line 107
    .line 108
    invoke-direct {v7, v5, v9, v3}, Lnet/thunderbird/core/common/action/SwipeAction;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v7, Lnet/thunderbird/core/common/action/SwipeAction;->Move:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 112
    .line 113
    const/16 v9, 0xa

    .line 114
    .line 115
    new-array v9, v9, [Lnet/thunderbird/core/common/action/SwipeAction;

    .line 116
    .line 117
    aput-object v0, v9, v16

    .line 118
    .line 119
    aput-object v2, v9, v3

    .line 120
    .line 121
    aput-object v4, v9, v17

    .line 122
    .line 123
    aput-object v6, v9, v18

    .line 124
    .line 125
    aput-object v8, v9, v20

    .line 126
    .line 127
    aput-object v10, v9, v11

    .line 128
    .line 129
    aput-object v12, v9, v13

    .line 130
    .line 131
    aput-object v14, v9, v15

    .line 132
    .line 133
    aput-object v1, v9, v19

    .line 134
    .line 135
    aput-object v7, v9, v5

    .line 136
    .line 137
    sput-object v9, Lnet/thunderbird/core/common/action/SwipeAction;->$VALUES:[Lnet/thunderbird/core/common/action/SwipeAction;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lnet/thunderbird/core/common/action/SwipeAction;->removesItem:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/common/action/SwipeAction;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/common/action/SwipeAction;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/action/SwipeAction;->$VALUES:[Lnet/thunderbird/core/common/action/SwipeAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/common/action/SwipeAction;

    .line 8
    .line 9
    return-object v0
.end method
