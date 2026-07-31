.class public final Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo99;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/CombinedSettingsUpgrader;


# virtual methods
.method public final upgrade(Lcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;
    .locals 12

    .line 1
    iget-object p0, p1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->settings:Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "folderSyncMode"

    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lnet/thunderbird/core/android/account/FolderMode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v1

    .line 18
    :goto_0
    if-nez p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->folders:Ljava/util/List;

    .line 23
    .line 24
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    .line 26
    const/16 v2, 0xa

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_f

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 50
    .line 51
    iget-object v3, v2, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->settings:Ljava/util/Map;

    .line 52
    .line 53
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v2, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->settings:Ljava/util/Map;

    .line 59
    .line 60
    const-string v5, "syncMode"

    .line 61
    .line 62
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    instance-of v6, v5, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 67
    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    check-cast v5, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v5, v1

    .line 74
    :goto_2
    sget-object v6, Lcom/fsck/k9/preferences/legacy/FolderClass;->NO_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 75
    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    move-object v5, v6

    .line 79
    :cond_3
    sget-object v8, Lcom/fsck/k9/preferences/legacy/FolderClass;->INHERITED:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 80
    .line 81
    if-eq v5, v8, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object v5, v1

    .line 85
    :goto_3
    if-nez v5, :cond_9

    .line 86
    .line 87
    const-string v5, "displayMode"

    .line 88
    .line 89
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    instance-of v5, v3, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    check-cast v3, Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move-object v3, v1

    .line 101
    :goto_4
    if-nez v3, :cond_6

    .line 102
    .line 103
    move-object v3, v6

    .line 104
    :cond_6
    if-eq v3, v8, :cond_7

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_7
    move-object v3, v1

    .line 108
    :goto_5
    if-nez v3, :cond_8

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_8
    move-object v6, v3

    .line 112
    goto :goto_6

    .line 113
    :cond_9
    move-object v6, v5

    .line 114
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/4 v5, 0x0

    .line 119
    if-eqz v3, :cond_e

    .line 120
    .line 121
    const/4 v8, 0x1

    .line 122
    if-eq v3, v8, :cond_a

    .line 123
    .line 124
    const/4 v9, 0x2

    .line 125
    sget-object v10, Lcom/fsck/k9/preferences/legacy/FolderClass;->FIRST_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 126
    .line 127
    if-eq v3, v9, :cond_d

    .line 128
    .line 129
    const/4 v9, 0x3

    .line 130
    sget-object v11, Lcom/fsck/k9/preferences/legacy/FolderClass;->SECOND_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 131
    .line 132
    if-eq v3, v9, :cond_c

    .line 133
    .line 134
    const/4 v9, 0x4

    .line 135
    if-ne v3, v9, :cond_b

    .line 136
    .line 137
    if-eq v6, v11, :cond_e

    .line 138
    .line 139
    :cond_a
    :goto_7
    move v5, v8

    .line 140
    goto :goto_8

    .line 141
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 142
    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_c
    if-eq v6, v10, :cond_a

    .line 146
    .line 147
    if-ne v6, v11, :cond_e

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_d
    if-ne v6, v10, :cond_e

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_e
    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v5, "syncEnabled"

    .line 158
    .line 159
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget-object v2, v2, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 165
    .line 166
    invoke-direct {v3, v2, v4}, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_f
    const/4 v6, 0x0

    .line 175
    const/16 v8, 0x3f

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v5, 0x0

    .line 180
    move-object v2, p1

    .line 181
    invoke-static/range {v2 .. v8}, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->copy$default(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0
.end method
