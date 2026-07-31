.class public final Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
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


# instance fields
.field public final instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    const-string v2, "apps-widgetchallenge"

    .line 13
    .line 14
    invoke-direct {v1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "widget_challenge_install"

    .line 18
    .line 19
    .line 20
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 21
    .line 22
    const-string/jumbo v0, "widget_challenge"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 29
    .line 30
    return-void
.end method

.method public static final onCreateView$lambda$0$0$0$2$0$0(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/16 v7, 0xf6

    .line 5
    .line 6
    const-string v1, "click"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, "install_add"

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x1a

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 27
    .line 28
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->isRequestPinAppWidgetSupported()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    .line 45
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    const-class v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 48
    .line 49
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    const/high16 v3, 0xc000000

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    new-instance v4, Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {v3, v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v6, 0x0

    .line 5
    const/16 v7, 0xfe

    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 8
    .line 9
    const-string v1, "impression"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 19
    .line 20
    const p1, 0x7f12064d

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-static {p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Landroidx/compose/ui/platform/ComposeView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x6

    .line 35
    invoke-direct {p1, p3, v0, v1}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    .line 37
    .line 38
    new-instance p3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p3, p0, v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 45
    .line 46
    const v0, 0x4af2831

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p3, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method
