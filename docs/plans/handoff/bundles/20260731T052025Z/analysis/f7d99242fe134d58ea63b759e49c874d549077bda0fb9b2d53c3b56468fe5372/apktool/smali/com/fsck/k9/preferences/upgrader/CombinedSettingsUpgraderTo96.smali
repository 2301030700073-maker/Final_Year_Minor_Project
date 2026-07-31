.class public final Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/CombinedSettingsUpgrader;


# direct methods
.method public static getFolderClass$1(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/fsck/k9/preferences/legacy/FolderClass;->NO_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 16
    .line 17
    :cond_1
    return-object p0
.end method

.method public static getFolderNameUnlessInbox(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const-string p1, "INBOX"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final upgrade(Lcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;
    .locals 13

    .line 1
    iget-object p0, p1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->settings:Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "folderNotifyNewMailMode"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v2

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;

    .line 21
    .line 22
    :cond_1
    new-instance v1, Lkotlin/collections/builders/SetBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "trashFolderName"

    .line 28
    .line 29
    invoke-static {v3, p0}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderNameUnlessInbox(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    const-string v3, "draftsFolderName"

    .line 39
    .line 40
    invoke-static {v3, p0}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderNameUnlessInbox(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    const-string v3, "spamFolderName"

    .line 50
    .line 51
    invoke-static {v3, p0}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderNameUnlessInbox(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_4
    const-string v3, "sentFolderName"

    .line 61
    .line 62
    invoke-static {v3, p0}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderNameUnlessInbox(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget-object v1, p1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->folders:Ljava/util/List;

    .line 76
    .line 77
    new-instance v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    const/16 v3, 0xa

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_11

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 103
    .line 104
    iget-object v4, v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v5, v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->settings:Ljava/util/Map;

    .line 107
    .line 108
    iget-object v6, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 109
    .line 110
    invoke-virtual {v6, v4}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/4 v6, 0x0

    .line 115
    if-eqz v4, :cond_6

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_6
    const-string v4, "notifyMode"

    .line 120
    .line 121
    invoke-static {v4, v5}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderClass$1(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object v7, Lcom/fsck/k9/preferences/legacy/FolderClass;->INHERITED:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 126
    .line 127
    if-eq v4, v7, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    move-object v4, v2

    .line 131
    :goto_2
    if-nez v4, :cond_b

    .line 132
    .line 133
    const-string v4, "pushMode"

    .line 134
    .line 135
    invoke-static {v4, v5}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderClass$1(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eq v4, v7, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    move-object v4, v2

    .line 143
    :goto_3
    if-nez v4, :cond_b

    .line 144
    .line 145
    const-string v4, "syncMode"

    .line 146
    .line 147
    invoke-static {v4, v5}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderClass$1(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-eq v4, v7, :cond_9

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_9
    move-object v4, v2

    .line 155
    :goto_4
    if-nez v4, :cond_b

    .line 156
    .line 157
    const-string v4, "displayMode"

    .line 158
    .line 159
    invoke-static {v4, v5}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo96;->getFolderClass$1(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-eq v4, v7, :cond_a

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_a
    move-object v4, v2

    .line 167
    :goto_5
    if-nez v4, :cond_b

    .line 168
    .line 169
    sget-object v4, Lcom/fsck/k9/preferences/legacy/FolderClass;->NO_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 170
    .line 171
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_10

    .line 176
    .line 177
    const/4 v9, 0x1

    .line 178
    if-eq v7, v9, :cond_c

    .line 179
    .line 180
    const/4 v10, 0x2

    .line 181
    sget-object v11, Lcom/fsck/k9/preferences/legacy/FolderClass;->FIRST_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 182
    .line 183
    if-eq v7, v10, :cond_f

    .line 184
    .line 185
    const/4 v10, 0x3

    .line 186
    sget-object v12, Lcom/fsck/k9/preferences/legacy/FolderClass;->SECOND_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 187
    .line 188
    if-eq v7, v10, :cond_e

    .line 189
    .line 190
    const/4 v10, 0x4

    .line 191
    if-ne v7, v10, :cond_d

    .line 192
    .line 193
    if-eq v4, v12, :cond_10

    .line 194
    .line 195
    :cond_c
    :goto_6
    move v6, v9

    .line 196
    goto :goto_7

    .line 197
    :cond_d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 198
    .line 199
    .line 200
    return-object v2

    .line 201
    :cond_e
    if-eq v4, v11, :cond_c

    .line 202
    .line 203
    if-ne v4, v12, :cond_10

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_f
    if-ne v4, v11, :cond_10

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_10
    :goto_7
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 210
    .line 211
    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 212
    .line 213
    .line 214
    const-string v5, "notificationsEnabled"

    .line 215
    .line 216
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-object v3, v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v5, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 226
    .line 227
    invoke-direct {v5, v3, v4}, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :cond_11
    const/4 v7, 0x0

    .line 236
    const/16 v9, 0x3f

    .line 237
    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v6, 0x0

    .line 241
    move-object v3, p1

    .line 242
    invoke-static/range {v3 .. v9}, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->copy$default(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0
.end method
