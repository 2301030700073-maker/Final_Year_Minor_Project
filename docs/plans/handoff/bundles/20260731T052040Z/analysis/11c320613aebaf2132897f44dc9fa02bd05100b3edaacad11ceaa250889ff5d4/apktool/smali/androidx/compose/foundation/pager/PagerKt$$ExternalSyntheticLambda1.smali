.class public final synthetic Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final synthetic f$2:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$2:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda1;->f$2:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v0, v3, v1, p0}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(ILandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V

    .line 16
    .line 17
    .line 18
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 19
    .line 20
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 21
    .line 22
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 23
    .line 24
    invoke-direct {v4, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v0, v3, v1, p0}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(ILandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 37
    .line 38
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-direct {v0, v3, v1, p0}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(ILandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 54
    .line 55
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 56
    .line 57
    new-instance v4, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 58
    .line 59
    invoke-direct {v4, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 66
    .line 67
    const/4 v3, 0x3

    .line 68
    invoke-direct {v0, v3, v1, p0}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(ILandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 72
    .line 73
    new-instance v1, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 74
    .line 75
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method
