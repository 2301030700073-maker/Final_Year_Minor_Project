.class public final Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo98;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/preferences/CombinedSettingsUpgrader;


# direct methods
.method public static getFolderClass$2(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;
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


# virtual methods
.method public final upgrade(Lcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;
    .locals 12

    .line 1
    iget-object p0, p1, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->settings:Ljava/util/Map;

    .line 2
    .line 3
    const-string v0, "folderPushMode"

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
    if-eqz v2, :cond_b

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
    const-string v5, "pushMode"

    .line 61
    .line 62
    invoke-static {v5, v3}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo98;->getFolderClass$2(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v6, Lcom/fsck/k9/preferences/legacy/FolderClass;->INHERITED:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 67
    .line 68
    if-eq v5, v6, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v5, v1

    .line 72
    :goto_2
    if-nez v5, :cond_5

    .line 73
    .line 74
    const-string v5, "syncMode"

    .line 75
    .line 76
    invoke-static {v5, v3}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo98;->getFolderClass$2(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eq v5, v6, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object v5, v1

    .line 84
    :goto_3
    if-nez v5, :cond_5

    .line 85
    .line 86
    const-string v5, "displayMode"

    .line 87
    .line 88
    invoke-static {v5, v3}, Lcom/fsck/k9/preferences/upgrader/CombinedSettingsUpgraderTo98;->getFolderClass$2(Ljava/lang/String;Ljava/util/Map;)Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-eq v3, v6, :cond_4

    .line 93
    .line 94
    move-object v5, v3

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    move-object v5, v1

    .line 97
    :goto_4
    if-nez v5, :cond_5

    .line 98
    .line 99
    sget-object v5, Lcom/fsck/k9/preferences/legacy/FolderClass;->NO_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 100
    .line 101
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v6, 0x0

    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    const/4 v8, 0x1

    .line 109
    if-eq v3, v8, :cond_6

    .line 110
    .line 111
    const/4 v9, 0x2

    .line 112
    sget-object v10, Lcom/fsck/k9/preferences/legacy/FolderClass;->FIRST_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 113
    .line 114
    if-eq v3, v9, :cond_9

    .line 115
    .line 116
    const/4 v9, 0x3

    .line 117
    sget-object v11, Lcom/fsck/k9/preferences/legacy/FolderClass;->SECOND_CLASS:Lcom/fsck/k9/preferences/legacy/FolderClass;

    .line 118
    .line 119
    if-eq v3, v9, :cond_8

    .line 120
    .line 121
    const/4 v9, 0x4

    .line 122
    if-ne v3, v9, :cond_7

    .line 123
    .line 124
    if-eq v5, v11, :cond_a

    .line 125
    .line 126
    :cond_6
    :goto_5
    move v6, v8

    .line 127
    goto :goto_6

    .line 128
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_8
    if-eq v5, v10, :cond_6

    .line 133
    .line 134
    if-ne v5, v11, :cond_a

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_9
    if-ne v5, v10, :cond_a

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_a
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v5, "pushEnabled"

    .line 145
    .line 146
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v2, v2, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;->name:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v3, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 152
    .line 153
    invoke-direct {v3, v2, v4}, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_b
    const/4 v6, 0x0

    .line 161
    const/16 v8, 0x3f

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    const/4 v5, 0x0

    .line 166
    move-object v2, p1

    .line 167
    invoke-static/range {v2 .. v8}, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->copy$default(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0
.end method
