.class public final Lorg/wikipedia/diff/ArticleEditDetailsActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/diff/ArticleEditDetailsActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lokio/ByteString$Companion;


# instance fields
.field public binding:Lretrofit2/OkHttpCall$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString$Companion;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const v2, 0x7f0c001d

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f090269

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    if-eqz v5, :cond_4

    .line 29
    .line 30
    const v2, 0x7f0906cb

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    new-instance v2, Lretrofit2/OkHttpCall$1;

    .line 42
    .line 43
    check-cast v1, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    invoke-direct {v2, v1, v5, v6, v7}, Lretrofit2/OkHttpCall$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    iput-object v2, v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 55
    .line 56
    const-string v2, "binding"

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-class v6, Lorg/wikipedia/page/PageTitle;

    .line 85
    .line 86
    const-string v8, "articleTitle"

    .line 87
    .line 88
    invoke-static {v1, v8, v6}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Landroid/os/Parcelable;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v9, -0x1

    .line 104
    const-string v10, "pageId"

    .line 105
    .line 106
    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const-string v11, "revisionFrom"

    .line 115
    .line 116
    const-wide/16 v12, -0x1

    .line 117
    .line 118
    invoke-virtual {v9, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    move/from16 v16, v4

    .line 127
    .line 128
    const-string v4, "revisionTo"

    .line 129
    .line 130
    invoke-virtual {v9, v4, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 131
    .line 132
    .line 133
    move-result-wide v12

    .line 134
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    move/from16 v17, v7

    .line 139
    .line 140
    const-string v7, "invokeSource"

    .line 141
    .line 142
    invoke-virtual {v9, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast v9, Lorg/wikipedia/Constants$InvokeSource;

    .line 150
    .line 151
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 152
    .line 153
    invoke-direct {v3}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;-><init>()V

    .line 154
    .line 155
    .line 156
    move/from16 v18, v5

    .line 157
    .line 158
    new-instance v5, Lkotlin/Pair;

    .line 159
    .line 160
    invoke-direct {v5, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v6, Lkotlin/Pair;

    .line 168
    .line 169
    invoke-direct {v6, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v8, Lkotlin/Pair;

    .line 177
    .line 178
    invoke-direct {v8, v11, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    new-instance v10, Lkotlin/Pair;

    .line 186
    .line 187
    invoke-direct {v10, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lkotlin/Pair;

    .line 191
    .line 192
    invoke-direct {v1, v7, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    const/4 v4, 0x5

    .line 196
    new-array v4, v4, [Lkotlin/Pair;

    .line 197
    .line 198
    aput-object v5, v4, v16

    .line 199
    .line 200
    aput-object v6, v4, v18

    .line 201
    .line 202
    aput-object v8, v4, v17

    .line 203
    .line 204
    const/4 v5, 0x3

    .line 205
    aput-object v10, v4, v5

    .line 206
    .line 207
    const/4 v5, 0x4

    .line 208
    aput-object v1, v4, v5

    .line 209
    .line 210
    invoke-static {v4}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 215
    .line 216
    .line 217
    if-nez p1, :cond_2

    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 224
    .line 225
    invoke-direct {v4, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->binding:Lretrofit2/OkHttpCall$1;

    .line 229
    .line 230
    if-eqz v0, :cond_1

    .line 231
    .line 232
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v0, Landroid/widget/FrameLayout;

    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    move/from16 v1, v18

    .line 241
    .line 242
    const/4 v5, 0x0

    .line 243
    invoke-virtual {v4, v0, v3, v5, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_1
    const/4 v5, 0x0

    .line 251
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v5

    .line 255
    :cond_2
    return-void

    .line 256
    :cond_3
    move-object v5, v3

    .line 257
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v5

    .line 261
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v1, "Missing required view with ID: "

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method
