.class public final Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 77
    .line 78
    :goto_1
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->onLayoutDirectionChange()V

    .line 81
    .line 82
    .line 83
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-static {p2, v1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 98
    .line 99
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 100
    .line 101
    const p2, 0x8000

    .line 102
    .line 103
    .line 104
    and-int/2addr p1, p2

    .line 105
    if-eqz p1, :cond_c

    .line 106
    .line 107
    :goto_2
    if-eqz p0, :cond_c

    .line 108
    .line 109
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 110
    .line 111
    and-int/2addr p1, p2

    .line 112
    if-eqz p1, :cond_b

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    move-object v1, p0

    .line 116
    move-object v2, p1

    .line 117
    :goto_3
    if-eqz v1, :cond_b

    .line 118
    .line 119
    instance-of v3, v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 120
    .line 121
    const/4 v4, 0x1

    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    .line 125
    .line 126
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 127
    .line 128
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    iget-boolean v3, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_3
    iput-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_4
    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 142
    .line 143
    and-int/2addr v3, p2

    .line 144
    if-eqz v3, :cond_a

    .line 145
    .line 146
    instance-of v3, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 147
    .line 148
    if-eqz v3, :cond_a

    .line 149
    .line 150
    move-object v3, v1

    .line 151
    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 152
    .line 153
    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    const/4 v5, 0x0

    .line 156
    :goto_4
    if-eqz v3, :cond_9

    .line 157
    .line 158
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 159
    .line 160
    and-int/2addr v6, p2

    .line 161
    if-eqz v6, :cond_8

    .line 162
    .line 163
    add-int/lit8 v5, v5, 0x1

    .line 164
    .line 165
    if-ne v5, v4, :cond_5

    .line 166
    .line 167
    move-object v1, v3

    .line 168
    goto :goto_5

    .line 169
    :cond_5
    if-nez v2, :cond_6

    .line 170
    .line 171
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 172
    .line 173
    const/16 v6, 0x10

    .line 174
    .line 175
    new-array v6, v6, [Landroidx/compose/ui/Modifier$Node;

    .line 176
    .line 177
    invoke-direct {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    if-eqz v1, :cond_7

    .line 181
    .line 182
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    move-object v1, p1

    .line 186
    :cond_7
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_5
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    if-ne v5, v4, :cond_a

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    :goto_6
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    goto :goto_3

    .line 200
    :cond_b
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 201
    .line 202
    and-int/2addr p1, p2

    .line 203
    if-eqz p1, :cond_c

    .line 204
    .line 205
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_c
    return-object v0

    .line 209
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 210
    .line 211
    check-cast p2, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 212
    .line 213
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 216
    .line 217
    .line 218
    return-object v0

    .line 219
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 220
    .line 221
    check-cast p2, Ljava/lang/Number;

    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 224
    .line 225
    .line 226
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    return-object v0

    .line 232
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    .line 233
    .line 234
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 239
    .line 240
    .line 241
    return-object v0

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
