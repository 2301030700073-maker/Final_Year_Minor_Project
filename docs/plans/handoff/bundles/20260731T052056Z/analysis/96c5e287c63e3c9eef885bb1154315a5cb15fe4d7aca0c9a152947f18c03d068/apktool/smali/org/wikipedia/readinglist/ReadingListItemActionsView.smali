.class public final Lorg/wikipedia/readinglist/ReadingListItemActionsView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lretrofit2/Retrofit;

.field public callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0c05e8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const p1, 0x7f090547

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const p1, 0x7f090548

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v4, v0

    .line 38
    check-cast v4, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    const p1, 0x7f090549

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v5, v0

    .line 50
    check-cast v5, Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    const p1, 0x7f09054a

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v6, v0

    .line 62
    check-cast v6, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    const p1, 0x7f09054b

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v7, v0

    .line 74
    check-cast v7, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    const p1, 0x7f09054c

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v8, v0

    .line 86
    check-cast v8, Landroid/widget/TextView;

    .line 87
    .line 88
    if-eqz v8, :cond_0

    .line 89
    .line 90
    const p1, 0x7f09054d

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object v9, v0

    .line 98
    check-cast v9, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    if-eqz v9, :cond_0

    .line 101
    .line 102
    const p1, 0x7f09054e

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v10, v0

    .line 110
    check-cast v10, Landroid/widget/LinearLayout;

    .line 111
    .line 112
    if-eqz v10, :cond_0

    .line 113
    .line 114
    const p1, 0x7f09054f

    .line 115
    .line 116
    .line 117
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object v11, v0

    .line 122
    check-cast v11, Landroid/widget/TextView;

    .line 123
    .line 124
    if-eqz v11, :cond_0

    .line 125
    .line 126
    new-instance v1, Lretrofit2/Retrofit;

    .line 127
    .line 128
    move-object v2, p0

    .line 129
    invoke-direct/range {v1 .. v11}, Lretrofit2/Retrofit;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 130
    .line 131
    .line 132
    iput-object v1, v2, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->binding:Lretrofit2/Retrofit;

    .line 133
    .line 134
    const/4 p0, 0x1

    .line 135
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-direct {p1, v2, v0}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 148
    .line 149
    invoke-direct {p1, v2, p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    new-instance p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    const/4 p1, 0x2

    .line 158
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    new-instance p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/4 p1, 0x3

    .line 167
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    new-instance p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    const/4 p1, 0x4

    .line 176
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    const/4 p1, 0x5

    .line 185
    invoke-direct {p0, v2, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_0
    move-object v2, p0

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    const-string p1, "Missing required view with ID: "

    .line 202
    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p0, 0x0

    .line 211
    throw p0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 2
    .line 3
    return-void
.end method
