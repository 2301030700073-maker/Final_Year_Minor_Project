.class public final Lorg/wikipedia/page/PageActionTabLayout;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/wikipedia/page/PageActionTabLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/page/action/PageActionItem$Callback;",
        "callback",
        "Lorg/wikipedia/page/action/PageActionItem$Callback;",
        "getCallback",
        "()Lorg/wikipedia/page/action/PageActionItem$Callback;",
        "setCallback",
        "(Lorg/wikipedia/page/action/PageActionItem$Callback;)V",
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
.field public callback:Lorg/wikipedia/page/action/PageActionItem$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/page/PageActionTabLayout;->update()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/page/action/PageActionItem$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageActionTabLayout;->callback:Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "callback"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setCallback(Lorg/wikipedia/page/action/PageActionItem$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageActionTabLayout;->callback:Lorg/wikipedia/page/action/PageActionItem$Callback;

    .line 5
    .line 6
    return-void
.end method

.method public final update()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sans-serif-medium"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v3, 0x7f04051a

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const v4, 0x7f040555

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCustomizeToolbarOrder()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    new-instance v6, Lcom/google/android/material/textview/MaterialTextView;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const/4 v8, 0x0

    .line 72
    invoke-direct {v6, v7, v8}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .line 74
    .line 75
    const/16 v7, 0x11

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    .line 79
    .line 80
    const/high16 v7, 0x40000000    # 2.0f

    .line 81
    .line 82
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const/high16 v9, 0x41400000    # 12.0f

    .line 87
    .line 88
    invoke-static {v9}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    invoke-static {v7}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-virtual {v6, v8, v9, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    .line 104
    .line 105
    const/4 v7, 0x4

    .line 106
    invoke-virtual {v6, v7}, Landroid/view/View;->setTextAlignment(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const v8, 0x7f070058

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    invoke-virtual {v6, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 124
    .line 125
    .line 126
    const/4 v7, 0x2

    .line 127
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 128
    .line 129
    .line 130
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 133
    .line 134
    .line 135
    sget-object v7, Lorg/wikipedia/page/action/PageActionItem;->Companion:Lorg/wikipedia/page/action/PageActionItem$Companion;

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lorg/wikipedia/page/action/PageActionItem$Companion;->find(I)Lorg/wikipedia/page/action/PageActionItem;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lorg/wikipedia/page/action/PageActionItem;->getViewId()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v5}, Lorg/wikipedia/page/action/PageActionItem;->getTitleResId()I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    new-array v8, v7, [Landroid/view/View;

    .line 175
    .line 176
    aput-object v6, v8, v1

    .line 177
    .line 178
    aget-object v8, v8, v1

    .line 179
    .line 180
    invoke-virtual {v8}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-static {v8, v9}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v6, v2}, Lkotlin/uuid/UuidKt;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Lorg/wikipedia/page/action/PageActionItem;->getIconResId()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-virtual {v6, v1, v8, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 195
    .line 196
    .line 197
    const/high16 v8, 0x40800000    # 4.0f

    .line 198
    .line 199
    invoke-static {v8}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    neg-int v8, v8

    .line 204
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 205
    .line 206
    .line 207
    new-instance v8, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 208
    .line 209
    const/16 v9, 0x10

    .line 210
    .line 211
    invoke-direct {v8, v9, p0, v5}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    .line 222
    const/4 v7, -0x1

    .line 223
    const/high16 v8, 0x3f800000    # 1.0f

    .line 224
    .line 225
    invoke-direct {v5, v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_0
    return-void
.end method
