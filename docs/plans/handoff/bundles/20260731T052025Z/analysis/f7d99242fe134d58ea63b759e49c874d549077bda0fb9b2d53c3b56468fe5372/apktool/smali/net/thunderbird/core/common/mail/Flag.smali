.class public final enum Lnet/thunderbird/core/common/mail/Flag;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/thunderbird/core/common/mail/Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum DELETED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum DRAFT:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum RECENT:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum SEEN:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_DESTROYED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_DRAFT_OPENPGP_INLINE:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_MIGRATED_FROM_V50:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_REMOTE_COPY_STARTED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_SEND_FAILED:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_SEND_IN_PROGRESS:Lnet/thunderbird/core/common/mail/Flag;

.field public static final enum X_SUBJECT_DECRYPTED:Lnet/thunderbird/core/common/mail/Flag;


# direct methods
.method private static final synthetic $values()[Lnet/thunderbird/core/common/mail/Flag;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [Lnet/thunderbird/core/common/mail/Flag;

    .line 4
    .line 5
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->DRAFT:Lnet/thunderbird/core/common/mail/Flag;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->RECENT:Lnet/thunderbird/core/common/mail/Flag;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_DESTROYED:Lnet/thunderbird/core/common/mail/Flag;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_FAILED:Lnet/thunderbird/core/common/mail/Flag;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_IN_PROGRESS:Lnet/thunderbird/core/common/mail/Flag;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_REMOTE_COPY_STARTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_MIGRATED_FROM_V50:Lnet/thunderbird/core/common/mail/Flag;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lnet/thunderbird/core/common/mail/Flag;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lnet/thunderbird/core/common/mail/Flag;->X_SUBJECT_DECRYPTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 2
    .line 3
    const-string v1, "DELETED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 12
    .line 13
    const-string v1, "SEEN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->SEEN:Lnet/thunderbird/core/common/mail/Flag;

    .line 20
    .line 21
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 22
    .line 23
    const-string v1, "ANSWERED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->ANSWERED:Lnet/thunderbird/core/common/mail/Flag;

    .line 30
    .line 31
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 32
    .line 33
    const-string v1, "FLAGGED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 40
    .line 41
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 42
    .line 43
    const-string v1, "DRAFT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->DRAFT:Lnet/thunderbird/core/common/mail/Flag;

    .line 50
    .line 51
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 52
    .line 53
    const-string v1, "RECENT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->RECENT:Lnet/thunderbird/core/common/mail/Flag;

    .line 60
    .line 61
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 62
    .line 63
    const-string v1, "FORWARDED"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->FORWARDED:Lnet/thunderbird/core/common/mail/Flag;

    .line 70
    .line 71
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 72
    .line 73
    const-string v1, "X_DESTROYED"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_DESTROYED:Lnet/thunderbird/core/common/mail/Flag;

    .line 80
    .line 81
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 82
    .line 83
    const-string v1, "X_SEND_FAILED"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_FAILED:Lnet/thunderbird/core/common/mail/Flag;

    .line 91
    .line 92
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 93
    .line 94
    const-string v1, "X_SEND_IN_PROGRESS"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_SEND_IN_PROGRESS:Lnet/thunderbird/core/common/mail/Flag;

    .line 102
    .line 103
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 104
    .line 105
    const-string v1, "X_DOWNLOADED_FULL"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 113
    .line 114
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 115
    .line 116
    const-string v1, "X_DOWNLOADED_PARTIAL"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_PARTIAL:Lnet/thunderbird/core/common/mail/Flag;

    .line 124
    .line 125
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 126
    .line 127
    const-string v1, "X_REMOTE_COPY_STARTED"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_REMOTE_COPY_STARTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 135
    .line 136
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 137
    .line 138
    const-string v1, "X_MIGRATED_FROM_V50"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_MIGRATED_FROM_V50:Lnet/thunderbird/core/common/mail/Flag;

    .line 146
    .line 147
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 148
    .line 149
    const-string v1, "X_DRAFT_OPENPGP_INLINE"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_DRAFT_OPENPGP_INLINE:Lnet/thunderbird/core/common/mail/Flag;

    .line 157
    .line 158
    new-instance v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 159
    .line 160
    const-string v1, "X_SUBJECT_DECRYPTED"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lnet/thunderbird/core/common/mail/Flag;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->X_SUBJECT_DECRYPTED:Lnet/thunderbird/core/common/mail/Flag;

    .line 168
    .line 169
    invoke-static {}, Lnet/thunderbird/core/common/mail/Flag;->$values()[Lnet/thunderbird/core/common/mail/Flag;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->$VALUES:[Lnet/thunderbird/core/common/mail/Flag;

    .line 174
    .line 175
    invoke-static {v0}, Lokio/Okio;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lnet/thunderbird/core/common/mail/Flag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 180
    .line 181
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/Flag;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/common/mail/Flag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/common/mail/Flag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/common/mail/Flag;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->$VALUES:[Lnet/thunderbird/core/common/mail/Flag;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/common/mail/Flag;

    .line 8
    .line 9
    return-object v0
.end method
