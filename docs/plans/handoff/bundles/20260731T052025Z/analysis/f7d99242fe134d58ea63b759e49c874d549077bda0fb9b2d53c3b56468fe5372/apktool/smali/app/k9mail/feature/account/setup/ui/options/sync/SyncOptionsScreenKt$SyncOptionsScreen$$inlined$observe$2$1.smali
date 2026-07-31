.class public final Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $onBack$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onNext$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$onNext$inlined:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v2, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$onNext$inlined:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsScreenKt$SyncOptionsScreen$$inlined$observe$2$1;->$onBack$inlined:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect;

    .line 14
    .line 15
    sget-object p2, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateBack;

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/display/DisplayOptionsContract$Effect$NavigateNext;

    .line 28
    .line 29
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :goto_0
    move-object v0, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-object v0

    .line 44
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect;

    .line 45
    .line 46
    instance-of p2, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateNext;

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    instance-of p0, p1, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$Effect$NavigateBack;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :goto_2
    move-object v0, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 64
    .line 65
    .line 66
    :goto_3
    return-object v0

    .line 67
    :pswitch_1
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect;

    .line 68
    .line 69
    sget-object p2, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateBack;

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    sget-object p0, Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateNext;->INSTANCE:Lapp/k9mail/feature/account/server/settings/ui/outgoing/OutgoingServerSettingsContract$Effect$NavigateNext;

    .line 82
    .line 83
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :goto_4
    move-object v0, v1

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 95
    .line 96
    .line 97
    :goto_5
    return-object v0

    .line 98
    :pswitch_2
    check-cast p1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect;

    .line 99
    .line 100
    instance-of p2, p1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateCertificateAccepted;

    .line 101
    .line 102
    if-eqz p2, :cond_6

    .line 103
    .line 104
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_6
    instance-of p0, p1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$Effect$NavigateBack;

    .line 109
    .line 110
    if-eqz p0, :cond_7

    .line 111
    .line 112
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :goto_6
    move-object v0, v1

    .line 116
    goto :goto_7

    .line 117
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 118
    .line 119
    .line 120
    :goto_7
    return-object v0

    .line 121
    :pswitch_3
    check-cast p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect;

    .line 122
    .line 123
    instance-of p2, p1, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateNext;

    .line 124
    .line 125
    if-eqz p2, :cond_8

    .line 126
    .line 127
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_8
    sget-object p0, Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/edit/ui/server/settings/save/SaveServerSettingsContract$Effect$NavigateBack;

    .line 132
    .line 133
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_9

    .line 138
    .line 139
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :goto_8
    move-object v0, v1

    .line 143
    goto :goto_9

    .line 144
    :cond_9
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 145
    .line 146
    .line 147
    :goto_9
    return-object v0

    .line 148
    :pswitch_4
    check-cast p1, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;

    .line 149
    .line 150
    sget-object p2, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;->INSTANCE:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;

    .line 151
    .line 152
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_a

    .line 157
    .line 158
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_a
    sget-object p0, Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;->INSTANCE$1:Lapp/k9mail/feature/account/setup/ui/options/sync/SyncOptionsContract$Effect$NavigateBack;

    .line 163
    .line 164
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_b

    .line 169
    .line 170
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :goto_a
    move-object v0, v1

    .line 174
    goto :goto_b

    .line 175
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 176
    .line 177
    .line 178
    :goto_b
    return-object v0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
