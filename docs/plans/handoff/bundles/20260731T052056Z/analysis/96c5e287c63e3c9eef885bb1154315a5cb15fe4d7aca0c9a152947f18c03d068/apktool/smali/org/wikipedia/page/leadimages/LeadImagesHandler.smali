.class public final Lorg/wikipedia/page/leadimages/LeadImagesHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public callToActionIsTranslation:Z

.field public callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

.field public final callback:Lorg/wikipedia/page/PageFragment$Callback;

.field public captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

.field public captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

.field public displayHeightDp:I

.field public handlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public imageEditType:Lorg/wikipedia/Constants$ImageEditType;

.field public imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public lastImageTitleForCallToAction:Ljava/lang/String;

.field public final pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

.field public final parentFragment:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/leadimages/PageHeaderView;Lorg/wikipedia/page/PageFragment$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callback:Lorg/wikipedia/page/PageFragment$Callback;

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    iput-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lastImageTitleForCallToAction:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3, p2}, Lorg/wikipedia/views/LinearLayoutOverWebView;->setWebView(Lorg/wikipedia/views/ObservableWebView;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p2, Lorg/wikipedia/views/ObservableWebView;->onScrollChangeListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initDisplayDimensions()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 26
    .line 27
    const/16 p2, 0x11

    .line 28
    .line 29
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallback(Lorg/wikipedia/page/leadimages/PageHeaderView$Callback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final finalizeCallToAction()V
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    sget-object v1, Lorg/wikipedia/page/leadimages/LeadImagesHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iget-object v2, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 17
    .line 18
    iget-object v3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 19
    .line 20
    if-eq v0, v1, :cond_7

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v0, v4, :cond_4

    .line 24
    .line 25
    iget-object v8, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 26
    .line 27
    if-eqz v8, :cond_6

    .line 28
    .line 29
    iget-object v0, v2, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 34
    .line 35
    if-eqz v0, :cond_6

    .line 36
    .line 37
    new-instance v5, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 38
    .line 39
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 44
    .line 45
    iget-object v7, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 52
    .line 53
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-object v0, v1

    .line 74
    :goto_0
    if-nez v0, :cond_2

    .line 75
    .line 76
    const-string v0, ""

    .line 77
    .line 78
    :cond_2
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->imagePage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    iget-object v1, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 97
    .line 98
    :cond_3
    move-object v11, v1

    .line 99
    const/4 v13, 0x0

    .line 100
    const/16 v14, 0x7c0

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    iput-object v5, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 107
    .line 108
    const p0, 0x7f120886

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {v3, p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallToActionText(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_4
    iput-boolean v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    .line 120
    .line 121
    iget-object v7, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionSourcePageTitle:Lorg/wikipedia/page/PageTitle;

    .line 122
    .line 123
    if-eqz v7, :cond_5

    .line 124
    .line 125
    new-instance v4, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 126
    .line 127
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iget-object v0, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 132
    .line 133
    iget-object v6, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    iget-object v9, v7, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    const/4 v12, 0x0

    .line 146
    const/16 v13, 0x7c0

    .line 147
    .line 148
    const/4 v11, 0x0

    .line 149
    invoke-direct/range {v4 .. v13}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    iput-object v4, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 153
    .line 154
    :cond_5
    iget-object v8, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->captionTargetPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 155
    .line 156
    if-eqz v8, :cond_6

    .line 157
    .line 158
    new-instance v5, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 159
    .line 160
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iget-object v0, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 165
    .line 166
    iget-object v7, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v8}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    const/4 v13, 0x0

    .line 177
    const/16 v14, 0x7c0

    .line 178
    .line 179
    const/4 v10, 0x0

    .line 180
    const/4 v12, 0x0

    .line 181
    invoke-direct/range {v5 .. v14}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    iput-object v5, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 185
    .line 186
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 187
    .line 188
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    iget-object v0, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 197
    .line 198
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    new-array v0, v1, [Ljava/lang/Object;

    .line 205
    .line 206
    const/4 v1, 0x0

    .line 207
    aput-object p0, v0, v1

    .line 208
    .line 209
    const p0, 0x7f120887

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p0, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {v3, p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallToActionText(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    :goto_1
    return-void

    .line 220
    :cond_7
    const p0, 0x7f120888

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v3, p0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallToActionText(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public final getDonationReminderCardViewHeight(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->getDonationReminderCardViewHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->getDonationReminderCardViewHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lokio/Okio__OkioKt;->isLandscape(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/high16 p0, 0x41c00000    # 24.0f

    .line 37
    .line 38
    invoke-static {p0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/high16 p0, 0x42800000    # 64.0f

    .line 44
    .line 45
    invoke-static {p0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_3
    :goto_1
    sub-int/2addr v0, v2

    .line 50
    return v0
.end method

.method public final getLeadImageUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/page/PageProperties;->leadImageUrl:Ljava/lang/String;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_2
    new-instance v2, Landroid/net/Uri$Builder;

    .line 64
    .line 65
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public final getPage()Lorg/wikipedia/page/Page;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/page/Page;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTopMargin()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lokio/Okio__OkioKt;->leadImageHeightForDevice(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lorg/wikipedia/page/PageFragment;->getToolbarMargin()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getDonationReminderCardViewHeight(Z)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    int-to-float p0, p0

    .line 41
    add-float/2addr v0, p0

    .line 42
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public final initDisplayDimensions()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .line 44
    div-float/2addr v0, v1

    .line 45
    float-to-int v0, v0

    .line 46
    iput v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->displayHeightDp:I

    .line 47
    .line 48
    return-void
.end method

.method public final isLeadImageEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isImageDownloadEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->displayHeightDp:I

    .line 31
    .line 32
    const/16 v2, 0x1e0

    .line 33
    .line 34
    if-lt v0, v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, v0, Lorg/wikipedia/page/Page;->isMainPage:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v1

    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_3
    :goto_1
    return v1
.end method

.method public final loadLeadImage()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->initDisplayDimensions()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v2, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->pageHeaderView:Lorg/wikipedia/page/leadimages/PageHeaderView;

    .line 14
    .line 15
    if-eqz v1, :cond_6

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-boolean v1, v1, Lorg/wikipedia/page/Page;->isMainPage:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v3

    .line 28
    :goto_0
    if-nez v1, :cond_6

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->isLeadImageEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    invoke-virtual {v2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->show()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lorg/wikipedia/page/leadimages/PageHeaderView;->loadImage(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->handlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iput-object v6, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionSourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 60
    .line 61
    iput-object v6, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionTargetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 62
    .line 63
    iput-boolean v3, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->callToActionIsTranslation:Z

    .line 64
    .line 65
    invoke-virtual {v2, v6}, Lorg/wikipedia/page/leadimages/PageHeaderView;->setCallToActionText(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 69
    .line 70
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getLeadImageUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    const-string v1, "/wikipedia/commons/"

    .line 93
    .line 94
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    const/4 v1, 0x1

    .line 99
    if-ne v0, v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->parentFragment:Lorg/wikipedia/page/PageFragment;

    .line 109
    .line 110
    iget-object v4, v0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 111
    .line 112
    iget-object v4, v4, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 113
    .line 114
    move-object v5, v4

    .line 115
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 116
    .line 117
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->getPage()Lorg/wikipedia/page/Page;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object v4, v4, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 127
    .line 128
    iget-object v4, v4, Lorg/wikipedia/page/PageProperties;->leadImageName:Ljava/lang/String;

    .line 129
    .line 130
    const-string v7, "File:"

    .line 131
    .line 132
    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v2}, Lorg/wikipedia/page/leadimages/PageHeaderView;->getImageView()Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 141
    .line 142
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-array v1, v1, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v7, v1, v3

    .line 149
    .line 150
    const v3, 0x7f1202ee

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->lastImageTitleForCallToAction:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-virtual {p0}, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->finalizeCallToAction()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 185
    .line 186
    new-instance v8, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 187
    .line 188
    const/16 v2, 0x16

    .line 189
    .line 190
    invoke-direct {v8, v1, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;

    .line 194
    .line 195
    const/4 v7, 0x0

    .line 196
    move-object v3, p0

    .line 197
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/page/leadimages/LeadImagesHandler$updateCallToAction$1$2;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 198
    .line 199
    .line 200
    const/4 p0, 0x2

    .line 201
    invoke-static {v0, v8, v6, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    iput-object p0, v3, Lorg/wikipedia/page/leadimages/LeadImagesHandler;->handlerJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 206
    .line 207
    :cond_5
    :goto_1
    return-void

    .line 208
    :cond_6
    :goto_2
    invoke-virtual {v2, v6}, Lorg/wikipedia/page/leadimages/PageHeaderView;->loadImage(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
