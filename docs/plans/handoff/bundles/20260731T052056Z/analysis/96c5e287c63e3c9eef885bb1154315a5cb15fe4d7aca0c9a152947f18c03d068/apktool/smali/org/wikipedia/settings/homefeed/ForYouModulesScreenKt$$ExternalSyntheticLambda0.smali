.class public final synthetic Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/settings/homefeed/ModulesViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 8
    .line 9
    const-string v4, "disable"

    .line 10
    .line 11
    const-string v5, "enable"

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    iget-object v7, v0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    iget-object v8, v0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/settings/homefeed/ModulesViewModel;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/settings/homefeed/ForYouModulesScreenKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 20
    .line 21
    move-object/from16 v13, p1

    .line 22
    .line 23
    check-cast v13, Ljava/lang/String;

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    move-object/from16 v1, p2

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    move-object v10, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v10, v4

    .line 50
    :goto_0
    const/4 v15, 0x0

    .line 51
    const/16 v16, 0xf2

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const-string v12, "feed_community"

    .line 55
    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {v8, v13, v1}, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->toggleModuleVisibility(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    if-nez v1, :cond_6

    .line 64
    .line 65
    iget-object v0, v8, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->hiddenModules:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 66
    .line 67
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 68
    .line 69
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/util/Set;

    .line 74
    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v3, v0

    .line 79
    :goto_1
    invoke-static {v3, v13}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lorg/wikipedia/settings/homefeed/CommunityModuleType;->Companion:Lorg/wikipedia/settings/homefeed/CommunityModuleType$Companion;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lorg/wikipedia/settings/homefeed/CommunityModuleType$Companion;->entries()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 114
    .line 115
    iget-object v3, v3, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 116
    .line 117
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    :goto_2
    invoke-interface {v7, v13}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    .line 129
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_3
    return-object v2

    .line 133
    :pswitch_0
    move-object/from16 v1, p2

    .line 134
    .line 135
    check-cast v1, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    if-eqz v9, :cond_8

    .line 149
    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    move-object v10, v5

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    move-object v10, v4

    .line 155
    :goto_4
    const/4 v15, 0x0

    .line 156
    const/16 v16, 0xf2

    .line 157
    .line 158
    const/4 v11, 0x0

    .line 159
    const-string v12, "feed_for_you"

    .line 160
    .line 161
    const/4 v14, 0x0

    .line 162
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 163
    .line 164
    .line 165
    :cond_8
    invoke-virtual {v8, v13, v1}, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->toggleModuleVisibility(Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    if-nez v1, :cond_d

    .line 169
    .line 170
    iget-object v0, v8, Lorg/wikipedia/settings/homefeed/ModulesViewModel;->hiddenModules:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 171
    .line 172
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 173
    .line 174
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Ljava/util/Set;

    .line 179
    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    move-object v3, v0

    .line 184
    :goto_5
    invoke-static {v3, v13}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v1, Lorg/wikipedia/settings/homefeed/ForYouModuleType;->Companion:Lorg/wikipedia/settings/homefeed/ForYouModuleType$Companion;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lorg/wikipedia/settings/homefeed/ForYouModuleType$Companion;->entries()Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_a

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_c

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lorg/wikipedia/compose/components/ToggleSettingItem;

    .line 219
    .line 220
    iget-object v3, v3, Lorg/wikipedia/compose/components/ToggleSettingItem;->key:Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-nez v3, :cond_b

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_c
    :goto_6
    invoke-interface {v7, v13}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 233
    .line 234
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_d
    :goto_7
    return-object v2

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
