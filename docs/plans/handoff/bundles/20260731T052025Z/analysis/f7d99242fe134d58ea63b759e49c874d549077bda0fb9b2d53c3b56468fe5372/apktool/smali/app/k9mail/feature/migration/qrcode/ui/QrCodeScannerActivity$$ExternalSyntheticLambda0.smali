.class public final synthetic Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;->$r8$clinit:I

    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    move v0, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v3

    .line 28
    :goto_0
    and-int/2addr p2, v4

    .line 29
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_5

    .line 36
    .line 37
    iget-object v6, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 38
    .line 39
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    if-ne p2, v0, :cond_2

    .line 52
    .line 53
    :cond_1
    new-instance v4, Landroidx/room/InvalidationTracker$implementation$1;

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x7

    .line 57
    const/4 v5, 0x1

    .line 58
    const-class v7, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 59
    .line 60
    const-string v8, "finishWithResult"

    .line 61
    .line 62
    const-string v9, "finishWithResult(Landroid/net/Uri;)V"

    .line 63
    .line 64
    invoke-direct/range {v4 .. v11}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object p2, v4

    .line 71
    :cond_2
    check-cast p2, Lkotlin/reflect/KFunction;

    .line 72
    .line 73
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-nez p0, :cond_3

    .line 84
    .line 85
    if-ne v2, v0, :cond_4

    .line 86
    .line 87
    :cond_3
    new-instance v4, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    const/16 v11, 0xd

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const-class v7, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 94
    .line 95
    const-string v8, "finish"

    .line 96
    .line 97
    const-string v9, "finish()V"

    .line 98
    .line 99
    invoke-direct/range {v4 .. v11}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-object v2, v4

    .line 106
    :cond_4
    check-cast v2, Lkotlin/reflect/KFunction;

    .line 107
    .line 108
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 109
    .line 110
    const/4 p0, 0x0

    .line 111
    invoke-static {p2, v2, p0, p1, v3}, Landroidx/core/util/DebugUtils;->QrCodeScannerScreen(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 116
    .line 117
    .line 118
    :goto_1
    return-object v1

    .line 119
    :pswitch_0
    sget v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;->$r8$clinit:I

    .line 120
    .line 121
    and-int/lit8 v0, p2, 0x3

    .line 122
    .line 123
    if-eq v0, v2, :cond_6

    .line 124
    .line 125
    move v3, v4

    .line 126
    :cond_6
    and-int/2addr p2, v4

    .line 127
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 128
    .line 129
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 136
    .line 137
    iget-object p2, p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;->themeProvider$delegate:Lkotlin/Lazy;

    .line 138
    .line 139
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 144
    .line 145
    new-instance v0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {v0, p0, v4}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;I)V

    .line 148
    .line 149
    .line 150
    const p0, 0x6f436a5f

    .line 151
    .line 152
    .line 153
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p2, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 158
    .line 159
    const/16 v0, 0x36

    .line 160
    .line 161
    invoke-virtual {p2, p0, p1, v0}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme$1(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 166
    .line 167
    .line 168
    :goto_2
    return-object v1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
