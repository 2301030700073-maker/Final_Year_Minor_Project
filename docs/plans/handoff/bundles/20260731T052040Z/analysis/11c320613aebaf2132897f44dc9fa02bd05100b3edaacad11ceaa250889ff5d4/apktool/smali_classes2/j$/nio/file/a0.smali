.class public final enum Lj$/nio/file/a0;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/nio/file/OpenOption;


# static fields
.field public static final enum APPEND:Lj$/nio/file/a0;

.field public static final enum CREATE:Lj$/nio/file/a0;

.field public static final enum CREATE_NEW:Lj$/nio/file/a0;

.field public static final enum DELETE_ON_CLOSE:Lj$/nio/file/a0;

.field public static final enum DSYNC:Lj$/nio/file/a0;

.field public static final enum READ:Lj$/nio/file/a0;

.field public static final enum SPARSE:Lj$/nio/file/a0;

.field public static final enum SYNC:Lj$/nio/file/a0;

.field public static final enum TRUNCATE_EXISTING:Lj$/nio/file/a0;

.field public static final enum WRITE:Lj$/nio/file/a0;

.field public static final synthetic a:[Lj$/nio/file/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lj$/nio/file/a0;

    .line 2
    .line 3
    const-string v1, "READ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lj$/nio/file/a0;->READ:Lj$/nio/file/a0;

    .line 10
    .line 11
    new-instance v1, Lj$/nio/file/a0;

    .line 12
    .line 13
    const-string v3, "WRITE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    .line 20
    .line 21
    new-instance v3, Lj$/nio/file/a0;

    .line 22
    .line 23
    const-string v5, "APPEND"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lj$/nio/file/a0;->APPEND:Lj$/nio/file/a0;

    .line 30
    .line 31
    new-instance v5, Lj$/nio/file/a0;

    .line 32
    .line 33
    const-string v7, "TRUNCATE_EXISTING"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lj$/nio/file/a0;->TRUNCATE_EXISTING:Lj$/nio/file/a0;

    .line 40
    .line 41
    new-instance v7, Lj$/nio/file/a0;

    .line 42
    .line 43
    const-string v9, "CREATE"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lj$/nio/file/a0;->CREATE:Lj$/nio/file/a0;

    .line 50
    .line 51
    new-instance v9, Lj$/nio/file/a0;

    .line 52
    .line 53
    const-string v11, "CREATE_NEW"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    .line 60
    .line 61
    new-instance v11, Lj$/nio/file/a0;

    .line 62
    .line 63
    const-string v13, "DELETE_ON_CLOSE"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lj$/nio/file/a0;->DELETE_ON_CLOSE:Lj$/nio/file/a0;

    .line 70
    .line 71
    new-instance v13, Lj$/nio/file/a0;

    .line 72
    .line 73
    const-string v15, "SPARSE"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lj$/nio/file/a0;->SPARSE:Lj$/nio/file/a0;

    .line 82
    .line 83
    new-instance v15, Lj$/nio/file/a0;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "SYNC"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lj$/nio/file/a0;->SYNC:Lj$/nio/file/a0;

    .line 97
    .line 98
    new-instance v2, Lj$/nio/file/a0;

    .line 99
    .line 100
    move/from16 v19, v4

    .line 101
    .line 102
    const-string v4, "DSYNC"

    .line 103
    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lj$/nio/file/a0;->DSYNC:Lj$/nio/file/a0;

    .line 112
    .line 113
    const/16 v4, 0xa

    .line 114
    .line 115
    new-array v4, v4, [Lj$/nio/file/a0;

    .line 116
    .line 117
    aput-object v0, v4, v16

    .line 118
    .line 119
    aput-object v1, v4, v18

    .line 120
    .line 121
    aput-object v3, v4, v20

    .line 122
    .line 123
    aput-object v5, v4, v8

    .line 124
    .line 125
    aput-object v7, v4, v10

    .line 126
    .line 127
    aput-object v9, v4, v12

    .line 128
    .line 129
    aput-object v11, v4, v14

    .line 130
    .line 131
    aput-object v13, v4, v17

    .line 132
    .line 133
    aput-object v15, v4, v19

    .line 134
    .line 135
    aput-object v2, v4, v6

    .line 136
    .line 137
    sput-object v4, Lj$/nio/file/a0;->a:[Lj$/nio/file/a0;

    .line 138
    .line 139
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/a0;
    .locals 1

    .line 1
    const-class v0, Lj$/nio/file/a0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj$/nio/file/a0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj$/nio/file/a0;
    .locals 1

    .line 1
    sget-object v0, Lj$/nio/file/a0;->a:[Lj$/nio/file/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lj$/nio/file/a0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj$/nio/file/a0;

    .line 8
    .line 9
    return-object v0
.end method
