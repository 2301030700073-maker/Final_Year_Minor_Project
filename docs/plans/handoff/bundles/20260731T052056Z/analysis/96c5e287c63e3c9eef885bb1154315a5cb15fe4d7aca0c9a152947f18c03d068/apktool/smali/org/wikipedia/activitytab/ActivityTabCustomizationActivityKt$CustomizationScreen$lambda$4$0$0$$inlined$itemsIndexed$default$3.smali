.class public final Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $areGamesAvailable$inlined:Z

.field public final synthetic $currentModules$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field public final synthetic $haveAtLeastOneDonation$inlined:Z

.field public final synthetic $items:Lkotlin/enums/EnumEntries;


# direct methods
.method public constructor <init>(Lkotlin/enums/EnumEntries;ZZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$items:Lkotlin/enums/EnumEntries;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$haveAtLeastOneDonation$inlined:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$areGamesAvailable$inlined:Z

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$currentModules$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    move-object v4, p3

    .line 10
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    check-cast p4, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    and-int/lit8 p4, p3, 0x6

    .line 19
    .line 20
    if-nez p4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x2

    .line 31
    :goto_0
    or-int/2addr p1, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p1, p3

    .line 34
    :goto_1
    and-int/lit8 p3, p3, 0x30

    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v4, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    const/16 p3, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 p3, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr p1, p3

    .line 50
    :cond_3
    and-int/lit16 p3, p1, 0x93

    .line 51
    .line 52
    const/16 p4, 0x92

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    const/4 v7, 0x0

    .line 56
    if-eq p3, p4, :cond_4

    .line 57
    .line 58
    move p3, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move p3, v7

    .line 61
    :goto_3
    and-int/2addr p1, v6

    .line 62
    invoke-virtual {v4, p1, p3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_b

    .line 67
    .line 68
    iget-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$items:Lkotlin/enums/EnumEntries;

    .line 69
    .line 70
    check-cast p1, Lkotlin/enums/EnumEntriesList;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lkotlin/enums/EnumEntriesList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lorg/wikipedia/activitytab/ModuleType;

    .line 77
    .line 78
    const p3, -0x159463b1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 82
    .line 83
    .line 84
    sget-object p3, Lorg/wikipedia/activitytab/ModuleType;->DONATIONS:Lorg/wikipedia/activitytab/ModuleType;

    .line 85
    .line 86
    if-ne p1, p3, :cond_5

    .line 87
    .line 88
    iget-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$haveAtLeastOneDonation$inlined:Z

    .line 89
    .line 90
    if-eqz p3, :cond_6

    .line 91
    .line 92
    :cond_5
    sget-object p3, Lorg/wikipedia/activitytab/ModuleType;->GAMES:Lorg/wikipedia/activitytab/ModuleType;

    .line 93
    .line 94
    if-ne p1, p3, :cond_7

    .line 95
    .line 96
    iget-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$areGamesAvailable$inlined:Z

    .line 97
    .line 98
    if-nez p3, :cond_7

    .line 99
    .line 100
    :cond_6
    :goto_4
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;->$currentModules$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 105
    .line 106
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 111
    .line 112
    invoke-virtual {p3, p1}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p1}, Lorg/wikipedia/activitytab/ModuleType;->getDisplayName()I

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    invoke-static {p3, v4}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    invoke-virtual {v4, p3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p4

    .line 136
    if-nez p3, :cond_8

    .line 137
    .line 138
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 139
    .line 140
    if-ne p4, p3, :cond_9

    .line 141
    .line 142
    :cond_8
    new-instance p4, Landroidx/compose/runtime/Latch$await$2$2;

    .line 143
    .line 144
    const/4 p3, 0x7

    .line 145
    invoke-direct {p4, p3, p1, p0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, p4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    move-object v2, p4

    .line 152
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    const/4 v5, 0x0

    .line 156
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CustomizationScreenSwitch(ZLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lorg/wikipedia/activitytab/ModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Lkotlin/collections/AbstractCollection;

    .line 164
    .line 165
    invoke-virtual {p0}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    sub-int/2addr p0, v6

    .line 170
    if-ge p2, p0, :cond_a

    .line 171
    .line 172
    const p0, -0x15895540

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 176
    .line 177
    .line 178
    sget-object p0, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 179
    .line 180
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 185
    .line 186
    iget-wide v2, p0, Lorg/wikipedia/compose/theme/WikipediaColor;->borderColor:J

    .line 187
    .line 188
    const/4 v5, 0x0

    .line 189
    const/4 v6, 0x3

    .line 190
    const/4 v0, 0x0

    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/GapComposer;II)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_a
    const p0, -0x1586f51e

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_b
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 210
    .line 211
    .line 212
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 213
    .line 214
    return-object p0
.end method
