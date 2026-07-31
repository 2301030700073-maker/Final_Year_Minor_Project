.class public final Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public $cont:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailOAuthViewModel;->event(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->event(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_1
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$ViewModel;

    .line 27
    .line 28
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/dialog/SetupArchiveFolderDialogViewModel;->event(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlinx/collections/immutable/ImmutableList;

    .line 43
    .line 44
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :pswitch_3
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->event(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :pswitch_4
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel;->event(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_5
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->event(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :pswitch_6
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->event(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_7
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Lcom/fsck/k9/ui/settings/AboutViewModel;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/AboutViewModel;->event(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :pswitch_8
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;->event(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :pswitch_9
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->event(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :pswitch_a
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerViewModel;->event(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :pswitch_b
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->event(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    .line 122
    .line 123
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Lokhttp3/internal/connection/RealCall;

    .line 126
    .line 127
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :pswitch_d
    check-cast p1, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    .line 140
    .line 141
    if-eqz p0, :cond_0

    .line 142
    .line 143
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    .line 144
    .line 145
    :cond_0
    return-object v1

    .line 146
    :pswitch_e
    check-cast p1, Ljava/lang/Throwable;

    .line 147
    .line 148
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Landroidx/compose/runtime/CancellationHandle;

    .line 151
    .line 152
    invoke-interface {p0}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    .line 153
    .line 154
    .line 155
    return-object v1

    .line 156
    :pswitch_f
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/compose/ui/graphics/Matrix;->values:[F

    .line 159
    .line 160
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 163
    .line 164
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached$1()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_1

    .line 169
    .line 170
    invoke-static {p0}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->transformFrom-EL8BTi8(Landroidx/compose/ui/layout/LayoutCoordinates;[F)V

    .line 175
    .line 176
    .line 177
    :cond_1
    return-object v1

    .line 178
    :pswitch_10
    check-cast p1, Ljava/lang/Throwable;

    .line 179
    .line 180
    iget-object p0, p0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
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
