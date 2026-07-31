.class public final Lcom/fsck/k9/activity/MessageCompose$13$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;

.field public final synthetic val$attachment:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->this$1:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->val$attachment:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->val$attachment:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$13$1;->this$1:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/view/RecipientSelectView;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 15
    .line 16
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    const/4 v2, -0x1

    .line 32
    const-string v3, "Tried to refresh invalid view token!"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-ne p0, v2, :cond_0

    .line 36
    .line 37
    new-array p0, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v3, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 56
    .line 57
    iget v0, v0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 58
    .line 59
    iput v0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-class v5, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 74
    .line 75
    invoke-interface {v0, v4, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, [Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 80
    .line 81
    array-length v2, v0

    .line 82
    move v5, v4

    .line 83
    :goto_0
    if-ge v5, v2, :cond_3

    .line 84
    .line 85
    aget-object v6, v0, v5

    .line 86
    .line 87
    iget-object v7, v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 88
    .line 89
    invoke-virtual {v7, p0}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    iget-object v1, v6, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 102
    .line 103
    new-array p0, v4, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v3, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p1, p0, v1}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p1, Lcom/fsck/k9/view/RecipientSelectView;->listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-interface {v0, p0}, Lcom/fsck/k9/view/RecipientSelectView$TokenListener;->onTokenChanged(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->redrawTokens()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 137
    .line 138
    .line 139
    :goto_2
    return-void

    .line 140
    :pswitch_0
    check-cast p0, Lcom/beetstra/jutf7/Base64Util;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 147
    .line 148
    check-cast v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 149
    .line 150
    iget-object p1, v0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachments:Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/fsck/k9/activity/misc/Attachment;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->loaderManager:Landroidx/loader/app/LoaderManagerImpl;

    .line 161
    .line 162
    iget v3, v1, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroidx/loader/app/LoaderManagerImpl;->destroyLoader(I)V

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Lcom/beetstra/jutf7/Base64Util;->removeAttachmentView(Lcom/fsck/k9/activity/misc/Attachment;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->listener:Lcom/fsck/k9/activity/MessageCompose;

    .line 176
    .line 177
    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
