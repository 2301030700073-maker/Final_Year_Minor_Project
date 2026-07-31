.class public abstract Lcom/tokenautocomplete/TokenCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;",
        "Landroid/widget/TextView$OnEditorActionListener;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public allowCollapse:Z

.field public countSpan:Lcom/tokenautocomplete/CountSpan;

.field public hiddenContent:Landroid/text/SpannableStringBuilder;

.field public initialized:Z

.field public internalEditInProgress:Z

.field public transient lastCompletionText:Ljava/lang/String;

.field public lastLayout:Landroid/text/Layout;

.field public listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

.field public performBestGuess:Z

.field public pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

.field public savingState:Z

.field public selectedObject:Ljava/lang/Object;

.field public shouldFocusNext:Z

.field public spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

.field public suppressImeOnNextFocus:Z

.field public textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

.field public tokenLimit:I

.field public tokenizer:Lcom/tokenautocomplete/Tokenizer;


# direct methods
.method private getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    move v5, v4

    .line 28
    :goto_0
    if-ge v4, v3, :cond_2

    .line 29
    .line 30
    aget-object v6, v2, v4

    .line 31
    .line 32
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-ge v5, v7, :cond_0

    .line 37
    .line 38
    if-lt p0, v7, :cond_0

    .line 39
    .line 40
    move v5, v7

    .line 41
    :cond_0
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-le v1, v6, :cond_1

    .line 46
    .line 47
    if-gt p0, v7, :cond_1

    .line 48
    .line 49
    move v1, v6

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-ge v1, v5, :cond_3

    .line 54
    .line 55
    new-instance v0, Lcom/tokenautocomplete/Range;

    .line 56
    .line 57
    invoke-direct {v0, p0, p0}, Lcom/tokenautocomplete/Range;-><init>(II)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    new-instance p0, Lcom/tokenautocomplete/Range;

    .line 62
    .line 63
    invoke-direct {p0, v5, v1}, Lcom/tokenautocomplete/Range;-><init>(II)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public static isTouchInsideSpan(Landroid/text/Editable;Landroid/text/Layout;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;FF)Z
    .locals 6

    .line 1
    invoke-interface {p0, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ltz v0, :cond_5

    .line 10
    .line 11
    if-gt p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    move v2, p2

    .line 23
    :goto_0
    if-gt v2, v1, :cond_5

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-float v3, v3

    .line 34
    cmpg-float v3, p4, v3

    .line 35
    .line 36
    if-ltz v3, :cond_4

    .line 37
    .line 38
    int-to-float v3, v4

    .line 39
    cmpl-float v3, p4, v3

    .line 40
    .line 41
    if-lez v3, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    if-ne v2, p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_1
    if-ne v2, v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineRight(I)F

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    cmpl-float v5, p3, v5

    .line 71
    .line 72
    if-ltz v5, :cond_4

    .line 73
    .line 74
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    cmpg-float v3, p3, v3

    .line 79
    .line 80
    if-gtz v3, :cond_4

    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 88
    return p0
.end method


# virtual methods
.method public final addListeners()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x12

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final addObjectSync(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    move-object v0, p0

    .line 6
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 19
    .line 20
    if-eqz p0, :cond_6

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenIgnored(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v0, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/CharacterTokenizer;->wrapTokenValue(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    const/16 v3, 0x21

    .line 75
    .line 76
    const-string v4, " "

    .line 77
    .line 78
    if-nez v2, :cond_5

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iget v6, v5, Lcom/tokenautocomplete/Range;->end:I

    .line 92
    .line 93
    iget v5, v5, Lcom/tokenautocomplete/Range;->start:I

    .line 94
    .line 95
    sub-int/2addr v6, v5

    .line 96
    if-lez v6, :cond_4

    .line 97
    .line 98
    move v2, v5

    .line 99
    :cond_4
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    add-int/2addr v5, v2

    .line 107
    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    add-int/2addr v0, v2

    .line 115
    invoke-interface {v1, p1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 123
    .line 124
    iget-object v1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v0, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/CharacterTokenizer;->wrapTokenValue(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    add-int/2addr v0, v1

    .line 161
    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_1
    return-void
.end method

.method public abstract buildSpanForObject(Ljava/lang/Object;)Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
.end method

.method public final canDeleteSelection(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p0, v1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 37
    .line 38
    array-length v0, p1

    .line 39
    :goto_0
    if-ge v1, v0, :cond_2

    .line 40
    .line 41
    aget-object v2, p1, v1

    .line 42
    .line 43
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    iget-object v2, v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.method public final clearCompletionText()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, v0, Lcom/tokenautocomplete/Range;->start:I

    .line 24
    .line 25
    iget v0, v0, Lcom/tokenautocomplete/Range;->end:I

    .line 26
    .line 27
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 32
    .line 33
    return-void
.end method

.method public final convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0
.end method

.method public final currentCompletionText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget v1, p0, Lcom/tokenautocomplete/Range;->start:I

    .line 10
    .line 11
    iget p0, p0, Lcom/tokenautocomplete/Range;->end:I

    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Current completion text: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "TokenAutoComplete"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method public final enoughToFilter()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, v0, Lcom/tokenautocomplete/Range;->end:I

    .line 18
    .line 19
    iget v0, v0, Lcom/tokenautocomplete/Range;->start:I

    .line 20
    .line 21
    sub-int/2addr v1, v0

    .line 22
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getThreshold()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-lt v1, p0, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "TokenAutoComplete"

    .line 8
    .line 9
    const-string p2, "extractText hit IndexOutOfBoundsException. This may be normal."

    .line 10
    .line 11
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public getContentText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getMaxViewSpanWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr v0, p0

    .line 15
    int-to-float p0, v0

    .line 16
    float-to-int p0, p0

    .line 17
    return p0
.end method

.method public getObjects()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-interface {v1, v3, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 27
    .line 28
    array-length v1, p0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_1

    .line 30
    .line 31
    aget-object v2, p0, v3

    .line 32
    .line 33
    iget-object v2, v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method public getSerializableObjects()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "TokenAutoComplete"

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v4, v2, Ljava/io/Serializable;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    check-cast v2, Ljava/io/Serializable;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "Unable to save \'"

    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\'"

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eq v1, p0, :cond_2

    .line 72
    .line 73
    const-string p0, "You should make your objects Serializable or Parcelable or\noverride getSerializableObjects and convertSerializableArrayToObjectArray"

    .line 74
    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    return-object v0
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, -0x1

    .line 27
    move v5, v2

    .line 28
    move v4, v3

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ge v5, v6, :cond_4

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v5, v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :cond_1
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ne v5, v6, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    :cond_2
    const-class v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 56
    .line 57
    invoke-interface {v1, v5, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    if-lez v7, :cond_3

    .line 65
    .line 66
    aget-object v5, v6, v2

    .line 67
    .line 68
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 69
    .line 70
    iget-object v7, v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 71
    .line 72
    iget-object v7, v7, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v6, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Lcom/tokenautocomplete/CharacterTokenizer;->wrapTokenValue(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 94
    .line 95
    invoke-interface {v1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-ne v5, p0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    :cond_5
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-ne v5, p0, :cond_6

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    :cond_6
    if-ltz v3, :cond_7

    .line 127
    .line 128
    if-ltz v4, :cond_7

    .line 129
    .line 130
    invoke-static {v0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 131
    .line 132
    .line 133
    :cond_7
    return-object v0
.end method

.method public final init$1()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 7
    .line 8
    const/16 v1, 0x2c

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/16 v2, 0x3b

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x2

    .line 21
    new-array v3, v3, [Ljava/lang/Character;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v1, v3, v4

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v2, v3, v1

    .line 28
    .line 29
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, ","

    .line 34
    .line 35
    invoke-direct {v0, v2, v3}, Lcom/tokenautocomplete/CharacterTokenizer;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenizer(Lcom/tokenautocomplete/Tokenizer;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 50
    .line 51
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 60
    .line 61
    new-instance v0, Lcom/tokenautocomplete/CountSpan;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    iput-object v2, v0, Lcom/tokenautocomplete/CountSpan;->countText:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/high16 v2, 0x90000

    .line 86
    .line 87
    or-int/2addr v0, v2

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/tokenautocomplete/TokenCompleteTextView$1;

    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/tokenautocomplete/TokenCompleteTextView$1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 100
    .line 101
    .line 102
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 103
    .line 104
    aput-object v0, v2, v4

    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 107
    .line 108
    .line 109
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 110
    .line 111
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    .line 8
    .line 9
    check-cast v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Landroidx/emoji2/viewsintegration/EmojiInputConnection;)V

    .line 12
    .line 13
    .line 14
    iget p0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 15
    .line 16
    const v0, -0x40000001    # -1.9999999f

    .line 17
    .line 18
    .line 19
    and-int/2addr p0, v0

    .line 20
    const/high16 v0, 0x10000000

    .line 21
    .line 22
    or-int/2addr p0, v0

    .line 23
    iput p0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    const/4 p3, 0x0

    .line 3
    if-ne p2, p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p2, "input_method"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    return p3
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x2000

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x3d

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x42

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x43

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->canDeleteSelection(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "input_method"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/AutoCompleteTextView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 9
    .line 10
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 25
    .line 26
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeListeners()V

    .line 31
    .line 32
    .line 33
    const-string v0, "Serializable"

    .line 34
    .line 35
    iget-object v1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->parcelableClassName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v0, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    :try_start_0
    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->contentText:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v1, ""

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object v3, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 70
    .line 71
    iget-object p1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->restoreTokenSpansFromState(Landroid/text/Editable;Ljava/util/ArrayList;[I[I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 87
    .line 88
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    new-instance p1, Lcom/fsck/k9/controller/MessagingController$1;

    .line 104
    .line 105
    const/4 v0, 0x7

    .line 106
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void

    .line 113
    :goto_2
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 114
    .line 115
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeListeners()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 13
    .line 14
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 20
    .line 21
    iput-boolean v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->allowCollapse:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 24
    .line 25
    iput-boolean v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->performBestGuess:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 28
    .line 29
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getContentText()Ljava/lang/CharSequence;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, ""

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->contentText:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-array v3, v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 65
    .line 66
    invoke-interface {v0, v1, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 71
    .line 72
    :goto_2
    if-eqz v0, :cond_3

    .line 73
    .line 74
    new-instance v4, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v4, v1, v0}, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    array-length v4, v3

    .line 83
    new-array v4, v4, [I

    .line 84
    .line 85
    iput-object v4, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 86
    .line 87
    array-length v4, v3

    .line 88
    new-array v4, v4, [I

    .line 89
    .line 90
    iput-object v4, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 91
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    .line 93
    .line 94
    array-length v5, v3

    .line 95
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    move v5, v1

    .line 99
    :goto_3
    array-length v6, v3

    .line 100
    if-ge v5, v6, :cond_4

    .line 101
    .line 102
    aget-object v6, v3, v5

    .line 103
    .line 104
    iget-object v7, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 105
    .line 106
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    aput v8, v7, v5

    .line 111
    .line 112
    iget-object v7, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 113
    .line 114
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    aput v8, v7, v5

    .line 119
    .line 120
    iget-object v6, v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 121
    .line 122
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    .line 154
    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    aget-object v0, v0, v1

    .line 164
    .line 165
    check-cast v0, Ljava/lang/Class;

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    const-class v0, Ljava/lang/Object;

    .line 169
    .line 170
    :goto_5
    const-class v3, Landroid/os/Parcelable;

    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_7

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->parcelableClassName:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v4, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_7
    const-string v0, "Serializable"

    .line 188
    .line 189
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->parcelableClassName:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    new-array v3, v3, [I

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    new-array v5, v5, [I

    .line 211
    .line 212
    move v6, v1

    .line 213
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-ge v1, v7, :cond_9

    .line 218
    .line 219
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    instance-of v8, v7, Ljava/io/Serializable;

    .line 224
    .line 225
    if-eqz v8, :cond_8

    .line 226
    .line 227
    check-cast v7, Ljava/io/Serializable;

    .line 228
    .line 229
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v7, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 233
    .line 234
    aget v7, v7, v1

    .line 235
    .line 236
    aput v7, v3, v6

    .line 237
    .line 238
    iget-object v7, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 239
    .line 240
    aget v7, v7, v1

    .line 241
    .line 242
    aput v7, v5, v6

    .line 243
    .line 244
    add-int/lit8 v6, v6, 0x1

    .line 245
    .line 246
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 247
    .line 248
    goto :goto_6

    .line 249
    :cond_9
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->baseObjects:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenStarts:[I

    .line 256
    .line 257
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, v2, Lcom/tokenautocomplete/TokenCompleteTextView$SavedState;->tokenEnds:[I

    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eq v6, v0, :cond_a

    .line 268
    .line 269
    const-string v0, "TokenAutoComplete"

    .line 270
    .line 271
    const-string v1, "Some tokens not Serializable/Parcelable; state restore may be incorrect"

    .line 272
    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_a
    :goto_7
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->addListeners()V

    .line 277
    .line 278
    .line 279
    return-object v2
.end method

.method public final onSelectionChanged(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const-class v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 8
    .line 9
    invoke-interface {p2, p1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-gt p1, v4, :cond_1

    .line 26
    .line 27
    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v3, p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne v4, p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-super {p0, p1, p1}, Landroid/widget/AutoCompleteTextView;->onSelectionChanged(II)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-float v3, v3

    .line 24
    sub-float/2addr v2, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    add-float/2addr v2, v3

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-float v4, v4

    .line 40
    sub-float/2addr v3, v4

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-float v4, v4

    .line 46
    add-float/2addr v3, v4

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eqz v4, :cond_9

    .line 55
    .line 56
    if-eq v4, v7, :cond_5

    .line 57
    .line 58
    const/4 v5, 0x2

    .line 59
    if-eq v4, v5, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    if-eq v4, v0, :cond_1

    .line 63
    .line 64
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iput-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 74
    .line 75
    return v7

    .line 76
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 82
    .line 83
    if-nez v4, :cond_4

    .line 84
    .line 85
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :cond_4
    invoke-static {v0, v1, v4, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->isTouchInsideSpan(Landroid/text/Editable;Landroid/text/Layout;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;FF)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_f

    .line 95
    .line 96
    iput-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 97
    .line 98
    return v7

    .line 99
    :cond_5
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 100
    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    return p0

    .line 108
    :cond_6
    invoke-static {v0, v1, v4, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->isTouchInsideSpan(Landroid/text/Editable;Landroid/text/Layout;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;FF)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 115
    .line 116
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 117
    .line 118
    iget-object v0, p1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->this$0:Lcom/fsck/k9/view/RecipientSelectView;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 123
    .line 124
    if-nez v1, :cond_7

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "input_method"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 144
    .line 145
    .line 146
    iput-object p1, v0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 147
    .line 148
    iget-object p1, v0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 149
    .line 150
    invoke-virtual {p1, v7, v6, v0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_0
    iput-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 154
    .line 155
    return v7

    .line 156
    :cond_9
    const/4 v4, 0x0

    .line 157
    cmpg-float v8, v2, v4

    .line 158
    .line 159
    if-ltz v8, :cond_d

    .line 160
    .line 161
    cmpg-float v4, v3, v4

    .line 162
    .line 163
    if-ltz v4, :cond_d

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    int-to-float v4, v4

    .line 170
    cmpl-float v4, v3, v4

    .line 171
    .line 172
    if-lez v4, :cond_a

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_a
    float-to-int v4, v3

    .line 176
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    cmpg-float v8, v2, v8

    .line 205
    .line 206
    if-ltz v8, :cond_d

    .line 207
    .line 208
    cmpl-float v8, v2, v9

    .line 209
    .line 210
    if-lez v8, :cond_b

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_b
    invoke-virtual {v1, v4, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    add-int/lit8 v8, v4, -0x1

    .line 218
    .line 219
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    add-int/2addr v4, v7

    .line 228
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    const-class v9, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 233
    .line 234
    invoke-interface {v0, v8, v4, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 239
    .line 240
    array-length v8, v4

    .line 241
    const/high16 v9, -0x80000000

    .line 242
    .line 243
    :goto_1
    if-ge v5, v8, :cond_d

    .line 244
    .line 245
    aget-object v10, v4, v5

    .line 246
    .line 247
    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 248
    .line 249
    .line 250
    move-result v11

    .line 251
    if-le v11, v9, :cond_c

    .line 252
    .line 253
    invoke-static {v0, v1, v10, v2, v3}, Lcom/tokenautocomplete/TokenCompleteTextView;->isTouchInsideSpan(Landroid/text/Editable;Landroid/text/Layout;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;FF)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_c

    .line 258
    .line 259
    move-object v6, v10

    .line 260
    move v9, v11

    .line 261
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_d
    :goto_2
    iput-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->pressedTokenSpan:Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 265
    .line 266
    if-nez v6, :cond_e

    .line 267
    .line 268
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    return p0

    .line 273
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_f

    .line 278
    .line 279
    iput-boolean v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->suppressImeOnNextFocus:Z

    .line 280
    .line 281
    invoke-virtual {p0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 282
    .line 283
    .line 284
    :cond_f
    return v7

    .line 285
    :cond_10
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    return p0
.end method

.method public final performCollapse(Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/16 v3, 0x12

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez p1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-le v5, v1, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_6

    .line 27
    .line 28
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 29
    .line 30
    if-nez v1, :cond_6

    .line 31
    .line 32
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 37
    .line 38
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget-object v7, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 52
    .line 53
    invoke-virtual {v7}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    sub-int/2addr v8, v9

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    sub-int/2addr v8, v9

    .line 71
    int-to-float v8, v8

    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 75
    .line 76
    .line 77
    iget-object v9, v1, Lcom/tokenautocomplete/CountSpan;->countText:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    invoke-static {v9, v4, v10, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v9, 0x0

    .line 89
    :goto_0
    new-instance v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;

    .line 90
    .line 91
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput v4, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->start:I

    .line 95
    .line 96
    iput v4, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->end:I

    .line 97
    .line 98
    sub-float/2addr v8, v9

    .line 99
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    invoke-static/range {v6 .. v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    new-instance v8, Landroid/text/SpannableStringBuilder;

    .line 107
    .line 108
    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    instance-of v9, v7, Landroid/text/Spanned;

    .line 112
    .line 113
    if-eqz v9, :cond_1

    .line 114
    .line 115
    move-object v12, v7

    .line 116
    check-cast v12, Landroid/text/Spanned;

    .line 117
    .line 118
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    const-class v15, Ljava/lang/Object;

    .line 123
    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    move-object/from16 v16, v8

    .line 128
    .line 129
    invoke-static/range {v12 .. v17}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 130
    .line 131
    .line 132
    move-object/from16 v7, v16

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    move-object v7, v8

    .line 136
    :goto_1
    iget v8, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->start:I

    .line 137
    .line 138
    iget v9, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->end:I

    .line 139
    .line 140
    if-eq v8, v9, :cond_3

    .line 141
    .line 142
    if-eqz v1, :cond_2

    .line 143
    .line 144
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const-class v8, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 149
    .line 150
    invoke-virtual {v7, v4, v2, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 155
    .line 156
    array-length v2, v2

    .line 157
    sub-int/2addr v5, v2

    .line 158
    invoke-virtual {v1, v5}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 159
    .line 160
    .line 161
    iget v2, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->start:I

    .line 162
    .line 163
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    iget-object v8, v1, Lcom/tokenautocomplete/CountSpan;->countText:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v7, v2, v5, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    iget v2, v11, Lcom/tokenautocomplete/SpanUtils$EllipsizeCallback;->start:I

    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    const/16 v8, 0x21

    .line 179
    .line 180
    invoke-virtual {v7, v1, v2, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 181
    .line 182
    .line 183
    :cond_2
    move-object v9, v7

    .line 184
    goto :goto_2

    .line 185
    :cond_3
    move-object v9, v2

    .line 186
    :goto_2
    if-eqz v9, :cond_4

    .line 187
    .line 188
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 189
    .line 190
    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iput-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 194
    .line 195
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const/4 v14, 0x0

    .line 207
    const/4 v10, 0x0

    .line 208
    const-class v12, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 209
    .line 210
    invoke-static/range {v9 .. v14}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    iget-object v10, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 220
    .line 221
    const/4 v11, 0x0

    .line 222
    const/4 v7, 0x0

    .line 223
    const-class v9, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 224
    .line 225
    invoke-static/range {v6 .. v11}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 229
    .line 230
    iget-object v2, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_4
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_5
    iget-object v1, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 259
    .line 260
    if-eqz v1, :cond_6

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    iget-object v5, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 266
    .line 267
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    const/4 v10, 0x0

    .line 276
    const/4 v6, 0x0

    .line 277
    const-class v8, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 278
    .line 279
    invoke-static/range {v5 .. v10}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 280
    .line 281
    .line 282
    iput-object v2, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/widget/TextView;->isCursorVisible()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;

    .line 292
    .line 293
    invoke-direct {v2, v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda1;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 312
    .line 313
    invoke-interface {v1, v4, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 318
    .line 319
    array-length v1, v1

    .line 320
    if-nez v1, :cond_6

    .line 321
    .line 322
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget-object v2, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->spanWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 327
    .line 328
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 337
    .line 338
    .line 339
    :cond_6
    :goto_3
    iput-boolean v4, v0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 340
    .line 341
    return-void
.end method

.method public performCompletion()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v2, p0

    .line 55
    check-cast v2, Lcom/fsck/k9/view/RecipientSelectView;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lcom/fsck/k9/view/RecipientSelectView;->parseRecipients(Ljava/lang/String;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_0
    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 76
    .line 77
    const-string v0, ""

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final redrawTokens()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-class v1, Lcom/tokenautocomplete/DummySpan;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [Lcom/tokenautocomplete/DummySpan;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/tokenautocomplete/DummySpan;->INSTANCE:Lcom/tokenautocomplete/DummySpan;

    .line 25
    .line 26
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-object v1, Lcom/tokenautocomplete/DummySpan;->INSTANCE:Lcom/tokenautocomplete/DummySpan;

    .line 31
    .line 32
    const/16 v3, 0x12

    .line 33
    .line 34
    invoke-interface {p0, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final removeListeners()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-class v2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    aget-object v4, v1, v3

    .line 24
    .line 25
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->textWatcher:Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final removeObjectSync(Ljava/lang/Object;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/text/Editable;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 54
    .line 55
    array-length v3, v2

    .line 56
    :goto_0
    if-ge v4, v3, :cond_2

    .line 57
    .line 58
    aget-object v5, v2, v4

    .line 59
    .line 60
    iget-object v6, v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, v1, v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeSpan(Landroid/text/Editable;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final removeSpan(Landroid/text/Editable;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x20

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 23
    .line 24
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-interface {p1, p2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->updateCountSpan()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public replaceText(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->selectedObject:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getCurrentCandidateTokenRange()Lcom/tokenautocomplete/Range;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v3, v2, Lcom/tokenautocomplete/Range;->start:I

    .line 36
    .line 37
    iget v2, v2, Lcom/tokenautocomplete/Range;->end:I

    .line 38
    .line 39
    invoke-static {v1, v3, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    iput-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastCompletionText:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    if-eqz v1, :cond_5

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v4, p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 63
    .line 64
    move-object v5, p0

    .line 65
    check-cast v5, Lcom/fsck/k9/view/RecipientSelectView;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-interface {p1, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenIgnored(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 89
    .line 90
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 91
    .line 92
    iget-object v4, v4, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v5, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 99
    .line 100
    invoke-virtual {v5, v4}, Lcom/tokenautocomplete/CharacterTokenizer;->wrapTokenValue(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    add-int/2addr v2, v3

    .line 115
    const/16 v4, 0x21

    .line 116
    .line 117
    invoke-interface {v1, p1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    add-int/2addr p1, v3

    .line 125
    const-string v0, " "

    .line 126
    .line 127
    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 132
    .line 133
    :cond_5
    :goto_1
    return-void
.end method

.method public final restoreTokenSpansFromState(Landroid/text/Editable;Ljava/util/ArrayList;[I[I)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz p3, :cond_5

    .line 38
    .line 39
    if-eqz p4, :cond_5

    .line 40
    .line 41
    array-length v1, p3

    .line 42
    if-ne v1, v0, :cond_5

    .line 43
    .line 44
    array-length v1, p4

    .line 45
    if-eq v1, v0, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    :goto_1
    if-ge v2, v0, :cond_5

    .line 49
    .line 50
    aget v1, p3, v2

    .line 51
    .line 52
    aget v3, p4, v2

    .line 53
    .line 54
    if-ltz v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-gt v3, v4, :cond_4

    .line 61
    .line 62
    if-lt v1, v3, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p0, v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->buildSpanForObject(Ljava/lang/Object;)Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    const/16 v5, 0x21

    .line 76
    .line 77
    invoke-interface {p1, v4, v1, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    :goto_3
    return-void
.end method

.method public setHiddenContentForTest(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->hiddenContent:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    return-void
.end method

.method public setTokenLimit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 2
    .line 3
    return-void
.end method

.method public setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->listener:Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTokenizer(Lcom/tokenautocomplete/Tokenizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 2
    .line 3
    return-void
.end method

.method public final updateCountSpan()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-class v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 25
    .line 26
    array-length v1, v1

    .line 27
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sub-int/2addr v3, v1

    .line 38
    invoke-virtual {v2, v3}, Lcom/tokenautocomplete/CountSpan;->setCount(I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/tokenautocomplete/CountSpan;->countText:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v5, 0x21

    .line 57
    .line 58
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 63
    .line 64
    iget-object v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 65
    .line 66
    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, -0x1

    .line 71
    if-eq v2, v3, :cond_0

    .line 72
    .line 73
    iget-object v3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->countSpan:Lcom/tokenautocomplete/CountSpan;

    .line 74
    .line 75
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-interface {v0, v2, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 84
    .line 85
    .line 86
    :goto_0
    iput-boolean v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 87
    .line 88
    return-void
.end method
