.class public final synthetic Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 19
    .line 20
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 23
    .line 24
    iget-object v5, v2, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v7, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    invoke-direct {v7, v2, p0}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-static/range {v2 .. v7}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;ZLjava/lang/String;ZLorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v2, p0}, Lorg/wikipedia/gallery/GalleryActivity;->fetchGalleryDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x3

    .line 45
    invoke-virtual {v2, p0}, Landroid/app/Activity;->setResult(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :pswitch_0
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 55
    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    const-string v0, "intentAction"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 p1, 0x0

    .line 70
    :goto_0
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 71
    .line 72
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 75
    .line 76
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v1, 0x20

    .line 79
    .line 80
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->show$default(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->fetchGalleryDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x2

    .line 91
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 2
    .line 3
    const-string v0, "Link clicked was "

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/wikipedia/util/log/L;->LEVEL_V:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "/wiki/"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    sget-object v0, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 31
    .line 32
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lorg/wikipedia/page/PageTitle$Companion;->titleForInternalLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->showLinkPreview(Lorg/wikipedia/page/PageTitle;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x1

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite$Companion;->supportedAuthority(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    invoke-static {v3, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v4, :cond_1

    .line 89
    .line 90
    sget-object p1, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 91
    .line 92
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v0}, Lorg/wikipedia/page/PageTitle$Companion;->titleForUri(Landroid/net/Uri;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->showLinkPreview(Lorg/wikipedia/page/PageTitle;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    const-string v0, "/w/"

    .line 109
    .line 110
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 117
    .line 118
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const/4 v3, 0x2

    .line 143
    new-array v5, v3, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v0, v5, v1

    .line 146
    .line 147
    aput-object v2, v5, v4

    .line 148
    .line 149
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "%1$s://%2$s"

    .line 154
    .line 155
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public open(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v1, Lorg/wikipedia/commons/FilePageActivity;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "title"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "allowEdit"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
