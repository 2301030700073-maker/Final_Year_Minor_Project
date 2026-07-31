.class public final Lorg/wikipedia/talk/TalkThreadItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/talk/TalkThreadItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/talk/TalkThreadItemView$Callback;",
        "callback",
        "Lorg/wikipedia/talk/TalkThreadItemView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/talk/TalkThreadItemView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/talk/TalkThreadItemView$Callback;)V",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ActivityPageBinding;

.field public callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

.field public item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

.field public final overflowMenuListener:Lretrofit2/OkHttpCall$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f0c031b

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0900a2

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const v0, 0x7f0904ad

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const v0, 0x7f090512

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/widget/ImageView;

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const v0, 0x7f09057a

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 60
    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    const v0, 0x7f0905f7

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Landroid/widget/ImageView;

    .line 71
    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const v0, 0x7f0905f8

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    const v0, 0x7f0905f9

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    if-eqz v8, :cond_0

    .line 93
    .line 94
    const v0, 0x7f0905fa

    .line 95
    .line 96
    .line 97
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    check-cast v9, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v9, :cond_0

    .line 104
    .line 105
    const v0, 0x7f0906bc

    .line 106
    .line 107
    .line 108
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    if-eqz v10, :cond_0

    .line 113
    .line 114
    const v0, 0x7f0906bd

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    if-eqz v11, :cond_0

    .line 122
    .line 123
    const v0, 0x7f0906be

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    if-eqz v12, :cond_0

    .line 131
    .line 132
    const v0, 0x7f0906c1

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    check-cast v13, Landroid/widget/TextView;

    .line 140
    .line 141
    if-eqz v13, :cond_0

    .line 142
    .line 143
    const v0, 0x7f0906d4

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    if-eqz v14, :cond_0

    .line 151
    .line 152
    const v0, 0x7f090701

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    if-eqz v15, :cond_0

    .line 160
    .line 161
    const v0, 0x7f090702

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v16

    .line 168
    check-cast v16, Landroid/widget/TextView;

    .line 169
    .line 170
    if-eqz v16, :cond_0

    .line 171
    .line 172
    new-instance v0, Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 173
    .line 174
    invoke-direct/range {v0 .. v16}, Lorg/wikipedia/databinding/ActivityPageBinding;-><init>(Lorg/wikipedia/talk/TalkThreadItemView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    .line 175
    .line 176
    .line 177
    iput-object v0, v1, Lorg/wikipedia/talk/TalkThreadItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 178
    .line 179
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 180
    .line 181
    const/4 v2, -0x1

    .line 182
    const/4 v4, -0x2

    .line 183
    invoke-direct {v0, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;

    .line 190
    .line 191
    const/4 v2, 0x0

    .line 192
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkThreadItemView;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    new-instance v0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkThreadItemView;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 208
    .line 209
    const/16 v2, 0x1a

    .line 210
    .line 211
    move-object/from16 v4, p1

    .line 212
    .line 213
    invoke-direct {v0, v2, v4, v1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    const/4 v2, 0x2

    .line 222
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkThreadItemView;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lretrofit2/OkHttpCall$1;

    .line 229
    .line 230
    const/16 v2, 0x17

    .line 231
    .line 232
    invoke-direct {v0, v2, v1, v4}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iput-object v0, v1, Lorg/wikipedia/talk/TalkThreadItemView;->overflowMenuListener:Lretrofit2/OkHttpCall$1;

    .line 236
    .line 237
    return-void

    .line 238
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, "Missing required view with ID: "

    .line 247
    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const/4 v0, 0x0

    .line 256
    throw v0
.end method

.method public static bindItem$default(Lorg/wikipedia/talk/TalkThreadItemView;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Landroid/text/method/MovementMethod;Ljava/lang/String;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x4

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    :goto_0
    const/16 v5, 0x8

    .line 13
    .line 14
    and-int/lit8 v6, p4, 0x8

    .line 15
    .line 16
    if-eqz v6, :cond_1

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v6, p3

    .line 21
    .line 22
    :goto_1
    iget-object v7, v0, Lorg/wikipedia/talk/TalkThreadItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 23
    .line 24
    iget-object v8, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 25
    .line 26
    iget-object v9, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->date:Ljava/util/Date;

    .line 27
    .line 28
    iget v10, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 29
    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 34
    .line 35
    iget-object v11, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    if-lez v12, :cond_2

    .line 42
    .line 43
    const/4 v12, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/4 v12, 0x0

    .line 46
    :goto_2
    iget-object v13, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v13, Landroid/widget/TextView;

    .line 49
    .line 50
    iget-object v14, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v14, Landroid/view/View;

    .line 53
    .line 54
    iget-object v15, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v15, Landroid/view/View;

    .line 57
    .line 58
    iget-object v5, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Landroid/view/View;

    .line 61
    .line 62
    iget-object v3, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Landroid/view/View;

    .line 65
    .line 66
    iget-object v4, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v4, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v0, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .line 74
    move/from16 v16, v2

    .line 75
    .line 76
    iget-object v2, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Landroid/view/View;

    .line 79
    .line 80
    move-object/from16 p3, v8

    .line 81
    .line 82
    iget-object v8, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v8, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    move/from16 p4, v12

    .line 87
    .line 88
    iget-object v12, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v12, Landroid/widget/TextView;

    .line 91
    .line 92
    move/from16 v17, v10

    .line 93
    .line 94
    iget-object v10, v7, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 97
    .line 98
    move-object/from16 v18, v7

    .line 99
    .line 100
    if-eqz p4, :cond_3

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/16 v7, 0x8

    .line 105
    .line 106
    :goto_3
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    if-eqz p4, :cond_4

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const/16 v7, 0x8

    .line 114
    .line 115
    :goto_4
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 119
    .line 120
    invoke-static {v13, v11, v6}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual {v2, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    if-nez p4, :cond_5

    .line 131
    .line 132
    const/4 v2, 0x4

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    const/4 v2, 0x0

    .line 135
    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    const/4 v7, 0x6

    .line 143
    if-le v2, v7, :cond_6

    .line 144
    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const/16 v13, 0x7e

    .line 151
    .line 152
    if-ne v7, v13, :cond_6

    .line 153
    .line 154
    const/4 v7, 0x5

    .line 155
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    const/16 v2, 0x2d

    .line 160
    .line 161
    if-ne v13, v2, :cond_6

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    invoke-virtual {v11, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    const v2, 0x7f0801f6

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_6
    const v2, 0x7f08020a

    .line 179
    .line 180
    .line 181
    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    .line 183
    .line 184
    if-eqz v9, :cond_7

    .line 185
    .line 186
    const/4 v0, 0x0

    .line 187
    goto :goto_7

    .line 188
    :cond_7
    const/16 v0, 0x8

    .line 189
    .line 190
    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    if-eqz v9, :cond_9

    .line 194
    .line 195
    sget-object v0, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_8

    .line 209
    .line 210
    const-string v0, "HH:mm, MMM d, yyyy"

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_8
    const-string v0, "hh:mm a, MMM d, yyyy"

    .line 214
    .line 215
    :goto_8
    invoke-static {v0, v9}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v4, v0, v6}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    sget-object v0, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 223
    .line 224
    iget-object v0, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->html:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v12, v0}, Lokhttp3/Headers$Companion;->fromHtml(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/Spanned;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v12, v0, v6}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    move-object/from16 v0, p2

    .line 242
    .line 243
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 244
    .line 245
    .line 246
    if-eqz v16, :cond_a

    .line 247
    .line 248
    const/16 v0, 0x8

    .line 249
    .line 250
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v1, v18

    .line 269
    .line 270
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v1, Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_a
    const/16 v0, 0x8

    .line 279
    .line 280
    iget-boolean v2, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isFirstTopLevel:Z

    .line 281
    .line 282
    const v4, 0x7f040520

    .line 283
    .line 284
    .line 285
    if-eqz v2, :cond_b

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 299
    .line 300
    .line 301
    const/4 v2, -0x1

    .line 302
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v10, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    const v6, 0x7f040061

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v6}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-static {v2, v4}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v4}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    .line 357
    .line 358
    :goto_9
    const/4 v2, 0x2

    .line 359
    move/from16 v4, v17

    .line 360
    .line 361
    if-gt v4, v2, :cond_c

    .line 362
    .line 363
    const/4 v6, 0x0

    .line 364
    goto :goto_a

    .line 365
    :cond_c
    move v6, v0

    .line 366
    :goto_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    if-le v4, v2, :cond_d

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    goto :goto_b

    .line 373
    :cond_d
    move v3, v0

    .line 374
    :goto_b
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    const/4 v3, 0x1

    .line 378
    if-le v4, v3, :cond_e

    .line 379
    .line 380
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_e

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    goto :goto_c

    .line 388
    :cond_e
    move v3, v0

    .line 389
    :goto_c
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    if-nez v3, :cond_f

    .line 397
    .line 398
    const/4 v3, 0x0

    .line 399
    goto :goto_d

    .line 400
    :cond_f
    move v3, v0

    .line 401
    :goto_d
    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    const/4 v3, 0x1

    .line 405
    if-le v4, v3, :cond_11

    .line 406
    .line 407
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v3, :cond_10

    .line 412
    .line 413
    if-le v4, v2, :cond_11

    .line 414
    .line 415
    iget-boolean v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isLastSibling:Z

    .line 416
    .line 417
    if-nez v1, :cond_11

    .line 418
    .line 419
    :cond_10
    const/4 v4, 0x0

    .line 420
    goto :goto_e

    .line 421
    :cond_11
    move v4, v0

    .line 422
    :goto_e
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {p0 .. p0}, Lorg/wikipedia/talk/TalkThreadItemView;->updateExpandedState()V

    .line 426
    .line 427
    .line 428
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/talk/TalkThreadItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/talk/TalkThreadItemView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/TalkThreadItemView;->callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final updateExpandedState()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->binding:Lorg/wikipedia/databinding/ActivityPageBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "item"

    .line 15
    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    iget-boolean v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const v3, 0x7f080116

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v3, 0x7f080118

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 41
    .line 42
    if-eqz v3, :cond_6

    .line 43
    .line 44
    iget-boolean v6, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    const v6, 0x7f100036

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const v6, 0x7f100037

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v3, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iget-object v7, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 62
    .line 63
    if-eqz v7, :cond_5

    .line 64
    .line 65
    iget-object v7, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const/4 v8, 0x1

    .line 76
    new-array v8, v8, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    aput-object v7, v8, v9

    .line 80
    .line 81
    invoke-virtual {v1, v6, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroid/view/View;

    .line 102
    .line 103
    iget-object p0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 104
    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    iget-boolean v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 108
    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    iget v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    if-le v1, v2, :cond_2

    .line 115
    .line 116
    iget-boolean p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isLastSibling:Z

    .line 117
    .line 118
    if-nez p0, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/16 v9, 0x8

    .line 122
    .line 123
    :cond_3
    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v4

    .line 131
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v4

    .line 135
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v4

    .line 139
    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v4
.end method
