.class public final synthetic Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 21
    .line 22
    const-string v0, "<code>"

    .line 23
    .line 24
    const-string v1, "</code>"

    .line 25
    .line 26
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 41
    .line 42
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 43
    .line 44
    const-string v0, "<small>"

    .line 45
    .line 46
    const-string v1, "</small>"

    .line 47
    .line 48
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 63
    .line 64
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 65
    .line 66
    const-string v0, "<big>"

    .line 67
    .line 68
    const-string v1, "</big>"

    .line 69
    .line 70
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void

    .line 74
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 85
    .line 86
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 87
    .line 88
    const-string v0, "<sub>"

    .line 89
    .line 90
    const-string v1, "</sub>"

    .line 91
    .line 92
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    :pswitch_3
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 107
    .line 108
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 109
    .line 110
    const-string v0, "<sup>"

    .line 111
    .line 112
    const-string v1, "</sup>"

    .line 113
    .line 114
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void

    .line 118
    :pswitch_4
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 129
    .line 130
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 131
    .line 132
    const-string v0, "<s>"

    .line 133
    .line 134
    const-string v1, "</s>"

    .line 135
    .line 136
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    return-void

    .line 140
    :pswitch_5
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 141
    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 151
    .line 152
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 153
    .line 154
    const-string v0, "<u>"

    .line 155
    .line 156
    const-string v1, "</u>"

    .line 157
    .line 158
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    return-void

    .line 162
    :pswitch_6
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 163
    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 173
    .line 174
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 175
    .line 176
    const-string v0, "\'\'"

    .line 177
    .line 178
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    return-void

    .line 182
    :pswitch_7
    iget-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 183
    .line 184
    if-eqz p1, :cond_8

    .line 185
    .line 186
    invoke-virtual {p1}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    sget v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->$r8$clinit:I

    .line 193
    .line 194
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 195
    .line 196
    const-string v0, "\'\'\'"

    .line 197
    .line 198
    invoke-static {p0, p1, v0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->toggleSyntaxAroundCurrentSelection(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_8
    return-void

    .line 202
    :pswitch_8
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 203
    .line 204
    if-eqz p0, :cond_9

    .line 205
    .line 206
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 207
    .line 208
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 209
    .line 210
    .line 211
    :cond_9
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
