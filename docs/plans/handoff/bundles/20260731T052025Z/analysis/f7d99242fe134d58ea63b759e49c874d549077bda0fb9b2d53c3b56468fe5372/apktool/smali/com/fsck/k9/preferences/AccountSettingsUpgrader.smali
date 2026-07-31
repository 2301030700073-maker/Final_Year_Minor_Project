.class public final Lcom/fsck/k9/preferences/AccountSettingsUpgrader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final combinedUpgraders:Ljava/util/Map;

.field public final folderSettingsUpgrader:Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final identitySettingsUpgrader:Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

.field public final latestVersion:I

.field public final serverSettingsUpgrader:Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

.field public final settingsDescriptions:Ljava/util/Map;

.field public final upgraders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;Lcom/fsck/k9/preferences/FolderSettingsUpgrader;Lcom/fsck/k9/preferences/ServerSettingsUpgrader;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/fsck/k9/preferences/CombinedSettingsUpgraders;->UPGRADERS:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->identitySettingsUpgrader:Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->folderSettingsUpgrader:Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->serverSettingsUpgrader:Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 24
    .line 25
    const/16 p1, 0x6f

    .line 26
    .line 27
    iput p1, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->latestVersion:I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->combinedUpgraders:Ljava/util/Map;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final upgradeToVersion(IILcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    iget-object v5, v7, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->settings:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 12
    .line 13
    move/from16 v1, p1

    .line 14
    .line 15
    move/from16 v2, p2

    .line 16
    .line 17
    invoke-static/range {v1 .. v6}, Lorg/slf4j/helpers/Util;->upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    iget-object v3, v7, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->incoming:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->serverSettingsUpgrader:Lcom/fsck/k9/preferences/ServerSettingsUpgrader;

    .line 24
    .line 25
    invoke-virtual {v4, v1, v2, v3}, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->upgrade(IILcom/fsck/k9/preferences/ValidatedSettings$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v3, v7, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->outgoing:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 30
    .line 31
    invoke-virtual {v4, v1, v2, v3}, Lcom/fsck/k9/preferences/ServerSettingsUpgrader;->upgrade(IILcom/fsck/k9/preferences/ValidatedSettings$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    iget-object v3, v7, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->identities:Ljava/util/List;

    .line 36
    .line 37
    new-instance v11, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v12, 0xa

    .line 40
    .line 41
    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v14, v3

    .line 63
    check-cast v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;

    .line 64
    .line 65
    iget-object v3, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->identitySettingsUpgrader:Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    if-ne v2, v1, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget-object v4, v3, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 77
    .line 78
    move-object v5, v4

    .line 79
    iget-object v4, v3, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 80
    .line 81
    move-object v6, v5

    .line 82
    iget-object v5, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->settings:Ljava/util/Map;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/fsck/k9/preferences/IdentitySettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 85
    .line 86
    move-object v15, v6

    .line 87
    move-object v6, v3

    .line 88
    move-object v3, v15

    .line 89
    invoke-static/range {v1 .. v6}, Lorg/slf4j/helpers/Util;->upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->name:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v5, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->email:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v6, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;->description:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v14, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;

    .line 103
    .line 104
    invoke-direct {v14, v4, v5, v6, v3}, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, v7, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->folders:Ljava/util/List;

    .line 112
    .line 113
    new-instance v13, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    move-object v14, v3

    .line 137
    check-cast v14, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 138
    .line 139
    iget-object v3, v0, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->folderSettingsUpgrader:Lcom/fsck/k9/preferences/FolderSettingsUpgrader;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    if-ne v2, v1, :cond_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    iget-object v4, v3, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;->upgraders:Ljava/util/Map;

    .line 151
    .line 152
    move-object v5, v4

    .line 153
    iget-object v4, v3, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;->settingsDescriptions:Ljava/util/Map;

    .line 154
    .line 155
    move-object v6, v5

    .line 156
    iget-object v5, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->settings:Ljava/util/Map;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/fsck/k9/preferences/FolderSettingsUpgrader;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 159
    .line 160
    move-object v15, v6

    .line 161
    move-object v6, v3

    .line 162
    move-object v3, v15

    .line 163
    invoke-static/range {v1 .. v6}, Lorg/slf4j/helpers/Util;->upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v1, v14, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 168
    .line 169
    new-instance v14, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 170
    .line 171
    invoke-direct {v14, v1, v3}, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    .line 173
    .line 174
    :goto_3
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move/from16 v1, p1

    .line 178
    .line 179
    move/from16 v2, p2

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    const/4 v6, 0x3

    .line 183
    move-object v0, v7

    .line 184
    move-object v3, v8

    .line 185
    move-object v1, v9

    .line 186
    move-object v2, v10

    .line 187
    move-object v4, v11

    .line 188
    move-object v5, v13

    .line 189
    invoke-static/range {v0 .. v6}, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->copy$default(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0
.end method
