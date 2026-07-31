.class public final enum Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

.field public static final enum UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;


# instance fields
.field public final canEncrypt:Z

.field public final isConfirmed:Z

.field public final isMutual:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "NO_RECIPIENTS"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v2, "UNAVAILABLE"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->UNAVAILABLE:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 22
    .line 23
    new-instance v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v3, "DISCOURAGE_UNCONFIRMED"

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 34
    .line 35
    new-instance v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v4, "DISCOURAGE_CONFIRMED"

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    const/4 v6, 0x1

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 44
    .line 45
    .line 46
    sput-object v3, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->DISCOURAGE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 47
    .line 48
    new-instance v4, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const-string v5, "AVAILABLE_UNCONFIRMED"

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 58
    .line 59
    new-instance v5, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    const/4 v10, 0x0

    .line 63
    const-string v6, "AVAILABLE_CONFIRMED"

    .line 64
    .line 65
    const/4 v7, 0x5

    .line 66
    const/4 v8, 0x1

    .line 67
    invoke-direct/range {v5 .. v10}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 68
    .line 69
    .line 70
    sput-object v5, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->AVAILABLE_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 71
    .line 72
    new-instance v6, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 73
    .line 74
    const/4 v11, 0x1

    .line 75
    const-string v7, "RECOMMENDED_UNCONFIRMED"

    .line 76
    .line 77
    const/4 v8, 0x6

    .line 78
    invoke-direct/range {v6 .. v11}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_UNCONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 82
    .line 83
    new-instance v7, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 84
    .line 85
    const/4 v12, 0x1

    .line 86
    const-string v8, "RECOMMENDED_CONFIRMED"

    .line 87
    .line 88
    const/4 v9, 0x7

    .line 89
    const/4 v10, 0x1

    .line 90
    invoke-direct/range {v7 .. v12}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->RECOMMENDED_CONFIRMED:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 94
    .line 95
    new-instance v8, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 96
    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    const-string v9, "ERROR"

    .line 100
    .line 101
    const/16 v10, 0x8

    .line 102
    .line 103
    const/4 v11, 0x0

    .line 104
    invoke-direct/range {v8 .. v13}, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;-><init>(Ljava/lang/String;IZZZ)V

    .line 105
    .line 106
    .line 107
    sput-object v8, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->ERROR:Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 108
    .line 109
    const/16 v9, 0x9

    .line 110
    .line 111
    new-array v9, v9, [Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    aput-object v0, v9, v10

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    aput-object v1, v9, v0

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    aput-object v2, v9, v0

    .line 121
    .line 122
    const/4 v0, 0x3

    .line 123
    aput-object v3, v9, v0

    .line 124
    .line 125
    const/4 v0, 0x4

    .line 126
    aput-object v4, v9, v0

    .line 127
    .line 128
    const/4 v0, 0x5

    .line 129
    aput-object v5, v9, v0

    .line 130
    .line 131
    const/4 v0, 0x6

    .line 132
    aput-object v6, v9, v0

    .line 133
    .line 134
    const/4 v0, 0x7

    .line 135
    aput-object v7, v9, v0

    .line 136
    .line 137
    const/16 v0, 0x8

    .line 138
    .line 139
    aput-object v8, v9, v0

    .line 140
    .line 141
    sput-object v9, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->$VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 142
    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->canEncrypt:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isConfirmed:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->isMutual:Z

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;->$VALUES:[Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/message/AutocryptStatusInteractor$RecipientAutocryptStatusType;

    .line 8
    .line 9
    return-object v0
.end method
