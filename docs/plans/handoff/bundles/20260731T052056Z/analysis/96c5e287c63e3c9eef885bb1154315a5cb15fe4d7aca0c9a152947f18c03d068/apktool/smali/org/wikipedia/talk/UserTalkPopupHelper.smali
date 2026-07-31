.class public final Lorg/wikipedia/talk/UserTalkPopupHelper;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

.field public static final INSTANCE$1:Lorg/wikipedia/talk/UserTalkPopupHelper;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE$1:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 14
    .line 15
    return-void
.end method

.method public static newIntent$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/wikipedia/talk/db/TalkTemplate;JJZZI)Landroid/content/Intent;
    .locals 12

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x20

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v1, p5

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v3, v0, 0x40

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v3, p6

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v4, v0, 0x80

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    move v4, v5

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/4 v4, 0x1

    .line 30
    :goto_2
    and-int/lit16 v6, v0, 0x100

    .line 31
    .line 32
    if-eqz v6, :cond_3

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v2, p7

    .line 36
    .line 37
    :goto_3
    and-int/lit16 v6, v0, 0x200

    .line 38
    .line 39
    const-wide/16 v7, -0x1

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    move-wide v9, v7

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-wide/from16 v9, p8

    .line 46
    .line 47
    :goto_4
    and-int/lit16 v6, v0, 0x400

    .line 48
    .line 49
    if-eqz v6, :cond_5

    .line 50
    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-wide/from16 v7, p10

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v6, v0, 0x800

    .line 55
    .line 56
    if-eqz v6, :cond_6

    .line 57
    .line 58
    move v6, v5

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v6, p12

    .line 61
    .line 62
    :goto_6
    and-int/lit16 v0, v0, 0x1000

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    goto :goto_7

    .line 67
    :cond_7
    move/from16 v5, p13

    .line 68
    .line 69
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/content/Intent;

    .line 76
    .line 77
    const-class v11, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 78
    .line 79
    invoke-direct {v0, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    const-string p0, "title"

    .line 83
    .line 84
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, "parentSubject"

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string/jumbo p1, "topic"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "subject"

    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string p1, "body"

    .line 108
    .line 109
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string p1, "fromDiff"

    .line 114
    .line 115
    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string p1, "selectedTemplate"

    .line 120
    .line 121
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string p1, "templateManagement"

    .line 126
    .line 127
    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const-string p1, "exampleTemplate"

    .line 132
    .line 133
    invoke-virtual {p0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string p1, "fromRevisionId"

    .line 138
    .line 139
    invoke-virtual {p0, p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-string p1, "toRevisionId"

    .line 144
    .line 145
    invoke-virtual {p0, p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string p1, "invokeSource"

    .line 150
    .line 151
    move-object/from16 p2, p4

    .line 152
    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    return-object p0
.end method

.method public static synthetic show$default(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;I)V
    .locals 13

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p6

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p7

    :goto_1
    const/4 v12, 0x0

    .line 288
    sget-object v3, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v12}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static show$default(Lorg/wikipedia/talk/UserTalkPopupHelper;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZIILorg/wikipedia/Constants$InvokeSource;IZLjava/lang/Long;Ljava/lang/Integer;I)V
    .locals 13

    .line 1
    move/from16 p0, p11

    .line 2
    .line 3
    and-int/lit16 v0, p0, 0x80

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v9, v8

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v9, v7

    .line 12
    :goto_0
    and-int/lit16 v0, p0, 0x100

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move v10, v7

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move/from16 v10, p8

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v0, p0, 0x200

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    move-object v6, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v6, p9

    .line 28
    .line 29
    :goto_2
    and-int/lit16 p0, p0, 0x400

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    move-object v5, v1

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p10

    .line 36
    .line 37
    :goto_3
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v0, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 45
    .line 46
    if-eq p0, v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object v0, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 53
    .line 54
    if-ne p0, v0, :cond_5

    .line 55
    .line 56
    :cond_4
    move-object v2, p2

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_5
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object v0, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 64
    .line 65
    if-ne p0, v0, :cond_8

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v11, Landroid/view/View;

    .line 79
    .line 80
    invoke-direct {v11, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sub-int v0, p4, v0

    .line 88
    .line 89
    int-to-float v0, v0

    .line 90
    invoke-virtual {v11, v0}, Landroid/view/View;->setX(F)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sub-int v0, p5, v0

    .line 98
    .line 99
    int-to-float v0, v0

    .line 100
    invoke-virtual {v11, v0}, Landroid/view/View;->setY(F)V

    .line 101
    .line 102
    .line 103
    move-object v0, p0

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    new-instance v12, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 110
    .line 111
    invoke-direct {v12, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const v1, 0x7f0e002a

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v12}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 125
    .line 126
    move-object v1, p1

    .line 127
    move-object v2, p2

    .line 128
    move-object/from16 v4, p6

    .line 129
    .line 130
    move/from16 v3, p7

    .line 131
    .line 132
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/RulerTrackingMap;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ILorg/wikipedia/Constants$InvokeSource;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 133
    .line 134
    .line 135
    move-object v1, v0

    .line 136
    iput-object v1, v12, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 137
    .line 138
    const v1, 0x7f0903ff

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    xor-int/lit8 v2, p3, 0x1

    .line 146
    .line 147
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    .line 149
    .line 150
    const v1, 0x7f0903fd

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    const v1, 0x7f0903fe

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v10, :cond_6

    .line 168
    .line 169
    if-nez p3, :cond_6

    .line 170
    .line 171
    move v2, v8

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    move v2, v7

    .line 174
    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    .line 176
    .line 177
    const v1, 0x7f090401

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    if-nez p3, :cond_7

    .line 187
    .line 188
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_7

    .line 193
    .line 194
    move v7, v8

    .line 195
    :cond_7
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    .line 197
    .line 198
    new-instance v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 199
    .line 200
    invoke-direct {v1, p1, v12, v11}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;

    .line 207
    .line 208
    invoke-direct {p1, v8, p0, v11}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iput-object p1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_8
    move-object v2, p2

    .line 218
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 223
    .line 224
    move/from16 v3, p7

    .line 225
    .line 226
    invoke-direct {p1, v3, p2}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 230
    .line 231
    invoke-direct {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 232
    .line 233
    .line 234
    new-instance v2, Lkotlin/Pair;

    .line 235
    .line 236
    const-string v3, "entry"

    .line 237
    .line 238
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    new-instance p1, Lkotlin/Pair;

    .line 242
    .line 243
    const-string v3, "location"

    .line 244
    .line 245
    invoke-direct {p1, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    new-instance v3, Lkotlin/Pair;

    .line 249
    .line 250
    const-string v4, "lastKnownLocation"

    .line 251
    .line 252
    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    const/4 v1, 0x3

    .line 256
    new-array v1, v1, [Lkotlin/Pair;

    .line 257
    .line 258
    aput-object v2, v1, v7

    .line 259
    .line 260
    aput-object p1, v1, v8

    .line 261
    .line 262
    const/4 p1, 0x2

    .line 263
    aput-object v3, v1, p1

    .line 264
    .line 265
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 270
    .line 271
    .line 272
    invoke-static {p0, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :goto_5
    sget p0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 277
    .line 278
    move-object/from16 v4, p6

    .line 279
    .line 280
    invoke-static {p1, p2, v4}, Lokhttp3/Headers$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    .line 286
    .line 287
    return-void
.end method


# virtual methods
.method public show(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 14

    .line 1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v6, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    aget v7, v0, v1

    .line 17
    .line 18
    const/16 v13, 0x80

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object/from16 v4, p2

    .line 23
    .line 24
    move/from16 v5, p3

    .line 25
    .line 26
    move-object/from16 v8, p5

    .line 27
    .line 28
    move/from16 v9, p6

    .line 29
    .line 30
    move-object/from16 v11, p7

    .line 31
    .line 32
    move-object/from16 v12, p8

    .line 33
    .line 34
    move/from16 v10, p9

    .line 35
    .line 36
    invoke-static/range {v2 .. v13}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show$default(Lorg/wikipedia/talk/UserTalkPopupHelper;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZIILorg/wikipedia/Constants$InvokeSource;IZLjava/lang/Long;Ljava/lang/Integer;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public waitForUpdatedRevision(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;JILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;-><init>(Lorg/wikipedia/talk/UserTalkPopupHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v3, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v7, :cond_2

    .line 42
    .line 43
    if-ne v3, v6, :cond_1

    .line 44
    .line 45
    iget v3, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$1:I

    .line 46
    .line 47
    iget v8, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$0:I

    .line 48
    .line 49
    iget-wide v9, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->J$0:J

    .line 50
    .line 51
    iget-object v11, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$2:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    iget-object v12, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 54
    .line 55
    iget-object v13, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$0:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object/from16 v16, v12

    .line 61
    .line 62
    move-object v12, v1

    .line 63
    move-object/from16 v1, v16

    .line 64
    .line 65
    move-wide/from16 v16, v9

    .line 66
    .line 67
    move v10, v8

    .line 68
    move-wide/from16 v8, v16

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v4

    .line 78
    :cond_2
    iget v3, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$1:I

    .line 79
    .line 80
    iget v8, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$0:I

    .line 81
    .line 82
    iget-wide v9, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->J$0:J

    .line 83
    .line 84
    iget-object v11, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$2:Lorg/wikipedia/page/PageTitle;

    .line 85
    .line 86
    iget-object v12, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 87
    .line 88
    iget-object v13, v1, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$0:Landroid/content/Context;

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move-object/from16 v0, p1

    .line 98
    .line 99
    move-object/from16 v3, p3

    .line 100
    .line 101
    move-wide/from16 v8, p4

    .line 102
    .line 103
    move/from16 v10, p6

    .line 104
    .line 105
    move-object v11, v1

    .line 106
    move v12, v5

    .line 107
    move-object/from16 v1, p2

    .line 108
    .line 109
    :goto_1
    if-lez v12, :cond_5

    .line 110
    .line 111
    iput-object v0, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$0:Landroid/content/Context;

    .line 112
    .line 113
    iput-object v1, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 114
    .line 115
    iput-object v3, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$2:Lorg/wikipedia/page/PageTitle;

    .line 116
    .line 117
    iput-wide v8, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->J$0:J

    .line 118
    .line 119
    iput v10, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$0:I

    .line 120
    .line 121
    iput v12, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$1:I

    .line 122
    .line 123
    iput v7, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 124
    .line 125
    const-wide/16 v13, 0x7d0

    .line 126
    .line 127
    invoke-static {v13, v14, v11}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    if-ne v13, v2, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_4
    move v13, v12

    .line 135
    move-object v12, v1

    .line 136
    move-object v1, v11

    .line 137
    move-object v11, v3

    .line 138
    move v3, v13

    .line 139
    move-wide/from16 v16, v8

    .line 140
    .line 141
    move v8, v10

    .line 142
    move-wide/from16 v9, v16

    .line 143
    .line 144
    move-object v13, v0

    .line 145
    :goto_2
    move-object v0, v11

    .line 146
    move-object v11, v1

    .line 147
    move-object v1, v12

    .line 148
    move v12, v3

    .line 149
    move-object v3, v0

    .line 150
    move-wide/from16 v16, v9

    .line 151
    .line 152
    move v10, v8

    .line 153
    move-wide/from16 v8, v16

    .line 154
    .line 155
    move-object v0, v13

    .line 156
    :cond_5
    sget-object v13, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 157
    .line 158
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    iput-object v0, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$0:Landroid/content/Context;

    .line 167
    .line 168
    iput-object v1, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 169
    .line 170
    iput-object v3, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->L$2:Lorg/wikipedia/page/PageTitle;

    .line 171
    .line 172
    iput-wide v8, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->J$0:J

    .line 173
    .line 174
    iput v10, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$0:I

    .line 175
    .line 176
    iput v12, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->I$1:I

    .line 177
    .line 178
    iput v6, v11, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 179
    .line 180
    invoke-interface {v13, v14, v11}, Lorg/wikipedia/dataclient/RestService;->getTalkPage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    if-ne v13, v2, :cond_6

    .line 185
    .line 186
    :goto_3
    return-object v2

    .line 187
    :cond_6
    move-object/from16 v16, v13

    .line 188
    .line 189
    move-object v13, v0

    .line 190
    move-object/from16 v0, v16

    .line 191
    .line 192
    move-object/from16 v16, v11

    .line 193
    .line 194
    move-object v11, v3

    .line 195
    move v3, v12

    .line 196
    move-object/from16 v12, v16

    .line 197
    .line 198
    :goto_4
    check-cast v0, Lorg/wikipedia/dataclient/page/TalkPage;

    .line 199
    .line 200
    add-int/2addr v3, v7

    .line 201
    iget-wide v14, v0, Lorg/wikipedia/dataclient/page/TalkPage;->revision:J

    .line 202
    .line 203
    cmp-long v0, v14, v8

    .line 204
    .line 205
    if-gez v0, :cond_8

    .line 206
    .line 207
    const/16 v0, 0x14

    .line 208
    .line 209
    if-lt v3, v0, :cond_7

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_7
    move-object v0, v12

    .line 213
    move v12, v3

    .line 214
    move-object v3, v11

    .line 215
    move-object v11, v0

    .line 216
    move-object v0, v13

    .line 217
    goto :goto_1

    .line 218
    :cond_8
    :goto_5
    const v0, 0x7f12048b

    .line 219
    .line 220
    .line 221
    invoke-static {v13, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    .line 227
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 229
    .line 230
    const/16 v1, 0x1a

    .line 231
    .line 232
    if-gt v0, v1, :cond_9

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_9
    const-class v0, Landroid/app/NotificationManager;

    .line 236
    .line 237
    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Landroid/app/NotificationManager;

    .line 242
    .line 243
    if-eqz v0, :cond_d

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_d

    .line 250
    .line 251
    array-length v1, v0

    .line 252
    :goto_6
    if-ge v5, v1, :cond_b

    .line 253
    .line 254
    aget-object v2, v0, v5

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-ne v3, v10, :cond_a

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_b
    move-object v2, v4

    .line 267
    :goto_7
    if-eqz v2, :cond_d

    .line 268
    .line 269
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-direct {v0, v13, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 276
    .line 277
    .line 278
    const/4 v1, -0x2

    .line 279
    iput v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 280
    .line 281
    iget-object v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 282
    .line 283
    iput-object v4, v1, Landroid/app/Notification;->vibrate:[J

    .line 284
    .line 285
    const-wide/16 v1, 0x1

    .line 286
    .line 287
    iput-wide v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 288
    .line 289
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 297
    .line 298
    invoke-static {v13, v1}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_c

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_c
    new-instance v1, Landroidx/core/app/NotificationManagerCompat;

    .line 306
    .line 307
    invoke-direct {v1, v13}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v10, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 311
    .line 312
    .line 313
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 314
    .line 315
    return-object v0
.end method
