.class public final Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;
.super Lcom/fsck/k9/sasl/OAuthBearer;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createIntent(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 5

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 4
    .line 5
    const-string v1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 6
    .line 7
    const-string v2, "android.intent.extra.TITLE"

    .line 8
    .line 9
    const-string v3, "android.intent.category.OPENABLE"

    .line 10
    .line 11
    const-string v4, "android.intent.action.CREATE_DOCUMENT"

    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p2, Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p0, Landroid/content/Intent;

    .line 22
    .line 23
    const-class p2, Lapp/k9mail/feature/widget/unread/UnreadWidgetChooseAccountActivity;

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_0
    check-cast p2, Lkotlin/Unit;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    new-instance p0, Landroid/content/Intent;

    .line 35
    .line 36
    const-class p2, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerActivity;

    .line 37
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_1
    check-cast p2, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance p0, Landroid/content/Intent;

    .line 48
    .line 49
    invoke-direct {p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p1, p2, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;->mimeType:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p1, p2, Lapp/k9mail/core/android/common/activity/CreateDocumentResultContract$Input;->title:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_2
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    .line 73
    .line 74
    new-instance p0, Landroid/content/Intent;

    .line 75
    .line 76
    const-string p1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p2, Landroidx/activity/result/IntentSenderRequest;->fillInIntent:Landroid/content/Intent;

    .line 82
    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    const-string v0, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    iget-object p1, p2, Landroidx/activity/result/IntentSenderRequest;->intentSender:Landroid/content/IntentSender;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    iget v0, p2, Landroidx/activity/result/IntentSenderRequest;->flagsValues:I

    .line 114
    .line 115
    iget p2, p2, Landroidx/activity/result/IntentSenderRequest;->flagsMask:I

    .line 116
    .line 117
    new-instance v1, Landroidx/activity/result/IntentSenderRequest;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-direct {v1, p1, v2, p2, v0}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 121
    .line 122
    .line 123
    move-object p2, v1

    .line 124
    :cond_0
    const-string p1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 125
    .line 126
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p2, "CreateIntent created the following intent: "

    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string p2, "FragmentManager"

    .line 151
    .line 152
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_1
    return-object p0

    .line 156
    :pswitch_3
    check-cast p2, Landroid/content/Intent;

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    return-object p2

    .line 162
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    filled-new-array {p2}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    new-instance p1, Landroid/content/Intent;

    .line 172
    .line 173
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    return-object p0

    .line 184
    :pswitch_5
    check-cast p2, [Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance p0, Landroid/content/Intent;

    .line 190
    .line 191
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :pswitch_6
    check-cast p2, [Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    new-instance p0, Landroid/content/Intent;

    .line 208
    .line 209
    const-string p1, "android.intent.action.OPEN_DOCUMENT"

    .line 210
    .line 211
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string p1, "android.intent.extra.MIME_TYPES"

    .line 215
    .line 216
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-string p1, "*/*"

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    return-object p0

    .line 230
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance p0, Landroid/content/Intent;

    .line 236
    .line 237
    const-string p1, "android.intent.action.GET_CONTENT"

    .line 238
    .line 239
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    new-instance p0, Landroid/content/Intent;

    .line 260
    .line 261
    invoke-direct {p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string p1, "text/plain"

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    return-object p0

    .line 278
    :pswitch_9
    check-cast p2, Landroid/content/Intent;

    .line 279
    .line 280
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    return-object p2

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
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

.method public getSynchronousResult(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Landroidx/biometric/BiometricPrompt;
    .locals 5

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/sasl/OAuthBearer;->getSynchronousResult(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;)Landroidx/biometric/BiometricPrompt;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    new-instance v2, Landroidx/biometric/BiometricPrompt;

    .line 25
    .line 26
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-direct {v2, v1, p0}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v2

    .line 32
    :pswitch_1
    check-cast p2, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    array-length p0, p2

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    new-instance v2, Landroidx/biometric/BiometricPrompt;

    .line 41
    .line 42
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 43
    .line 44
    invoke-direct {v2, v1, p0}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    array-length p0, p2

    .line 49
    const/4 v0, 0x0

    .line 50
    move v3, v0

    .line 51
    :goto_0
    if-ge v3, p0, :cond_2

    .line 52
    .line 53
    aget-object v4, p2, v3

    .line 54
    .line 55
    invoke-static {p1, v4}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_5

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    array-length p0, p2

    .line 65
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    const/16 p1, 0x10

    .line 70
    .line 71
    if-ge p0, p1, :cond_3

    .line 72
    .line 73
    move p0, p1

    .line 74
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 77
    .line 78
    .line 79
    array-length p0, p2

    .line 80
    :goto_1
    if-ge v0, p0, :cond_4

    .line 81
    .line 82
    aget-object v2, p2, v0

    .line 83
    .line 84
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    new-instance v2, Landroidx/biometric/BiometricPrompt;

    .line 93
    .line 94
    invoke-direct {v2, v1, p1}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    return-object v2

    .line 98
    :pswitch_2
    check-cast p2, [Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    return-object v2

    .line 110
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    return-object v2

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 5

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, -0x1

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p0, "com.fsck.k9.ChooseAccount_account_uuid"

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p0, v3

    .line 22
    :goto_0
    if-ne p2, v4, :cond_1

    .line 23
    .line 24
    move-object v3, p0

    .line 25
    :cond_1
    return-object v3

    .line 26
    :pswitch_0
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object p0, v3

    .line 34
    :goto_1
    if-ne p2, v4, :cond_3

    .line 35
    .line 36
    move-object v3, p0

    .line 37
    :cond_3
    return-object v3

    .line 38
    :pswitch_1
    if-ne p2, v4, :cond_4

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_4
    move-object p1, v3

    .line 42
    :goto_2
    if-eqz p1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_5
    return-object v3

    .line 49
    :pswitch_2
    new-instance p0, Landroidx/activity/result/ActivityResult;

    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_3
    new-instance p0, Landroidx/activity/result/ActivityResult;

    .line 56
    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_4
    if-eqz p1, :cond_9

    .line 62
    .line 63
    if-eq p2, v4, :cond_6

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_8

    .line 71
    .line 72
    array-length p1, p0

    .line 73
    move p2, v1

    .line 74
    :goto_3
    if-ge p2, p1, :cond_8

    .line 75
    .line 76
    aget v0, p0, p2

    .line 77
    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_4

    .line 82
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_8
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_6

    .line 90
    :cond_9
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    .line 92
    :goto_6
    return-object p0

    .line 93
    :pswitch_5
    if-eq p2, v4, :cond_a

    .line 94
    .line 95
    goto :goto_9

    .line 96
    :cond_a
    if-nez p1, :cond_b

    .line 97
    .line 98
    goto :goto_9

    .line 99
    :cond_b
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_f

    .line 110
    .line 111
    if-nez p0, :cond_c

    .line 112
    .line 113
    goto :goto_9

    .line 114
    :cond_c
    new-instance p2, Ljava/util/ArrayList;

    .line 115
    .line 116
    array-length v0, p1

    .line 117
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    array-length v0, p1

    .line 121
    move v3, v1

    .line 122
    :goto_7
    if-ge v3, v0, :cond_e

    .line 123
    .line 124
    aget v4, p1, v3

    .line 125
    .line 126
    if-nez v4, :cond_d

    .line 127
    .line 128
    move v4, v2

    .line 129
    goto :goto_8

    .line 130
    :cond_d
    move v4, v1

    .line 131
    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_e
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->zip(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    goto :goto_a

    .line 154
    :cond_f
    :goto_9
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 155
    .line 156
    :goto_a
    return-object p0

    .line 157
    :pswitch_6
    if-ne p2, v4, :cond_10

    .line 158
    .line 159
    goto :goto_b

    .line 160
    :cond_10
    move-object p1, v3

    .line 161
    :goto_b
    if-eqz p1, :cond_11

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    :cond_11
    return-object v3

    .line 168
    :pswitch_7
    if-ne p2, v4, :cond_12

    .line 169
    .line 170
    goto :goto_c

    .line 171
    :cond_12
    move-object p1, v3

    .line 172
    :goto_c
    if-eqz p1, :cond_13

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :cond_13
    return-object v3

    .line 179
    :pswitch_8
    if-ne p2, v4, :cond_14

    .line 180
    .line 181
    goto :goto_d

    .line 182
    :cond_14
    move-object p1, v3

    .line 183
    :goto_d
    if-eqz p1, :cond_15

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    :cond_15
    return-object v3

    .line 190
    :pswitch_9
    if-ne p2, v4, :cond_16

    .line 191
    .line 192
    if-eqz p1, :cond_16

    .line 193
    .line 194
    new-instance v3, Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;

    .line 195
    .line 196
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationResponse;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationResponse;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p1}, Lnet/openid/appauth/AuthorizationException;->fromIntent(Landroid/content/Intent;)Lnet/openid/appauth/AuthorizationException;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {v3, p0, p1}, Lapp/k9mail/feature/settings/import/ui/AuthorizationResult;-><init>(Lnet/openid/appauth/AuthorizationResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 205
    .line 206
    .line 207
    :cond_16
    return-object v3

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
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
