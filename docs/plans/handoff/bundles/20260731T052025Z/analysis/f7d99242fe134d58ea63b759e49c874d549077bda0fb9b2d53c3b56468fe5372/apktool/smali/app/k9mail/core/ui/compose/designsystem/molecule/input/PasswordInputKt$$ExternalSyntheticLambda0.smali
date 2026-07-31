.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZI)V
    .locals 0

    .line 1
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-boolean p4, p0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v3, :cond_0

    .line 30
    .line 31
    move v3, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v5

    .line 34
    :goto_0
    and-int/2addr v7, v4

    .line 35
    move-object v14, v1

    .line 36
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v14, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_molecule_email_address_input_label$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 51
    .line 52
    invoke-static {v1, v14}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    move v13, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v13, v5

    .line 61
    :goto_1
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 62
    .line 63
    const/16 v15, 0x180

    .line 64
    .line 65
    const/16 v16, 0x60

    .line 66
    .line 67
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v9, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    iget-boolean v12, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 72
    .line 73
    invoke-static/range {v8 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedEmailAddress(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;II)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-object v2

    .line 81
    :pswitch_0
    move-object/from16 v1, p1

    .line 82
    .line 83
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 84
    .line 85
    move-object/from16 v7, p2

    .line 86
    .line 87
    check-cast v7, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    and-int/lit8 v8, v7, 0x3

    .line 94
    .line 95
    if-eq v8, v3, :cond_3

    .line 96
    .line 97
    move v3, v4

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    move v3, v5

    .line 100
    :goto_3
    and-int/2addr v7, v4

    .line 101
    move-object v15, v1

    .line 102
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 103
    .line 104
    invoke-virtual {v15, v7, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    sget-object v1, Lnet/thunderbird/core/ui/designsystem/resources/String0_commonMainKt;->designsystem_molecule_password_input_label$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 111
    .line 112
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 117
    .line 118
    invoke-static {v1, v15}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    move v14, v4

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    move v14, v5

    .line 127
    :goto_4
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 128
    .line 129
    const/4 v12, 0x0

    .line 130
    const/16 v16, 0x180

    .line 131
    .line 132
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v9, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 135
    .line 136
    iget-boolean v13, v0, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/PasswordInputKt$$ExternalSyntheticLambda0;->f$3:Z

    .line 137
    .line 138
    invoke-static/range {v8 .. v16}, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldLabelKt;->TextFieldOutlinedPassword(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZLandroidx/compose/runtime/Composer;I)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 143
    .line 144
    .line 145
    :goto_5
    return-object v2

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
