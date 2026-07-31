.class public final Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public pageLoadStartTime:J

.field public sessionData:Lorg/wikipedia/analytics/SessionData;


# virtual methods
.method public final persistSession()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lorg/wikipedia/analytics/SessionData;->Companion:Lorg/wikipedia/analytics/SessionData$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/wikipedia/analytics/SessionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    :goto_0
    const v0, 0x7f12067d

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final touchSession()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iget-object v4, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 10
    .line 11
    iget-wide v4, v4, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 12
    .line 13
    sub-long/2addr v2, v4

    .line 14
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 15
    .line 16
    const v4, 0x7f12067e

    .line 17
    .line 18
    .line 19
    const/16 v5, 0x1e

    .line 20
    .line 21
    invoke-static {v4, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    if-ge v4, v5, :cond_0

    .line 27
    .line 28
    move v4, v5

    .line 29
    :cond_0
    int-to-long v4, v4

    .line 30
    const-wide/32 v6, 0xea60

    .line 31
    .line 32
    .line 33
    mul-long/2addr v4, v6

    .line 34
    cmp-long v2, v2, v4

    .line 35
    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 39
    .line 40
    iget-wide v3, v2, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 41
    .line 42
    iget-wide v5, v2, Lorg/wikipedia/analytics/SessionData;->startTime:J

    .line 43
    .line 44
    sub-long/2addr v3, v5

    .line 45
    long-to-int v2, v3

    .line 46
    sget-object v3, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 47
    .line 48
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl;

    .line 49
    .line 50
    iget-object v4, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 51
    .line 52
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-direct {v3, v2, v4, v5}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent$AppSessionEventImpl;-><init>(ILorg/wikipedia/analytics/SessionData;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    sput-object v2, Lorg/wikipedia/util/TabUtil;->SESSION_ID:Ljava/lang/String;

    .line 66
    .line 67
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 68
    .line 69
    const v3, 0x7f1205f9

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v2, Lorg/wikipedia/util/TabUtil;->PAGEVIEW_ID:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Lorg/wikipedia/analytics/SessionData;

    .line 78
    .line 79
    invoke-direct {v2}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->persistSession()V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->sessionData:Lorg/wikipedia/analytics/SessionData;

    .line 88
    .line 89
    iput-wide v0, p0, Lorg/wikipedia/analytics/SessionData;->lastTouchTime:J

    .line 90
    .line 91
    return-void
.end method
