.class public final synthetic Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/FolderMapper;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccount;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccount;JI)V
    .locals 0

    .line 1
    iput p5, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 6
    .line 7
    iput-wide p3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$2:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final map(Lokhttp3/ConnectionPool;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x4

    .line 9
    iget-wide v5, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$2:J

    .line 10
    .line 11
    iget-object v7, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 12
    .line 13
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v9, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 20
    .line 21
    new-instance v10, Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 22
    .line 23
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v11

    .line 27
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v13

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v7, v5, v6}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getFolderType(Lokhttp3/ConnectionPool;Lnet/thunderbird/core/android/account/LegacyAccount;J)Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 35
    .line 36
    .line 37
    move-result-object v14

    .line 38
    iget-object v0, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/database/Cursor;

    .line 41
    .line 42
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-ne v1, v3, :cond_0

    .line 47
    .line 48
    move v15, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v15, v8

    .line 51
    :goto_0
    invoke-direct/range {v10 .. v15}, Lnet/thunderbird/feature/mail/folder/api/Folder;-><init>(JLjava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;Z)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v3, :cond_1

    .line 60
    .line 61
    move v11, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v11, v8

    .line 64
    :goto_1
    const/4 v1, 0x6

    .line 65
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v3, :cond_2

    .line 70
    .line 71
    move v12, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move v12, v8

    .line 74
    :goto_2
    const/4 v1, 0x7

    .line 75
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne v1, v3, :cond_3

    .line 80
    .line 81
    move v13, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v13, v8

    .line 84
    :goto_3
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-ne v1, v3, :cond_4

    .line 91
    .line 92
    move v14, v3

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move v14, v8

    .line 95
    :goto_4
    const/16 v1, 0x9

    .line 96
    .line 97
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v3, :cond_5

    .line 102
    .line 103
    move v15, v3

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    move v15, v8

    .line 106
    :goto_5
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-ne v0, v3, :cond_6

    .line 113
    .line 114
    move/from16 v16, v3

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_6
    move/from16 v16, v8

    .line 118
    .line 119
    :goto_6
    invoke-direct/range {v9 .. v16}, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;-><init>(Lnet/thunderbird/feature/mail/folder/api/Folder;ZZZZZZ)V

    .line 120
    .line 121
    .line 122
    return-object v9

    .line 123
    :pswitch_0
    move-object v2, v0

    .line 124
    new-instance v0, Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 125
    .line 126
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getId()J

    .line 127
    .line 128
    .line 129
    move-result-wide v9

    .line 130
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v7, v5, v6}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getFolderType(Lokhttp3/ConnectionPool;Lnet/thunderbird/core/android/account/LegacyAccount;J)Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Landroid/database/Cursor;

    .line 144
    .line 145
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-ne v1, v3, :cond_7

    .line 150
    .line 151
    move v5, v3

    .line 152
    :goto_7
    move-object v4, v2

    .line 153
    move-wide v1, v9

    .line 154
    move-object v3, v11

    .line 155
    goto :goto_8

    .line 156
    :cond_7
    move v5, v8

    .line 157
    goto :goto_7

    .line 158
    :goto_8
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/mail/folder/api/Folder;-><init>(JLjava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;Z)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
