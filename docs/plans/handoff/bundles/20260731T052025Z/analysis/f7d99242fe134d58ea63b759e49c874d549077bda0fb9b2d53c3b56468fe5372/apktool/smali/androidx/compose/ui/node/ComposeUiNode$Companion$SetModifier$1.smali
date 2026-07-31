.class public final Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$1:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$2:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$3:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 33
    .line 34
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 9
    .line 10
    check-cast p2, Landroidx/compose/runtime/CompositionLocalMap;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 13
    .line 14
    iput-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    .line 15
    .line 16
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 19
    .line 20
    move-object v2, p2

    .line 21
    check-cast v2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 36
    .line 37
    check-cast p2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 38
    .line 39
    invoke-static {p2, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 44
    .line 45
    iget-object v2, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 46
    .line 47
    if-eq v2, v1, :cond_2

    .line 48
    .line 49
    iput-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 79
    .line 80
    :goto_1
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->onLayoutDirectionChange()V

    .line 83
    .line 84
    .line 85
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    invoke-static {p2, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 102
    .line 103
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 104
    .line 105
    const p2, 0x8000

    .line 106
    .line 107
    .line 108
    and-int/2addr p1, p2

    .line 109
    if-eqz p1, :cond_c

    .line 110
    .line 111
    :goto_2
    if-eqz p0, :cond_c

    .line 112
    .line 113
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 114
    .line 115
    and-int/2addr p1, p2

    .line 116
    if-eqz p1, :cond_b

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    move-object v1, p0

    .line 120
    move-object v2, p1

    .line 121
    :goto_3
    if-eqz v1, :cond_b

    .line 122
    .line 123
    instance-of v3, v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 129
    .line 130
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 131
    .line 132
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 133
    .line 134
    iget-boolean v3, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 135
    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_3
    iput-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_4
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 146
    .line 147
    and-int/2addr v3, p2

    .line 148
    if-eqz v3, :cond_a

    .line 149
    .line 150
    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 151
    .line 152
    if-eqz v3, :cond_a

    .line 153
    .line 154
    move-object v3, v1

    .line 155
    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 156
    .line 157
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    :goto_4
    if-eqz v3, :cond_9

    .line 161
    .line 162
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 163
    .line 164
    and-int/2addr v6, p2

    .line 165
    if-eqz v6, :cond_8

    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    .line 169
    if-ne v5, v4, :cond_5

    .line 170
    .line 171
    move-object v1, v3

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    if-nez v2, :cond_6

    .line 174
    .line 175
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 176
    .line 177
    const/16 v6, 0x10

    .line 178
    .line 179
    new-array v6, v6, [Landroidx/compose/ui/Modifier$Node;

    .line 180
    .line 181
    invoke-direct {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_6
    if-eqz v1, :cond_7

    .line 185
    .line 186
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v1, p1

    .line 190
    :cond_7
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    :goto_5
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_9
    if-ne v5, v4, :cond_a

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    :goto_6
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto :goto_3

    .line 204
    :cond_b
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 205
    .line 206
    and-int/2addr p1, p2

    .line 207
    if-eqz p1, :cond_c

    .line 208
    .line 209
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_c
    return-object v0

    .line 213
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 214
    .line 215
    check-cast p2, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 216
    .line 217
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 224
    .line 225
    check-cast p2, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 228
    .line 229
    .line 230
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    return-object v0

    .line 236
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 237
    .line 238
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 239
    .line 240
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 243
    .line 244
    .line 245
    return-object v0

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
