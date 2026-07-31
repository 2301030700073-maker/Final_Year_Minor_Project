.class public final Lcom/bumptech/glide/GlideExperiments;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final experiments:Ljava/util/Map;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    iput-object p1, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    return-void

    .line 153
    :pswitch_0
    sget-object p1, Lcom/fsck/k9/preferences/ServerSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/fsck/k9/controller/PendingCommandSerializer;->INSTANCE:Lcom/fsck/k9/controller/PendingCommandSerializer;

    .line 8
    .line 9
    new-instance p1, Lokhttp3/Headers$Builder;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/squareup/moshi/Moshi;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/squareup/moshi/Moshi;-><init>(Lokhttp3/Headers$Builder;)V

    .line 19
    .line 20
    .line 21
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingAppend;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v1, Lkotlin/Pair;

    .line 28
    .line 29
    const-string v2, "append"

    .line 30
    .line 31
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingMarkAllAsRead;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v2, Lkotlin/Pair;

    .line 41
    .line 42
    const-string v3, "mark_all_as_read"

    .line 43
    .line 44
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingSetFlag;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v3, Lkotlin/Pair;

    .line 54
    .line 55
    const-string v4, "set_flag"

    .line 56
    .line 57
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingDelete;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v4, Lkotlin/Pair;

    .line 67
    .line 68
    const-string v5, "delete"

    .line 69
    .line 70
    invoke-direct {v4, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingExpunge;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v5, Lkotlin/Pair;

    .line 80
    .line 81
    const-string v6, "expunge"

    .line 82
    .line 83
    invoke-direct {v5, v6, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingMoveOrCopy;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v6, Lkotlin/Pair;

    .line 93
    .line 94
    const-string v7, "move_or_copy"

    .line 95
    .line 96
    invoke-direct {v6, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-class p1, Lcom/fsck/k9/storage/migrations/LegacyPendingMoveAndMarkAsRead;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v0, Lkotlin/Pair;

    .line 106
    .line 107
    const-string v7, "move_and_mark_as_read"

    .line 108
    .line 109
    invoke-direct {v0, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x7

    .line 113
    new-array p1, p1, [Lkotlin/Pair;

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    aput-object v1, p1, v7

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    aput-object v2, p1, v1

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    aput-object v3, p1, v1

    .line 123
    .line 124
    const/4 v1, 0x3

    .line 125
    aput-object v4, p1, v1

    .line 126
    .line 127
    const/4 v1, 0x4

    .line 128
    aput-object v5, p1, v1

    .line 129
    .line 130
    const/4 v1, 0x5

    .line 131
    aput-object v6, p1, v1

    .line 132
    .line 133
    const/4 v1, 0x6

    .line 134
    aput-object v0, p1, v1

    .line 135
    .line 136
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 145
    .line 146
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/Jobs;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    .line 149
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/Jobs;->jobs:Ljava/util/HashMap;

    .line 150
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public validate(ILcom/fsck/k9/preferences/SettingsFile$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/collections/builders/MapBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v2, "host"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const-string v2, "port"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "connectionSecurity"

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    :cond_2
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "authenticationType"

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    :cond_3
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-string/jumbo v4, "username"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    .line 70
    :cond_4
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    const-string v4, "password"

    .line 75
    .line 76
    invoke-virtual {v0, v4, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    :cond_5
    iget-object v1, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    const-string v4, "clientCertificateAlias"

    .line 87
    .line 88
    invoke-virtual {v0, v4, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-virtual {v0}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object p0, p0, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-static {p1, p0, v0, v1}, Landroidx/sqlite/SQLite;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    instance-of p1, p1, Ljava/lang/String;

    .line 107
    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    instance-of p1, p1, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    new-instance p1, Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 119
    .line 120
    iget-object v0, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p2, p2, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

    .line 135
    .line 136
    if-nez p2, :cond_7

    .line 137
    .line 138
    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 139
    .line 140
    :cond_7
    invoke-direct {p1, v0, p0, p2}, Lcom/fsck/k9/preferences/ValidatedSettings$Server;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :cond_8
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 145
    .line 146
    const-string p1, "Missing \'connectionSecurity\' value"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_9
    new-instance p0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 153
    .line 154
    const-string p1, "Missing \'authenticationType\' value"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
.end method
