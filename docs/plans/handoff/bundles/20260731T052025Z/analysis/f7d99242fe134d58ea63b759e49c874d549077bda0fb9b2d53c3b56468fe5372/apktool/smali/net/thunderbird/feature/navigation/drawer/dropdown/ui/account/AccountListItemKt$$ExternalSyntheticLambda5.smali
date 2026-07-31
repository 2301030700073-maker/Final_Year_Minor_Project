.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 5
    .line 6
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 8
    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    and-int/lit8 v0, p3, 0x6

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, p2

    .line 20
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr p3, v0

    .line 32
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 33
    .line 34
    const/16 v1, 0x12

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v3

    .line 43
    :goto_1
    and-int/2addr p3, v2

    .line 44
    move-object v7, p2

    .line 45
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {v7, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_5

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    const p1, 0x6271b7fa

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 59
    .line 60
    .line 61
    sget-object v4, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$DualTone;->Warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 62
    .line 63
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$0:Z

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    const p0, 0x6273a39e

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 74
    .line 75
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 80
    .line 81
    iget-wide p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSecondaryContainer:J

    .line 82
    .line 83
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const p0, 0x6275216d

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 100
    .line 101
    iget-wide p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->error:J

    .line 102
    .line 103
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 104
    .line 105
    .line 106
    :goto_2
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 107
    .line 108
    invoke-direct {v6, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 109
    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x6

    .line 113
    const/4 v5, 0x0

    .line 114
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const p1, 0x62771e05

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 128
    .line 129
    invoke-interface {p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getUnreadMessageCount()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-interface {p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;->getStarredMessageCount()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    move-object v8, v7

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v9, 0x0

    .line 140
    iget-boolean v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountListItemKt$$ExternalSyntheticLambda5;->f$2:Z

    .line 141
    .line 142
    invoke-static/range {v4 .. v9}, Lkotlin/text/CharsKt__CharKt;->AccountListItemBadge(IIZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 143
    .line 144
    .line 145
    move-object v7, v8

    .line 146
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 151
    .line 152
    .line 153
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p0
.end method
