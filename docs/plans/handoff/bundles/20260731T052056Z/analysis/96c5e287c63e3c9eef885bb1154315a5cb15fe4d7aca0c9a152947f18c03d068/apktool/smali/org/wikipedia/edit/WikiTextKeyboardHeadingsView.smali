.class public final Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;",
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
    .locals 13

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
    const p2, 0x7f0c0603

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const p1, 0x7f090155

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
    if-eqz p2, :cond_1

    .line 31
    .line 32
    const p1, 0x7f09077e

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const p1, 0x7f09077f

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const p1, 0x7f090780

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/ImageView;

    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    const p1, 0x7f090781

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {p1, p0, v4}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v5, 0x2

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v7, 0x1

    .line 95
    new-array v8, v7, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v6, v8, v4

    .line 98
    .line 99
    const v6, 0x7f120a84

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {p1, p0, v7}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/4 v8, 0x3

    .line 122
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    new-array v10, v7, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v9, v10, v4

    .line 129
    .line 130
    invoke-virtual {p1, v6, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    invoke-direct {p1, p0, v5}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const/4 v9, 0x4

    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    new-array v11, v7, [Ljava/lang/Object;

    .line 155
    .line 156
    aput-object v10, v11, v4

    .line 157
    .line 158
    invoke-virtual {p1, v6, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {p1, p0, v8}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const/4 v10, 0x5

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    new-array v12, v7, [Ljava/lang/Object;

    .line 183
    .line 184
    aput-object v11, v12, v4

    .line 185
    .line 186
    invoke-virtual {p1, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    invoke-direct {p1, p0, v9}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    new-array p0, v10, [Landroid/view/View;

    .line 202
    .line 203
    aput-object p2, p0, v4

    .line 204
    .line 205
    aput-object v0, p0, v7

    .line 206
    .line 207
    aput-object v1, p0, v5

    .line 208
    .line 209
    aput-object v2, p0, v8

    .line 210
    .line 211
    aput-object v3, p0, v9

    .line 212
    .line 213
    :goto_0
    if-ge v4, v10, :cond_0

    .line 214
    .line 215
    aget-object p1, p0, v4

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-static {p1, p2}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    const-string p1, "Missing required view with ID: "

    .line 237
    .line 238
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/4 p0, 0x0

    .line 246
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEditText()Lorg/wikipedia/edit/SyntaxHighlightableEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-void
.end method
