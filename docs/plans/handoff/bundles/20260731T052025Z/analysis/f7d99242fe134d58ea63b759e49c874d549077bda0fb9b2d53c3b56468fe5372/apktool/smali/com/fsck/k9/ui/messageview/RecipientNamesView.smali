.class public final Lcom/fsck/k9/ui/messageview/RecipientNamesView;
.super Landroid/view/ViewGroup;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final additionRecipientSpacing:I

.field public final maxNumberOfRecipientNames:I

.field public numberOfRecipients:I

.field public final recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

.field public final recipientLayoutCreator:Lorg/apache/james/mime4j/stream/RawField;

.field public final recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

.field public recipientNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 p2, 0x5

    .line 8
    iput p2, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->maxNumberOfRecipientNames:I

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v0, 0x7f0c0383

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const p2, 0x7f090363

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 34
    .line 35
    const p2, 0x7f090360

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->additionRecipientSpacing:I

    .line 63
    .line 64
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNames:Ljava/util/List;

    .line 67
    .line 68
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 69
    .line 70
    const/16 v1, 0xa

    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lorg/apache/james/mime4j/stream/RawField;

    .line 76
    .line 77
    const v2, 0x7f12046a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const v3, 0x7f12045e

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v0, v2, p2, p1}, Lorg/apache/james/mime4j/stream/RawField;-><init>(Lokhttp3/ConnectionPool;Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientLayoutCreator:Lorg/apache/james/mime4j/stream/RawField;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getMaxNumberOfRecipientNames()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->maxNumberOfRecipientNames:I

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->numberOfRecipients:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNames:Ljava/util/List;

    .line 13
    .line 14
    iget v3, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->numberOfRecipients:I

    .line 15
    .line 16
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientLayoutCreator:Lorg/apache/james/mime4j/stream/RawField;

    .line 17
    .line 18
    iget-object v5, v4, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_b

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x1

    .line 36
    const/high16 v8, -0x80000000

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    if-ne v6, v7, :cond_1

    .line 41
    .line 42
    new-instance v3, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/stream/RawField;->createRecipientList(Ljava/util/List;)Landroid/text/SpannedString;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {v3, v2, v10}, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;-><init>(Landroid/text/SpannedString;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v11, "10"

    .line 56
    .line 57
    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const/4 v12, 0x5

    .line 69
    if-le v11, v12, :cond_2

    .line 70
    .line 71
    move v11, v12

    .line 72
    :cond_2
    :goto_0
    if-ge v7, v11, :cond_8

    .line 73
    .line 74
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual {v4, v12}, Lorg/apache/james/mime4j/stream/RawField;->createRecipientList(Ljava/util/List;)Landroid/text/SpannedString;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    .line 84
    .line 85
    sub-int v13, v3, v11

    .line 86
    .line 87
    if-lez v13, :cond_3

    .line 88
    .line 89
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v13, v4, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v13, Lokhttp3/ConnectionPool;

    .line 98
    .line 99
    iget-object v13, v13, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v13, Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 102
    .line 103
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v14, v13, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 107
    .line 108
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v14, v15, v10}, Landroid/view/View;->measure(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-le v10, v1, :cond_4

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-nez v14, :cond_5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    iget v14, v4, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 141
    .line 142
    add-int/2addr v10, v14

    .line 143
    iget-object v14, v13, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 144
    .line 145
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    invoke-static {v13, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    invoke-virtual {v14, v15, v13}, Landroid/view/View;->measure(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    add-int/2addr v13, v10

    .line 168
    if-gt v13, v1, :cond_7

    .line 169
    .line 170
    :goto_1
    new-instance v3, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;

    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_6

    .line 177
    .line 178
    const/4 v10, 0x0

    .line 179
    goto :goto_2

    .line 180
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    :goto_2
    invoke-direct {v3, v12, v10}, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;-><init>(Landroid/text/SpannedString;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    :goto_3
    add-int/lit8 v11, v11, -0x1

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    goto :goto_0

    .line 192
    :cond_8
    new-instance v6, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;

    .line 193
    .line 194
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/stream/RawField;->createRecipientList(Ljava/util/List;)Landroid/text/SpannedString;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    sub-int/2addr v3, v7

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-direct {v6, v2, v3}, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;-><init>(Landroid/text/SpannedString;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-object v3, v6

    .line 222
    :goto_4
    iget-object v2, v3, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;->recipientList:Ljava/lang/CharSequence;

    .line 223
    .line 224
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 225
    .line 226
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget v2, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->additionRecipientSpacing:I

    .line 230
    .line 231
    iget-object v5, v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 232
    .line 233
    iget-object v3, v3, Lcom/fsck/k9/ui/messageview/RecipientLayoutData;->additionalRecipients:Ljava/lang/String;

    .line 234
    .line 235
    if-eqz v3, :cond_9

    .line 236
    .line 237
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 256
    .line 257
    .line 258
    sub-int/2addr v1, v2

    .line 259
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    sub-int/2addr v1, v3

    .line 264
    goto :goto_5

    .line 265
    :cond_9
    const/16 v3, 0x8

    .line 266
    .line 267
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    :goto_5
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_a

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {v4, v9, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 300
    .line 301
    .line 302
    add-int/2addr v0, v2

    .line 303
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    add-int/2addr v1, v0

    .line 308
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-virtual {v5, v0, v9, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    sub-int/2addr v0, v1

    .line 325
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    move/from16 v3, p4

    .line 330
    .line 331
    invoke-virtual {v4, v0, v9, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 332
    .line 333
    .line 334
    sub-int/2addr v0, v2

    .line 335
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    sub-int v1, v0, v1

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    invoke-virtual {v5, v1, v9, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_b
    const-string v0, "Failed requirement."

    .line 350
    .line 351
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 13
    .line 14
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p0, "Width of RecipientNamesView needs to be constrained"

    .line 38
    .line 39
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setTextSize(I)V
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNameTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientCountTextView:Lcom/google/android/material/textview/MaterialTextView;

    .line 9
    .line 10
    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
