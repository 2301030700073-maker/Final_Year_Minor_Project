.class public final synthetic Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v4, :cond_0

    .line 26
    .line 27
    move v3, v5

    .line 28
    :cond_0
    and-int/2addr p2, v5

    .line 29
    move-object v11, p1

    .line 30
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {v11, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    if-ne p2, v2, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance p2, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 51
    .line 52
    const/4 p1, 0x4

    .line 53
    invoke-direct {p2, p1, v6}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    move-object v8, p2

    .line 60
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    iget-object v7, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-static/range {v7 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-object v1

    .line 75
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 76
    .line 77
    if-eq v0, v4, :cond_4

    .line 78
    .line 79
    move v3, v5

    .line 80
    :cond_4
    and-int/2addr p2, v5

    .line 81
    move-object v11, p1

    .line 82
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    invoke-virtual {v11, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    if-ne p2, v2, :cond_6

    .line 101
    .line 102
    :cond_5
    new-instance p2, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;

    .line 103
    .line 104
    const/16 p1, 0x19

    .line 105
    .line 106
    invoke-direct {p2, p1, v6}, Landroidx/compose/material3/ExposedDropdownMenuKt$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    move-object v8, p2

    .line 113
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    iget-object v7, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 118
    .line 119
    const/4 v9, 0x0

    .line 120
    invoke-static/range {v7 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/organism/TopAppBarKt;->TopAppBarWithBackButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-object v1

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
