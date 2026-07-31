.class public final Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/scope/Scope;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;->$scope:Lorg/koin/core/scope/Scope;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/newpipe/app/navigation/NavModuleKt$navModule$lambda$0$$inlined$navigation$default$1$1$1;->$scope:Lorg/koin/core/scope/Scope;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x12

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    check-cast p3, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v0, p3, 0x6

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    and-int/lit8 v0, p3, 0x8

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    move-object v0, p2

    .line 36
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v0, p2

    .line 44
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    move v4, v5

    .line 53
    :cond_1
    or-int/2addr p3, v4

    .line 54
    :cond_2
    and-int/lit8 v0, p3, 0x13

    .line 55
    .line 56
    if-eq v0, v3, :cond_3

    .line 57
    .line 58
    move v2, v6

    .line 59
    :cond_3
    and-int/lit8 v0, p3, 0x1

    .line 60
    .line 61
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 62
    .line 63
    invoke-virtual {p2, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    shl-int/lit8 p3, p3, 0x3

    .line 70
    .line 71
    and-int/lit8 p3, p3, 0x70

    .line 72
    .line 73
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    sget-object v0, Lnet/newpipe/app/navigation/NavDisplayKt;->lambda$-1962361402:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 78
    .line 79
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-object v1

    .line 87
    :pswitch_0
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 88
    .line 89
    check-cast p3, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    and-int/lit8 v0, p3, 0x6

    .line 99
    .line 100
    if-nez v0, :cond_7

    .line 101
    .line 102
    and-int/lit8 v0, p3, 0x8

    .line 103
    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    move-object v0, p2

    .line 107
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    move-object v0, p2

    .line 115
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    :goto_2
    if-eqz v0, :cond_6

    .line 122
    .line 123
    move v4, v5

    .line 124
    :cond_6
    or-int/2addr p3, v4

    .line 125
    :cond_7
    and-int/lit8 v0, p3, 0x13

    .line 126
    .line 127
    if-eq v0, v3, :cond_8

    .line 128
    .line 129
    move v2, v6

    .line 130
    :cond_8
    and-int/lit8 v0, p3, 0x1

    .line 131
    .line 132
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 133
    .line 134
    invoke-virtual {p2, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    shl-int/lit8 p3, p3, 0x3

    .line 141
    .line 142
    and-int/lit8 p3, p3, 0x70

    .line 143
    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    sget-object v0, Lnet/newpipe/app/navigation/NavDisplayKt;->lambda$-1159499601:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 149
    .line 150
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 155
    .line 156
    .line 157
    :goto_3
    return-object v1

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
