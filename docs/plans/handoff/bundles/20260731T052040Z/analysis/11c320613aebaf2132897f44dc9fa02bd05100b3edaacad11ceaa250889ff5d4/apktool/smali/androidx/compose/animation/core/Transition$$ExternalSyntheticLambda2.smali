.class public final synthetic Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p1, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput p1, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ILjava/lang/Object;II)V
    .locals 0

    .line 15
    iput p5, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$2:I

    iput-object p3, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    or-int/2addr p2, v2

    .line 29
    invoke-virtual {p0, v4, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    check-cast p0, [Landroidx/compose/runtime/ProvidedValue;

    .line 34
    .line 35
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    check-cast p2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    or-int/lit8 p2, v3, 0x1

    .line 45
    .line 46
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/ProvidedValue;

    .line 55
    .line 56
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 59
    .line 60
    check-cast p2, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    or-int/lit8 p2, v3, 0x1

    .line 66
    .line 67
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :pswitch_2
    check-cast p0, Landroidx/compose/material3/ColorScheme;

    .line 76
    .line 77
    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 78
    .line 79
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 80
    .line 81
    check-cast p2, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    or-int/lit8 p2, v3, 0x1

    .line 87
    .line 88
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-static {p0, v4, p1, p2}, Landroidx/compose/material3/MaterialThemeKt;->MaterialExpressiveTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 97
    .line 98
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 99
    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p0, v3, p2, p1, v4}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->Item(IILandroidx/compose/runtime/Composer;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 114
    .line 115
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 116
    .line 117
    check-cast p2, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    and-int/lit8 v0, p2, 0x3

    .line 124
    .line 125
    const/4 v5, 0x2

    .line 126
    const/4 v6, 0x0

    .line 127
    if-eq v0, v5, :cond_0

    .line 128
    .line 129
    move v0, v2

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    move v0, v6

    .line 132
    :goto_0
    and-int/2addr p2, v2

    .line 133
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 134
    .line 135
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_1

    .line 140
    .line 141
    invoke-interface {p0, v3, v6, p1, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->Item(IILandroidx/compose/runtime/Composer;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 146
    .line 147
    .line 148
    :goto_1
    return-object v1

    .line 149
    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    .line 150
    .line 151
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 152
    .line 153
    check-cast p2, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    invoke-virtual {p0, v3, p2, p1, v4}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->Item(IILandroidx/compose/runtime/Composer;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-object v1

    .line 166
    :pswitch_6
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 167
    .line 168
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 169
    .line 170
    check-cast p2, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    or-int/lit8 p2, v3, 0x1

    .line 176
    .line 177
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    invoke-virtual {p0, v4, p1, p2}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 182
    .line 183
    .line 184
    return-object v1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
