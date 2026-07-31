.class public final Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 8
    .line 9
    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 10
    .line 11
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {p0, v0, v1, p1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p1, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->entries:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p2, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {p1, v0, v1, p2}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 49
    .line 50
    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 51
    .line 52
    return v0

    .line 53
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 54
    .line 55
    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 56
    .line 57
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$PeertubeInstanceCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 7
    .line 8
    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 9
    .line 10
    iget-object p0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->key:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 20
    .line 21
    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 22
    .line 23
    iget-boolean p0, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    .line 24
    .line 25
    iget-boolean v0, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    .line 26
    .line 27
    if-ne p0, v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p1, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0

    .line 43
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 44
    .line 45
    check-cast p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 46
    .line 47
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p2, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
