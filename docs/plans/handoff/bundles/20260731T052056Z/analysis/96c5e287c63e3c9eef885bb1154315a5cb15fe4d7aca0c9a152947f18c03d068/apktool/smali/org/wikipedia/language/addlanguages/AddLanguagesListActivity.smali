.class public final Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;",
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
.field public isLanguageSearched:Z

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/language/addlanguages/AddLanguagesViewModel;

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
    new-instance v3, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
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
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v0, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p0, v0}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    invoke-direct {p1, p0, v2}, Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 97
    .line 98
    const v2, 0xe4832cb

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
