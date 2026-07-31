.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$InputTextFilter;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$InputTextFilter;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v3, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iput-boolean v2, v1, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 18
    .line 19
    :cond_0
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    if-nez v1, :cond_4

    .line 24
    .line 25
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4, v2, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-interface {p4, p6, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_2
    invoke-virtual {v0, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iget p3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 81
    .line 82
    if-gt p2, p3, :cond_9

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget p2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mMaxValue:I

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-le p1, p2, :cond_3

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_3
    return-object p0

    .line 103
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {p4, v2, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    invoke-interface {p4, p6, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 157
    .line 158
    array-length p3, p2

    .line 159
    :goto_0
    if-ge v2, p3, :cond_9

    .line 160
    .line 161
    aget-object p4, p2, v2

    .line 162
    .line 163
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p6

    .line 167
    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p6

    .line 171
    if-eqz p6, :cond_8

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iget-object p2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 182
    .line 183
    if-nez p2, :cond_6

    .line 184
    .line 185
    new-instance p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 186
    .line 187
    iget-object p3, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 188
    .line 189
    invoke-direct {p2, p3}, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/EditText;)V

    .line 190
    .line 191
    .line 192
    iput-object p2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 193
    .line 194
    :cond_6
    iget-object p2, v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mSetSelectionCommand:Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;

    .line 195
    .line 196
    iput p0, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 197
    .line 198
    iput p1, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 199
    .line 200
    iget-boolean p0, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 201
    .line 202
    if-nez p0, :cond_7

    .line 203
    .line 204
    iget-object p0, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 205
    .line 206
    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    const/4 p0, 0x1

    .line 210
    iput-boolean p0, p2, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 211
    .line 212
    :cond_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    invoke-virtual {p4, p5, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    return-object p0

    .line 221
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_9
    :goto_1
    return-object v3
.end method

.method public final getAcceptedChars()[C
    .locals 0

    .line 1
    sget-object p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
