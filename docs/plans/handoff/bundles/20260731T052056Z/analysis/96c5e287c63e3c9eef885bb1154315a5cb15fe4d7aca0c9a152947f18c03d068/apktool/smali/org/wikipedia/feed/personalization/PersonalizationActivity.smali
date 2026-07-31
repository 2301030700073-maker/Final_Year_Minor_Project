.class public final Lorg/wikipedia/feed/personalization/PersonalizationActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/feed/personalization/PersonalizationActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "org/wikipedia/feed/personalization/PersonalizationScreenKt",
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
.field public final searchLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Lorg/wikipedia/page/tabs/Tab$$ExternalSyntheticLambda0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/feed/personalization/PersonalizationViewModel;

    .line 13
    .line 14
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lorg/wikipedia/feed/personalization/PersonalizationActivity$special$$inlined$viewModels$default$2;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$special$$inlined$viewModels$default$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lorg/wikipedia/feed/personalization/PersonalizationActivity$special$$inlined$viewModels$default$2;

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$special$$inlined$viewModels$default$2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/16 v2, 0x11

    .line 46
    .line 47
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/feed/personalization/PersonalizationActivity;->searchLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 10
    .line 11
    const-string v1, "apps-home-feed"

    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "feed_customize"

    .line 17
    .line 18
    iput-object p1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string v1, "show_interests_only"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, v0

    .line 40
    :goto_0
    const/4 v1, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object v2, Lorg/wikipedia/feed/personalization/PersonalizationPage;->INTERESTS:Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 44
    .line 45
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v2, 0x3

    .line 51
    new-array v2, v2, [Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 52
    .line 53
    sget-object v3, Lorg/wikipedia/feed/personalization/PersonalizationPage;->CURIOSITY:Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 54
    .line 55
    aput-object v3, v2, v0

    .line 56
    .line 57
    sget-object v3, Lorg/wikipedia/feed/personalization/PersonalizationPage;->INTERESTS:Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 58
    .line 59
    aput-object v3, v2, v1

    .line 60
    .line 61
    sget-object v3, Lorg/wikipedia/feed/personalization/PersonalizationPage;->HOME_PREFERENCE:Lorg/wikipedia/feed/personalization/PersonalizationPage;

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    aput-object v3, v2, v4

    .line 65
    .line 66
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_1
    new-instance v3, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    invoke-direct {v3, p0, p1, v2, v0}, Lorg/wikipedia/feed/personalization/PersonalizationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/personalization/PersonalizationActivity;ZLjava/util/List;I)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 76
    .line 77
    const v0, -0x1446bf2b

    .line 78
    .line 79
    .line 80
    invoke-direct {p1, v3, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, p1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
