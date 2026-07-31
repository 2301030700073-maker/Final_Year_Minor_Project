.class public Lcom/fsck/k9/view/RecipientSelectView;
.super Lcom/tokenautocomplete/TokenCompleteTextView;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# instance fields
.field public adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

.field public alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

.field public alternatesPopup:Landroid/widget/ListPopupWindow;

.field public alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

.field public cryptoProvider:Ljava/lang/String;

.field public final emailAddressParser:Lcom/fsck/k9/view/UserInputEmailAddressParser;

.field public listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

.field public loaderManager:Landroidx/loader/app/LoaderManager;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public showCryptoEnabled:Z

.field public tokenTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const v0, 0x7f04004c

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 26
    .line 27
    iput-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastCompletionText:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init$1()V

    .line 30
    .line 31
    .line 32
    const-class v1, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->emailAddressParser:Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 41
    .line 42
    const-class v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 51
    .line 52
    iput v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->tokenTextSize:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04004c

    .line 58
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 62
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 63
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 64
    iput-boolean v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 65
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 67
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastCompletionText:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init$1()V

    .line 69
    const-class p2, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 70
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 71
    check-cast p2, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->emailAddressParser:Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 72
    const-class p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 73
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 74
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 75
    iput v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->tokenTextSize:I

    .line 76
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 78
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastLayout:Landroid/text/Layout;

    const/4 p3, 0x0

    .line 79
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->initialized:Z

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 81
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->savingState:Z

    .line 82
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->shouldFocusNext:Z

    .line 83
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->allowCollapse:Z

    .line 84
    iput-boolean p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    const/4 p3, -0x1

    .line 85
    iput p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 86
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->lastCompletionText:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->init$1()V

    .line 88
    const-class p2, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 89
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 90
    check-cast p2, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->emailAddressParser:Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 91
    const-class p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 92
    invoke-static {p2}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 93
    check-cast p2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    iput-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 94
    iput p3, p0, Lcom/fsck/k9/view/RecipientSelectView;->tokenTextSize:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getTokenCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method


