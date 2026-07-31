.class public abstract Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.super Lorg/schabi/newpipe/BaseFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lorg/koin/core/Koin;

.field public final descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V
    .locals 8

    .line 1
    invoke-static {p4}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lorg/jsoup/nodes/Printer;->inflate(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)Lorg/jsoup/nodes/Printer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 15
    .line 16
    iget-object v2, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 19
    .line 20
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_a

    .line 37
    .line 38
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lorg/schabi/newpipe/extractor/Image;

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const-string v3, ", "

    .line 51
    .line 52
    invoke-virtual {p3, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x1

    .line 64
    const/4 v6, -0x1

    .line 65
    if-ne v4, v6, :cond_7

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ne v4, v6, :cond_7

    .line 72
    .line 73
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sget-object v6, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 78
    .line 79
    if-ne v4, v6, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    if-eq v4, v5, :cond_5

    .line 93
    .line 94
    const/4 v6, 0x2

    .line 95
    if-eq v4, v6, :cond_4

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_4
    const v4, 0x7f130209

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    const v4, 0x7f13020b

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_6
    const v4, 0x7f130206

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const v6, 0x7f130406

    .line 136
    .line 137
    .line 138
    if-gez v4, :cond_8

    .line 139
    .line 140
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :goto_2
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 150
    .line 151
    .line 152
    const/16 v4, 0x78

    .line 153
    .line 154
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-gez v4, :cond_9

    .line 162
    .line 163
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto :goto_3

    .line 168
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :goto_3
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 173
    .line 174
    .line 175
    :goto_4
    new-instance v4, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;

    .line 176
    .line 177
    invoke-direct {v4, p0, v2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Lorg/schabi/newpipe/extractor/Image;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    const/16 v7, 0x21

    .line 185
    .line 186
    invoke-virtual {p3, v4, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_1

    .line 198
    .line 199
    new-instance v2, Landroid/text/style/StyleSpan;

    .line 200
    .line 201
    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    invoke-virtual {p3, v2, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_a
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 221
    .line 222
    .line 223
    iget-object p0, p1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 226
    .line 227
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lorg/jsoup/nodes/Printer;->inflate(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)Lorg/jsoup/nodes/Printer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 16
    .line 17
    iget-object v0, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 22
    .line 23
    .line 24
    new-instance p4, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    invoke-direct {p4, p0, p5, v7}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    sget-object v6, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 38
    .line 39
    .line 40
    sget-object p3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 41
    .line 42
    invoke-virtual {v1, p5, p3}, Lorg/schabi/newpipe/views/NewPipeTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 52
    .line 53
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final disableDescriptionSelection()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getStreamUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 22
    .line 23
    sget-object v5, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f1300f6

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 57
    .line 58
    iget-object v1, v1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 66
    .line 67
    iget-object v1, v1, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroidx/work/OperationKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 75
    .line 76
    iget-object p0, p0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Landroid/widget/ImageView;

    .line 79
    .line 80
    const v0, 0x7f08014f

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public abstract getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public abstract getService()Lorg/schabi/newpipe/extractor/StreamingService;
.end method

.method public abstract getServiceId()I
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getTags()Ljava/util/List;
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    const p3, 0x7f0d005a

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const p3, 0x7f0a007e

    .line 10
    .line 11
    .line 12
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/Barrier;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "Missing required view with ID: "

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    const p3, 0x7f0a00c6

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    const p3, 0x7f0a00fe

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    const p3, 0x7f0a00ff

    .line 46
    .line 47
    .line 48
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    const p3, 0x7f0a0105

    .line 57
    .line 58
    .line 59
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    const p3, 0x7f0a010a

    .line 68
    .line 69
    .line 70
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Landroid/widget/ImageView;

    .line 75
    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    const p3, 0x7f0a0117

    .line 79
    .line 80
    .line 81
    invoke-static {p3, p2}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 86
    .line 87
    if-eqz v8, :cond_4

    .line 88
    .line 89
    new-instance p3, Lorg/koin/core/Koin;

    .line 90
    .line 91
    check-cast p2, Landroidx/core/widget/NestedScrollView;

    .line 92
    .line 93
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p2, p3, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v1, p3, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v4, p3, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v5, p3, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v6, p3, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v7, p3, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v8, p3, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_1

    .line 117
    .line 118
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-nez p3, :cond_1

    .line 127
    .line 128
    sget-object p3, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 129
    .line 130
    if-ne p2, p3, :cond_0

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->disableDescriptionSelection()V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 137
    .line 138
    iget-object p2, p2, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p2, Landroid/widget/ImageView;

    .line 141
    .line 142
    new-instance p3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {p3, p0, v0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 152
    .line 153
    iget-object p2, p2, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast p2, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 156
    .line 157
    const/16 p3, 0x8

    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 163
    .line 164
    iget-object p2, p2, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p2, Landroid/widget/ImageView;

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 172
    .line 173
    iget-object p2, p2, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p2, Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 178
    .line 179
    .line 180
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 181
    .line 182
    iget-object p2, p2, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p2, Landroid/widget/LinearLayout;

    .line 185
    .line 186
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->getTags()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_3

    .line 195
    .line 196
    const v1, 0x7f0d006d

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const v4, 0x7f0a0258

    .line 204
    .line 205
    .line 206
    invoke-static {v4, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Lcom/google/android/material/chip/ChipGroup;

    .line 211
    .line 212
    if-eqz v5, :cond_2

    .line 213
    .line 214
    const v4, 0x7f0a0259

    .line 215
    .line 216
    .line 217
    invoke-static {v4, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Landroid/widget/TextView;

    .line 222
    .line 223
    if-eqz v6, :cond_2

    .line 224
    .line 225
    new-instance v2, Lorg/jsoup/parser/TokenData;

    .line 226
    .line 227
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 228
    .line 229
    const/4 v3, 0x7

    .line 230
    invoke-direct {v2, v1, v5, v3}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 231
    .line 232
    .line 233
    invoke-static {p3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 238
    .line 239
    invoke-interface {p3, v3}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;

    .line 244
    .line 245
    invoke-direct {v3, v0, p0, p1, v2}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p3, v3}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-object v2

    .line 271
    :cond_3
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 272
    .line 273
    iget-object p0, p0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    .line 276
    .line 277
    return-object p0

    .line 278
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object v2
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->descriptionDisposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public abstract setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
.end method
