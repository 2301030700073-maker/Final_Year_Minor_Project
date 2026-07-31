.class public final synthetic Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/newpipe/app/navigation/Destination;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Destination;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;IB)V
    .locals 0

    .line 14
    iput p4, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Destination;

    iput-object p2, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    iget-object v6, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 10
    .line 11
    iget-object v7, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iget-object v8, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Destination;

    .line 14
    .line 15
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    and-int/lit8 v10, v1, 0x3

    .line 33
    .line 34
    if-eq v10, v3, :cond_0

    .line 35
    .line 36
    move v3, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v5

    .line 39
    :goto_0
    and-int/2addr v1, v4

    .line 40
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-static {v8, v7, v2, v0, v5}, Lnet/newpipe/app/navigation/NavDisplayKt;->NavDisplay(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Lnet/newpipe/app/navigation/Navigator;Landroidx/compose/runtime/Composer;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v6, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-object v9

    .line 63
    :pswitch_0
    move-object/from16 v0, p1

    .line 64
    .line 65
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x181

    .line 75
    .line 76
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v8, v7, v6, v0, v1}, Lnet/newpipe/app/AppKt;->App(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 81
    .line 82
    .line 83
    return-object v9

    .line 84
    :pswitch_1
    move-object/from16 v1, p1

    .line 85
    .line 86
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 87
    .line 88
    move-object/from16 v6, p2

    .line 89
    .line 90
    check-cast v6, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    and-int/lit8 v7, v6, 0x3

    .line 97
    .line 98
    if-eq v7, v3, :cond_2

    .line 99
    .line 100
    move v3, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move v3, v5

    .line 103
    :goto_2
    and-int/2addr v4, v6

    .line 104
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 105
    .line 106
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    new-instance v10, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;

    .line 113
    .line 114
    const/4 v14, 0x2

    .line 115
    const/4 v15, 0x0

    .line 116
    iget-object v11, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Destination;

    .line 117
    .line 118
    iget-object v12, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 119
    .line 120
    iget-object v13, v0, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 121
    .line 122
    invoke-direct/range {v10 .. v15}, Lnet/newpipe/app/AppKt$$ExternalSyntheticLambda1;-><init>(Lnet/newpipe/app/navigation/Destination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;IB)V

    .line 123
    .line 124
    .line 125
    const v0, 0x3dc6bd5e

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v10, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/16 v3, 0x180

    .line 133
    .line 134
    invoke-static {v5, v2, v0, v1, v3}, Lnet/newpipe/app/theme/ThemeKt;->AppTheme(ZLandroidx/compose/material3/ColorScheme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 139
    .line 140
    .line 141
    :goto_3
    return-object v9

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
