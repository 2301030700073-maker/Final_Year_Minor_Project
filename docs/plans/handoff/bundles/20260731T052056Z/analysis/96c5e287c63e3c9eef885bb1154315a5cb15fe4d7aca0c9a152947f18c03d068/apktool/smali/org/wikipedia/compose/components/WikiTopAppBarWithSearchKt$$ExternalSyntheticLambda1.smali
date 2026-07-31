.class public final synthetic Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 2
    .line 3
    check-cast p2, Lorg/wikipedia/compose/components/TopAppBarState;

    .line 4
    .line 5
    move-object v5, p3

    .line 6
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    check-cast p4, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object p1, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    aget p1, p1, p2

    .line 26
    .line 27
    iget-object p2, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    const/4 p4, 0x1

    .line 31
    if-eq p1, p4, :cond_1

    .line 32
    .line 33
    const/4 p4, 0x2

    .line 34
    if-ne p1, p4, :cond_0

    .line 35
    .line 36
    const p1, -0x6ee537dc

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;

    .line 43
    .line 44
    invoke-direct {p1, p2, p3}, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 45
    .line 46
    .line 47
    const p2, 0x34b388a2

    .line 48
    .line 49
    .line 50
    invoke-static {p2, p1, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/high16 v6, 0x30000

    .line 55
    .line 56
    const/16 v7, 0x19

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$4:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/compose/components/TabsBoxKt;->WikiTopAppBar-WH-ejsw(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const p0, 0x3639eec4

    .line 72
    .line 73
    .line 74
    invoke-static {v5, p0, p3}, Landroidx/compose/ui/Modifier$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lcoil3/network/HttpException;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    throw p0

    .line 79
    :cond_1
    const p1, -0x6efbbab6

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 96
    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    if-ne v1, v2, :cond_3

    .line 100
    .line 101
    :cond_2
    new-instance v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    invoke-direct {v1, p1, v0}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    move-object v3, v1

    .line 112
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 113
    .line 114
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    if-ne v1, v2, :cond_5

    .line 125
    .line 126
    :cond_4
    new-instance v1, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-direct {v1, p1, p2, p4}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    move-object v4, v1

    .line 135
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 136
    .line 137
    new-instance v0, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 138
    .line 139
    iget-object v1, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v0, v1, p1, p2, p4}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    const p1, -0x4b9fa71d

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v0, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/high16 v7, 0x30000

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    iget-object v2, p0, Lorg/wikipedia/compose/components/WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 155
    .line 156
    move-object v6, v5

    .line 157
    move-object v5, p1

    .line 158
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/compose/components/TabsBoxKt;->SearchTopAppBar(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 159
    .line 160
    .line 161
    move-object v5, v6

    .line 162
    invoke-virtual {v5, p3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 163
    .line 164
    .line 165
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p0
.end method
