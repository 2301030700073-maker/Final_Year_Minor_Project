.class public final Lorg/jetbrains/compose/resources/ResourceEnvironmentKt$DefaultComposeEnvironment$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static rememberEnvironment(Landroidx/compose/runtime/Composer;)Lorg/jetbrains/compose/resources/ResourceEnvironment;
    .locals 8

    .line 1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x6bc47f91

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->platformLocaleDelegate:Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/LocaleList;->get()Landroidx/compose/ui/text/intl/Locale;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0}, Landroidx/compose/foundation/ImageKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    or-int/2addr v3, v4

    .line 40
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    or-int/2addr v3, v4

    .line 45
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 52
    .line 53
    if-ne v4, v3, :cond_7

    .line 54
    .line 55
    :cond_0
    new-instance v4, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 56
    .line 57
    new-instance v3, Lorg/jetbrains/compose/resources/LanguageQualifier;

    .line 58
    .line 59
    iget-object v5, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-direct {v3, v5}, Lorg/jetbrains/compose/resources/LanguageQualifier;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Lorg/jetbrains/compose/resources/RegionQualifier;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v5, v0}, Lorg/jetbrains/compose/resources/RegionQualifier;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    sget-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->DARK:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    sget-object v0, Lorg/jetbrains/compose/resources/ThemeQualifier;->LIGHT:Lorg/jetbrains/compose/resources/ThemeQualifier;

    .line 90
    .line 91
    :goto_0
    invoke-interface {v2}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sget-object v2, Lorg/jetbrains/compose/resources/DensityQualifier;->Companion:Lorg/jetbrains/compose/resources/ThemeQualifier$Companion;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    float-to-double v1, v1

    .line 101
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 102
    .line 103
    cmpg-double v6, v1, v6

    .line 104
    .line 105
    if-gtz v6, :cond_2

    .line 106
    .line 107
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->LDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 111
    .line 112
    cmpg-double v6, v1, v6

    .line 113
    .line 114
    if-gtz v6, :cond_3

    .line 115
    .line 116
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->MDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    .line 120
    .line 121
    cmpg-double v6, v1, v6

    .line 122
    .line 123
    if-gtz v6, :cond_4

    .line 124
    .line 125
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->HDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 129
    .line 130
    cmpg-double v6, v1, v6

    .line 131
    .line 132
    if-gtz v6, :cond_5

    .line 133
    .line 134
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->XHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    .line 138
    .line 139
    cmpg-double v1, v1, v6

    .line 140
    .line 141
    if-gtz v1, :cond_6

    .line 142
    .line 143
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->XXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    sget-object v1, Lorg/jetbrains/compose/resources/DensityQualifier;->XXXHDPI:Lorg/jetbrains/compose/resources/DensityQualifier;

    .line 147
    .line 148
    :goto_1
    invoke-direct {v4, v3, v5, v0, v1}, Lorg/jetbrains/compose/resources/ResourceEnvironment;-><init>(Lorg/jetbrains/compose/resources/LanguageQualifier;Lorg/jetbrains/compose/resources/RegionQualifier;Lorg/jetbrains/compose/resources/ThemeQualifier;Lorg/jetbrains/compose/resources/DensityQualifier;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    check-cast v4, Lorg/jetbrains/compose/resources/ResourceEnvironment;

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 158
    .line 159
    .line 160
    return-object v4
.end method
