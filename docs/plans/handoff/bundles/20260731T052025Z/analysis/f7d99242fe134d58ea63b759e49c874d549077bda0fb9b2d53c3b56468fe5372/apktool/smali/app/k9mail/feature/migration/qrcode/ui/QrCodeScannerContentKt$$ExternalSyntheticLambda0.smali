.class public final synthetic Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

.field public final synthetic f$1:Landroidx/compose/ui/draw/DrawResult;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/draw/DrawResult;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/draw/DrawResult;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Landroidx/compose/ui/draw/DrawResult;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/draw/DrawResult;

    iput-object p3, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;

    .line 8
    .line 9
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContentKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/draw/DrawResult;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x41

    .line 22
    .line 23
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p0, v3, v2, p1, p2}, Landroidx/room/util/DBUtil;->QrCodeScannerContent(Landroidx/compose/ui/draw/DrawResult;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    and-int/lit8 v0, p2, 0x3

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x2

    .line 40
    if-eq v0, v6, :cond_0

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v5

    .line 45
    :goto_0
    and-int/2addr p2, v4

    .line 46
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_b

    .line 53
    .line 54
    iget-object p2, v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->cameraPermissionState:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$UiPermissionState;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_a

    .line 61
    .line 62
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 63
    .line 64
    if-eq p2, v4, :cond_7

    .line 65
    .line 66
    if-eq p2, v6, :cond_4

    .line 67
    .line 68
    const/4 p0, 0x3

    .line 69
    if-ne p2, p0, :cond_3

    .line 70
    .line 71
    const p0, 0x6eedec19

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-nez p2, :cond_1

    .line 88
    .line 89
    if-ne v3, v0, :cond_2

    .line 90
    .line 91
    :cond_1
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    const/16 p2, 0x12

    .line 94
    .line 95
    invoke-direct {v3, p2, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 102
    .line 103
    const/4 p2, 0x6

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, v3, p1, p2}, Landroidx/room/util/SchemaInfoUtilKt;->LifecycleEventEffect(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const p0, 0x56285a9e

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p0, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    throw p0

    .line 120
    :cond_4
    const p0, 0x6eeacf0f

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-nez p0, :cond_5

    .line 135
    .line 136
    if-ne p2, v0, :cond_6

    .line 137
    .line 138
    :cond_5
    new-instance p2, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 139
    .line 140
    const/16 p0, 0x11

    .line 141
    .line 142
    invoke-direct {p2, p0, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 149
    .line 150
    invoke-static {p2, p1, v5}, Landroidx/sqlite/SQLite;->PermissionDeniedContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_7
    const p2, 0x6ee6586b

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 161
    .line 162
    .line 163
    iget-object p2, v3, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$State;->displayText:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    if-nez v3, :cond_8

    .line 174
    .line 175
    if-ne v4, v0, :cond_9

    .line 176
    .line 177
    :cond_8
    new-instance v4, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;

    .line 178
    .line 179
    const/16 v0, 0x10

    .line 180
    .line 181
    invoke-direct {v4, v0, v2}, Lcom/fsck/k9/ui/settings/AboutFragment$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 188
    .line 189
    invoke-static {p0, p2, v4, p1, v5}, Landroidx/room/util/RelationUtil;->QrCodeScannerView(Landroidx/compose/ui/draw/DrawResult;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$DisplayText;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    const p0, 0x6ee3ae8a

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    :goto_1
    return-object v1

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
