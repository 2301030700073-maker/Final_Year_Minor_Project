.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final drawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final drawerContent:Landroidx/compose/ui/platform/ComposeView;

.field public final drawerState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final openAccount:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

.field public final openAddAccount:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final openFolder:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

.field public final openManageFolders:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final openSettings:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final openUnifiedFolder:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

.field public final themeProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/MessageHomeActivity;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openAccount:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openFolder:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openUnifiedFolder:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openManageFolders:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 11
    .line 12
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openSettings:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    iput-object p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openAddAccount:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 15
    .line 16
    new-instance p2, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 17
    .line 18
    const/16 p3, 0x15

    .line 19
    .line 20
    invoke-direct {p2, p0, p3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 21
    .line 22
    .line 23
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 24
    .line 25
    invoke-static {p3, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->themeProvider$delegate:Lkotlin/Lazy;

    .line 30
    .line 31
    const p2, 0x7f0902ef

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 42
    .line 43
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 44
    .line 45
    const p3, 0x7f0902ee

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    .line 56
    .line 57
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawerContent:Landroidx/compose/ui/platform/ComposeView;

    .line 58
    .line 59
    new-instance p3, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 60
    .line 61
    const/4 p4, 0x0

    .line 62
    invoke-direct {p3, p4, p4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 70
    .line 71
    invoke-virtual {p8}, Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    .line 76
    .line 77
    iget-object p4, p2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/ArrayList;

    .line 78
    .line 79
    if-nez p4, :cond_0

    .line 80
    .line 81
    new-instance p4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p4, p2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/ArrayList;

    .line 87
    .line 88
    :cond_0
    iget-object p4, p2, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance p3, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 p4, 0x7

    .line 96
    invoke-direct {p3, p4, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 100
    .line 101
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    const/4 p3, 0x0

    .line 107
    invoke-direct {p2, p0, p3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;I)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 111
    .line 112
    const p3, -0x7d9e8178

    .line 113
    .line 114
    .line 115
    const/4 p4, 0x1

    .line 116
    invoke-direct {p0, p3, p2, p4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 2
    .line 3
    const v0, 0x800003

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "No drawer view found with gravity "

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
