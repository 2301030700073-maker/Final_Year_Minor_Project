.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(ZLnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 7
    .line 8
    iput p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    and-int/2addr p2, v2

    .line 20
    move-object v7, p1

    .line 21
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {v7, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-boolean p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const p1, 0x5771ca85

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 40
    .line 41
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 46
    .line 47
    iget-wide p1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSecondary:J

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const p1, 0x5771cec3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 60
    .line 61
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 66
    .line 67
    iget-wide p1, p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->onSurface:J

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :goto_2
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$1:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 71
    .line 72
    iget-object v0, v0, Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;->icon:Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    iget-object v0, v0, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;

    .line 77
    .line 78
    iget-object v4, v0, Lnet/thunderbird/feature/account/avatar/DefaultAvatarIcons;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 79
    .line 80
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    iget p0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda1;->f$2:F

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const/high16 v0, 0x41000000    # 8.0f

    .line 100
    .line 101
    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v6, Landroidx/compose/ui/graphics/Color;

    .line 106
    .line 107
    invoke-direct {v6, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 108
    .line 109
    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x4

    .line 112
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 117
    .line 118
    .line 119
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method
