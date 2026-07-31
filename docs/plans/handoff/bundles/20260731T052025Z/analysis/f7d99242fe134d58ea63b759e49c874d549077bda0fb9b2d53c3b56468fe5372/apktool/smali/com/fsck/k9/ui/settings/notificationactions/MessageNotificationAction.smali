.class public final enum Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

.field public static final Companion:Landroidx/transition/Transition$1;


# instance fields
.field public final iconRes:I

.field public final labelRes:I

.field public final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 2
    .line 3
    const v4, 0x7f1204e6

    .line 4
    .line 5
    .line 6
    const v5, 0x7f08010c

    .line 7
    .line 8
    .line 9
    const-string v1, "Reply"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "reply"

    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 18
    .line 19
    const v5, 0x7f1204e5

    .line 20
    .line 21
    .line 22
    const v6, 0x7f0800fa

    .line 23
    .line 24
    .line 25
    const-string v2, "MarkAsRead"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, "mark_as_read"

    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 34
    .line 35
    const v6, 0x7f1204e2

    .line 36
    .line 37
    .line 38
    const v7, 0x7f0800d7

    .line 39
    .line 40
    .line 41
    const-string v3, "Delete"

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    const-string v5, "delete"

    .line 45
    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 50
    .line 51
    const v7, 0x7f1204e8

    .line 52
    .line 53
    .line 54
    const v8, 0x7f080118

    .line 55
    .line 56
    .line 57
    const-string v4, "Star"

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    const-string v6, "star"

    .line 61
    .line 62
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 66
    .line 67
    const v8, 0x7f1204e0

    .line 68
    .line 69
    .line 70
    const v9, 0x7f0800be

    .line 71
    .line 72
    .line 73
    const-string v5, "Archive"

    .line 74
    .line 75
    const/4 v6, 0x4

    .line 76
    const-string v7, "archive"

    .line 77
    .line 78
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 82
    .line 83
    const v9, 0x7f1204e7

    .line 84
    .line 85
    .line 86
    const v10, 0x7f08010e

    .line 87
    .line 88
    .line 89
    const-string v6, "Spam"

    .line 90
    .line 91
    const/4 v7, 0x5

    .line 92
    const-string v8, "spam"

    .line 93
    .line 94
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x6

    .line 98
    new-array v6, v6, [Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    aput-object v0, v6, v7

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    aput-object v1, v6, v0

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    aput-object v2, v6, v0

    .line 108
    .line 109
    const/4 v0, 0x3

    .line 110
    aput-object v3, v6, v0

    .line 111
    .line 112
    const/4 v0, 0x4

    .line 113
    aput-object v4, v6, v0

    .line 114
    .line 115
    const/4 v0, 0x5

    .line 116
    aput-object v5, v6, v0

    .line 117
    .line 118
    sput-object v6, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->$VALUES:[Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 119
    .line 120
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 121
    .line 122
    invoke-direct {v0, v6}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 126
    .line 127
    new-instance v0, Landroidx/transition/Transition$1;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->Companion:Landroidx/transition/Transition$1;

    .line 133
    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->token:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->labelRes:I

    .line 7
    .line 8
    iput p5, p0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->iconRes:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;->$VALUES:[Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/ui/settings/notificationactions/MessageNotificationAction;

    .line 8
    .line 9
    return-object v0
.end method
