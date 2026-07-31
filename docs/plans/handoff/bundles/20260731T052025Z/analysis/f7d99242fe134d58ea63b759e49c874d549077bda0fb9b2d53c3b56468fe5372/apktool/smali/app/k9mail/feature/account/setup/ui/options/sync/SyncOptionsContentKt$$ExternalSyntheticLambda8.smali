.class public final synthetic Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/res/Resources;)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;->f$0:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContentKt$$ExternalSyntheticLambda8;->f$0:Landroid/content/res/Resources;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_2
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :pswitch_3
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p0}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersScreenKt;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_4
    check-cast p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget p1, p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailCheckFrequency;->minutes:I

    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    if-ne p1, v0, :cond_0

    .line 72
    .line 73
    const p1, 0x7f12018d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0x3c

    .line 85
    .line 86
    if-gt v2, p1, :cond_1

    .line 87
    .line 88
    if-ge p1, v0, :cond_1

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v0, v2, v1

    .line 97
    .line 98
    const v0, 0x7f100001

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    div-int/2addr p1, v0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v0, v2, v1

    .line 117
    .line 118
    const/high16 v0, 0x7f100000

    .line 119
    .line 120
    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    :goto_0
    return-object p0

    .line 128
    :pswitch_5
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p0}, Landroidx/room/util/RelationUtil;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :pswitch_6
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p0}, Landroidx/core/util/DebugUtils;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_7
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {p1, p0}, Landroidx/core/util/DebugUtils;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_8
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-static {p1, p0}, Landroidx/room/util/RelationUtil;->toResourceString(Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Landroid/content/res/Resources;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :pswitch_9
    check-cast p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iget p1, p1, Lapp/k9mail/feature/account/setup/domain/entity/EmailDisplayCount;->count:I

    .line 177
    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    new-array v2, v2, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v0, v2, v1

    .line 185
    .line 186
    const v0, 0x7f100002

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
