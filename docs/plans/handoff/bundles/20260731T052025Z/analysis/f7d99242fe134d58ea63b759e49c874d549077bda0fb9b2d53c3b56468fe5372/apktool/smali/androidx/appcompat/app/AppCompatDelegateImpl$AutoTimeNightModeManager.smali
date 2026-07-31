.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mTwilightManager:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "power"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/PowerManager;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/core/view/MenuHostHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 24
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Lnet/openid/appauth/JsonUtil$Field;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 25
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "android.intent.action.TIME_SET"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "android.intent.action.TIME_TICK"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getApplyableNightMode()I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/os/PowerManager;

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api21Impl;->isPowerSaveMode(Landroid/os/PowerManager;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v2, v3

    .line 21
    :cond_0
    return v2

    .line 22
    :pswitch_0
    check-cast v0, Landroidx/core/view/MenuHostHelper;

    .line 23
    .line 24
    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Landroid/location/LocationManager;

    .line 31
    .line 32
    iget-wide v5, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    cmp-long v5, v5, v7

    .line 39
    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_1
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v5, v0

    .line 49
    check-cast v5, Landroid/content/Context;

    .line 50
    .line 51
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 52
    .line 53
    invoke-static {v5, v0}, Landroidx/work/Data$Companion;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const-string v6, "Failed to get last known location"

    .line 58
    .line 59
    const-string v7, "TwilightManager"

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    const-string v0, "network"

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    move-object v0, v8

    .line 82
    :goto_0
    move-object v9, v0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-object v9, v8

    .line 85
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 86
    .line 87
    invoke-static {v5, v0}, Landroidx/work/Data$Companion;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    const-string v0, "gps"

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 102
    .line 103
    .line 104
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    goto :goto_2

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 111
    .line 112
    if-eqz v9, :cond_5

    .line 113
    .line 114
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v10

    .line 122
    cmp-long v0, v4, v10

    .line 123
    .line 124
    if-lez v0, :cond_6

    .line 125
    .line 126
    :goto_3
    move-object v9, v8

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    if-eqz v8, :cond_6

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 132
    if-eqz v9, :cond_d

    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v15

    .line 138
    sget-object v4, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 139
    .line 140
    if-nez v4, :cond_7

    .line 141
    .line 142
    new-instance v4, Landroidx/appcompat/app/TwilightCalculator;

    .line 143
    .line 144
    invoke-direct {v4}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    .line 145
    .line 146
    .line 147
    sput-object v4, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 148
    .line 149
    :cond_7
    sget-object v17, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    .line 150
    .line 151
    const-wide/32 v4, 0x5265c00

    .line 152
    .line 153
    .line 154
    sub-long v22, v15, v4

    .line 155
    .line 156
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 157
    .line 158
    .line 159
    move-result-wide v18

    .line 160
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 161
    .line 162
    .line 163
    move-result-wide v20

    .line 164
    invoke-virtual/range {v17 .. v23}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 168
    .line 169
    .line 170
    move-result-wide v11

    .line 171
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    move-object/from16 v10, v17

    .line 176
    .line 177
    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 178
    .line 179
    .line 180
    iget v6, v10, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 181
    .line 182
    if-ne v6, v2, :cond_8

    .line 183
    .line 184
    move v0, v2

    .line 185
    :cond_8
    iget-wide v6, v10, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 186
    .line 187
    iget-wide v11, v10, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 188
    .line 189
    add-long v22, v15, v4

    .line 190
    .line 191
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 192
    .line 193
    .line 194
    move-result-wide v18

    .line 195
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 196
    .line 197
    .line 198
    move-result-wide v20

    .line 199
    move-object/from16 v17, v10

    .line 200
    .line 201
    invoke-virtual/range {v17 .. v23}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    .line 202
    .line 203
    .line 204
    iget-wide v4, v10, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 205
    .line 206
    const-wide/16 v8, -0x1

    .line 207
    .line 208
    cmp-long v10, v6, v8

    .line 209
    .line 210
    if-eqz v10, :cond_c

    .line 211
    .line 212
    cmp-long v8, v11, v8

    .line 213
    .line 214
    if-nez v8, :cond_9

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_9
    cmp-long v8, v15, v11

    .line 218
    .line 219
    if-lez v8, :cond_a

    .line 220
    .line 221
    move-wide v6, v4

    .line 222
    goto :goto_5

    .line 223
    :cond_a
    cmp-long v4, v15, v6

    .line 224
    .line 225
    if-lez v4, :cond_b

    .line 226
    .line 227
    move-wide v6, v11

    .line 228
    :cond_b
    :goto_5
    const-wide/32 v4, 0xea60

    .line 229
    .line 230
    .line 231
    add-long/2addr v6, v4

    .line 232
    goto :goto_7

    .line 233
    :cond_c
    :goto_6
    const-wide/32 v4, 0x2932e00

    .line 234
    .line 235
    .line 236
    add-long v6, v15, v4

    .line 237
    .line 238
    :goto_7
    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    .line 239
    .line 240
    iput-wide v6, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_d
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 244
    .line 245
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const/16 v4, 0xb

    .line 253
    .line 254
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const/4 v4, 0x6

    .line 259
    if-lt v1, v4, :cond_e

    .line 260
    .line 261
    const/16 v4, 0x16

    .line 262
    .line 263
    if-lt v1, v4, :cond_f

    .line 264
    .line 265
    :cond_e
    move v0, v2

    .line 266
    :cond_f
    :goto_8
    if-eqz v0, :cond_10

    .line 267
    .line 268
    move v2, v3

    .line 269
    :cond_10
    return v2

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(ZZ)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
