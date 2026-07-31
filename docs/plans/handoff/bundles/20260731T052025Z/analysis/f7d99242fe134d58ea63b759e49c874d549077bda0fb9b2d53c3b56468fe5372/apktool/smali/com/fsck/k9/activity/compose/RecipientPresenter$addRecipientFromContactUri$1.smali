.class public final Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;
.super Lcom/fsck/k9/activity/compose/RecipientLoader;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/mail/Message$RecipientType;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$r8$classId:I

    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    iput-object p3, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 14
    invoke-direct {p0, p4, p5, p1, v0}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;Lcom/fsck/k9/mail/Message$RecipientType;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 7
    .line 8
    check-cast p5, [Lcom/fsck/k9/mail/Address;

    .line 9
    .line 10
    invoke-direct {p0, p3, p4, p5}, Lcom/fsck/k9/activity/compose/RecipientLoader;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/fsck/k9/mail/Address;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 157
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->deliverResult(Ljava/util/List;)V

    return-void

    .line 158
    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->deliverResult(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final deliverResult(Ljava/util/List;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->$recipientType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$addRecipientFromContactUri$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-array v0, v4, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 22
    .line 23
    iget-object v0, v2, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 33
    .line 34
    iget-object v5, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 35
    .line 36
    iget-object v6, v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const-string v8, "Unsupported type: "

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    if-eq v7, v3, :cond_1

    .line 48
    .line 49
    if-ne v7, v9, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v6}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->removeAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {v1, v8}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v0, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->removeAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->removeAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    array-length v7, p1

    .line 67
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 72
    .line 73
    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    if-eq p1, v3, :cond_4

    .line 83
    .line 84
    if-ne p1, v9, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0, v6}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {v1, v8}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v0, v5}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {v0, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addAllTextChangedListeners(Landroid/widget/TextView;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iput-boolean v4, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 102
    .line 103
    iput-boolean v3, p0, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->onAbandon()V

    .line 106
    .line 107
    .line 108
    :goto_2
    return-void

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_6

    .line 117
    .line 118
    iget-object p0, v2, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 121
    .line 122
    const p1, 0x7f1202c5

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 138
    .line 139
    iget-object v0, v2, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 140
    .line 141
    new-array v2, v3, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 142
    .line 143
    aput-object p1, v2, v4

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 146
    .line 147
    .line 148
    iput-boolean v4, p0, Landroidx/loader/content/AsyncTaskLoader;->mStarted:Z

    .line 149
    .line 150
    iput-boolean v3, p0, Landroidx/loader/content/AsyncTaskLoader;->mAbandoned:Z

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientLoader;->onAbandon()V

    .line 153
    .line 154
    .line 155
    :goto_3
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
