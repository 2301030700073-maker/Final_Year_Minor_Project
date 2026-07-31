.class public final synthetic Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->f$1:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->f$1:Landroidx/navigation/NavHostController;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12;->f$0:Landroid/content/Context;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/16 v10, 0xf6

    .line 20
    .line 21
    const-string v4, "click"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v7, "feed_default_view"

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$DefaultFeedViewScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$DefaultFeedViewScreen;

    .line 32
    .line 33
    invoke-static {v2, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/16 v10, 0xf6

    .line 45
    .line 46
    const-string v4, "click"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const-string v7, "feed_data_info"

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;

    .line 57
    .line 58
    invoke-static {v2, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :pswitch_1
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/16 v10, 0xf6

    .line 70
    .line 71
    const-string v4, "click"

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const-string v7, "feed_modules_community"

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    sget-object p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$CommunityModuleScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$CommunityModuleScreen;

    .line 82
    .line 83
    invoke-static {v2, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_2
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const/16 v10, 0xf6

    .line 95
    .line 96
    const-string v4, "click"

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    const-string v7, "feed_modules_for_you"

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 104
    .line 105
    .line 106
    :cond_3
    sget-object p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$ForYouModuleScreen;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$ForYouModuleScreen;

    .line 107
    .line 108
    invoke-static {v2, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_3
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    const/16 v10, 0xf2

    .line 120
    .line 121
    const-string v4, "click"

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    const-string v6, "feed_for_you"

    .line 125
    .line 126
    const-string v7, "feed_data_info"

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 130
    .line 131
    .line 132
    :cond_4
    sget-object p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;->INSTANCE:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination$FeedConfiguration;

    .line 133
    .line 134
    invoke-static {v2, p0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsDestination;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
