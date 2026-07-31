.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ZLnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-boolean p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 3
    .line 4
    move-object/from16 p1, p2

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 7
    .line 8
    move-object/from16 v1, p3

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x6

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x2

    .line 35
    :goto_0
    or-int/2addr v1, v2

    .line 36
    :cond_1
    and-int/lit8 v2, v1, 0x13

    .line 37
    .line 38
    const/16 v3, 0x12

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-eq v2, v3, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v6

    .line 46
    :goto_1
    and-int/lit8 v3, v1, 0x1

    .line 47
    .line 48
    move-object v4, p1

    .line 49
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 50
    .line 51
    invoke-virtual {v4, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-boolean v7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$0:Z

    .line 58
    .line 59
    iget-boolean v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$3:Z

    .line 60
    .line 61
    if-eqz v7, :cond_3

    .line 62
    .line 63
    const p0, 0x2151ad03

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 67
    .line 68
    .line 69
    and-int/lit8 p0, v1, 0xe

    .line 70
    .line 71
    invoke-static {v0, v4, p0}, Lorg/jsoup/Jsoup;->AccountSelectionView(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    const p1, 0x21528850

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 82
    .line 83
    .line 84
    and-int/lit8 v5, v1, 0xe

    .line 85
    .line 86
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$1:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 87
    .line 88
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/account/AccountViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    invoke-static/range {v0 .. v5}, Lorg/jsoup/Jsoup;->AccountSelectedView(Landroidx/compose/foundation/layout/RowScope;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 94
    .line 95
    .line 96
    :goto_2
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const/4 v12, 0x0

    .line 108
    const/16 v13, 0xb

    .line 109
    .line 110
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    const/high16 v11, 0x41800000    # 16.0f

    .line 115
    .line 116
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    sget-object p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 121
    .line 122
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 127
    .line 128
    iget-wide p0, p0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurfaceVariant:J

    .line 129
    .line 130
    new-instance v10, Landroidx/compose/ui/graphics/Color;

    .line 131
    .line 132
    invoke-direct {v10, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 133
    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    move v9, v3

    .line 138
    move-object v11, v4

    .line 139
    invoke-static/range {v7 .. v13}, Lorg/jsoup/nodes/NodeUtils;->AnimatedExpandIcon-xqIIw2o(ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 144
    .line 145
    .line 146
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 147
    .line 148
    return-object p0
.end method
