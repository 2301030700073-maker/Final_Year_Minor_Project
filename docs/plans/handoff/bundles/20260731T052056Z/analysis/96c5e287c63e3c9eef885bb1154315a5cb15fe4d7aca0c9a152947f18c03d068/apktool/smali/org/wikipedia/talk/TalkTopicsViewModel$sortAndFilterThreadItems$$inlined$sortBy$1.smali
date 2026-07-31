.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 10
    .line 11
    iget-object p0, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p0, v1

    .line 25
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 38
    .line 39
    :cond_1
    invoke-static {p0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :pswitch_0
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 45
    .line 46
    iget-object p0, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 47
    .line 48
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 49
    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    move-object p0, v0

    .line 53
    :cond_2
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 66
    .line 67
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v0, p1

    .line 73
    :goto_1
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :pswitch_1
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 91
    .line 92
    iget-object p0, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 93
    .line 94
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 99
    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move-object p0, v1

    .line 106
    :goto_2
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 107
    .line 108
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 115
    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    iget-object v1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 119
    .line 120
    :cond_5
    invoke-static {p0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    return p0

    .line 125
    :pswitch_2
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 126
    .line 127
    iget-object p0, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 134
    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    move-object p0, v1

    .line 141
    :goto_3
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 142
    .line 143
    iget-object p1, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    iget-object v1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 154
    .line 155
    :cond_7
    invoke-static {p0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    return p0

    .line 160
    :pswitch_3
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 161
    .line 162
    iget-object p0, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 163
    .line 164
    sget-object p1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 165
    .line 166
    if-nez p0, :cond_8

    .line 167
    .line 168
    move-object p0, v0

    .line 169
    :cond_8
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 182
    .line 183
    iget-object p1, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 184
    .line 185
    if-nez p1, :cond_9

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    move-object v0, p1

    .line 189
    :goto_4
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    return p0

    .line 206
    :pswitch_4
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 207
    .line 208
    iget-object p0, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 209
    .line 210
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 215
    .line 216
    if-eqz p0, :cond_a

    .line 217
    .line 218
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    move-object p0, v1

    .line 222
    :goto_5
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 223
    .line 224
    iget-object p1, p2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 225
    .line 226
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 231
    .line 232
    if-eqz p1, :cond_b

    .line 233
    .line 234
    iget-object v1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 235
    .line 236
    :cond_b
    invoke-static {p0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    return p0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
