.class public final Lnet/thunderbird/feature/account/storage/legacy/LegacyProfileDtoStorageHandler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final delete(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 1

    .line 1
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, "."

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, "description"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3, p1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "chipColor"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p1}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "avatarType"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p3, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p0, "avatarMonogram"

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p3, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string p0, "avatarImageUri"

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p3, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "avatarIconName"

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p3, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->remove(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final load(Ljava/lang/Object;Lnet/thunderbird/core/preference/storage/InMemoryStorage;)V
    .locals 6

    .line 1
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "."

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "description"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "chipColor"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const v2, 0x99cc

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setChipColor(I)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 70
    .line 71
    .line 72
    const-string p0, "avatarType"

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2, p0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    :try_start_0
    invoke-static {v2}, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 85
    .line 86
    .line 87
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    if-eqz p0, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    move-object p1, v0

    .line 93
    const-string p2, "] value ["

    .line 94
    .line 95
    const-string v0, "] "

    .line 96
    .line 97
    const-string v3, "Unable to convert stored key ["

    .line 98
    .line 99
    invoke-static {v3, p0, p2, v2, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-class p2, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 104
    .line 105
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "to enum of type "

    .line 116
    .line 117
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {}, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->values()[Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/4 v4, 0x0

    .line 135
    const/16 v5, 0x3f

    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "Valid values: "

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p0, p2, v0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_0
    sget-object p0, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->MONOGRAM:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 155
    .line 156
    :goto_0
    const-string v1, "avatarMonogram"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p2, v1}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v2, "avatarImageUri"

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p2, v2}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v3, "avatarIconName"

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p2, v0}, Lnet/thunderbird/core/preference/storage/InMemoryStorage;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    new-instance v0, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 187
    .line 188
    invoke-direct {v0, p0, v1, v2, p2}, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;-><init>(Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setAvatar(Lnet/thunderbird/feature/account/storage/profile/AvatarDto;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final save(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lnet/thunderbird/core/preference/storage/InMemoryStorage;Lcom/fsck/k9/preferences/K9StorageEditor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "."

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "description"

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p3, p2, v1}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "chipColor"

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p3, p2, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lokhttp3/ConnectionPool;-><init>(Lnet/thunderbird/feature/account/AccountId;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAvatar()Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "avatarType"

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarType:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p3, p1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "avatarMonogram"

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v0, p0, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarMonogram:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p3, p1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string p1, "avatarImageUri"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v0, p0, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarImageUri:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p3, p1, v0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string p1, "avatarIconName"

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lokhttp3/ConnectionPool;->create(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p0, p0, Lnet/thunderbird/feature/account/storage/profile/AvatarDto;->avatarIconName:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p3, p1, p0}, Lcom/fsck/k9/preferences/K9StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
