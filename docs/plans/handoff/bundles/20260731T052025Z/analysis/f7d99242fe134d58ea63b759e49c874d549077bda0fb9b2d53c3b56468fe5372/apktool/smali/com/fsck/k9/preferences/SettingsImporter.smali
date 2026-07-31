.class public final Lcom/fsck/k9/preferences/SettingsImporter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountSettingsUpgrader:Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

.field public final accountSettingsValidator:Lcom/fsck/k9/preferences/AccountSettingsValidator;

.field public final accountSettingsWriter:Lcom/fsck/k9/preferences/AccountSettingsWriter;

.field public final generalSettingsWriter:Lcom/fsck/k9/preferences/GeneralSettingsWriter;

.field public final unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/preferences/SettingsFileParser;Lcom/fsck/k9/preferences/GeneralSettingsValidator;Lcom/fsck/k9/preferences/AccountSettingsValidator;Lcom/fsck/k9/preferences/GeneralSettingsUpgrader;Lcom/fsck/k9/preferences/AccountSettingsUpgrader;Lcom/fsck/k9/preferences/GeneralSettingsWriter;Lcom/fsck/k9/preferences/AccountSettingsWriter;Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsValidator:Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsUpgrader:Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/fsck/k9/preferences/SettingsImporter;->generalSettingsWriter:Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsWriter:Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/fsck/k9/preferences/SettingsImporter;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 13
    .line 14
    return-void
.end method