# virtual methods
.method public final varargs addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObjectSync(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public final bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vName:Lcom/google/android/material/textview/MaterialTextView;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatusError:Landroid/view/View;

    .line 10
    .line 11
    iget-object v2, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatusEnabled:Landroid/view/View;

    .line 12
    .line 13
    iget-object v3, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->cryptoStatus:Landroid/view/View;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/fsck/k9/view/RecipientSelectView;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 16
    .line 17
    invoke-virtual {v4}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 22
    .line 23
    iget-boolean v4, v4, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-object v4, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v4, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 43
    .line 44
    iget-object v5, v4, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v4, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 50
    .line 51
    iget-object v5, v4, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->tokenTextSize:I

    .line 57
    .line 58
    const/4 v4, -0x1

    .line 59
    if-eq v0, v4, :cond_3

    .line 60
    .line 61
    iget-object v4, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vName:Lcom/google/android/material/textview/MaterialTextView;

    .line 62
    .line 63
    const/4 v5, 0x2

    .line 64
    int-to-float v0, v0

    .line 65
    invoke-virtual {v4, v5, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    iget-object p2, p2, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;->vContactPhoto:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 72
    .line 73
    invoke-static {p2, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    if-eqz p2, :cond_9

    .line 81
    .line 82
    iget p1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 83
    .line 84
    const/4 p2, 0x4

    .line 85
    const/4 v4, 0x0

    .line 86
    if-eq p1, p2, :cond_5

    .line 87
    .line 88
    const/4 p2, 0x3

    .line 89
    if-ne p1, p2, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    move p1, v4

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 95
    :goto_3
    iget-boolean p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->showCryptoEnabled:Z

    .line 96
    .line 97
    if-nez p0, :cond_6

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    move p2, v4

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    move p2, v0

    .line 104
    :goto_4
    invoke-virtual {v3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    move p2, v4

    .line 112
    goto :goto_5

    .line 113
    :cond_7
    move p2, v0

    .line 114
    :goto_5
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    if-nez p1, :cond_8

    .line 120
    .line 121
    move v0, v4

    .line 122
    :cond_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final buildSpanForObject(Ljava/lang/Object;)Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;
    .locals 4

    .line 1
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0c0384

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f090151

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-direct {v2, v3, p0}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/fsck/k9/ui/compose/RecipientCircleImageView;->setOnSetImageDrawableListener(Lcom/fsck/k9/ui/compose/OnSetImageDrawableListener;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0, p1}, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;-><init>(Lcom/fsck/k9/view/RecipientSelectView;Landroid/view/View;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public getAddresses()[Lcom/fsck/k9/mail/Address;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v1, v0, [Lcom/fsck/k9/mail/Address;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 21
    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v1
.end method

.method public final hasUncompletedText()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "+"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "[0-9]+"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return v1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final initView(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 9
    .line 10
    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter;-><init>(Landroid/content/Context;Lcom/fsck/k9/view/RecipientSelectView;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesAdapter:Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->performBestGuess:Z

    .line 22
    .line 23
    new-instance v1, Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/AsyncTaskLoader;
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iget-object p1, p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v2, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :goto_0
    if-eqz p2, :cond_1

    .line 25
    .line 26
    new-instance p1, Lcom/fsck/k9/activity/compose/RecipientLoader;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p1, v1, p0, p2, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    new-instance p1, Lcom/fsck/k9/activity/compose/RecipientLoader;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget-object v1, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopupRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 49
    .line 50
    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    aput-object p0, v0, v2

    .line 54
    .line 55
    invoke-direct {p1, p2, v1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    const-string p0, "Unknown Loader ID: "

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object p2

    .line 69
    :cond_3
    if-eqz p2, :cond_4

    .line 70
    .line 71
    const-string p1, "query"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-string p1, ""

    .line 85
    .line 86
    :goto_1
    iget-object p2, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 87
    .line 88
    iput-object p1, p2, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    .line 89
    .line 90
    new-instance p2, Lcom/fsck/k9/activity/compose/RecipientLoader;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {p2, v0, p0, p1}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p2
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->performCompletion()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/tokenautocomplete/TokenCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->suppressImeOnNextFocus:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->suppressImeOnNextFocus:Z

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "input_method"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p2, 0x1

    .line 34
    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/tokenautocomplete/TokenCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final onLoadFinished(Landroidx/loader/content/AsyncTaskLoader;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroidx/core/app/ActivityRecreator$1;

    .line 22
    .line 23
    const/16 v2, 0x11

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v1, v2, p0, p2, v3}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onLoaderReset(Landroidx/loader/content/AsyncTaskLoader;)V
    .locals 0

    .line 1
    iget p1, p1, Landroidx/loader/content/AsyncTaskLoader;->mId:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->highlight:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final parseRecipients(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->emailAddressParser:Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/fsck/k9/view/UserInputEmailAddressParser;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const v0, 0x7f120561

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/fsck/k9/mail/Address;

    .line 53
    .line 54
    new-instance v2, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/view/NonAsciiEmailAddressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-object v0

    .line 64
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const v0, 0x7f120560

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 79
    .line 80
    return-object p0
.end method

.method public final performCompletion()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->enoughToFilter()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/RecipientSelectView;->parseRecipients(Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->clearCompletionText()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->addObjectSync(Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    invoke-super {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final performFiltering(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->currentCompletionText()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ge p2, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "query"

    .line 31
    .line 32
    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/AsyncTaskLoader;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final replaceText(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "input_method"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    const/4 v5, -0x1

    .line 27
    move-object v1, p0

    .line 28
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setCryptoProvider(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->cryptoProvider:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoaderManager(Landroidx/loader/app/LoaderManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->loaderManager:Landroidx/loader/app/LoaderManager;

    .line 2
    .line 3
    return-void
.end method

.method public setShowCryptoEnabled(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->showCryptoEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-class v1, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    move v1, v2

    .line 25
    :goto_0
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    aget-object v3, p1, v1

    .line 28
    .line 29
    iget-object v4, v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->token:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/fsck/k9/view/RecipientSelectView$RecipientTokenSpan;->view:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p0, v4, v3}, Lcom/fsck/k9/view/RecipientSelectView;->bindObjectView(Lcom/fsck/k9/view/RecipientSelectView$Recipient;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->redrawTokens()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setTokenListener(Lcom/fsck/k9/view/RecipientSelectView$TokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/view/RecipientSelectView$TokenListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView;->setTokenListener(Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->listener:Lcom/fsck/k9/view/RecipientSelectView$TokenListener;

    .line 5
    .line 6
    return-void
.end method

.method public setTokenTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/view/RecipientSelectView;->tokenTextSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final showDropDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/view/RecipientSelectView;->adapter:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final tryPerformCompletion()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->hasUncompletedText()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getTokenCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->performCompletion()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getTokenCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eq v0, p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method
