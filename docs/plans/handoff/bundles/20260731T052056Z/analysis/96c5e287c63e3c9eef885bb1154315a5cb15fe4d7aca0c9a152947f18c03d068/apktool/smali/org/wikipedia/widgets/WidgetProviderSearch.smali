.class public final Lorg/wikipedia/widgets/WidgetProviderSearch;
.super Landroid/appwidget/AppWidgetProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/widgets/WidgetProviderSearch;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class p3, Lorg/wikipedia/widgets/WidgetProviderSearch;

    .line 13
    .line 14
    invoke-direct {p0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    array-length p3, p0

    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    if-ge v1, p3, :cond_1

    .line 28
    .line 29
    aget v2, p0, v1

    .line 30
    .line 31
    sget v3, Lorg/wikipedia/search/SearchActivity;->$r8$clinit:I

    .line 32
    .line 33
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    .line 34
    .line 35
    const/16 v4, 0x38

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {p1, v3, v5, v5, v4}, Lorg/wikipedia/login/LoginClient;->newIntent$default(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sget-object v4, Lorg/wikipedia/widgets/WidgetTypes;->SEARCH:Lorg/wikipedia/widgets/WidgetTypes;

    .line 43
    .line 44
    invoke-virtual {v4}, Lorg/wikipedia/widgets/WidgetTypes;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "widgetType"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/high16 v4, 0x10000000

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/high16 v4, 0x8000000

    .line 62
    .line 63
    invoke-static {p1, v0, v3, v4}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-instance v4, Landroid/widget/RemoteViews;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const v6, 0x7f0c0605

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const v5, 0x7f09076d

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 83
    .line 84
    .line 85
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v7, 0x1f

    .line 88
    .line 89
    if-lt v6, v7, :cond_0

    .line 90
    .line 91
    new-instance v6, Landroid/widget/RemoteViews;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const v8, 0x7f0c0607

    .line 98
    .line 99
    .line 100
    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    new-instance v7, Landroid/widget/RemoteViews;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const v9, 0x7f0c0606

    .line 110
    .line 111
    .line 112
    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Landroid/util/SizeF;

    .line 122
    .line 123
    const/high16 v5, 0x42000000    # 32.0f

    .line 124
    .line 125
    invoke-direct {v3, v5, v5}, Landroid/util/SizeF;-><init>(FF)V

    .line 126
    .line 127
    .line 128
    new-instance v8, Lkotlin/Pair;

    .line 129
    .line 130
    invoke-direct {v8, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Landroid/util/SizeF;

    .line 134
    .line 135
    const/high16 v6, 0x42c80000    # 100.0f

    .line 136
    .line 137
    invoke-direct {v3, v6, v5}, Landroid/util/SizeF;-><init>(FF)V

    .line 138
    .line 139
    .line 140
    new-instance v6, Lkotlin/Pair;

    .line 141
    .line 142
    invoke-direct {v6, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v3, Landroid/util/SizeF;

    .line 146
    .line 147
    const/high16 v7, 0x43200000    # 160.0f

    .line 148
    .line 149
    invoke-direct {v3, v7, v5}, Landroid/util/SizeF;-><init>(FF)V

    .line 150
    .line 151
    .line 152
    new-instance v5, Lkotlin/Pair;

    .line 153
    .line 154
    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/4 v3, 0x3

    .line 158
    new-array v3, v3, [Lkotlin/Pair;

    .line 159
    .line 160
    aput-object v8, v3, v0

    .line 161
    .line 162
    const/4 v4, 0x1

    .line 163
    aput-object v6, v3, v4

    .line 164
    .line 165
    const/4 v4, 0x2

    .line 166
    aput-object v5, v3, v4

    .line 167
    .line 168
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Landroidx/core/graphics/TypefaceCompat$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;)Landroid/widget/RemoteViews;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :cond_0
    invoke-virtual {p2, v2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_1
    return-void
.end method
