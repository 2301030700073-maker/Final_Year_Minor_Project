.class public final Landroidx/compose/material3/ListItemKt$ListItem$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $decoratedHeadlineContent:Ljava/lang/Object;

.field public final synthetic $decoratedLeadingContent:Ljava/lang/Object;

.field public final synthetic $decoratedOverlineContent:Ljava/lang/Object;

.field public final synthetic $decoratedSupportingContent:Ljava/lang/Object;

.field public final synthetic $decoratedTrailingContent:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedLeadingContent:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedTrailingContent:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedHeadlineContent:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedOverlineContent:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedSupportingContent:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/compose/DialogNavigator$Destination;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedLeadingContent:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedTrailingContent:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedOverlineContent:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedSupportingContent:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedHeadlineContent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedHeadlineContent:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedOverlineContent:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedSupportingContent:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    iget-object v6, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedLeadingContent:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/material3/ListItemKt$ListItem$2;->$decoratedTrailingContent:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object v0, p1

    .line 20
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    move-object/from16 v7, p2

    .line 23
    .line 24
    check-cast v7, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    check-cast p0, Landroidx/navigation/compose/DialogNavigator;

    .line 31
    .line 32
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .line 33
    .line 34
    and-int/lit8 v7, v7, 0x3

    .line 35
    .line 36
    if-ne v7, v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    or-int/2addr v5, v7

    .line 58
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 67
    .line 68
    if-ne v7, v5, :cond_3

    .line 69
    .line 70
    :cond_2
    new-instance v7, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/16 v5, 0x10

    .line 73
    .line 74
    invoke-direct {v7, v4, v6, p0, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 81
    .line 82
    invoke-static {v6, v7, v0}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 83
    .line 84
    .line 85
    check-cast v3, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 86
    .line 87
    new-instance p0, Landroidx/compose/material3/ButtonKt$Button$2$1;

    .line 88
    .line 89
    check-cast v2, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {p0, v4, v2, v6}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const v2, -0x1da93fb4

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p0, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const/16 v2, 0x180

    .line 104
    .line 105
    invoke-static {v6, v3, p0, v0, v2}, Landroidx/work/Operation$State;->LocalOwnersProvider(Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v1

    .line 109
    :pswitch_0
    move-object v12, p1

    .line 110
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    move-object/from16 v0, p2

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Number;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    and-int/lit8 v7, v0, 0x3

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    if-eq v7, v5, :cond_4

    .line 124
    .line 125
    move v5, v8

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    const/4 v5, 0x0

    .line 128
    :goto_2
    and-int/2addr v0, v8

    .line 129
    invoke-virtual {v12, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    move-object v7, v6

    .line 136
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 137
    .line 138
    move-object v8, p0

    .line 139
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    move-object v9, v2

    .line 142
    check-cast v9, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 143
    .line 144
    move-object v10, v3

    .line 145
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 146
    .line 147
    move-object v11, v4

    .line 148
    check-cast v11, Lkotlin/jvm/functions/Function2;

    .line 149
    .line 150
    const/16 v13, 0x180

    .line 151
    .line 152
    invoke-static/range {v7 .. v13}, Landroidx/compose/material3/CardKt;->ListItemLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 157
    .line 158
    .line 159
    :goto_3
    return-object v1

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
