.class public final Lorg/wikipedia/descriptions/DescriptionEditActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/descriptions/DescriptionEditFragment;",
        "Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;",
        "<init>",
        "()V",
        "Action",
        "org/wikipedia/util/UriUtil",
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
.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    new-instance v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/descriptions/DescriptionEditActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    new-instance p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/descriptions/DescriptionEditViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditActivity;->getViewModel()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 22
    .line 23
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    new-array v0, p1, [Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f1205e3

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p1, v1, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v3, 0x1

    .line 54
    invoke-static {v1, p1, v0, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-static {v2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/content/Intent;

    .line 64
    .line 65
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;

    .line 66
    .line 67
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "showAIOnBoarding"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method
