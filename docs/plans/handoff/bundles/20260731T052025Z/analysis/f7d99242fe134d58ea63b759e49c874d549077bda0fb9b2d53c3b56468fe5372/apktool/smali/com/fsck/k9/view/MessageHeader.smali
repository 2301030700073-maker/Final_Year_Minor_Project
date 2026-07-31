.class public Lcom/fsck/k9/view/MessageHeader;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public accountNameView:Lcom/google/android/material/chip/Chip;

.field public attachmentSummaryContainer:Landroid/view/View;

.field public attachmentSummaryText:Lcom/google/android/material/textview/MaterialTextView;

.field public contactPictureView:Landroid/widget/ImageView;

.field public cryptoStatusIcon:Landroid/widget/ImageView;

.field public dateView:Lcom/google/android/material/textview/MaterialTextView;

.field public final fontSizes:Lcom/fsck/k9/FontSizes;

.field public fromView:Lcom/google/android/material/textview/MaterialTextView;

.field public menuPrimaryActionView:Landroid/widget/ImageView;

.field public messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

.field public final messageHelper:Lcom/fsck/k9/helper/MessageHelper;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final recipientFormatter:Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

.field public recipientNamesView:Lcom/fsck/k9/ui/messageview/RecipientNamesView;

.field public final relativeDateTimeFormatter:Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

.field public final replyActionStrategy:Lcom/fsck/k9/message/ReplyActionStrategy;

.field public replyActions:Lcom/fsck/k9/message/ReplyActions;

.field public starView:Landroid/widget/ImageView;

.field public subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

.field public viewAllAttachmentsButton:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->recipientFormatter:Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 13
    .line 14
    const-class p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 23
    .line 24
    const-class p1, Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->replyActionStrategy:Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 33
    .line 34
    const-class p1, Lcom/fsck/k9/helper/MessageHelper;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/fsck/k9/helper/MessageHelper;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 43
    .line 44
    sget-object p1, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 49
    .line 50
    .line 51
    const-class p1, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->relativeDateTimeFormatter:Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 60
    .line 61
    return-void
.end method

