.class public final Lcom/fsck/k9/activity/compose/RecipientMvpView;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CRYPTO_ICON_IN_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public static final CRYPTO_ICON_OUT_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# instance fields
.field public final activity:Lcom/fsck/k9/activity/MessageCompose;

.field public final bccDivider:Landroid/view/View;

.field public final bccView:Lcom/fsck/k9/view/RecipientSelectView;

.field public final bccWrapper:Landroid/view/View;

.field public final ccDivider:Landroid/view/View;

.field public final ccView:Lcom/fsck/k9/view/RecipientSelectView;

.field public final ccWrapper:Landroid/view/View;

.field public final cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

.field public final cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

.field public presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

.field public final recipientExpanderContainer:Landroid/widget/ViewAnimator;

.field public final textWatchers:Ljava/util/HashSet;

.field public final toView:Lcom/fsck/k9/view/RecipientSelectView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_OUT_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 8
    .line 9
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->CRYPTO_ICON_IN_ANIMATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    const v0, 0x7f09043c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 19
    .line 20
    const v1, 0x7f0900c4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 33
    .line 34
    const v2, 0x7f0900a5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast v2, Lcom/fsck/k9/view/RecipientSelectView;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 47
    .line 48
    const v3, 0x7f0900c7

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    .line 59
    .line 60
    const v3, 0x7f0900c5

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccDivider:Landroid/view/View;

    .line 71
    .line 72
    const v3, 0x7f0900a8

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    .line 83
    .line 84
    const v3, 0x7f0900a6

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccDivider:Landroid/view/View;

    .line 95
    .line 96
    const v3, 0x7f090362

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    check-cast v3, Landroid/widget/ViewAnimator;

    .line 107
    .line 108
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->recipientExpanderContainer:Landroid/widget/ViewAnimator;

    .line 109
    .line 110
    const v3, 0x7f09016b

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast v3, Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 121
    .line 122
    iput-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoStatusView:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 123
    .line 124
    const v4, 0x7f090168

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast v4, Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 135
    .line 136
    iput-object v4, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->cryptoSpecialModeIndicator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 137
    .line 138
    new-instance v5, Ljava/util/HashSet;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v5, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->textWatchers:Ljava/util/HashSet;

    .line 144
    .line 145
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    .line 159
    .line 160
    const v0, 0x7f090361

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    const v0, 0x7f09043d

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    const v0, 0x7f0900c6

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    const v0, 0x7f0900a7

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method


# virtual methods
.method public final addAllTextChangedListeners(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->textWatchers:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/text/TextWatcher;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final varargs addRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    array-length p1, p2

    .line 14
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "Unsupported type: "

    .line 27
    .line 28
    invoke-static {p1, p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    array-length p1, p2

    .line 33
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    array-length p1, p2

    .line 46
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final getBccAddresses()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getCcAddresses()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/view/RecipientSelectView;->getAddresses()[Lcom/fsck/k9/mail/Address;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 2
    .line 3
    or-int/lit16 p2, p2, 0x100

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1, p2}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string p2, "Error starting pending intent from builder!"

    .line 18
    .line 19
    invoke-static {p0, p2, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f09043d

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "presenter"

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->toView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    const v0, 0x7f0900c6

    .line 33
    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_3
    const v0, 0x7f0900a7

    .line 54
    .line 55
    .line 56
    if-ne p1, v0, :cond_5

    .line 57
    .line 58
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccView:Lcom/fsck/k9/view/RecipientSelectView;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_5
    const v0, 0x7f090361

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    if-ne p1, v0, :cond_7

    .line 79
    .line 80
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 81
    .line 82
    if-eqz p0, :cond_6

    .line 83
    .line 84
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 85
    .line 86
    invoke-virtual {p1, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setCcVisibility(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->setBccVisibility(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->updateRecipientExpanderVisibility()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_7
    const v0, 0x7f09016b

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    if-ne p1, v0, :cond_d

    .line 105
    .line 106
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 107
    .line 108
    if-eqz p0, :cond_c

    .line 109
    .line 110
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 111
    .line 112
    iget-object v0, p1, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_b

    .line 119
    .line 120
    if-eq v0, v3, :cond_a

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    const/4 v2, 0x4

    .line 124
    if-eq v0, v1, :cond_9

    .line 125
    .line 126
    const/4 v1, 0x3

    .line 127
    if-eq v0, v1, :cond_a

    .line 128
    .line 129
    if-ne v0, v2, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->toggleEncryptionState(Z)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    iget-object p1, p1, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 142
    .line 143
    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->launchUserInteractionPendingIntent(Landroid/app/PendingIntent;I)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    invoke-virtual {p1}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_b
    const-string p0, "click on crypto status while unconfigured - this should not really happen?!"

    .line 152
    .line 153
    new-array p1, v4, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {p0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1

    .line 163
    :cond_d
    const v0, 0x7f090168

    .line 164
    .line 165
    .line 166
    if-ne p1, v0, :cond_11

    .line 167
    .line 168
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 169
    .line 170
    if-eqz p0, :cond_10

    .line 171
    .line 172
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 175
    .line 176
    sget-object v1, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->SIGN_ONLY:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 177
    .line 178
    if-ne v0, v1, :cond_e

    .line 179
    .line 180
    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpSignOnlyDialog(Z)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_e
    iget-boolean p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 185
    .line 186
    if-eqz p0, :cond_f

    .line 187
    .line 188
    invoke-virtual {p1, v4}, Lcom/fsck/k9/activity/compose/RecipientMvpView;->showOpenPgpInlineDialog(Z)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_f
    const-string p0, "This icon should not be clickable while no special mode is active!"

    .line 193
    .line 194
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1

    .line 202
    :cond_11
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const p2, 0x7f09043c

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "presenter"

    .line 16
    .line 17
    if-ne p1, p2, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_2
    const p2, 0x7f0900c4

    .line 33
    .line 34
    .line 35
    if-ne p1, p2, :cond_4

    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    sget-object p1, Lcom/fsck/k9/mail/Message$RecipientType;->CC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_4
    const p2, 0x7f0900a5

    .line 51
    .line 52
    .line 53
    if-ne p1, p2, :cond_6

    .line 54
    .line 55
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->presenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 56
    .line 57
    if-eqz p0, :cond_5

    .line 58
    .line 59
    sget-object p1, Lcom/fsck/k9/mail/Message$RecipientType;->BCC:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->lastFocusedType:Lcom/fsck/k9/mail/Message$RecipientType;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_6
    :goto_0
    return-void
.end method

.method public final removeAllTextChangedListeners(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->textWatchers:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/text/TextWatcher;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final setBccVisibility(Z)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccWrapper:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->bccDivider:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setCcVisibility(Z)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccWrapper:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->ccDivider:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final showOpenPgpEnabledErrorDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "highlighted_view"

    .line 12
    .line 13
    const v3, 0x7f09016c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v2, "is_gotit"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v1, "openpgp_error"

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final showOpenPgpInlineDialog(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/activity/compose/PgpInlineDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "first_time"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "highlighted_view"

    .line 17
    .line 18
    const v2, 0x7f090168

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "openpgp_inline"

    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final showOpenPgpSignOnlyDialog(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "first_time"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string p1, "highlighted_view"

    .line 17
    .line 18
    const v2, 0x7f090168

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "openpgp_signonly"

    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
