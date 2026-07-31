.class public final synthetic Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-boolean p4, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Ljava/util/List;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p3, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$1:Z

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    iget-boolean p0, p0, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;->f$1:Z

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v7, Ljava/lang/String;

    .line 19
    .line 20
    check-cast v6, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 21
    .line 22
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 27
    .line 28
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 29
    .line 30
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 31
    .line 32
    aget-object v0, v0, v3

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/semantics/LiveRegionMode;

    .line 35
    .line 36
    invoke-direct {v0, v4}, Landroidx/compose/ui/semantics/LiveRegionMode;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p0, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance p0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/16 v0, 0x16

    .line 45
    .line 46
    invoke-direct {p0, v0, v6}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 50
    .line 51
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->Dismiss:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 54
    .line 55
    invoke-direct {v3, v5, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 64
    .line 65
    aget-object v0, v0, v2

    .line 66
    .line 67
    invoke-interface {p1, p0, v7}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_0
    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    .line 72
    .line 73
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 74
    .line 75
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 76
    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    new-instance p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 80
    .line 81
    invoke-direct {p0, v7, v6, v4}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 85
    .line 86
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageUp:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 87
    .line 88
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 89
    .line 90
    invoke-direct {v2, v5, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, v7, v6, v0}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 100
    .line 101
    .line 102
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageDown:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 103
    .line 104
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 105
    .line 106
    invoke-direct {v2, v5, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    new-instance p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    invoke-direct {p0, v7, v6, v2}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 119
    .line 120
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageLeft:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 121
    .line 122
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 123
    .line 124
    invoke-direct {v2, v5, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    new-instance p0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    invoke-direct {p0, v7, v6, v3}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->PageRight:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 136
    .line 137
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 138
    .line 139
    invoke-direct {v2, v5, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-object v1

    .line 146
    :pswitch_1
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 147
    .line 148
    check-cast v6, Ljava/util/List;

    .line 149
    .line 150
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 151
    .line 152
    new-instance p1, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda4;

    .line 153
    .line 154
    invoke-direct {p1, v7, v6, p0}, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda4;-><init>(Landroidx/navigation/NavBackStackEntry;Ljava/util/List;Z)V

    .line 155
    .line 156
    .line 157
    iget-object p0, v7, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 158
    .line 159
    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 162
    .line 163
    .line 164
    new-instance p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 165
    .line 166
    const/16 v0, 0xa

    .line 167
    .line 168
    invoke-direct {p0, v0, v7, p1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
