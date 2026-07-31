.class public final Landroidx/navigation/NavArgument$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public defaultValue:Ljava/lang/Object;

.field public defaultValuePresent:Z

.field public isNullable:Z

.field public type:Landroidx/navigation/NavType;

.field public unknownDefaultValuePresent:Z


# virtual methods
.method public final build()Landroidx/navigation/NavArgument;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/IntNavType;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    instance-of v1, v0, [I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    sget-object v1, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/IntListNavType;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    sget-object v1, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/IntNavType;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    instance-of v1, v0, [J

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    sget-object v1, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/IntListNavType;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    sget-object v1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/IntNavType;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    instance-of v1, v0, [F

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    sget-object v1, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/IntListNavType;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    if-eqz v1, :cond_6

    .line 53
    .line 54
    sget-object v1, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/IntNavType;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_6
    instance-of v1, v0, [Z

    .line 58
    .line 59
    if-eqz v1, :cond_7

    .line 60
    .line 61
    sget-object v1, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/IntListNavType;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    .line 65
    .line 66
    if-nez v1, :cond_9

    .line 67
    .line 68
    if-nez v0, :cond_8

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_8
    move-object v1, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_9
    :goto_0
    sget-object v1, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/IntNavType;

    .line 74
    .line 75
    :goto_1
    if-nez v1, :cond_b

    .line 76
    .line 77
    instance-of v1, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    if-eqz v1, :cond_a

    .line 80
    .line 81
    move-object v1, v0

    .line 82
    check-cast v1, [Ljava/lang/Object;

    .line 83
    .line 84
    instance-of v1, v1, [Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v1, :cond_a

    .line 87
    .line 88
    sget-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/IntListNavType;

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_c

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const-class v3, Landroid/os/Parcelable;

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_c

    .line 123
    .line 124
    new-instance v1, Landroidx/navigation/NavType$ParcelableArrayType;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-direct {v1, v0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    :cond_b
    :goto_2
    move-object v0, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_d

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    const-class v3, Ljava/io/Serializable;

    .line 164
    .line 165
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    new-instance v1, Landroidx/navigation/NavType$SerializableArrayType;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, v0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_d
    instance-of v1, v0, Landroid/os/Parcelable;

    .line 189
    .line 190
    if-eqz v1, :cond_e

    .line 191
    .line 192
    new-instance v1, Landroidx/navigation/NavType$ParcelableType;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-direct {v1, v0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_e
    instance-of v1, v0, Ljava/lang/Enum;

    .line 203
    .line 204
    if-eqz v1, :cond_f

    .line 205
    .line 206
    new-instance v1, Landroidx/navigation/NavType$EnumType;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {v1, v0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_f
    instance-of v1, v0, Ljava/io/Serializable;

    .line 217
    .line 218
    if-eqz v1, :cond_10

    .line 219
    .line 220
    new-instance v1, Landroidx/navigation/NavType$SerializableType;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-direct {v1, v0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string v0, " is not supported for navigation arguments."

    .line 239
    .line 240
    const-string v1, "Object of type "

    .line 241
    .line 242
    invoke-static {p0, v0, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object v2

    .line 246
    :cond_11
    :goto_3
    move-object v2, v0

    .line 247
    new-instance v1, Landroidx/navigation/NavArgument;

    .line 248
    .line 249
    iget-boolean v3, p0, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    .line 250
    .line 251
    iget-object v4, p0, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    .line 252
    .line 253
    iget-boolean v5, p0, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    .line 254
    .line 255
    iget-boolean v6, p0, Landroidx/navigation/NavArgument$Builder;->unknownDefaultValuePresent:Z

    .line 256
    .line 257
    invoke-direct/range {v1 .. v6}, Landroidx/navigation/NavArgument;-><init>(Landroidx/navigation/NavType;ZLjava/lang/Object;ZZ)V

    .line 258
    .line 259
    .line 260
    return-object v1
.end method
