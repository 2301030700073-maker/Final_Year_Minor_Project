.class public final synthetic Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 5
    .line 6
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 15
    .line 16
    const/16 v2, 0x64

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string v0, "resultWikiText"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->editText:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-interface {p0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 48
    .line 49
    const/16 v2, 0x61

    .line 50
    .line 51
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string v0, "returnLinkTitle"

    .line 58
    .line 59
    const-class v2, Lorg/wikipedia/page/PageTitle;

    .line 60
    .line 61
    invoke-static {p1, v0, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/os/Parcelable;

    .line 66
    .line 67
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 78
    .line 79
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 80
    .line 81
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v2, v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    iget-object v2, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 97
    .line 98
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_1

    .line 105
    .line 106
    iget-object p0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 107
    .line 108
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "[[:"

    .line 111
    .line 112
    const-string v3, ":"

    .line 113
    .line 114
    invoke-static {v2, p0, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-string p0, "[["

    .line 120
    .line 121
    :goto_0
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 122
    .line 123
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v4, "_"

    .line 140
    .line 141
    const-string v5, " "

    .line 142
    .line 143
    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const-string v4, "]]"

    .line 152
    .line 153
    if-nez v3, :cond_2

    .line 154
    .line 155
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string/jumbo v3, "|"

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v3, v2, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_1

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    iget-object p1, v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 187
    .line 188
    if-eqz p1, :cond_3

    .line 189
    .line 190
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_3

    .line 195
    .line 196
    invoke-interface {p1, p0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 197
    .line 198
    .line 199
    :cond_3
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->editText:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method
