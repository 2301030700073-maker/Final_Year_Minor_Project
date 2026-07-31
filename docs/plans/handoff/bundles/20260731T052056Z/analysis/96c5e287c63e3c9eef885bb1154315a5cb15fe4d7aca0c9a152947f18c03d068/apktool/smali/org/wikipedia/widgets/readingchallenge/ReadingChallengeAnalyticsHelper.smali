.class public final Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeAnalyticsHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static logHeartbeat(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 7
    .line 8
    const-string v2, "apps-widgetchallenge"

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 16
    .line 17
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeStreak()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "streak_count"

    .line 26
    .line 27
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :goto_0
    move-object v7, p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    const/16 v8, 0x74

    .line 39
    .line 40
    const-string v2, "heartbeat"

    .line 41
    .line 42
    const-string/jumbo v3, "widget_challenge"

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move-object v5, p0

    .line 48
    invoke-static/range {v1 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
