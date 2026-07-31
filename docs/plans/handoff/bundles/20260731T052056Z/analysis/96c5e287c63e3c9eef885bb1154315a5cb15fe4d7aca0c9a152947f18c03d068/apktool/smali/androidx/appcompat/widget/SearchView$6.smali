.class public final Landroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView$6;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x42

    .line 4
    .line 5
    const/16 v2, 0x16

    .line 6
    .line 7
    const/16 v3, 0x15

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$6;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    check-cast p0, Landroidx/preference/SeekBarPreference;

    .line 23
    .line 24
    iget-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mAdjustable:Z

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    if-eq p2, v3, :cond_4

    .line 29
    .line 30
    if-ne p2, v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 p1, 0x17

    .line 34
    .line 35
    if-eq p2, p1, :cond_4

    .line 36
    .line 37
    if-ne p2, v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 41
    .line 42
    if-nez p0, :cond_3

    .line 43
    .line 44
    const-string p0, "SeekBarPreference"

    .line 45
    .line 46
    const-string p1, "SeekBar view is null and hence cannot be adjusted."

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_4
    :goto_0
    return v4

    .line 57
    :pswitch_0
    check-cast p0, Lorg/wikipedia/views/CabSearchView;

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 62
    .line 63
    if-nez v5, :cond_5

    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_5
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v6, 0x1

    .line 72
    if-eqz v5, :cond_d

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    const/4 v7, -0x1

    .line 79
    if-eq v5, v7, :cond_d

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 82
    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 88
    .line 89
    if-nez p1, :cond_7

    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_f

    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_f

    .line 104
    .line 105
    if-eq p2, v1, :cond_c

    .line 106
    .line 107
    const/16 p1, 0x54

    .line 108
    .line 109
    if-eq p2, p1, :cond_c

    .line 110
    .line 111
    const/16 p1, 0x3d

    .line 112
    .line 113
    if-ne p2, p1, :cond_8

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_8
    if-eq p2, v3, :cond_a

    .line 117
    .line 118
    if-ne p2, v2, :cond_9

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_9
    const/16 p0, 0x13

    .line 122
    .line 123
    if-ne p2, p0, :cond_f

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_a
    :goto_1
    if-ne p2, v3, :cond_b

    .line 130
    .line 131
    move p0, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->ensureImeVisible()V

    .line 147
    .line 148
    .line 149
    :goto_3
    move v4, v6

    .line 150
    goto :goto_5

    .line 151
    :cond_c
    :goto_4
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->onItemClicked(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_d
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_e

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_f

    .line 175
    .line 176
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    if-ne p3, v6, :cond_f

    .line 181
    .line 182
    if-ne p2, v1, :cond_f

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const-string p2, "android.intent.action.SEARCH"

    .line 196
    .line 197
    const/4 p3, 0x0

    .line 198
    invoke-virtual {p0, p2, p3, p3, p1}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_f
    :goto_5
    return v4

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
