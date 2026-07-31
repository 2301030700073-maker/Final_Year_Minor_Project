.class public final Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;

    .line 9
    .line 10
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    instance-of p0, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    instance-of p0, p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 27
    .line 28
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;->date:Ljava/lang/String;

    .line 29
    .line 30
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;

    .line 31
    .line 32
    iget-object p1, p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribSeparator;->date:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    instance-of p0, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    instance-of p0, p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 48
    .line 49
    iget-object p0, p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;->item:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 50
    .line 51
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 52
    .line 53
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;

    .line 54
    .line 55
    iget-object p2, p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItem;->item:Lorg/wikipedia/dataclient/mwapi/UserContribution;

    .line 56
    .line 57
    iget-wide v3, p2, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    .line 58
    .line 59
    cmp-long p0, p0, v3

    .line 60
    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v1, v2

    .line 65
    :goto_0
    return v1

    .line 66
    :pswitch_0
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 67
    .line 68
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->areItemsTheSame(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageTitle;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :pswitch_1
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;

    .line 82
    .line 83
    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    instance-of p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 92
    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    instance-of p0, p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 96
    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 100
    .line 101
    iget-object p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;->date:Ljava/lang/String;

    .line 102
    .line 103
    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;

    .line 104
    .line 105
    iget-object p1, p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsSeparator;->date:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    instance-of p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 113
    .line 114
    if-eqz p0, :cond_3

    .line 115
    .line 116
    instance-of p0, p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 117
    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 121
    .line 122
    iget-object p0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 123
    .line 124
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 125
    .line 126
    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;

    .line 127
    .line 128
    iget-object p2, p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 129
    .line 130
    iget-wide v3, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 131
    .line 132
    cmp-long p0, p0, v3

    .line 133
    .line 134
    if-nez p0, :cond_3

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move v1, v2

    .line 138
    :goto_1
    return v1

    .line 139
    :pswitch_2
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;

    .line 140
    .line 141
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    instance-of p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 150
    .line 151
    if-eqz p0, :cond_4

    .line 152
    .line 153
    instance-of p0, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 154
    .line 155
    if-eqz p0, :cond_4

    .line 156
    .line 157
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 158
    .line 159
    iget-object p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;->date:Ljava/lang/String;

    .line 160
    .line 161
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;

    .line 162
    .line 163
    iget-object p1, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistorySeparator;->date:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_2

    .line 170
    :cond_4
    instance-of p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 171
    .line 172
    if-eqz p0, :cond_5

    .line 173
    .line 174
    instance-of p0, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 175
    .line 176
    if-eqz p0, :cond_5

    .line 177
    .line 178
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 179
    .line 180
    iget-object p0, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 181
    .line 182
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 183
    .line 184
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;

    .line 185
    .line 186
    iget-object p2, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 187
    .line 188
    iget-wide v3, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 189
    .line 190
    cmp-long p0, p0, v3

    .line 191
    .line 192
    if-nez p0, :cond_5

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_5
    move v1, v2

    .line 196
    :goto_2
    return v1

    .line 197
    :pswitch_3
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 198
    .line 199
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_6

    .line 220
    .line 221
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    if-eqz p0, :cond_6

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_6
    move v1, v2

    .line 237
    :goto_3
    return v1

    .line 238
    :pswitch_4
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 239
    .line 240
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-eqz p0, :cond_7

    .line 261
    .line 262
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    if-eqz p0, :cond_7

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_7
    move v1, v2

    .line 278
    :goto_4
    return v1

    .line 279
    :pswitch_5
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 280
    .line 281
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->areItemsTheSame(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageTitle;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    return p0

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;

    .line 7
    .line 8
    check-cast p2, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribItemModel;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_0
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->areItemsTheSame(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageTitle;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :pswitch_1
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;

    .line 31
    .line 32
    check-cast p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :pswitch_2
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;

    .line 46
    .line 47
    check-cast p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryItemModel;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_3
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 61
    .line 62
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :pswitch_4
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 76
    .line 77
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :pswitch_5
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 91
    .line 92
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->areItemsTheSame(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageTitle;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public areItemsTheSame(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/PageTitle;)Z
    .locals 3

    iget p0, p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMemberDiffCallback;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p0, :pswitch_data_0

    .line 99
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 103
    :pswitch_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 105
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
