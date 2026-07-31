.class public final Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $colors:Landroidx/compose/material3/MenuItemColors;

.field public final synthetic $enabled:Z

.field public final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field public final synthetic $text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

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
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    and-int/2addr p2, v2

    .line 20
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_6

    .line 25
    .line 26
    const/16 p2, 0x38

    .line 27
    .line 28
    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    const v5, -0x3388f364    # -6.476248E7f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 40
    .line 41
    .line 42
    sget-object v5, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-wide v6, v2, Landroidx/compose/material3/MenuItemColors;->leadingIconColor:J

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-wide v6, v2, Landroidx/compose/material3/MenuItemColors;->disabledLeadingIconColor:J

    .line 50
    .line 51
    :goto_1
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    .line 52
    .line 53
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-instance v6, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;

    .line 61
    .line 62
    invoke-direct {v6, v1, v4}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 63
    .line 64
    .line 65
    const v7, 0x4a0413d4    # 2163957.0f

    .line 66
    .line 67
    .line 68
    invoke-static {v7, v6, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v5, v6, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const v5, -0x33841157    # -6.6042532E7f

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 86
    .line 87
    .line 88
    :goto_2
    sget-object v5, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-wide v6, v2, Landroidx/compose/material3/MenuItemColors;->textColor:J

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-wide v6, v2, Landroidx/compose/material3/MenuItemColors;->disabledTextColor:J

    .line 96
    .line 97
    :goto_3
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    .line 98
    .line 99
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v7, Landroidx/compose/material3/TooltipKt$TooltipBox$3;

    .line 107
    .line 108
    iget-object v8, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 109
    .line 110
    iget-object p0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 111
    .line 112
    invoke-direct {v7, v4, p0, v8, v3}, Landroidx/compose/material3/TooltipKt$TooltipBox$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 113
    .line 114
    .line 115
    const v3, -0x3542ef07    # -6195324.5f

    .line 116
    .line 117
    .line 118
    invoke-static {v3, v7, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v6, v3, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 123
    .line 124
    .line 125
    if-eqz p0, :cond_5

    .line 126
    .line 127
    const v3, -0x33765c87    # -7.216225E7f

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 131
    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-wide v2, v2, Landroidx/compose/material3/MenuItemColors;->trailingIconColor:J

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_4
    iget-wide v2, v2, Landroidx/compose/material3/MenuItemColors;->disabledTrailingIconColor:J

    .line 139
    .line 140
    :goto_4
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 141
    .line 142
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v2, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;

    .line 150
    .line 151
    const/4 v3, 0x3

    .line 152
    invoke-direct {v2, v3, p0}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    const p0, -0x2ea31a35

    .line 156
    .line 157
    .line 158
    invoke-static {p0, v2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/Updater;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_5
    const p0, -0x33716f37    # -7.4745416E7f

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 180
    .line 181
    .line 182
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p0
.end method
