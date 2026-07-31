.class public final synthetic Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Landroidx/navigation3/runtime/NavEntry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/lang/Object;Ljava/util/Set;Landroidx/compose/runtime/MutableState;Ljava/util/List;Landroidx/navigation3/runtime/NavEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$5:Landroidx/navigation3/runtime/NavEntry;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p3, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    and-int/lit8 p3, p1, 0x11

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eq p3, v0, :cond_0

    .line 16
    .line 17
    move p3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p3, v2

    .line 20
    :goto_0
    and-int/2addr p1, v1

    .line 21
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {p2, p1, p3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_7

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-object v0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    or-int/2addr p3, v1

    .line 42
    iget-object v1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    or-int/2addr p3, v3

    .line 49
    iget-object v3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    or-int/2addr p3, v4

    .line 56
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-nez p3, :cond_1

    .line 61
    .line 62
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 63
    .line 64
    if-ne v4, p3, :cond_2

    .line 65
    .line 66
    :cond_1
    new-instance v4, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    invoke-direct {v4, p1, v0, v1, v3}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/lang/Object;Ljava/util/Set;Landroidx/compose/runtime/MutableState;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    invoke-static {v0, v4, p2}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 77
    .line 78
    .line 79
    const p1, 0x156519fd

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    .line 86
    .line 87
    instance-of p3, p1, Ljava/util/RandomAccess;

    .line 88
    .line 89
    if-eqz p3, :cond_4

    .line 90
    .line 91
    new-instance p3, Landroidx/collection/MutableScatterSet;

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-direct {p3, v0}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    move v3, v2

    .line 114
    :goto_1
    if-ge v3, v1, :cond_5

    .line 115
    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {p3, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance p3, Ljava/util/LinkedHashSet;

    .line 136
    .line 137
    invoke-direct {p3, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iget-object p0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda0;->f$5:Landroidx/navigation3/runtime/NavEntry;

    .line 149
    .line 150
    if-nez p1, :cond_6

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    if-eqz p3, :cond_6

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    check-cast p3, Landroidx/navigation3/runtime/NavEntryDecorator;

    .line 171
    .line 172
    new-instance v0, Landroidx/navigation3/runtime/NavEntry;

    .line 173
    .line 174
    new-instance v1, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;

    .line 175
    .line 176
    const/4 v3, 0x4

    .line 177
    invoke-direct {v1, p3, p0, v3}, Landroidx/compose/foundation/IndicationKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 178
    .line 179
    .line 180
    const p3, -0x13b7f6f4

    .line 181
    .line 182
    .line 183
    invoke-static {p3, v1, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    invoke-direct {v0, p0, p3}, Landroidx/navigation3/runtime/NavEntry;-><init>(Landroidx/navigation3/runtime/NavEntry;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 188
    .line 189
    .line 190
    move-object p0, v0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p2, v2}, Landroidx/navigation3/runtime/NavEntry;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 200
    .line 201
    .line 202
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 203
    .line 204
    return-object p0
.end method
