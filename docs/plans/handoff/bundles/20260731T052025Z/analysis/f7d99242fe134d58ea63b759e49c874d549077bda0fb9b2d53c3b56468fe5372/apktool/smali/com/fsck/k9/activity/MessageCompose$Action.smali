.class public final enum Lcom/fsck/k9/activity/MessageCompose$Action;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

.field public static final enum REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;


# instance fields
.field public final titleResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 2
    .line 3
    const-string v1, "COMPOSE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0x7f12021a

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->COMPOSE:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 13
    .line 14
    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 15
    .line 16
    const v4, 0x7f12021d

    .line 17
    .line 18
    .line 19
    const-string v5, "REPLY"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct {v1, v5, v6, v4}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 26
    .line 27
    new-instance v4, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 28
    .line 29
    const v5, 0x7f12021e

    .line 30
    .line 31
    .line 32
    const-string v7, "REPLY_ALL"

    .line 33
    .line 34
    const/4 v8, 0x2

    .line 35
    invoke-direct {v4, v7, v8, v5}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v4, Lcom/fsck/k9/activity/MessageCompose$Action;->REPLY_ALL:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 39
    .line 40
    new-instance v5, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 41
    .line 42
    const v7, 0x7f12021b

    .line 43
    .line 44
    .line 45
    const-string v9, "FORWARD"

    .line 46
    .line 47
    const/4 v10, 0x3

    .line 48
    invoke-direct {v5, v9, v10, v7}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v5, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 52
    .line 53
    new-instance v7, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 54
    .line 55
    const v9, 0x7f12021c

    .line 56
    .line 57
    .line 58
    const-string v11, "FORWARD_AS_ATTACHMENT"

    .line 59
    .line 60
    const/4 v12, 0x4

    .line 61
    invoke-direct {v7, v11, v12, v9}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v7, Lcom/fsck/k9/activity/MessageCompose$Action;->FORWARD_AS_ATTACHMENT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 65
    .line 66
    new-instance v9, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 67
    .line 68
    const-string v11, "EDIT_DRAFT"

    .line 69
    .line 70
    const/4 v13, 0x5

    .line 71
    invoke-direct {v9, v11, v13, v3}, Lcom/fsck/k9/activity/MessageCompose$Action;-><init>(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    sput-object v9, Lcom/fsck/k9/activity/MessageCompose$Action;->EDIT_DRAFT:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    new-array v3, v3, [Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 78
    .line 79
    aput-object v0, v3, v2

    .line 80
    .line 81
    aput-object v1, v3, v6

    .line 82
    .line 83
    aput-object v4, v3, v8

    .line 84
    .line 85
    aput-object v5, v3, v10

    .line 86
    .line 87
    aput-object v7, v3, v12

    .line 88
    .line 89
    aput-object v9, v3, v13

    .line 90
    .line 91
    sput-object v3, Lcom/fsck/k9/activity/MessageCompose$Action;->$VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/fsck/k9/activity/MessageCompose$Action;->titleResource:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageCompose$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/activity/MessageCompose$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/activity/MessageCompose$Action;->$VALUES:[Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fsck/k9/activity/MessageCompose$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 8
    .line 9
    return-object v0
.end method
