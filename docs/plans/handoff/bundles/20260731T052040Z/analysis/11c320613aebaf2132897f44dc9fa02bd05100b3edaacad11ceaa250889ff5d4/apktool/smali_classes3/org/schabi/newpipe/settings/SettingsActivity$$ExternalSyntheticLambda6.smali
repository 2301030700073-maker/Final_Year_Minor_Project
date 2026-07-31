.class public final synthetic Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/SettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/SettingsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    sget v0, Lorg/schabi/newpipe/settings/SettingsActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchEditText:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity;->searchFragment:Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->searcher:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->searchFor(Ljava/lang/String;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->adapter:Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 53
    .line 54
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    move v4, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v4, v2

    .line 66
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchFragment;->binding:Lorg/jsoup/nodes/Printer;

    .line 70
    .line 71
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v2, v3

    .line 79
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_2
    return-void
.end method
