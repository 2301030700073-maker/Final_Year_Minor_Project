.class public final Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "saveSuccess"

    .line 5
    .line 6
    invoke-static {v0, p1, p0}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V
    .locals 13

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 2
    .line 3
    new-instance v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;

    .line 4
    .line 5
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;

    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getAppInstallID()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v3, 0x7f12013f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v3, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    :try_start_0
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 53
    .line 54
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 55
    .line 56
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCookies()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v8}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    sget-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 76
    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    .line 80
    .line 81
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v7}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 90
    .line 91
    :cond_1
    const-string v7, "UserID"

    .line 92
    .line 93
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v7, v3, v5}, Lcoil3/network/NetworkHeaders$Builder;->getCookieByName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    :cond_2
    move v7, v5

    .line 114
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    xor-int/lit8 v8, v0, 0x1

    .line 119
    .line 120
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->code()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 137
    .line 138
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    move-object v3, p0

    .line 143
    move-object v5, p1

    .line 144
    invoke-direct/range {v2 .. v12}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v1, v2}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;-><init>(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepInteractionEvent;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$$serializer;

    .line 2
    .line 3
    return-object p0
.end method
