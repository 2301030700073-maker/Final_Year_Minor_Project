.class public abstract Lcoil3/util/HardwareBitmapsKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final IS_DEVICE_BLOCKED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 58

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/16 v1, 0x1b

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_1
    const-string v56, "TECNO-CA8"

    .line 21
    .line 22
    const-string v57, "SHIFT6m"

    .line 23
    .line 24
    const-string v3, "mcv1s"

    .line 25
    .line 26
    const-string v4, "mcv3"

    .line 27
    .line 28
    const-string v5, "mcv5a"

    .line 29
    .line 30
    const-string v6, "mcv7a"

    .line 31
    .line 32
    const-string v7, "A30ATMO"

    .line 33
    .line 34
    const-string v8, "A70AXLTMO"

    .line 35
    .line 36
    const-string v9, "A3A_8_4G_TMO"

    .line 37
    .line 38
    const-string v10, "Edison_CKT"

    .line 39
    .line 40
    const-string v11, "EDISON_TF"

    .line 41
    .line 42
    const-string v12, "FERMI_TF"

    .line 43
    .line 44
    const-string v13, "U50A_ATT"

    .line 45
    .line 46
    const-string v14, "U50A_PLUS_ATT"

    .line 47
    .line 48
    const-string v15, "U50A_PLUS_TF"

    .line 49
    .line 50
    const-string v16, "U50APLUSTMO"

    .line 51
    .line 52
    const-string v17, "U5A_PLUS_4G"

    .line 53
    .line 54
    const-string v18, "RCT6513W87DK5e"

    .line 55
    .line 56
    const-string v19, "RCT6873W42BMF9A"

    .line 57
    .line 58
    const-string v20, "RCT6A03W13"

    .line 59
    .line 60
    const-string v21, "RCT6B03W12"

    .line 61
    .line 62
    const-string v22, "RCT6B03W13"

    .line 63
    .line 64
    const-string v23, "RCT6T06E13"

    .line 65
    .line 66
    const-string v24, "A3_Pro"

    .line 67
    .line 68
    const-string v25, "One"

    .line 69
    .line 70
    const-string v26, "One_Max"

    .line 71
    .line 72
    const-string v27, "One_Pro"

    .line 73
    .line 74
    const-string v28, "Z2"

    .line 75
    .line 76
    const-string v29, "Z2_PRO"

    .line 77
    .line 78
    const-string v30, "Armor_3"

    .line 79
    .line 80
    const-string v31, "Armor_6"

    .line 81
    .line 82
    const-string v32, "Blackview"

    .line 83
    .line 84
    const-string v33, "BV9500"

    .line 85
    .line 86
    const-string v34, "BV9500Pro"

    .line 87
    .line 88
    const-string v35, "A6L-C"

    .line 89
    .line 90
    const-string v36, "N5002LA"

    .line 91
    .line 92
    const-string v37, "N5501LA"

    .line 93
    .line 94
    const-string v38, "Power_2_Pro"

    .line 95
    .line 96
    const-string v39, "Power_5"

    .line 97
    .line 98
    const-string v40, "Z9"

    .line 99
    .line 100
    const-string v41, "V0310WW"

    .line 101
    .line 102
    const-string v42, "V0330WW"

    .line 103
    .line 104
    const-string v43, "A3"

    .line 105
    .line 106
    const-string v44, "ASUS_X018_4"

    .line 107
    .line 108
    const-string v45, "C210AE"

    .line 109
    .line 110
    const-string v46, "fireball"

    .line 111
    .line 112
    const-string v47, "ILA_X1"

    .line 113
    .line 114
    const-string v48, "Infinix-X605_sprout"

    .line 115
    .line 116
    const-string v49, "j7maxlte"

    .line 117
    .line 118
    const-string v50, "KING_KONG_3"

    .line 119
    .line 120
    const-string v51, "M10500"

    .line 121
    .line 122
    const-string v52, "S70"

    .line 123
    .line 124
    const-string v53, "S80Lite"

    .line 125
    .line 126
    const-string v54, "SGINO6"

    .line 127
    .line 128
    const-string/jumbo v55, "st18c10bnn"

    .line 129
    .line 130
    .line 131
    filled-new-array/range {v3 .. v57}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 141
    .line 142
    if-nez v0, :cond_3

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    const-string v1, "SAMSUNG-"

    .line 146
    .line 147
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "SM-"

    .line 152
    .line 153
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 162
    .line 163
    if-nez v0, :cond_5

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    const-string v38, "manning"

    .line 167
    .line 168
    const-string v39, "N5702L"

    .line 169
    .line 170
    const-string v3, "nora"

    .line 171
    .line 172
    const-string v4, "nora_8917"

    .line 173
    .line 174
    const-string v5, "nora_8917_n"

    .line 175
    .line 176
    const-string v6, "james"

    .line 177
    .line 178
    const-string v7, "rjames_f"

    .line 179
    .line 180
    const-string v8, "rjames_go"

    .line 181
    .line 182
    const-string v9, "pettyl"

    .line 183
    .line 184
    const-string v10, "hannah"

    .line 185
    .line 186
    const-string v11, "ahannah"

    .line 187
    .line 188
    const-string v12, "rhannah"

    .line 189
    .line 190
    const-string v13, "ali"

    .line 191
    .line 192
    const-string v14, "ali_n"

    .line 193
    .line 194
    const-string v15, "aljeter"

    .line 195
    .line 196
    const-string v16, "aljeter_n"

    .line 197
    .line 198
    const-string v17, "jeter"

    .line 199
    .line 200
    const-string v18, "evert"

    .line 201
    .line 202
    const-string v19, "evert_n"

    .line 203
    .line 204
    const-string v20, "evert_nt"

    .line 205
    .line 206
    const-string v21, "G3112"

    .line 207
    .line 208
    const-string v22, "G3116"

    .line 209
    .line 210
    const-string v23, "G3121"

    .line 211
    .line 212
    const-string v24, "G3123"

    .line 213
    .line 214
    const-string v25, "G3125"

    .line 215
    .line 216
    const-string v26, "G3412"

    .line 217
    .line 218
    const-string v27, "G3416"

    .line 219
    .line 220
    const-string v28, "G3421"

    .line 221
    .line 222
    const-string v29, "G3423"

    .line 223
    .line 224
    const-string v30, "G3426"

    .line 225
    .line 226
    const-string v31, "G3212"

    .line 227
    .line 228
    const-string v32, "G3221"

    .line 229
    .line 230
    const-string v33, "G3223"

    .line 231
    .line 232
    const-string v34, "G3226"

    .line 233
    .line 234
    const-string v35, "BV6800Pro"

    .line 235
    .line 236
    const-string v36, "CatS41"

    .line 237
    .line 238
    const-string v37, "Hi9Pro"

    .line 239
    .line 240
    filled-new-array/range {v3 .. v39}, [Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    :goto_0
    sput-boolean v2, Lcoil3/util/HardwareBitmapsKt;->IS_DEVICE_BLOCKED:Z

    .line 249
    .line 250
    return-void
.end method
