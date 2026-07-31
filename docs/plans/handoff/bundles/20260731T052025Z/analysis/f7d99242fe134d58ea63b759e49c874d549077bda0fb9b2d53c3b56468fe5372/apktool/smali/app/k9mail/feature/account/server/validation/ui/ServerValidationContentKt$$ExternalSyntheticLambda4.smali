.class public final synthetic Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda4;->f$0:Z

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
    .locals 8

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x12

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-boolean p0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda4;->f$0:Z

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 15
    .line 16
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    check-cast p3, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 v0, p3, 0x6

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move-object v0, p2

    .line 35
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    move v4, v5

    .line 44
    :cond_0
    or-int/2addr p3, v4

    .line 45
    :cond_1
    and-int/lit8 v0, p3, 0x13

    .line 46
    .line 47
    if-eq v0, v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v6, v7

    .line 51
    :goto_0
    and-int/lit8 v0, p3, 0x1

    .line 52
    .line 53
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {p2, v0, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    const p0, 0x7f120083

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const p0, 0x7f120086

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-static {p2, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    and-int/lit8 p3, p3, 0xe

    .line 75
    .line 76
    invoke-static {p1, v2, p0, p2, p3}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-object v1

    .line 84
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    and-int/lit8 v0, p3, 0x6

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    move-object v0, p2

    .line 92
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    move v4, v5

    .line 101
    :cond_5
    or-int/2addr p3, v4

    .line 102
    :cond_6
    and-int/lit8 v0, p3, 0x13

    .line 103
    .line 104
    if-eq v0, v3, :cond_7

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v6, v7

    .line 108
    :goto_3
    and-int/lit8 v0, p3, 0x1

    .line 109
    .line 110
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    invoke-virtual {p2, v0, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    const p0, 0x7f120084

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_8
    const p0, 0x7f120087

    .line 125
    .line 126
    .line 127
    :goto_4
    invoke-static {p2, p0}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    and-int/lit8 p3, p3, 0xe

    .line 132
    .line 133
    invoke-static {p1, v2, p0, p2, p3}, Landroidx/room/util/SchemaInfoUtilKt;->LoadingItem(Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_9
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
