.class public final Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "callback",
        "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V",
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "editText",
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "getEditText",
        "()Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "setEditText",
        "(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V",
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


# instance fields
.field public callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

.field public editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const p2, 0x7f0c0602

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const p1, 0x7f090156

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const p1, 0x7f09077a

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const p1, 0x7f09077c

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const p1, 0x7f09077d

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const p1, 0x7f090785

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    const p1, 0x7f09078c

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 84
    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    const p1, 0x7f09078d

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 95
    .line 96
    if-eqz v4, :cond_0

    .line 97
    .line 98
    const p1, 0x7f09078e

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 106
    .line 107
    if-eqz v5, :cond_0

    .line 108
    .line 109
    const p1, 0x7f090792

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 117
    .line 118
    if-eqz v6, :cond_0

    .line 119
    .line 120
    const p1, 0x7f090793

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 128
    .line 129
    if-eqz v7, :cond_0

    .line 130
    .line 131
    const p1, 0x7f090794

    .line 132
    .line 133
    .line 134
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 139
    .line 140
    if-eqz v8, :cond_0

    .line 141
    .line 142
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/4 v9, 0x0

    .line 145
    invoke-direct {p1, p0, v9}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    const/4 p1, 0x1

    .line 152
    new-array v10, p1, [Landroid/view/View;

    .line 153
    .line 154
    aput-object p2, v10, v9

    .line 155
    .line 156
    aget-object p2, v10, v9

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-static {p2, v9}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    new-instance p2, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    const/4 p2, 0x2

    .line 176
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    const/4 p2, 0x3

    .line 185
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    const/4 p2, 0x4

    .line 194
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    const/4 p2, 0x5

    .line 203
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 210
    .line 211
    const/4 p2, 0x6

    .line 212
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 219
    .line 220
    const/4 p2, 0x7

    .line 221
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    const/16 p2, 0x8

    .line 230
    .line 231
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;

    .line 238
    .line 239
    const/16 p2, 0x9

    .line 240
    .line 241
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    const-string p1, "Missing required view with ID: "

    .line 257
    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const/4 p0, 0x0

    .line 266
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEditText()Lorg/wikipedia/edit/SyntaxHighlightableEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-void
.end method
