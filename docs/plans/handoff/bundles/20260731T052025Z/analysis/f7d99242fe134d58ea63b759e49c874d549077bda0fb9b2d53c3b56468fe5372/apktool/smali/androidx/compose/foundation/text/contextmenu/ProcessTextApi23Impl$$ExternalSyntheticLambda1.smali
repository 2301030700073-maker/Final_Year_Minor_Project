.class public final synthetic Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget p0, p0, Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x492

    .line 5
    .line 6
    const/16 v2, 0x80

    .line 7
    .line 8
    const/16 v3, 0x100

    .line 9
    .line 10
    const/16 v4, 0x10

    .line 11
    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x1

    .line 17
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 23
    .line 24
    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 25
    .line 26
    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    check-cast p4, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    check-cast p5, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    and-int/lit8 p5, p0, 0x6

    .line 37
    .line 38
    if-nez p5, :cond_2

    .line 39
    .line 40
    and-int/lit8 p5, p0, 0x8

    .line 41
    .line 42
    if-nez p5, :cond_0

    .line 43
    .line 44
    move-object p5, p4

    .line 45
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 46
    .line 47
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p5

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object p5, p4

    .line 53
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 54
    .line 55
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p5

    .line 59
    :goto_0
    if-eqz p5, :cond_1

    .line 60
    .line 61
    move v6, v7

    .line 62
    :cond_1
    or-int p5, p0, v6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move p5, p0

    .line 66
    :goto_1
    and-int/lit8 v6, p0, 0x30

    .line 67
    .line 68
    if-nez v6, :cond_5

    .line 69
    .line 70
    and-int/lit8 v6, p0, 0x40

    .line 71
    .line 72
    if-nez v6, :cond_3

    .line 73
    .line 74
    move-object v6, p4

    .line 75
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 76
    .line 77
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move-object v6, p4

    .line 83
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    :goto_2
    if-eqz v6, :cond_4

    .line 90
    .line 91
    move v4, v5

    .line 92
    :cond_4
    or-int/2addr p5, v4

    .line 93
    :cond_5
    and-int/lit16 p0, p0, 0x180

    .line 94
    .line 95
    if-nez p0, :cond_7

    .line 96
    .line 97
    move-object p0, p4

    .line 98
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 99
    .line 100
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_6

    .line 105
    .line 106
    move v2, v3

    .line 107
    :cond_6
    or-int/2addr p5, v2

    .line 108
    :cond_7
    and-int/lit16 p0, p5, 0x493

    .line 109
    .line 110
    if-eq p0, v1, :cond_8

    .line 111
    .line 112
    move v0, v8

    .line 113
    :cond_8
    and-int/lit8 p0, p5, 0x1

    .line 114
    .line 115
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 116
    .line 117
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_9

    .line 122
    .line 123
    and-int/lit16 p0, p5, 0x3fe

    .line 124
    .line 125
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 130
    .line 131
    .line 132
    :goto_3
    return-object v9

    .line 133
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 134
    .line 135
    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 136
    .line 137
    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 138
    .line 139
    check-cast p4, Landroidx/compose/runtime/Composer;

    .line 140
    .line 141
    check-cast p5, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    and-int/lit8 p5, p0, 0x6

    .line 148
    .line 149
    if-nez p5, :cond_c

    .line 150
    .line 151
    and-int/lit8 p5, p0, 0x8

    .line 152
    .line 153
    if-nez p5, :cond_a

    .line 154
    .line 155
    move-object p5, p4

    .line 156
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 157
    .line 158
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p5

    .line 162
    goto :goto_4

    .line 163
    :cond_a
    move-object p5, p4

    .line 164
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 165
    .line 166
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p5

    .line 170
    :goto_4
    if-eqz p5, :cond_b

    .line 171
    .line 172
    move v6, v7

    .line 173
    :cond_b
    or-int p5, p0, v6

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_c
    move p5, p0

    .line 177
    :goto_5
    and-int/lit8 v6, p0, 0x30

    .line 178
    .line 179
    if-nez v6, :cond_f

    .line 180
    .line 181
    and-int/lit8 v6, p0, 0x40

    .line 182
    .line 183
    if-nez v6, :cond_d

    .line 184
    .line 185
    move-object v6, p4

    .line 186
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 187
    .line 188
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    goto :goto_6

    .line 193
    :cond_d
    move-object v6, p4

    .line 194
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 195
    .line 196
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    :goto_6
    if-eqz v6, :cond_e

    .line 201
    .line 202
    move v4, v5

    .line 203
    :cond_e
    or-int/2addr p5, v4

    .line 204
    :cond_f
    and-int/lit16 p0, p0, 0x180

    .line 205
    .line 206
    if-nez p0, :cond_11

    .line 207
    .line 208
    move-object p0, p4

    .line 209
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 210
    .line 211
    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_10

    .line 216
    .line 217
    move v2, v3

    .line 218
    :cond_10
    or-int/2addr p5, v2

    .line 219
    :cond_11
    and-int/lit16 p0, p5, 0x493

    .line 220
    .line 221
    if-eq p0, v1, :cond_12

    .line 222
    .line 223
    move v0, v8

    .line 224
    :cond_12
    and-int/lit8 p0, p5, 0x1

    .line 225
    .line 226
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 227
    .line 228
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-eqz p0, :cond_13

    .line 233
    .line 234
    and-int/lit16 p0, p5, 0x3fe

    .line 235
    .line 236
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_13
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 241
    .line 242
    .line 243
    :goto_7
    return-object v9

    .line 244
    :pswitch_1
    check-cast p1, Landroid/content/Context;

    .line 245
    .line 246
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 247
    .line 248
    check-cast p3, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    check-cast p4, Ljava/lang/CharSequence;

    .line 255
    .line 256
    check-cast p5, Landroidx/compose/ui/text/TextRange;

    .line 257
    .line 258
    iget-wide v0, p5, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 259
    .line 260
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 265
    .line 266
    .line 267
    move-result p5

    .line 268
    invoke-interface {p4, p3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    new-instance p4, Landroid/content/Intent;

    .line 277
    .line 278
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string p5, "android.intent.action.PROCESS_TEXT"

    .line 282
    .line 283
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    move-result-object p4

    .line 287
    const-string p5, "text/plain"

    .line 288
    .line 289
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    move-result-object p4

    .line 293
    const-string p5, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 294
    .line 295
    invoke-virtual {p4, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 300
    .line 301
    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 302
    .line 303
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    const-string p2, "android.intent.extra.PROCESS_TEXT"

    .line 310
    .line 311
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 315
    .line 316
    .line 317
    return-object v9

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
