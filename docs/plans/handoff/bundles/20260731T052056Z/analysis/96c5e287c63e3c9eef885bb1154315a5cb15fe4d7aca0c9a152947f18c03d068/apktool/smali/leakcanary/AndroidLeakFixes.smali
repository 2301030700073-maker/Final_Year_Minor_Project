.class public abstract enum Lleakcanary/AndroidLeakFixes;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lleakcanary/AndroidLeakFixes;

.field public static final enum ACCESSIBILITY_NODE_INFO:Lleakcanary/AndroidLeakFixes;

.field public static final enum ACTIVITY_MANAGER:Lleakcanary/AndroidLeakFixes;

.field public static final enum BUBBLE_POPUP:Lleakcanary/AndroidLeakFixes;

.field public static final enum CONNECTIVITY_MANAGER:Lleakcanary/AndroidLeakFixes;

.field public static final Companion:Lleakcanary/AndroidLeakFixes$Companion;

.field public static final enum FLUSH_HANDLER_THREADS:Lleakcanary/AndroidLeakFixes;

.field public static final enum IMM_CUR_ROOT_VIEW:Lleakcanary/AndroidLeakFixes;

.field public static final enum IMM_FOCUSED_VIEW:Lleakcanary/AndroidLeakFixes;

.field public static final enum LAST_HOVERED_VIEW:Lleakcanary/AndroidLeakFixes;

.field private static final LG:Ljava/lang/String; = "LGE"

.field public static final enum MEDIA_SESSION_LEGACY_HELPER:Lleakcanary/AndroidLeakFixes;

.field public static final enum PERMISSION_CONTROLLER_MANAGER:Lleakcanary/AndroidLeakFixes;

.field private static final SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final enum SAMSUNG_CLIPBOARD_MANAGER:Lleakcanary/AndroidLeakFixes;

.field public static final enum SPELL_CHECKER:Lleakcanary/AndroidLeakFixes;

.field public static final enum TEXT_LINE_POOL:Lleakcanary/AndroidLeakFixes;

.field public static final enum USER_MANAGER:Lleakcanary/AndroidLeakFixes;

.field public static final enum VIEW_LOCATION_HOLDER:Lleakcanary/AndroidLeakFixes;

.field private static final backgroundHandler$delegate:Lkotlin/Lazy;


