.class public Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/fragments/list/search/SearchFragment;",
        ">",
        "Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.fragments.list.search.SearchFragment$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 91
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "contentFilter"

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getStringArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "filterItemCheckedId"

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 21
    .line 22
    const-string v0, "isCorrectedSearch"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 29
    .line 30
    const-string v0, "lastSearchedString"

    .line 31
    .line 32
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "metaInfo"

    .line 39
    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, [Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 45
    .line 46
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 47
    .line 48
    const-string v0, "searchString"

    .line 49
    .line 50
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "searchSuggestion"

    .line 57
    .line 58
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "serviceId"

    .line 65
    .line 66
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 71
    .line 72
    const-string/jumbo v0, "sortFilter"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 80
    .line 81
    const-string/jumbo v0, "wasSearchFocused"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    iput-boolean p0, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 89
    .line 90
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 80
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BaseStateFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "contentFilter"

    .line 7
    .line 8
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->contentFilter:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putStringArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "filterItemCheckedId"

    .line 14
    .line 15
    iget v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->filterItemCheckedId:I

    .line 16
    .line 17
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "isCorrectedSearch"

    .line 21
    .line 22
    iget-boolean v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->isCorrectedSearch:Z

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "lastSearchedString"

    .line 28
    .line 29
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->lastSearchedString:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "metaInfo"

    .line 35
    .line 36
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->metaInfo:[Lorg/schabi/newpipe/extractor/MetaInfo;

    .line 37
    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "searchString"

    .line 42
    .line 43
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchString:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "searchSuggestion"

    .line 49
    .line 50
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchSuggestion:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "serviceId"

    .line 56
    .line 57
    iget v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->serviceId:I

    .line 58
    .line 59
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "sortFilter"

    .line 63
    .line 64
    .line 65
    iget-object v1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->sortFilter:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v0, "wasSearchFocused"

    .line 71
    .line 72
    .line 73
    iget-boolean p1, p1, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->wasSearchFocused:Z

    .line 74
    .line 75
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
