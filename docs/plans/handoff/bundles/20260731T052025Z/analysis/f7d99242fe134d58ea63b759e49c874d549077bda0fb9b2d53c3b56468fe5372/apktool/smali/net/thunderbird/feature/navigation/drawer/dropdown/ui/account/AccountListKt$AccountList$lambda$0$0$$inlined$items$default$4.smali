.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $onAccountClick$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $selectedAccount$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

.field public final synthetic $showStarredCount$inlined:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$onAccountClick$inlined:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$selectedAccount$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 9
    .line 10
    iput-boolean p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$showStarredCount$inlined:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p4, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    and-int/lit8 v0, p4, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object v0, p3

    .line 22
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x2

    .line 33
    :goto_0
    or-int/2addr p1, p4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, p4

    .line 36
    :goto_1
    and-int/lit8 p4, p4, 0x30

    .line 37
    .line 38
    if-nez p4, :cond_3

    .line 39
    .line 40
    move-object p4, p3

    .line 41
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-eqz p4, :cond_2

    .line 48
    .line 49
    const/16 p4, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 p4, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr p1, p4

    .line 55
    :cond_3
    and-int/lit16 p4, p1, 0x93

    .line 56
    .line 57
    const/16 v0, 0x92

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v2, 0x1

    .line 61
    if-eq p4, v0, :cond_4

    .line 62
    .line 63
    move p4, v2

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move p4, v1

    .line 66
    :goto_3
    and-int/2addr p1, v2

    .line 67
    move-object v7, p3

    .line 68
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    invoke-virtual {v7, p1, p4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_7

    .line 75
    .line 76
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$items:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v2, p1

    .line 83
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 84
    .line 85
    const p1, 0x7fb2cb6b

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$onAccountClick$inlined:Lkotlin/jvm/functions/Function1;

    .line 92
    .line 93
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    or-int/2addr p2, p3

    .line 102
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 109
    .line 110
    if-ne p3, p2, :cond_6

    .line 111
    .line 112
    :cond_5
    new-instance p3, Landroidx/compose/runtime/Latch$await$2$2;

    .line 113
    .line 114
    const/16 p2, 0xc

    .line 115
    .line 116
    invoke-direct {p3, p2, p1, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    move-object v3, p3

    .line 123
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 124
    .line 125
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$selectedAccount$inlined:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 126
    .line 127
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v8, 0x0

    .line 133
    iget-boolean v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4;->$showStarredCount$inlined:Z

    .line 134
    .line 135
    invoke-static/range {v2 .. v8}, Lorg/minidns/util/Hex;->AccountListItem(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_7
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p0
.end method
