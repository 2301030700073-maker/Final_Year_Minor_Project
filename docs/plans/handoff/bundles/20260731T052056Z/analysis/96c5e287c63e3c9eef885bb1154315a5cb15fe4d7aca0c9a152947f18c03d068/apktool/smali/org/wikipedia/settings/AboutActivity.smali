.class public final Lorg/wikipedia/settings/AboutActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/settings/AboutActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final credits:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/compose/components/LinkTextData;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const-string v2, "Balloon"

    .line 8
    .line 9
    const-string v3, "https://github.com/skydoves/Balloon/blob/main/LICENSE/"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lorg/wikipedia/compose/components/LinkTextData;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const-string v5, "(license),"

    .line 19
    .line 20
    const-string v6, "licenses/Balloon"

    .line 21
    .line 22
    invoke-direct {v2, v3, v5, v4, v6}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lorg/wikipedia/compose/components/LinkTextData;

    .line 26
    .line 27
    const-string v7, "Commons Lang"

    .line 28
    .line 29
    const-string v8, "https://www.apache.org/licenses/"

    .line 30
    .line 31
    invoke-direct {v6, v1, v7, v8, v4}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v7, Lorg/wikipedia/compose/components/LinkTextData;

    .line 35
    .line 36
    const-string v8, "licenses/CommonsLang3"

    .line 37
    .line 38
    invoke-direct {v7, v3, v5, v4, v8}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lorg/wikipedia/compose/components/LinkTextData;

    .line 42
    .line 43
    const-string v9, "jsoup"

    .line 44
    .line 45
    const-string v10, "https://github.com/jhy/jsoup"

    .line 46
    .line 47
    invoke-direct {v8, v1, v9, v10, v4}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v9, Lorg/wikipedia/compose/components/LinkTextData;

    .line 51
    .line 52
    const-string v10, "licenses/jsoup"

    .line 53
    .line 54
    invoke-direct {v9, v3, v5, v4, v10}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v10, Lorg/wikipedia/compose/components/LinkTextData;

    .line 58
    .line 59
    const-string v11, "OkHttp"

    .line 60
    .line 61
    const-string v12, "https://square.github.io/okhttp/"

    .line 62
    .line 63
    invoke-direct {v10, v1, v11, v12, v4}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v11, Lorg/wikipedia/compose/components/LinkTextData;

    .line 67
    .line 68
    const-string v12, "licenses/OkHttp"

    .line 69
    .line 70
    invoke-direct {v11, v3, v5, v4, v12}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v5, Lorg/wikipedia/compose/components/LinkTextData;

    .line 74
    .line 75
    const-string v12, "Retrofit"

    .line 76
    .line 77
    const-string v13, "https://square.github.io/retrofit/"

    .line 78
    .line 79
    invoke-direct {v5, v1, v12, v13, v4}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v12, Lorg/wikipedia/compose/components/LinkTextData;

    .line 83
    .line 84
    const-string v13, "(license)"

    .line 85
    .line 86
    const-string v14, "licenses/Retrofit"

    .line 87
    .line 88
    invoke-direct {v12, v3, v13, v4, v14}, Lorg/wikipedia/compose/components/LinkTextData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0xa

    .line 92
    .line 93
    new-array v4, v4, [Lorg/wikipedia/compose/components/LinkTextData;

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    aput-object v0, v4, v13

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    aput-object v2, v4, v0

    .line 100
    .line 101
    aput-object v6, v4, v3

    .line 102
    .line 103
    const/4 v0, 0x3

    .line 104
    aput-object v7, v4, v0

    .line 105
    .line 106
    aput-object v8, v4, v1

    .line 107
    .line 108
    const/4 v0, 0x5

    .line 109
    aput-object v9, v4, v0

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    aput-object v10, v4, v0

    .line 113
    .line 114
    const/4 v0, 0x7

    .line 115
    aput-object v11, v4, v0

    .line 116
    .line 117
    const/16 v0, 0x8

    .line 118
    .line 119
    aput-object v5, v4, v0

    .line 120
    .line 121
    const/16 v0, 0x9

    .line 122
    .line 123
    aput-object v12, v4, v0

    .line 124
    .line 125
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lorg/wikipedia/settings/AboutActivity;->credits:Ljava/util/List;

    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroidx/paging/HintHandler;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x23

    .line 27
    .line 28
    if-lt v0, v2, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v2, 0x1e

    .line 37
    .line 38
    if-lt v0, v2, :cond_1

    .line 39
    .line 40
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 41
    .line 42
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v2, 0x1a

    .line 47
    .line 48
    if-lt v0, v2, :cond_2

    .line 49
    .line 50
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 51
    .line 52
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 57
    .line 58
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 62
    .line 63
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x1

    .line 74
    xor-int/2addr p1, v1

    .line 75
    invoke-virtual {v0, p1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/AboutActivity;I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 85
    .line 86
    const v2, -0x3723666e

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
