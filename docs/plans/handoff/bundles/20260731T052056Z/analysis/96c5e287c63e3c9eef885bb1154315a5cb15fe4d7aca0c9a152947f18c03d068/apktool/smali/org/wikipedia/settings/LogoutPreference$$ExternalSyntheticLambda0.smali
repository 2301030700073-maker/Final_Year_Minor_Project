.class public final synthetic Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/LogoutPreference;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/LogoutPreference;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/LogoutPreference;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "apps-authentication"

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/LogoutPreference;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 17
    .line 18
    invoke-direct {v2, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo p1, "vanish_account"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p1, "vanish_warning"

    .line 28
    .line 29
    .line 30
    iput-object p1, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/16 v9, 0xf4

    .line 34
    .line 35
    const-string v3, "click"

    .line 36
    .line 37
    const-string v4, "settings"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const-string/jumbo v6, "vanish_button"

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lorg/wikipedia/settings/LogoutPreference;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 48
    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/16 v9, 0xfe

    .line 53
    .line 54
    const-string v3, "impression"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 64
    .line 65
    const v1, 0x7f13000b

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 74
    .line 75
    const v3, 0x7f0801ce

    .line 76
    .line 77
    .line 78
    iput v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 79
    .line 80
    const v3, 0x7f120032

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 87
    .line 88
    const v3, 0x7f120031

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 100
    .line 101
    new-instance v1, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 105
    .line 106
    .line 107
    const/high16 v3, 0x1040000

    .line 108
    .line 109
    invoke-virtual {p1, v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;

    .line 113
    .line 114
    invoke-direct {v1, v2, p0, v0}, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 115
    .line 116
    .line 117
    const p0, 0x7f120033

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 124
    .line 125
    .line 126
    :cond_0
    return-void

    .line 127
    :pswitch_0
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 133
    .line 134
    invoke-direct {v2, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 135
    .line 136
    .line 137
    const-string p1, "logout_account"

    .line 138
    .line 139
    invoke-virtual {v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    const/16 v9, 0xf4

    .line 144
    .line 145
    const-string v3, "click"

    .line 146
    .line 147
    const-string v4, "settings"

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    const-string v6, "logout_button"

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lorg/wikipedia/settings/LogoutPreference;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 157
    .line 158
    if-eqz p0, :cond_3

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    const/16 v9, 0xfc

    .line 162
    .line 163
    const-string v3, "impression"

    .line 164
    .line 165
    const-string v4, "logout_warning"

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 174
    .line 175
    const/4 v1, 0x0

    .line 176
    invoke-direct {p1, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_1

    .line 184
    .line 185
    const v3, 0x7f120997

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_1
    const v3, 0x7f120355

    .line 190
    .line 191
    .line 192
    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 193
    .line 194
    .line 195
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;

    .line 196
    .line 197
    invoke-direct {v3, v2, v0}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 198
    .line 199
    .line 200
    const v0, 0x7f120354

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_2

    .line 211
    .line 212
    const v0, 0x7f120996

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_2
    const v0, 0x7f1206c6

    .line 217
    .line 218
    .line 219
    :goto_1
    new-instance v3, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;

    .line 220
    .line 221
    invoke-direct {v3, v2, p0, v1}, Lorg/wikipedia/settings/LogoutPreference$$ExternalSyntheticLambda3;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 228
    .line 229
    .line 230
    :cond_3
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
