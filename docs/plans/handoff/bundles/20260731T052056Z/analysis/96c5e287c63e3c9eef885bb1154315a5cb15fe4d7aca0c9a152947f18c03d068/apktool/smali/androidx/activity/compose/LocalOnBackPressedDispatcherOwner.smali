.class public abstract Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LocalOnBackPressedDispatcherOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->LocalOnBackPressedDispatcherOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method

.method public static getCurrent(Landroidx/compose/runtime/GapComposer;)Landroidx/activity/OnBackPressedDispatcherOwner;
    .locals 5

    .line 1
    sget-object v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->LocalOnBackPressedDispatcherOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    const v0, 0x48071ead

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const v3, 0x7f090746

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    instance-of v4, v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    check-cast v3, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move-object v3, v1

    .line 47
    :goto_1
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v0, v3

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-static {v0}, Landroidx/room/Room;->getParentOrViewTreeDisjointParent(Landroid/view/View;)Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    instance-of v3, v0, Landroid/view/View;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    check-cast v0, Landroid/view/View;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v0, v1

    .line 65
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const v3, 0x4807151c

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_3
    if-nez v0, :cond_7

    .line 77
    .line 78
    const v0, 0x48072680    # 138394.0f

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/content/Context;

    .line 91
    .line 92
    :goto_4
    instance-of v3, v0, Landroid/content/ContextWrapper;

    .line 93
    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    instance-of v3, v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    check-cast v0, Landroid/content/ContextWrapper;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_4

    .line 109
    :cond_6
    :goto_5
    check-cast v1, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_7
    const v1, 0x4807156d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method
