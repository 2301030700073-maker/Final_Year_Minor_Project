.class public final enum Lorg/schabi/newpipe/settings/tabs/Tab$Type;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;


# instance fields
.field private final tab:Lorg/schabi/newpipe/settings/tabs/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string v3, "BLANK"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v3, v4, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 16
    .line 17
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 18
    .line 19
    new-instance v3, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, "DEFAULT_KIOSK"

    .line 25
    .line 26
    invoke-direct {v1, v5, v2, v3}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 30
    .line 31
    new-instance v3, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 32
    .line 33
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    invoke-direct {v5, v6}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const-string v7, "SUBSCRIPTIONS"

    .line 40
    .line 41
    const/4 v8, 0x2

    .line 42
    invoke-direct {v3, v7, v8, v5}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 46
    .line 47
    new-instance v5, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 48
    .line 49
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    .line 50
    .line 51
    invoke-direct {v7, v4}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const-string v9, "FEED"

    .line 55
    .line 56
    const/4 v10, 0x3

    .line 57
    invoke-direct {v5, v9, v10, v7}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 58
    .line 59
    .line 60
    sput-object v5, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 61
    .line 62
    new-instance v7, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 63
    .line 64
    new-instance v9, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    .line 65
    .line 66
    invoke-direct {v9, v8}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string v11, "BOOKMARKS"

    .line 70
    .line 71
    invoke-direct {v7, v11, v6, v9}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 72
    .line 73
    .line 74
    sput-object v7, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 75
    .line 76
    new-instance v9, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 77
    .line 78
    new-instance v11, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    .line 79
    .line 80
    invoke-direct {v11, v10}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const-string v12, "HISTORY"

    .line 84
    .line 85
    const/4 v13, 0x5

    .line 86
    invoke-direct {v9, v12, v13, v11}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 87
    .line 88
    .line 89
    new-instance v11, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 90
    .line 91
    new-instance v12, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 92
    .line 93
    const-string v14, "<no-id>"

    .line 94
    .line 95
    const/4 v15, -0x1

    .line 96
    invoke-direct {v12, v15, v14}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v14, "KIOSK"

    .line 100
    .line 101
    move/from16 v16, v2

    .line 102
    .line 103
    const/4 v2, 0x6

    .line 104
    invoke-direct {v11, v14, v2, v12}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 105
    .line 106
    .line 107
    new-instance v12, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 108
    .line 109
    new-instance v14, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 110
    .line 111
    move/from16 v17, v2

    .line 112
    .line 113
    const-string v2, "<no-url>"

    .line 114
    .line 115
    move/from16 v18, v4

    .line 116
    .line 117
    const-string v4, "<no-name>"

    .line 118
    .line 119
    invoke-direct {v14, v2, v15, v4}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v2, "CHANNEL"

    .line 123
    .line 124
    const/4 v15, 0x7

    .line 125
    invoke-direct {v12, v2, v15, v14}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 129
    .line 130
    new-instance v14, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    .line 131
    .line 132
    move/from16 v19, v6

    .line 133
    .line 134
    move-object/from16 v20, v7

    .line 135
    .line 136
    const-wide/16 v6, -0x1

    .line 137
    .line 138
    invoke-direct {v14, v4, v6, v7}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(Ljava/lang/String;J)V

    .line 139
    .line 140
    .line 141
    move-wide/from16 v21, v6

    .line 142
    .line 143
    const-string v6, "PLAYLIST"

    .line 144
    .line 145
    const/16 v7, 0x8

    .line 146
    .line 147
    invoke-direct {v2, v6, v7, v14}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 151
    .line 152
    new-instance v14, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    .line 153
    .line 154
    move/from16 v23, v7

    .line 155
    .line 156
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    move/from16 v21, v8

    .line 161
    .line 162
    const v8, 0x7f0800e7

    .line 163
    .line 164
    .line 165
    invoke-direct {v14, v7, v4, v8}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Ljava/lang/Long;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    const-string v4, "FEEDGROUP"

    .line 169
    .line 170
    const/16 v7, 0x9

    .line 171
    .line 172
    invoke-direct {v6, v4, v7, v14}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    .line 173
    .line 174
    .line 175
    const/16 v4, 0xa

    .line 176
    .line 177
    new-array v4, v4, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 178
    .line 179
    aput-object v0, v4, v18

    .line 180
    .line 181
    aput-object v1, v4, v16

    .line 182
    .line 183
    aput-object v3, v4, v21

    .line 184
    .line 185
    aput-object v5, v4, v10

    .line 186
    .line 187
    aput-object v20, v4, v19

    .line 188
    .line 189
    aput-object v9, v4, v13

    .line 190
    .line 191
    aput-object v11, v4, v17

    .line 192
    .line 193
    aput-object v12, v4, v15

    .line 194
    .line 195
    aput-object v2, v4, v23

    .line 196
    .line 197
    aput-object v6, v4, v7

    .line 198
    .line 199
    sput-object v4, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->$VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 200
    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->$VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getTab()Lorg/schabi/newpipe/settings/tabs/Tab;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTabId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