.method private setAdditionalReplyActions(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->replyActions:Lcom/fsck/k9/message/ReplyActions;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/message/ReplyActions;->additionalActions:Ljava/util/List;

    .line 4
    .line 5
    sget-object v0, Lcom/fsck/k9/message/ReplyAction;->REPLY:Lcom/fsck/k9/message/ReplyAction;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 14
    .line 15
    const v1, 0x7f09036e

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/fsck/k9/message/ReplyAction;->REPLY_ALL:Lcom/fsck/k9/message/ReplyAction;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    iget-object p0, p1, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 30
    .line 31
    const p1, 0x7f09036f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->colorAttr:I

    .line 6
    .line 7
    sget-object v2, Lcom/fsck/k9/view/ThemeUtils;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v2, Lcom/fsck/k9/view/ThemeUtils;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    .line 18
    .line 19
    iget v0, v2, Landroid/util/TypedValue;->data:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-boolean v2, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->isEnabled:Z

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 35
    .line 36
    iget p1, p1, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->statusIconRes:I

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private setDefaultReplyAction(Lcom/fsck/k9/message/ReplyAction;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->menuPrimaryActionView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/16 p1, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "Unknown reply action: "

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    const v0, 0x7f08010d

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p1, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const v0, 0x7f08010c

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/view/MessageHeader;->menuPrimaryActionView:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    if-ne v3, v2, :cond_3

    .line 49
    .line 50
    const p1, 0x7f12056c

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p1, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    const p1, 0x7f12056b

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->menuPrimaryActionView:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-static {v0, p1}, Landroidx/work/Operation$State;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->menuPrimaryActionView:Landroid/widget/ImageView;

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f090402

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 18
    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    const p1, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const v1, 0x7f09028e

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v0, v1, :cond_5

    .line 37
    .line 38
    iget-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->replyActions:Lcom/fsck/k9/message/ReplyActions;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/fsck/k9/message/ReplyActions;->defaultAction:Lcom/fsck/k9/message/ReplyAction;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    if-ne v0, v3, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

    .line 55
    .line 56
    const p1, 0x7f09036f

    .line 57
    .line 58
    .line 59
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->onMenuItemClick(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const-string p0, "Unknown reply action: "

    .line 66
    .line 67
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

    .line 72
    .line 73
    const p1, 0x7f09036e

    .line 74
    .line 75
    .line 76
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->onMenuItemClick(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    const v1, 0x7f09028d

    .line 83
    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    if-ne v0, v1, :cond_8

    .line 87
    .line 88
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    invoke-direct {p1, v2, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, v0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 103
    .line 104
    new-instance p1, Landroidx/appcompat/view/SupportMenuInflater;

    .line 105
    .line 106
    invoke-direct {p1, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 110
    .line 111
    const v2, 0x7f0e0011

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->setAdditionalReplyActions(Landroidx/appcompat/widget/PopupMenu;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, v0, Landroidx/appcompat/widget/PopupMenu;->mPopup:Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    invoke-virtual {p0, v4, v4, v4, v4}, Landroidx/appcompat/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_7
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 139
    .line 140
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_8
    const p1, 0x7f090331

    .line 145
    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    if-ne v0, p1, :cond_a

    .line 149
    .line 150
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

    .line 151
    .line 152
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 161
    .line 162
    invoke-direct {v0}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v2, Lkotlin/Pair;

    .line 170
    .line 171
    const-string v5, "reference"

    .line 172
    .line 173
    invoke-direct {v2, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-array p1, v3, [Lkotlin/Pair;

    .line 177
    .line 178
    aput-object v2, p1, v4

    .line 179
    .line 180
    invoke-static {v0, p1}, Landroidx/work/OperationKt;->withArguments(Landroidx/fragment/app/Fragment;[Lkotlin/Pair;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 184
    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    iget-object p1, p1, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->cryptoResultAnnotation:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 188
    .line 189
    iput-object p1, v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->cryptoResult:Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    const-string p1, "message_details"

    .line 196
    .line 197
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_9
    const-string p0, "messageCryptoPresenter"

    .line 202
    .line 203
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_a
    const p1, 0x7f090478

    .line 208
    .line 209
    .line 210
    if-eq v0, p1, :cond_b

    .line 211
    .line 212
    const p1, 0x7f09008c

    .line 213
    .line 214
    .line 215
    if-ne v0, p1, :cond_19

    .line 216
    .line 217
    :cond_b
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

    .line 218
    .line 219
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 220
    .line 221
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 222
    .line 223
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->mMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 224
    .line 225
    if-nez p1, :cond_c

    .line 226
    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :cond_c
    iget-object v0, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 230
    .line 231
    const/16 v2, 0xa

    .line 232
    .line 233
    if-eqz v0, :cond_f

    .line 234
    .line 235
    new-instance v5, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    :cond_d
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_e

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    move-object v7, v6

    .line 255
    check-cast v7, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 256
    .line 257
    iget-boolean v7, v7, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 258
    .line 259
    if-nez v7, :cond_d

    .line 260
    .line 261
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_10

    .line 283
    .line 284
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    check-cast v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 289
    .line 290
    new-instance v7, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-direct {v7, v6, v4}, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;-><init>(Lcom/fsck/k9/mailstore/AttachmentViewInfo;Z)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_f
    move-object v0, v1

    .line 303
    :cond_10
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 304
    .line 305
    if-nez v0, :cond_11

    .line 306
    .line 307
    move-object v0, v4

    .line 308
    :cond_11
    iget-object p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 309
    .line 310
    if-eqz p1, :cond_15

    .line 311
    .line 312
    new-instance v1, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    :cond_12
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-eqz v5, :cond_13

    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    move-object v6, v5

    .line 332
    check-cast v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 333
    .line 334
    iget-boolean v6, v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 335
    .line 336
    if-nez v6, :cond_12

    .line 337
    .line 338
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_13
    new-instance p1, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_14

    .line 360
    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 366
    .line 367
    new-instance v5, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;

    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    invoke-direct {v5, v2, v3}, Lcom/fsck/k9/ui/messageview/AttachmentListItemModel;-><init>(Lcom/fsck/k9/mailstore/AttachmentViewInfo;Z)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_14
    move-object v1, p1

    .line 380
    :cond_15
    if-nez v1, :cond_16

    .line 381
    .line 382
    goto :goto_4

    .line 383
    :cond_16
    move-object v4, v1

    .line 384
    :goto_4
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_17

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_17
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->attachmentListBottomSheetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 396
    .line 397
    :cond_18
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    move-object v1, v0

    .line 402
    check-cast v1, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 403
    .line 404
    invoke-static {p1}, Lokio/Okio;->toPersistentList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_18

    .line 413
    .line 414
    :cond_19
    :goto_5
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090039

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->accountNameView:Lcom/google/android/material/chip/Chip;

    .line 14
    .line 15
    const v0, 0x7f090402

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 25
    .line 26
    const v0, 0x7f0901f2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->starView:Landroid/widget/ImageView;

    .line 36
    .line 37
    const v0, 0x7f090152

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->contactPictureView:Landroid/widget/ImageView;

    .line 47
    .line 48
    const v0, 0x7f090203

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->fromView:Lcom/google/android/material/textview/MaterialTextView;

    .line 58
    .line 59
    const v0, 0x7f090172

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->cryptoStatusIcon:Landroid/widget/ImageView;

    .line 69
    .line 70
    const v0, 0x7f090364

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->recipientNamesView:Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 80
    .line 81
    const v0, 0x7f09017b

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->accountNameView:Lcom/google/android/material/chip/Chip;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 95
    .line 96
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewAccountName:I

    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 102
    .line 103
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    .line 104
    .line 105
    invoke-static {v0, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 109
    .line 110
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    .line 111
    .line 112
    invoke-static {v0, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->fromView:Lcom/google/android/material/textview/MaterialTextView;

    .line 116
    .line 117
    iget v2, v1, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    .line 118
    .line 119
    invoke-static {v0, v2}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 120
    .line 121
    .line 122
    iget v0, v1, Lcom/fsck/k9/FontSizes;->messageViewRecipients:I

    .line 123
    .line 124
    const/4 v1, -0x1

    .line 125
    if-eq v0, v1, :cond_0

    .line 126
    .line 127
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->recipientNamesView:Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->setTextSize(I)V

    .line 130
    .line 131
    .line 132
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 133
    .line 134
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 138
    .line 139
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    .line 141
    .line 142
    const v0, 0x7f09028e

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->menuPrimaryActionView:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    const v0, 0x7f09028d

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const v2, 0x7f120002

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    const v0, 0x7f090331

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    const v0, 0x7f09008c

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->attachmentSummaryContainer:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    const v0, 0x7f09008d

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 210
    .line 211
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->attachmentSummaryText:Lcom/google/android/material/textview/MaterialTextView;

    .line 212
    .line 213
    const v0, 0x7f090478

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 221
    .line 222
    iput-object v0, p0, Lcom/fsck/k9/view/MessageHeader;->viewAllAttachmentsButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 223
    .line 224
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f090402

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-class v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 28
    .line 29
    const-string v2, "subject"

    .line 30
    .line 31
    invoke-virtual {v0, v2, p1}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const v0, 0x7f120224

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return v1
.end method

.method public final populate(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;ZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->accountNameView:Lcom/google/android/material/chip/Chip;

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->accountNameView:Lcom/google/android/material/chip/Chip;

    .line 18
    .line 19
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->accountNameView:Lcom/google/android/material/chip/Chip;

    .line 27
    .line 28
    invoke-virtual {v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v3, v6}, Lcom/google/android/material/chip/Chip;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    array-length v6, v3

    .line 48
    if-lez v6, :cond_1

    .line 49
    .line 50
    aget-object v3, v3, v5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v3, 0x0

    .line 54
    :goto_1
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 55
    .line 56
    invoke-virtual {v6}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 61
    .line 62
    iget-boolean v6, v6, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactPicture:Z

    .line 63
    .line 64
    iget-object v8, v0, Lcom/fsck/k9/view/MessageHeader;->contactPictureView:Landroid/widget/ImageView;

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    const-class v6, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 74
    .line 75
    invoke-static {v6}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/fsck/k9/contacts/ContactPictureLoader;

    .line 80
    .line 81
    iget-object v8, v0, Lcom/fsck/k9/view/MessageHeader;->contactPictureView:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {v6, v8, v3}, Lcom/fsck/k9/contacts/ContactPictureLoader;->setContactPicture(Landroid/widget/ImageView;Lcom/fsck/k9/mail/Address;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->contactPictureView:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v8, 0x7f0800b3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_2
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->messageHelper:Lcom/fsck/k9/helper/MessageHelper;

    .line 100
    .line 101
    invoke-virtual {v6, v3}, Lcom/fsck/k9/helper/MessageHelper;->getSenderDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->fromView:Lcom/google/android/material/textview/MaterialTextView;

    .line 106
    .line 107
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->starView:Landroid/widget/ImageView;

    .line 111
    .line 112
    if-eqz p3, :cond_4

    .line 113
    .line 114
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->starView:Landroid/widget/ImageView;

    .line 118
    .line 119
    sget-object v4, Lnet/thunderbird/core/common/mail/Flag;->FLAGGED:Lnet/thunderbird/core/common/mail/Flag;

    .line 120
    .line 121
    iget-object v6, v1, Lcom/fsck/k9/mail/internet/MimeMessage;->mFlags:Ljava/util/EnumSet;

    .line 122
    .line 123
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget-object v4, v0, Lcom/fsck/k9/view/MessageHeader;->dateView:Lcom/google/android/material/textview/MaterialTextView;

    .line 139
    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMessage;->getSentDate()Ljava/util/Date;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 147
    .line 148
    .line 149
    move-result-wide v8

    .line 150
    sget-object v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->Contextual:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 151
    .line 152
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->relativeDateTimeFormatter:Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 153
    .line 154
    invoke-virtual {v6, v8, v9, v3}, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;->formatDate(JLnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    const-string v3, ""

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :goto_4
    new-instance v3, Lokhttp3/ConnectionPool;

    .line 168
    .line 169
    iget-object v4, v0, Lcom/fsck/k9/view/MessageHeader;->recipientNamesView:Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->getMaxNumberOfRecipientNames()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iget-object v6, v0, Lcom/fsck/k9/view/MessageHeader;->recipientFormatter:Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 176
    .line 177
    invoke-direct {v3, v6, v4}, Lokhttp3/ConnectionPool;-><init>(Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    sget-object v8, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 184
    .line 185
    invoke-virtual {v1, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    sget-object v9, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 190
    .line 191
    invoke-virtual {v1, v9}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    sget-object v10, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 196
    .line 197
    invoke-virtual {v1, v10}, Lcom/fsck/k9/mail/internet/MimeMessage;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    array-length v11, v8

    .line 202
    array-length v12, v9

    .line 203
    add-int/2addr v11, v12

    .line 204
    array-length v12, v10

    .line 205
    add-int/2addr v11, v12

    .line 206
    const/4 v12, 0x3

    .line 207
    new-array v13, v12, [[Lcom/fsck/k9/mail/Address;

    .line 208
    .line 209
    aput-object v8, v13, v5

    .line 210
    .line 211
    const/4 v14, 0x1

    .line 212
    aput-object v9, v13, v14

    .line 213
    .line 214
    const/4 v15, 0x2

    .line 215
    aput-object v10, v13, v15

    .line 216
    .line 217
    invoke-static {v13}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    move/from16 v16, v5

    .line 222
    .line 223
    new-instance v5, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    const/4 v7, 0x5

    .line 226
    invoke-direct {v5, v7}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 227
    .line 228
    .line 229
    new-instance v7, Lkotlin/sequences/TakeWhileSequence;

    .line 230
    .line 231
    sget-object v17, Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;->INSTANCE:Lkotlin/sequences/SequencesKt___SequencesKt$flatMap$2;

    .line 232
    .line 233
    invoke-direct {v7, v13, v5, v14}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;

    .line 237
    .line 238
    invoke-direct {v5, v2, v14}, Lcom/fsck/k9/helper/IdentityHelper$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 239
    .line 240
    .line 241
    new-instance v13, Lkotlin/sequences/FilteringSequence;

    .line 242
    .line 243
    invoke-direct {v13, v7, v14, v5}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v13}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/FilteringSequence;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Lcom/fsck/k9/mail/Address;

    .line 251
    .line 252
    if-eqz v5, :cond_6

    .line 253
    .line 254
    add-int/lit8 v4, v4, -0x1

    .line 255
    .line 256
    :cond_6
    new-array v7, v12, [[Lcom/fsck/k9/mail/Address;

    .line 257
    .line 258
    aput-object v8, v7, v16

    .line 259
    .line 260
    aput-object v9, v7, v14

    .line 261
    .line 262
    aput-object v10, v7, v15

    .line 263
    .line 264
    invoke-static {v7}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    new-instance v8, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 269
    .line 270
    const/4 v9, 0x6

    .line 271
    invoke-direct {v8, v9}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 272
    .line 273
    .line 274
    new-instance v9, Lkotlin/sequences/TakeWhileSequence;

    .line 275
    .line 276
    invoke-direct {v9, v7, v8, v14}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 277
    .line 278
    .line 279
    new-instance v7, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 280
    .line 281
    const/16 v8, 0x10

    .line 282
    .line 283
    invoke-direct {v7, v8, v5}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    new-instance v8, Lkotlin/sequences/FilteringSequence;

    .line 287
    .line 288
    invoke-direct {v8, v9, v14, v7}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 289
    .line 290
    .line 291
    new-instance v7, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 292
    .line 293
    const/16 v9, 0x16

    .line 294
    .line 295
    invoke-direct {v7, v9, v3, v2}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    new-instance v3, Lkotlin/sequences/TakeWhileSequence;

    .line 299
    .line 300
    invoke-direct {v3, v8, v7, v15}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 301
    .line 302
    .line 303
    invoke-static {v3, v4}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    if-eqz v5, :cond_7

    .line 312
    .line 313
    invoke-virtual {v6, v5, v2}, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->getDisplayName(Lcom/fsck/k9/mail/Address;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/lang/CharSequence;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    new-instance v4, Lcom/fsck/k9/ui/messageview/DisplayRecipients;

    .line 326
    .line 327
    invoke-direct {v4, v11, v3}, Lcom/fsck/k9/ui/messageview/DisplayRecipients;-><init>(ILjava/util/List;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_7
    new-instance v4, Lcom/fsck/k9/ui/messageview/DisplayRecipients;

    .line 332
    .line 333
    invoke-direct {v4, v11, v3}, Lcom/fsck/k9/ui/messageview/DisplayRecipients;-><init>(ILjava/util/List;)V

    .line 334
    .line 335
    .line 336
    :goto_5
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->recipientNamesView:Lcom/fsck/k9/ui/messageview/RecipientNamesView;

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    iget-object v5, v3, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNames:Ljava/util/List;

    .line 342
    .line 343
    iget-object v6, v4, Lcom/fsck/k9/ui/messageview/DisplayRecipients;->recipientNames:Ljava/util/List;

    .line 344
    .line 345
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    if-nez v5, :cond_8

    .line 350
    .line 351
    iget v5, v3, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->numberOfRecipients:I

    .line 352
    .line 353
    iget v4, v4, Lcom/fsck/k9/ui/messageview/DisplayRecipients;->numberOfRecipients:I

    .line 354
    .line 355
    if-eq v4, v5, :cond_8

    .line 356
    .line 357
    iput-object v6, v3, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->recipientNames:Ljava/util/List;

    .line 358
    .line 359
    iput v4, v3, Lcom/fsck/k9/ui/messageview/RecipientNamesView;->numberOfRecipients:I

    .line 360
    .line 361
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 362
    .line 363
    .line 364
    :cond_8
    iget-object v3, v0, Lcom/fsck/k9/view/MessageHeader;->replyActionStrategy:Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-static/range {p1 .. p2}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-static/range {p1 .. p2}, Lcom/fsck/k9/helper/ReplyToParser;->getRecipientsToReplyAllTo(Lcom/fsck/k9/mail/internet/MimeMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/google/zxing/BinaryBitmap;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    iget-object v2, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v2, [Lcom/fsck/k9/mail/Address;

    .line 380
    .line 381
    array-length v2, v2

    .line 382
    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v1, [Lcom/fsck/k9/mail/Address;

    .line 385
    .line 386
    array-length v1, v1

    .line 387
    add-int/2addr v2, v1

    .line 388
    sget-object v1, Lcom/fsck/k9/message/ReplyAction;->REPLY:Lcom/fsck/k9/message/ReplyAction;

    .line 389
    .line 390
    if-gt v2, v14, :cond_a

    .line 391
    .line 392
    iget-object v2, v3, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v2, [Lcom/fsck/k9/mail/Address;

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    array-length v2, v2

    .line 400
    if-nez v2, :cond_9

    .line 401
    .line 402
    new-instance v1, Lcom/fsck/k9/message/ReplyActions;

    .line 403
    .line 404
    const/4 v2, 0x0

    .line 405
    invoke-direct {v1, v2}, Lcom/fsck/k9/message/ReplyActions;-><init>(Lcom/fsck/k9/message/ReplyAction;)V

    .line 406
    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_9
    new-instance v2, Lcom/fsck/k9/message/ReplyActions;

    .line 410
    .line 411
    invoke-direct {v2, v1}, Lcom/fsck/k9/message/ReplyActions;-><init>(Lcom/fsck/k9/message/ReplyAction;)V

    .line 412
    .line 413
    .line 414
    :goto_6
    move-object v1, v2

    .line 415
    goto :goto_7

    .line 416
    :cond_a
    new-instance v2, Lcom/fsck/k9/message/ReplyActions;

    .line 417
    .line 418
    sget-object v3, Lcom/fsck/k9/message/ReplyAction;->REPLY_ALL:Lcom/fsck/k9/message/ReplyAction;

    .line 419
    .line 420
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    invoke-direct {v2, v1, v3}, Lcom/fsck/k9/message/ReplyActions;-><init>(Lcom/fsck/k9/message/ReplyAction;Ljava/util/List;)V

    .line 425
    .line 426
    .line 427
    goto :goto_6

    .line 428
    :goto_7
    iput-object v1, v0, Lcom/fsck/k9/view/MessageHeader;->replyActions:Lcom/fsck/k9/message/ReplyActions;

    .line 429
    .line 430
    iget-object v1, v1, Lcom/fsck/k9/message/ReplyActions;->defaultAction:Lcom/fsck/k9/message/ReplyAction;

    .line 431
    .line 432
    invoke-direct {v0, v1}, Lcom/fsck/k9/view/MessageHeader;->setDefaultReplyAction(Lcom/fsck/k9/message/ReplyAction;)V

    .line 433
    .line 434
    .line 435
    move/from16 v1, v16

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    return-void
.end method

.method public setCryptoStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/MessageHeader;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setCryptoStatusDisabled()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->DISABLED:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCryptoStatusLoading()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/view/MessageCryptoDisplayStatus;->LOADING:Lcom/fsck/k9/view/MessageCryptoDisplayStatus;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/fsck/k9/view/MessageHeader;->setCryptoDisplayStatus(Lcom/fsck/k9/view/MessageCryptoDisplayStatus;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMessageHeaderClickListener(Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->messageHeaderClickListener:Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnFlagListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->starView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->subjectView:Lcom/fsck/k9/ui/helper/BottomBaselineTextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