# instance fields
.field private applied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;

    .line 2
    .line 3
    invoke-direct {v0}, Lleakcanary/AndroidLeakFixes$MEDIA_SESSION_LEGACY_HELPER;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lleakcanary/AndroidLeakFixes;->MEDIA_SESSION_LEGACY_HELPER:Lleakcanary/AndroidLeakFixes;

    .line 7
    .line 8
    new-instance v1, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;

    .line 9
    .line 10
    invoke-direct {v1}, Lleakcanary/AndroidLeakFixes$TEXT_LINE_POOL;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lleakcanary/AndroidLeakFixes;->TEXT_LINE_POOL:Lleakcanary/AndroidLeakFixes;

    .line 14
    .line 15
    new-instance v2, Lleakcanary/AndroidLeakFixes$USER_MANAGER;

    .line 16
    .line 17
    invoke-direct {v2}, Lleakcanary/AndroidLeakFixes$USER_MANAGER;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lleakcanary/AndroidLeakFixes;->USER_MANAGER:Lleakcanary/AndroidLeakFixes;

    .line 21
    .line 22
    new-instance v3, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;

    .line 23
    .line 24
    invoke-direct {v3}, Lleakcanary/AndroidLeakFixes$FLUSH_HANDLER_THREADS;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lleakcanary/AndroidLeakFixes;->FLUSH_HANDLER_THREADS:Lleakcanary/AndroidLeakFixes;

    .line 28
    .line 29
    new-instance v4, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;

    .line 30
    .line 31
    invoke-direct {v4}, Lleakcanary/AndroidLeakFixes$ACCESSIBILITY_NODE_INFO;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lleakcanary/AndroidLeakFixes;->ACCESSIBILITY_NODE_INFO:Lleakcanary/AndroidLeakFixes;

    .line 35
    .line 36
    new-instance v5, Lleakcanary/AndroidLeakFixes$CONNECTIVITY_MANAGER;

    .line 37
    .line 38
    invoke-direct {v5}, Lleakcanary/AndroidLeakFixes$CONNECTIVITY_MANAGER;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lleakcanary/AndroidLeakFixes;->CONNECTIVITY_MANAGER:Lleakcanary/AndroidLeakFixes;

    .line 42
    .line 43
    new-instance v6, Lleakcanary/AndroidLeakFixes$SAMSUNG_CLIPBOARD_MANAGER;

    .line 44
    .line 45
    invoke-direct {v6}, Lleakcanary/AndroidLeakFixes$SAMSUNG_CLIPBOARD_MANAGER;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v6, Lleakcanary/AndroidLeakFixes;->SAMSUNG_CLIPBOARD_MANAGER:Lleakcanary/AndroidLeakFixes;

    .line 49
    .line 50
    new-instance v7, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;

    .line 51
    .line 52
    invoke-direct {v7}, Lleakcanary/AndroidLeakFixes$BUBBLE_POPUP;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lleakcanary/AndroidLeakFixes;->BUBBLE_POPUP:Lleakcanary/AndroidLeakFixes;

    .line 56
    .line 57
    new-instance v8, Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;

    .line 58
    .line 59
    invoke-direct {v8}, Lleakcanary/AndroidLeakFixes$LAST_HOVERED_VIEW;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v8, Lleakcanary/AndroidLeakFixes;->LAST_HOVERED_VIEW:Lleakcanary/AndroidLeakFixes;

    .line 63
    .line 64
    new-instance v9, Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;

    .line 65
    .line 66
    invoke-direct {v9}, Lleakcanary/AndroidLeakFixes$ACTIVITY_MANAGER;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v9, Lleakcanary/AndroidLeakFixes;->ACTIVITY_MANAGER:Lleakcanary/AndroidLeakFixes;

    .line 70
    .line 71
    new-instance v10, Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;

    .line 72
    .line 73
    invoke-direct {v10}, Lleakcanary/AndroidLeakFixes$VIEW_LOCATION_HOLDER;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v10, Lleakcanary/AndroidLeakFixes;->VIEW_LOCATION_HOLDER:Lleakcanary/AndroidLeakFixes;

    .line 77
    .line 78
    new-instance v11, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW;

    .line 79
    .line 80
    invoke-direct {v11}, Lleakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lleakcanary/AndroidLeakFixes;->IMM_FOCUSED_VIEW:Lleakcanary/AndroidLeakFixes;

    .line 84
    .line 85
    new-instance v12, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW;

    .line 86
    .line 87
    invoke-direct {v12}, Lleakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v12, Lleakcanary/AndroidLeakFixes;->IMM_CUR_ROOT_VIEW:Lleakcanary/AndroidLeakFixes;

    .line 91
    .line 92
    new-instance v13, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER;

    .line 93
    .line 94
    invoke-direct {v13}, Lleakcanary/AndroidLeakFixes$SPELL_CHECKER;-><init>()V

    .line 95
    .line 96
    .line 97
    sput-object v13, Lleakcanary/AndroidLeakFixes;->SPELL_CHECKER:Lleakcanary/AndroidLeakFixes;

    .line 98
    .line 99
    new-instance v14, Lleakcanary/AndroidLeakFixes$PERMISSION_CONTROLLER_MANAGER;

    .line 100
    .line 101
    invoke-direct {v14}, Lleakcanary/AndroidLeakFixes$PERMISSION_CONTROLLER_MANAGER;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object v14, Lleakcanary/AndroidLeakFixes;->PERMISSION_CONTROLLER_MANAGER:Lleakcanary/AndroidLeakFixes;

    .line 105
    .line 106
    const/16 v15, 0xf

    .line 107
    .line 108
    new-array v15, v15, [Lleakcanary/AndroidLeakFixes;

    .line 109
    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    aput-object v0, v15, v16

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    aput-object v1, v15, v0

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    aput-object v2, v15, v0

    .line 119
    .line 120
    const/4 v0, 0x3

    .line 121
    aput-object v3, v15, v0

    .line 122
    .line 123
    const/4 v0, 0x4

    .line 124
    aput-object v4, v15, v0

    .line 125
    .line 126
    const/4 v0, 0x5

    .line 127
    aput-object v5, v15, v0

    .line 128
    .line 129
    const/4 v0, 0x6

    .line 130
    aput-object v6, v15, v0

    .line 131
    .line 132
    const/4 v0, 0x7

    .line 133
    aput-object v7, v15, v0

    .line 134
    .line 135
    const/16 v0, 0x8

    .line 136
    .line 137
    aput-object v8, v15, v0

    .line 138
    .line 139
    const/16 v0, 0x9

    .line 140
    .line 141
    aput-object v9, v15, v0

    .line 142
    .line 143
    const/16 v0, 0xa

    .line 144
    .line 145
    aput-object v10, v15, v0

    .line 146
    .line 147
    const/16 v0, 0xb

    .line 148
    .line 149
    aput-object v11, v15, v0

    .line 150
    .line 151
    const/16 v0, 0xc

    .line 152
    .line 153
    aput-object v12, v15, v0

    .line 154
    .line 155
    const/16 v0, 0xd

    .line 156
    .line 157
    aput-object v13, v15, v0

    .line 158
    .line 159
    const/16 v0, 0xe

    .line 160
    .line 161
    aput-object v14, v15, v0

    .line 162
    .line 163
    sput-object v15, Lleakcanary/AndroidLeakFixes;->$VALUES:[Lleakcanary/AndroidLeakFixes;

    .line 164
    .line 165
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lleakcanary/AndroidLeakFixes;->Companion:Lleakcanary/AndroidLeakFixes$Companion;

    .line 171
    .line 172
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 173
    .line 174
    sget-object v1, Lleakcanary/AndroidLeakFixes$Companion$backgroundHandler$2;->INSTANCE:Lleakcanary/AndroidLeakFixes$Companion$backgroundHandler$2;

    .line 175
    .line 176
    invoke-direct {v0, v1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 177
    .line 178
    .line 179
    sput-object v0, Lleakcanary/AndroidLeakFixes;->backgroundHandler$delegate:Lkotlin/Lazy;

    .line 180
    .line 181
    return-void
.end method

.method public static final synthetic access$getApplied$p(Lleakcanary/AndroidLeakFixes;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lleakcanary/AndroidLeakFixes;->applied:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getBackgroundHandler$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lleakcanary/AndroidLeakFixes;->backgroundHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setApplied$p(Lleakcanary/AndroidLeakFixes;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lleakcanary/AndroidLeakFixes;->applied:Z

    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lleakcanary/AndroidLeakFixes;
    .locals 1

    .line 1
    const-class v0, Lleakcanary/AndroidLeakFixes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lleakcanary/AndroidLeakFixes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lleakcanary/AndroidLeakFixes;
    .locals 1

    .line 1
    sget-object v0, Lleakcanary/AndroidLeakFixes;->$VALUES:[Lleakcanary/AndroidLeakFixes;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lleakcanary/AndroidLeakFixes;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lleakcanary/AndroidLeakFixes;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract apply(Landroid/app/Application;)V
.end method
