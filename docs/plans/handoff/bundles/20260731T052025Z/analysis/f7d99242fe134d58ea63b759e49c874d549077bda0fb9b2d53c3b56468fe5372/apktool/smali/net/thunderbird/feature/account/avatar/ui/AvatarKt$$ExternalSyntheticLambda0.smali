.class public final synthetic Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/avatar/Avatar;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$1:J

    .line 10
    .line 11
    iput-object p4, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/avatar/Avatar;

    iput-wide p2, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v5, v4

    .line 13
    check-cast v5, Ljava/lang/String;

    .line 14
    .line 15
    move-object v9, p1

    .line 16
    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 17
    .line 18
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    check-cast p3, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    and-int/lit8 p3, p1, 0x6

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    move-object p3, p2

    .line 34
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {p3, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    const/4 p3, 0x4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p3, 0x2

    .line 45
    :goto_0
    or-int/2addr p1, p3

    .line 46
    :cond_1
    and-int/lit8 p3, p1, 0x13

    .line 47
    .line 48
    const/16 v0, 0x12

    .line 49
    .line 50
    if-eq p3, v0, :cond_2

    .line 51
    .line 52
    move v2, v3

    .line 53
    :cond_2
    and-int/lit8 p3, p1, 0x1

    .line 54
    .line 55
    move-object v10, p2

    .line 56
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 57
    .line 58
    invoke-virtual {v10, p3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    shl-int/lit8 p1, p1, 0xc

    .line 65
    .line 66
    const p2, 0xe000

    .line 67
    .line 68
    .line 69
    and-int/2addr p1, p2

    .line 70
    or-int/lit8 v11, p1, 0x30

    .line 71
    .line 72
    iget-wide v6, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$1:J

    .line 73
    .line 74
    iget-object v8, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 75
    .line 76
    invoke-static/range {v5 .. v11}, Lkotlin/ranges/RangesKt;->GeneralSettingsProfileView-T042LqI(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object v1

    .line 84
    :pswitch_0
    check-cast v4, Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 85
    .line 86
    check-cast p1, Landroidx/compose/foundation/layout/BoxScope;

    .line 87
    .line 88
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 89
    .line 90
    check-cast p3, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    and-int/lit8 p1, p3, 0x11

    .line 100
    .line 101
    const/16 v0, 0x10

    .line 102
    .line 103
    if-eq p1, v0, :cond_4

    .line 104
    .line 105
    move p1, v3

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move p1, v2

    .line 108
    :goto_2
    and-int/2addr p3, v3

    .line 109
    move-object v7, p2

    .line 110
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 111
    .line 112
    invoke-virtual {v7, p3, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    iget-object p1, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 119
    .line 120
    instance-of p2, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 121
    .line 122
    if-eqz p2, :cond_5

    .line 123
    .line 124
    const p2, 0x178cf95f

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 128
    .line 129
    .line 130
    check-cast p1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;

    .line 131
    .line 132
    iget-object v3, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Monogram;->value:Ljava/lang/String;

    .line 133
    .line 134
    move-object v8, v7

    .line 135
    const/4 v7, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    iget-wide p0, p0, Lnet/thunderbird/feature/account/avatar/ui/AvatarKt$$ExternalSyntheticLambda0;->f$1:J

    .line 138
    .line 139
    move-object v6, v4

    .line 140
    move-wide v4, p0

    .line 141
    invoke-static/range {v3 .. v9}, Lkotlinx/atomicfu/AtomicFU;->AvatarMonogram-sW7UJKQ(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    move-object v8, v7

    .line 149
    instance-of p0, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 150
    .line 151
    if-eqz p0, :cond_6

    .line 152
    .line 153
    const p0, 0x17908e4b

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    .line 158
    .line 159
    check-cast p1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;

    .line 160
    .line 161
    iget-object v3, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Icon;->name:Ljava/lang/String;

    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    move-object v7, v8

    .line 165
    const/4 v8, 0x0

    .line 166
    const/4 v5, 0x0

    .line 167
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt__IndentKt;->AvatarIcon(Ljava/lang/String;Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;Landroidx/compose/runtime/Composer;I)V

    .line 168
    .line 169
    .line 170
    move-object v8, v7

    .line 171
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    instance-of p0, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 176
    .line 177
    if-eqz p0, :cond_7

    .line 178
    .line 179
    const p0, 0x179381eb

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 183
    .line 184
    .line 185
    check-cast p1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;

    .line 186
    .line 187
    iget-object p0, p1, Lnet/thunderbird/feature/account/avatar/Avatar$Image;->uri:Ljava/lang/String;

    .line 188
    .line 189
    const/4 p1, 0x0

    .line 190
    invoke-static {p0, v4, p1, v8, v2}, Lorg/jsoup/Jsoup;->AvatarImage(Ljava/lang/String;Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    const p0, -0x49901df4

    .line 198
    .line 199
    .line 200
    invoke-static {v8, p0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    throw p0

    .line 205
    :cond_8
    move-object v8, v7

    .line 206
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 207
    .line 208
    .line 209
    :goto_3
    return-object v1

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
