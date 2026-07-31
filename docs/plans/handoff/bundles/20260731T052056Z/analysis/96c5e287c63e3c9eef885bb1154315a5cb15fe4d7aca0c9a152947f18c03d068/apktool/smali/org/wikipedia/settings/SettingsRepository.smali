.class public final Lorg/wikipedia/settings/SettingsRepository;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

.field public static final dataStore:Landroidx/datastore/core/DataStore;

.field public static final hiddenCards:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

.field public static final hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

.field public static final hiddenModules:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

.field public static final hiddenModulesKey:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 7
    .line 8
    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 9
    .line 10
    const-string v1, "home_hidden_modules"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/wikipedia/settings/SettingsRepository;->hiddenModulesKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 16
    .line 17
    new-instance v0, Landroidx/datastore/preferences/core/Preferences$Key;

    .line 18
    .line 19
    const-string v1, "home_hidden_cards"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/wikipedia/settings/SettingsRepository;->hiddenCardsKey:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 25
    .line 26
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lorg/wikipedia/extensions/ContextKt;->dataStore$delegate:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    .line 33
    .line 34
    sget-object v2, Lorg/wikipedia/extensions/ContextKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aget-object v2, v2, v3

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/datastore/core/DataStore;

    .line 44
    .line 45
    sput-object v0, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 46
    .line 47
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 52
    .line 53
    invoke-direct {v2, v1, v3}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lorg/wikipedia/settings/SettingsRepository;->hiddenModules:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 57
    .line 58
    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lorg/wikipedia/settings/SettingsRepository;->hiddenCards:Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final migrateLegacyHiddenCards(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;-><init>(Lorg/wikipedia/settings/SettingsRepository;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;->label:I

    .line 30
    .line 31
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 34
    .line 35
    const v4, 0x7f120605

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    if-ne v1, v5, :cond_1

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v6

    .line 54
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    sget-object p0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 60
    .line 61
    invoke-static {v4, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :try_start_0
    sget-object v1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v7, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 80
    .line 81
    sget-object v8, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 82
    .line 83
    invoke-direct {v7, v8, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v7}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 91
    .line 92
    invoke-virtual {v1, p0, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    move-object p0, v6

    .line 102
    :goto_2
    check-cast p0, Ljava/util/List;

    .line 103
    .line 104
    if-nez p0, :cond_5

    .line 105
    .line 106
    move-object p0, v3

    .line 107
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    return-object v2

    .line 114
    :cond_6
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 115
    .line 116
    const/16 v7, 0x19

    .line 117
    .line 118
    invoke-direct {v1, v7, p0, v6}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    iput v5, v0, Lorg/wikipedia/settings/SettingsRepository$migrateLegacyHiddenCards$1;->label:I

    .line 122
    .line 123
    new-instance p0, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 124
    .line 125
    const/4 v7, 0x3

    .line 126
    invoke-direct {p0, v1, v6, v7}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 130
    .line 131
    invoke-interface {v1, p0, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, p1, :cond_7

    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_7
    :goto_3
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 139
    .line 140
    :try_start_1
    sget-object p0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    new-instance p1, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 146
    .line 147
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 148
    .line 149
    invoke-direct {p1, v0, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1, v3}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    goto :goto_4

    .line 157
    :catch_1
    move-exception p0

    .line 158
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-static {v4, v6}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v2
.end method