.method public static filterSettings(Lcom/fsck/k9/preferences/SettingsFile$Contents;ZLjava/util/List;)Lcom/fsck/k9/preferences/SettingsFile$Contents;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Contents;->accounts:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Contents;->globalSettings:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v3, "Was asked to import global settings but none found."

    .line 11
    .line 12
    new-array v4, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v3, v4}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    if-gez v3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v5, 0x3

    .line 27
    if-ge v3, v5, :cond_2

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    .line 33
    .line 34
    if-ge v3, v5, :cond_3

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    const/high16 v5, 0x3f400000    # 0.75f

    .line 38
    .line 39
    div-float/2addr v3, v5

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    .line 42
    add-float/2addr v3, v5

    .line 43
    float-to-int v3, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const v3, 0x7fffffff

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {v4, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 66
    .line 67
    iget-object v5, v5, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    new-array v6, v6, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v5, v6, v2

    .line 99
    .line 100
    const-string v5, "Was asked to import account %s. But this account wasn\'t found."

    .line 101
    .line 102
    invoke-static {v5, v6}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    if-eqz p1, :cond_7

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    const/4 v1, 0x0

    .line 110
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_9

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move-object v3, v2

    .line 130
    check-cast v3, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 131
    .line 132
    iget-object v3, v3, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 133
    .line 134
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_8

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_9
    iget p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Contents;->contentVersion:I

    .line 145
    .line 146
    new-instance p2, Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 147
    .line 148
    invoke-direct {p2, p0, v1, p1}, Lcom/fsck/k9/preferences/SettingsFile$Contents;-><init>(ILjava/util/Map;Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    return-object p2
.end method

.method public static getAccountDisplayName(Lcom/fsck/k9/preferences/SettingsFile$Account;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    return-object v0

    .line 18
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 19
    .line 20
    if-eqz p0, :cond_3

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/fsck/k9/preferences/SettingsFile$Identity;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Identity;->email:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    move-object p0, v1

    .line 34
    :goto_2
    if-eqz p0, :cond_4

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_4
    const-string p0, "Account name missing"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method


# virtual methods
.method public final getImportStreamContents(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/ImportContents;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/fsck/k9/preferences/SettingsFileParser;->parseSettings(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p0, Lcom/fsck/k9/preferences/SettingsFile$Contents;->globalSettings:Ljava/util/Map;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Contents;->accounts:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 40
    .line 41
    new-instance v2, Lcom/fsck/k9/preferences/AccountDescription;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/fsck/k9/preferences/SettingsImporter;->getAccountDisplayName(Lcom/fsck/k9/preferences/SettingsFile$Account;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v1, v1, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/preferences/AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-nez p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    new-instance p0, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 66
    .line 67
    const-string p1, "Neither global settings nor account settings could be found"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    :goto_2
    new-instance p0, Lcom/fsck/k9/preferences/ImportContents;

    .line 74
    .line 75
    invoke-direct {p0, v0, p1}, Lcom/fsck/k9/preferences/ImportContents;-><init>(Ljava/util/ArrayList;Z)V
    :try_end_0
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    throw p0
.end method

.method public final importAccount(ILcom/fsck/k9/preferences/SettingsFile$Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;-><init>(Lcom/fsck/k9/preferences/SettingsImporter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v5, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->label:I

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-ne v5, v7, :cond_1

    .line 42
    .line 43
    iget-object v0, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->L$2:Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move v9, v7

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v6

    .line 57
    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsValidator:Lcom/fsck/k9/preferences/AccountSettingsValidator;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/fsck/k9/preferences/AccountSettingsValidator;->serverSettingsValidator:Lcom/bumptech/glide/GlideExperiments;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-object v5, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 68
    .line 69
    sget-object v8, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 70
    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    move-object v5, v8

    .line 74
    :cond_3
    sget-object v9, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 75
    .line 76
    invoke-static {v1, v9, v5, v7}, Landroidx/sqlite/SQLite;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    iget-object v5, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 81
    .line 82
    if-eqz v5, :cond_1a

    .line 83
    .line 84
    invoke-virtual {v3, v1, v5}, Lcom/bumptech/glide/GlideExperiments;->validate(ILcom/fsck/k9/preferences/SettingsFile$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    iget-object v5, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 89
    .line 90
    if-eqz v5, :cond_19

    .line 91
    .line 92
    invoke-virtual {v3, v1, v5}, Lcom/bumptech/glide/GlideExperiments;->validate(ILcom/fsck/k9/preferences/SettingsFile$Server;)Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    new-instance v10, Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 97
    .line 98
    iget-object v11, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v12, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 103
    .line 104
    if-eqz v3, :cond_18

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_18

    .line 111
    .line 112
    new-instance v5, Ljava/util/ArrayList;

    .line 113
    .line 114
    const/16 v9, 0xa

    .line 115
    .line 116
    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_7

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/fsck/k9/preferences/SettingsFile$Identity;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object v9, v6, Lcom/fsck/k9/preferences/SettingsFile$Identity;->email:Ljava/lang/String;

    .line 143
    .line 144
    sget-object v17, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 145
    .line 146
    new-instance v17, Lcom/fsck/k9/EmailAddressValidator;

    .line 147
    .line 148
    invoke-static {v9}, Lcom/fsck/k9/EmailAddressValidator;->isValidAddressOnly(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v17

    .line 152
    if-eqz v17, :cond_6

    .line 153
    .line 154
    iget-object v7, v6, Lcom/fsck/k9/preferences/SettingsFile$Identity;->settings:Ljava/util/Map;

    .line 155
    .line 156
    if-nez v7, :cond_4

    .line 157
    .line 158
    move-object v7, v8

    .line 159
    :cond_4
    move-object/from16 v17, v3

    .line 160
    .line 161
    sget-object v3, Lcom/fsck/k9/preferences/IdentitySettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 162
    .line 163
    move-object/from16 v19, v8

    .line 164
    .line 165
    const/4 v8, 0x1

    .line 166
    invoke-static {v1, v3, v7, v8}, Landroidx/sqlite/SQLite;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    new-instance v7, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;

    .line 171
    .line 172
    iget-object v8, v6, Lcom/fsck/k9/preferences/SettingsFile$Identity;->name:Ljava/lang/String;

    .line 173
    .line 174
    if-nez v8, :cond_5

    .line 175
    .line 176
    const-string v8, ""

    .line 177
    .line 178
    :cond_5
    iget-object v6, v6, Lcom/fsck/k9/preferences/SettingsFile$Identity;->description:Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {v7, v8, v9, v6, v3}, Lcom/fsck/k9/preferences/ValidatedSettings$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object/from16 v3, v17

    .line 187
    .line 188
    move-object/from16 v8, v19

    .line 189
    .line 190
    const/4 v7, 0x1

    .line 191
    const/16 v9, 0xa

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    new-instance v0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 195
    .line 196
    const-string v1, "Invalid email address: "

    .line 197
    .line 198
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_7
    iget-object v2, v2, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 207
    .line 208
    if-nez v2, :cond_8

    .line 209
    .line 210
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 211
    .line 212
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 213
    .line 214
    const/16 v6, 0xa

    .line 215
    .line 216
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_9

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Lcom/fsck/k9/preferences/SettingsFile$Folder;

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v7, v6, Lcom/fsck/k9/preferences/SettingsFile$Folder;->settings:Ljava/util/Map;

    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    iget-object v6, v6, Lcom/fsck/k9/preferences/SettingsFile$Folder;->name:Ljava/lang/String;

    .line 248
    .line 249
    sget-object v8, Lcom/fsck/k9/preferences/FolderSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 250
    .line 251
    const/4 v9, 0x1

    .line 252
    invoke-static {v1, v8, v7, v9}, Landroidx/sqlite/SQLite;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    new-instance v8, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;

    .line 257
    .line 258
    invoke-direct {v8, v6, v7}, Lcom/fsck/k9/preferences/ValidatedSettings$Folder;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_9
    move-object/from16 v17, v3

    .line 266
    .line 267
    move-object/from16 v16, v5

    .line 268
    .line 269
    invoke-direct/range {v10 .. v17}, Lcom/fsck/k9/preferences/ValidatedSettings$Account;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Lcom/fsck/k9/preferences/ValidatedSettings$Server;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 270
    .line 271
    .line 272
    iget-object v2, v0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsUpgrader:Lcom/fsck/k9/preferences/AccountSettingsUpgrader;

    .line 273
    .line 274
    iget-object v3, v2, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->combinedUpgraders:Ljava/util/Map;

    .line 275
    .line 276
    iget v5, v2, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->latestVersion:I

    .line 277
    .line 278
    if-ne v1, v5, :cond_a

    .line 279
    .line 280
    move-object v1, v10

    .line 281
    goto :goto_5

    .line 282
    :cond_a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    check-cast v6, Ljava/lang/Iterable;

    .line 287
    .line 288
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    new-instance v7, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;

    .line 293
    .line 294
    const/4 v8, 0x5

    .line 295
    invoke-direct {v7, v1, v8}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda1;-><init>(II)V

    .line 296
    .line 297
    .line 298
    new-instance v8, Lkotlin/sequences/FilteringSequence;

    .line 299
    .line 300
    const/4 v9, 0x1

    .line 301
    invoke-direct {v8, v6, v9, v7}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 302
    .line 303
    .line 304
    new-instance v6, Ljava/util/TreeSet;

    .line 305
    .line 306
    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    :goto_3
    move-object v8, v7

    .line 314
    check-cast v8, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 315
    .line 316
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_b

    .line 321
    .line 322
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_b
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_c

    .line 339
    .line 340
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    check-cast v7, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v8

    .line 350
    const/16 v18, 0x1

    .line 351
    .line 352
    add-int/lit8 v8, v8, -0x1

    .line 353
    .line 354
    invoke-virtual {v2, v8, v1, v10}, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->upgradeToVersion(IILcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 366
    .line 367
    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    check-cast v9, Lcom/fsck/k9/preferences/CombinedSettingsUpgrader;

    .line 372
    .line 373
    invoke-interface {v9, v1}, Lcom/fsck/k9/preferences/CombinedSettingsUpgrader;->upgrade(Lcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    invoke-virtual {v2, v9, v8, v1}, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->upgradeToVersion(IILcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    goto :goto_4

    .line 390
    :cond_c
    invoke-virtual {v2, v5, v1, v10}, Lcom/fsck/k9/preferences/AccountSettingsUpgrader;->upgradeToVersion(IILcom/fsck/k9/preferences/ValidatedSettings$Account;)Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :goto_5
    iput-object v1, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->L$2:Lcom/fsck/k9/preferences/ValidatedSettings$Account;

    .line 395
    .line 396
    const/4 v9, 0x1

    .line 397
    iput v9, v4, Lcom/fsck/k9/preferences/SettingsImporter$importAccount$1;->label:I

    .line 398
    .line 399
    iget-object v0, v0, Lcom/fsck/k9/preferences/SettingsImporter;->accountSettingsWriter:Lcom/fsck/k9/preferences/AccountSettingsWriter;

    .line 400
    .line 401
    invoke-virtual {v0, v1, v4}, Lcom/fsck/k9/preferences/AccountSettingsWriter;->write(Lcom/fsck/k9/preferences/ValidatedSettings$Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 406
    .line 407
    if-ne v3, v0, :cond_d

    .line 408
    .line 409
    return-object v0

    .line 410
    :cond_d
    move-object v0, v1

    .line 411
    :goto_6
    check-cast v3, Lkotlin/Pair;

    .line 412
    .line 413
    iget-object v1, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->incoming:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 414
    .line 415
    iget-object v1, v1, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->settings:Ljava/util/Map;

    .line 416
    .line 417
    const-string v2, "host"

    .line 418
    .line 419
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    instance-of v5, v4, Ljava/lang/String;

    .line 424
    .line 425
    if-eqz v5, :cond_e

    .line 426
    .line 427
    check-cast v4, Ljava/lang/String;

    .line 428
    .line 429
    move-object/from16 v16, v4

    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_e
    const/16 v16, 0x0

    .line 433
    .line 434
    :goto_7
    const-string v4, "authenticationType"

    .line 435
    .line 436
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    check-cast v5, Ljava/lang/String;

    .line 444
    .line 445
    const-string v6, "password"

    .line 446
    .line 447
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    instance-of v7, v1, Ljava/lang/String;

    .line 452
    .line 453
    if-eqz v7, :cond_f

    .line 454
    .line 455
    check-cast v1, Ljava/lang/String;

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_f
    const/4 v1, 0x0

    .line 459
    :goto_8
    const-string v7, "EXTERNAL"

    .line 460
    .line 461
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    const/4 v10, 0x0

    .line 466
    const-string v11, "XOAUTH2"

    .line 467
    .line 468
    if-nez v8, :cond_11

    .line 469
    .line 470
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-nez v8, :cond_11

    .line 475
    .line 476
    if-eqz v1, :cond_10

    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-nez v1, :cond_11

    .line 483
    .line 484
    :cond_10
    move v14, v9

    .line 485
    goto :goto_9

    .line 486
    :cond_11
    move v14, v10

    .line 487
    :goto_9
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    iget-object v0, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Account;->outgoing:Lcom/fsck/k9/preferences/ValidatedSettings$Server;

    .line 492
    .line 493
    iget-object v0, v0, Lcom/fsck/k9/preferences/ValidatedSettings$Server;->settings:Ljava/util/Map;

    .line 494
    .line 495
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    instance-of v5, v2, Ljava/lang/String;

    .line 500
    .line 501
    if-eqz v5, :cond_12

    .line 502
    .line 503
    check-cast v2, Ljava/lang/String;

    .line 504
    .line 505
    move-object/from16 v17, v2

    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_12
    const/16 v17, 0x0

    .line 509
    .line 510
    :goto_a
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    check-cast v2, Ljava/lang/String;

    .line 518
    .line 519
    const-string/jumbo v4, "username"

    .line 520
    .line 521
    .line 522
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    check-cast v4, Ljava/lang/String;

    .line 530
    .line 531
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    instance-of v5, v0, Ljava/lang/String;

    .line 536
    .line 537
    if-eqz v5, :cond_13

    .line 538
    .line 539
    move-object v6, v0

    .line 540
    check-cast v6, Ljava/lang/String;

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_13
    const/4 v6, 0x0

    .line 544
    :goto_b
    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-nez v0, :cond_15

    .line 549
    .line 550
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-nez v0, :cond_15

    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-lez v0, :cond_15

    .line 561
    .line 562
    if-eqz v6, :cond_14

    .line 563
    .line 564
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-nez v0, :cond_15

    .line 569
    .line 570
    :cond_14
    move v15, v9

    .line 571
    goto :goto_c

    .line 572
    :cond_15
    move v15, v10

    .line 573
    :goto_c
    if-nez v1, :cond_17

    .line 574
    .line 575
    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-eqz v0, :cond_16

    .line 580
    .line 581
    goto :goto_d

    .line 582
    :cond_16
    move v13, v10

    .line 583
    goto :goto_e

    .line 584
    :cond_17
    :goto_d
    move v13, v9

    .line 585
    :goto_e
    new-instance v10, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 586
    .line 587
    iget-object v0, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 588
    .line 589
    move-object v11, v0

    .line 590
    check-cast v11, Lcom/fsck/k9/preferences/AccountDescription;

    .line 591
    .line 592
    iget-object v0, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 593
    .line 594
    move-object v12, v0

    .line 595
    check-cast v12, Lcom/fsck/k9/preferences/AccountDescription;

    .line 596
    .line 597
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-direct/range {v10 .. v17}, Lcom/fsck/k9/preferences/AccountDescriptionPair;-><init>(Lcom/fsck/k9/preferences/AccountDescription;Lcom/fsck/k9/preferences/AccountDescription;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    return-object v10

    .line 607
    :cond_18
    new-instance v0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 608
    .line 609
    const-string v1, "Missing identities, there should be at least one."

    .line 610
    .line 611
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v0

    .line 615
    :cond_19
    new-instance v0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 616
    .line 617
    const-string v1, "Missing outgoing server settings"

    .line 618
    .line 619
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :cond_1a
    new-instance v0, Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException;

    .line 624
    .line 625
    const-string v1, "Missing incoming server settings"

    .line 626
    .line 627
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v0
.end method

.method public final importGeneralSettings(ILjava/util/Map;)Z
    .locals 8

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    sget-object v5, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1, v5, p2, v1}, Landroidx/sqlite/SQLite;->validate(ILjava/util/Map;Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    const/16 p2, 0x6f

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v4, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 17
    .line 18
    sget-object v7, Lcom/fsck/k9/preferences/GeneralSettingsDescriptions;->generalSettingManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x6f

    .line 27
    .line 28
    move v3, p1

    .line 29
    invoke-static/range {v2 .. v7}, Lorg/slf4j/helpers/Util;->upgradeToVersion(IILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Lnet/thunderbird/core/preference/GeneralSettingsManager;)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsImporter;->generalSettingsWriter:Lcom/fsck/k9/preferences/GeneralSettingsWriter;

    .line 34
    .line 35
    invoke-virtual {p0, v6}, Lcom/fsck/k9/preferences/GeneralSettingsWriter;->write(Ljava/util/HashMap;)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    const-string p1, "Exception while importing general settings"

    .line 43
    .line 44
    new-array p2, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method public final importSettings(Ljava/io/InputStream;ZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p4, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;-><init>(Lcom/fsck/k9/preferences/SettingsImporter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget p1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->I$0:I

    .line 36
    .line 37
    iget-boolean p2, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->Z$0:Z

    .line 38
    .line 39
    iget-object p3, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$7:Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$6:Ljava/util/Iterator;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$5:Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 44
    .line 45
    iget-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$3:Ljava/util/List;

    .line 46
    .line 47
    iget-object v6, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$2:Ljava/util/List;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception p4

    .line 54
    goto :goto_4

    .line 55
    :catch_1
    move-exception p4

    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return-object p0

    .line 65
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :try_start_1
    new-instance p4, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/fsck/k9/preferences/SettingsFileParser;->parseSettings(Ljava/io/InputStream;)Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1, p2, p3}, Lcom/fsck/k9/preferences/SettingsImporter;->filterSettings(Lcom/fsck/k9/preferences/SettingsFile$Contents;ZLjava/util/List;)Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p3, p1, Lcom/fsck/k9/preferences/SettingsFile$Contents;->globalSettings:Ljava/util/Map;

    .line 87
    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    iget v4, p1, Lcom/fsck/k9/preferences/SettingsFile$Contents;->contentVersion:I

    .line 91
    .line 92
    invoke-virtual {p0, v4, p3}, Lcom/fsck/k9/preferences/SettingsImporter;->importGeneralSettings(ILjava/util/Map;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p3, v2

    .line 98
    :goto_1
    iget-object v4, p1, Lcom/fsck/k9/preferences/SettingsFile$Contents;->accounts:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    move-object v6, p4

    .line 105
    move-object v5, v1

    .line 106
    move-object v1, v4

    .line 107
    move-object v4, p1

    .line 108
    move p1, p3

    .line 109
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_5

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    check-cast p3, Lcom/fsck/k9/preferences/SettingsFile$Account;
    :try_end_1
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 120
    .line 121
    :try_start_2
    iget p4, v4, Lcom/fsck/k9/preferences/SettingsFile$Contents;->contentVersion:I

    .line 122
    .line 123
    iput-object v6, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$2:Ljava/util/List;

    .line 124
    .line 125
    iput-object v5, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$3:Ljava/util/List;

    .line 126
    .line 127
    iput-object v4, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$5:Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 128
    .line 129
    iput-object v1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$6:Ljava/util/Iterator;

    .line 130
    .line 131
    iput-object p3, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->L$7:Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 132
    .line 133
    iput-boolean p2, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->Z$0:Z

    .line 134
    .line 135
    iput p1, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->I$0:I

    .line 136
    .line 137
    iput v3, v0, Lcom/fsck/k9/preferences/SettingsImporter$importSettings$1;->label:I

    .line 138
    .line 139
    invoke-virtual {p0, p4, p3, v0}, Lcom/fsck/k9/preferences/SettingsImporter;->importAccount(ILcom/fsck/k9/preferences/SettingsFile$Account;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p4
    :try_end_2
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 144
    .line 145
    if-ne p4, v7, :cond_4

    .line 146
    .line 147
    return-object v7

    .line 148
    :cond_4
    :goto_3
    :try_start_3
    check-cast p4, Lcom/fsck/k9/preferences/AccountDescriptionPair;

    .line 149
    .line 150
    invoke-interface {v6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/fsck/k9/preferences/Settings$InvalidSettingValueException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_4
    :try_start_4
    const-string v7, "Exception while importing account \"%s\""

    .line 155
    .line 156
    iget-object v8, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 157
    .line 158
    new-array v9, v3, [Ljava/lang/Object;

    .line 159
    .line 160
    aput-object v8, v9, v2

    .line 161
    .line 162
    invoke-static {p4, v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    new-instance p4, Lcom/fsck/k9/preferences/AccountDescription;

    .line 166
    .line 167
    iget-object v7, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget-object p3, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 173
    .line 174
    invoke-direct {p4, v7, p3}, Lcom/fsck/k9/preferences/AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :goto_5
    const-string v7, "Encountered invalid setting while importing account \"%s\""

    .line 182
    .line 183
    iget-object v8, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 184
    .line 185
    new-array v9, v3, [Ljava/lang/Object;

    .line 186
    .line 187
    aput-object v8, v9, v2

    .line 188
    .line 189
    invoke-static {p4, v7, v9}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    new-instance p4, Lcom/fsck/k9/preferences/AccountDescription;

    .line 193
    .line 194
    iget-object v7, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    iget-object p3, p3, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {p4, v7, p3}, Lcom/fsck/k9/preferences/AccountDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    if-nez p1, :cond_6

    .line 209
    .line 210
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsImporter;->unifiedInboxConfigurator:Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/UnifiedInboxConfigurator;->configureUnifiedInbox()V

    .line 213
    .line 214
    .line 215
    :cond_6
    new-instance p0, Lcom/fsck/k9/preferences/ImportResults;

    .line 216
    .line 217
    if-eqz p1, :cond_7

    .line 218
    .line 219
    move v2, v3

    .line 220
    :cond_7
    invoke-direct {p0, v2, v6, v5}, Lcom/fsck/k9/preferences/ImportResults;-><init>(ZLjava/util/List;Ljava/util/List;)V
    :try_end_4
    .catch Lcom/fsck/k9/preferences/SettingsImportExportException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 221
    .line 222
    .line 223
    return-object p0

    .line 224
    :catch_2
    move-exception p0

    .line 225
    new-instance p1, Lcom/fsck/k9/preferences/SettingsImportExportException;

    .line 226
    .line 227
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :catch_3
    move-exception p0

    .line 232
    throw p0
.end method
