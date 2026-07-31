.class public final synthetic Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

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
    check-cast p4, Landroidx/compose/runtime/GapComposer;

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
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    :goto_0
    if-eqz p5, :cond_1

    .line 54
    .line 55
    move v6, v7

    .line 56
    :cond_1
    or-int p5, p0, v6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move p5, p0

    .line 60
    :goto_1
    and-int/lit8 v6, p0, 0x30

    .line 61
    .line 62
    if-nez v6, :cond_5

    .line 63
    .line 64
    and-int/lit8 v6, p0, 0x40

    .line 65
    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    :goto_2
    if-eqz v6, :cond_4

    .line 78
    .line 79
    move v4, v5

    .line 80
    :cond_4
    or-int/2addr p5, v4

    .line 81
    :cond_5
    and-int/lit16 p0, p0, 0x180

    .line 82
    .line 83
    if-nez p0, :cond_7

    .line 84
    .line 85
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_6

    .line 90
    .line 91
    move v2, v3

    .line 92
    :cond_6
    or-int/2addr p5, v2

    .line 93
    :cond_7
    and-int/lit16 p0, p5, 0x493

    .line 94
    .line 95
    if-eq p0, v1, :cond_8

    .line 96
    .line 97
    move v0, v8

    .line 98
    :cond_8
    and-int/lit8 p0, p5, 0x1

    .line 99
    .line 100
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_9

    .line 105
    .line 106
    and-int/lit16 p0, p5, 0x3fe

    .line 107
    .line 108
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-object v9

    .line 116
    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 117
    .line 118
    check-cast p2, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 119
    .line 120
    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 121
    .line 122
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 123
    .line 124
    check-cast p5, Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    and-int/lit8 p5, p0, 0x6

    .line 131
    .line 132
    if-nez p5, :cond_c

    .line 133
    .line 134
    and-int/lit8 p5, p0, 0x8

    .line 135
    .line 136
    if-nez p5, :cond_a

    .line 137
    .line 138
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p5

    .line 142
    goto :goto_4

    .line 143
    :cond_a
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p5

    .line 147
    :goto_4
    if-eqz p5, :cond_b

    .line 148
    .line 149
    move v6, v7

    .line 150
    :cond_b
    or-int p5, p0, v6

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_c
    move p5, p0

    .line 154
    :goto_5
    and-int/lit8 v6, p0, 0x30

    .line 155
    .line 156
    if-nez v6, :cond_f

    .line 157
    .line 158
    and-int/lit8 v6, p0, 0x40

    .line 159
    .line 160
    if-nez v6, :cond_d

    .line 161
    .line 162
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    goto :goto_6

    .line 167
    :cond_d
    invoke-virtual {p4, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    :goto_6
    if-eqz v6, :cond_e

    .line 172
    .line 173
    move v4, v5

    .line 174
    :cond_e
    or-int/2addr p5, v4

    .line 175
    :cond_f
    and-int/lit16 p0, p0, 0x180

    .line 176
    .line 177
    if-nez p0, :cond_11

    .line 178
    .line 179
    invoke-virtual {p4, p3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_10

    .line 184
    .line 185
    move v2, v3

    .line 186
    :cond_10
    or-int/2addr p5, v2

    .line 187
    :cond_11
    and-int/lit16 p0, p5, 0x493

    .line 188
    .line 189
    if-eq p0, v1, :cond_12

    .line 190
    .line 191
    move v0, v8

    .line 192
    :cond_12
    and-int/lit8 p0, p5, 0x1

    .line 193
    .line 194
    invoke-virtual {p4, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-eqz p0, :cond_13

    .line 199
    .line 200
    and-int/lit16 p0, p5, 0x3fe

    .line 201
    .line 202
    invoke-static {p1, p2, p3, p4, p0}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->OpenContextMenu(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_13
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    :goto_7
    return-object v9

    .line 210
    :pswitch_1
    check-cast p1, Landroid/content/Context;

    .line 211
    .line 212
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 213
    .line 214
    check-cast p3, Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    check-cast p4, Ljava/lang/CharSequence;

    .line 221
    .line 222
    check-cast p5, Landroidx/compose/ui/text/TextRange;

    .line 223
    .line 224
    iget-wide v0, p5, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 225
    .line 226
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 231
    .line 232
    .line 233
    move-result p5

    .line 234
    invoke-interface {p4, p3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 235
    .line 236
    .line 237
    move-result-object p3

    .line 238
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    new-instance p4, Landroid/content/Intent;

    .line 243
    .line 244
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string p5, "android.intent.action.PROCESS_TEXT"

    .line 248
    .line 249
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    const-string p5, "text/plain"

    .line 254
    .line 255
    invoke-virtual {p4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    move-result-object p4

    .line 259
    const-string p5, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 260
    .line 261
    invoke-virtual {p4, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 266
    .line 267
    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 268
    .line 269
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    const-string p2, "android.intent.extra.PROCESS_TEXT"

    .line 276
    .line 277
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 281
    .line 282
    .line 283
    return-object v9

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
