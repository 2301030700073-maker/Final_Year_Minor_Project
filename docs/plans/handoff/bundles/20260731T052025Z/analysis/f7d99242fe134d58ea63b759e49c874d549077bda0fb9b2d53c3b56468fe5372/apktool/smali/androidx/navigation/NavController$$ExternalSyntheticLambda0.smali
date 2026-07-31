.class public final synthetic Landroidx/navigation/NavController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "modify"

    .line 4
    .line 5
    const-string v2, "save"

    .line 6
    .line 7
    const-string v3, "settings_import"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 18
    .line 19
    .line 20
    return-object v5

    .line 21
    :pswitch_0
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 22
    .line 23
    .line 24
    return-object v5

    .line 25
    :pswitch_1
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 26
    .line 27
    .line 28
    return-object v5

    .line 29
    :pswitch_2
    invoke-static {p0, v3}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v5

    .line 33
    :pswitch_3
    const-string v0, "account_setup"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v5

    .line 39
    :pswitch_4
    const-string v0, "settings_import_qr_code"

    .line 40
    .line 41
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v5

    .line 45
    :pswitch_5
    invoke-static {p0, v3}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v5

    .line 49
    :pswitch_6
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 50
    .line 51
    .line 52
    return-object v5

    .line 53
    :pswitch_7
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 54
    .line 55
    .line 56
    return-object v5

    .line 57
    :pswitch_8
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 58
    .line 59
    .line 60
    return-object v5

    .line 61
    :pswitch_9
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 62
    .line 63
    .line 64
    return-object v5

    .line 65
    :pswitch_a
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 66
    .line 67
    .line 68
    return-object v5

    .line 69
    :pswitch_b
    const-string v0, "outgoing-server/validation"

    .line 70
    .line 71
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v5

    .line 75
    :pswitch_c
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 76
    .line 77
    .line 78
    return-object v5

    .line 79
    :pswitch_d
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 80
    .line 81
    .line 82
    return-object v5

    .line 83
    :pswitch_e
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 84
    .line 85
    .line 86
    return-object v5

    .line 87
    :pswitch_f
    const-string v0, "sync-options"

    .line 88
    .line 89
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v5

    .line 93
    :pswitch_10
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 94
    .line 95
    .line 96
    return-object v5

    .line 97
    :pswitch_11
    const-string v0, "create-account"

    .line 98
    .line 99
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object v5

    .line 103
    :pswitch_12
    invoke-static {p0, v2}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object v5

    .line 107
    :pswitch_13
    const-string/jumbo v0, "validate"

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v5

    .line 114
    :pswitch_14
    invoke-static {p0, v1, v4}, Landroidx/navigation/NavHostController;->popBackStack$default(Landroidx/navigation/NavHostController;Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    return-object v5

    .line 118
    :pswitch_15
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 119
    .line 120
    .line 121
    return-object v5

    .line 122
    :pswitch_16
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    .line 123
    .line 124
    .line 125
    return-object v5

    .line 126
    :pswitch_17
    invoke-static {p0, v2}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-object v5

    .line 130
    :pswitch_18
    invoke-static {p0, v1, v4}, Landroidx/navigation/NavHostController;->popBackStack$default(Landroidx/navigation/NavHostController;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    return-object v5

    .line 134
    :pswitch_19
    new-instance v0, Landroidx/navigation/NavInflater;

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 137
    .line 138
    iget-object p0, p0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 139
    .line 140
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 141
    .line 142
    invoke-direct {v0, v1, p0}, Landroidx/navigation/NavInflater;-><init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :pswitch_1a
    iget-object v0, p0, Landroidx/navigation/NavHostController;->onBackPressedCallback:Lcom/fsck/k9/activity/MessageCompose$3;

    .line 147
    .line 148
    iget-boolean v1, p0, Landroidx/navigation/NavHostController;->enableOnBackPressedCallback:Z

    .line 149
    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->getDestinationCountOnBackStack()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    const/4 v1, 0x1

    .line 157
    if-le p0, v1, :cond_0

    .line 158
    .line 159
    move v4, v1

    .line 160
    :cond_0
    invoke-virtual {v0, v4}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 161
    .line 162
    .line 163
    return-object v5

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
