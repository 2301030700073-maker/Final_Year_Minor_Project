.class public final Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/views/UserMentionInputView;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/UserMentionInputView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->this$0:Lorg/wikipedia/views/UserMentionInputView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->this$0:Lorg/wikipedia/views/UserMentionInputView;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 7
    .line 8
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/views/UserMentionEditText;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->userName:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p0, :cond_4

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/wikipedia/views/UserMentionInputView;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    :try_start_0
    iput-boolean v3, v0, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 26
    .line 27
    iget v4, v0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 28
    .line 29
    if-ltz v4, :cond_2

    .line 30
    .line 31
    iget v5, v0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 32
    .line 33
    if-gt v5, v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget v5, v0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 41
    .line 42
    invoke-interface {v4, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {p0, v1}, Lorg/wikipedia/views/UserMentionEditText;->composeUserNameLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 59
    .line 60
    .line 61
    iget v5, v0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v5, v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget v6, v0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    sub-int/2addr v7, v3

    .line 88
    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_4

    .line 98
    :cond_1
    :goto_0
    new-instance v3, Landroid/text/SpannedString;

    .line 99
    .line 100
    invoke-direct {v3, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionEditText;->onCancelUserNameEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    :goto_1
    iput-boolean v2, v0, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionEditText;->onCancelUserNameEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_3
    invoke-virtual {p1}, Lorg/wikipedia/views/UserMentionInputView;->getListener()Lorg/wikipedia/views/UserMentionInputView$Listener;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_3

    .line 143
    .line 144
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 145
    .line 146
    iput-boolean v2, p0, Lorg/wikipedia/talk/TalkReplyActivity;->userMentionScrolled:Z

    .line 147
    .line 148
    :cond_3
    return-void

    .line 149
    :goto_4
    iput-boolean v2, v0, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 150
    .line 151
    throw p0

    .line 152
    :cond_4
    const-string/jumbo p0, "userName"

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    throw p0
.end method
