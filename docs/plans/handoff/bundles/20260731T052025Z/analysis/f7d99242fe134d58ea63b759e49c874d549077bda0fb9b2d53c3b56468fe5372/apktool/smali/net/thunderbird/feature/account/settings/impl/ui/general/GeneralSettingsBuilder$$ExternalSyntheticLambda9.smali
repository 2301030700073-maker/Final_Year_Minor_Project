.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

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
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder$$ExternalSyntheticLambda9;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->validator:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 27
    .line 28
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$EmptyName;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$EmptyName;

    .line 29
    .line 30
    invoke-direct {p1, v0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v0, 0xfe

    .line 39
    .line 40
    if-le p1, v0, :cond_1

    .line 41
    .line 42
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 43
    .line 44
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$TooLongName;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$TooLongName;

    .line 45
    .line 46
    invoke-direct {p1, v0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 51
    .line 52
    invoke-direct {p1, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 60
    .line 61
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Lkotlin/Unit;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 71
    .line 72
    iget-object p1, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError;

    .line 75
    .line 76
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$EmptyName;

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    const p1, 0x7f1200d0

    .line 81
    .line 82
    .line 83
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    instance-of p1, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateAccountNameError$TooLongName;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    const p1, 0x7f1200d1

    .line 95
    .line 96
    .line 97
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-object v2

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->validator:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 116
    .line 117
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 118
    .line 119
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 126
    .line 127
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$EmptyMonogram;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$EmptyMonogram;

    .line 128
    .line 129
    invoke-direct {p1, v0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const/4 v0, 0x3

    .line 138
    if-le p1, v0, :cond_7

    .line 139
    .line 140
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 141
    .line 142
    sget-object v0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$TooLongMonogram;->INSTANCE:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$TooLongMonogram;

    .line 143
    .line 144
    invoke-direct {p1, v0, v2}, Lnet/thunderbird/core/outcome/Outcome$Failure;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    new-instance p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 149
    .line 150
    invoke-direct {p1, v1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 158
    .line 159
    iget-object p0, p1, Lnet/thunderbird/core/outcome/Outcome$Success;->data:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Lkotlin/Unit;

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    instance-of v0, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 165
    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    check-cast p1, Lnet/thunderbird/core/outcome/Outcome$Failure;

    .line 169
    .line 170
    iget-object p1, p1, Lnet/thunderbird/core/outcome/Outcome$Failure;->error:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError;

    .line 173
    .line 174
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$EmptyMonogram;

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    const p1, 0x7f1200c6

    .line 179
    .line 180
    .line 181
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    goto :goto_3

    .line 188
    :cond_9
    instance-of p1, p1, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$ValidateMonogramError$TooLongMonogram;

    .line 189
    .line 190
    if-eqz p1, :cond_a

    .line 191
    .line 192
    const p1, 0x7f1200c7

    .line 193
    .line 194
    .line 195
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    goto :goto_3

    .line 202
    :cond_a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 207
    .line 208
    .line 209
    :goto_3
    return-object v2

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
