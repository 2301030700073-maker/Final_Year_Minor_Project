.class public final Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final bannedKeys:Ljava/util/ArrayList;

.field public breadcrumbsEnabled:Z

.field public containerResId:I

.field public filesToIndex:Ljava/util/ArrayList;

.field public fuzzySearchEnabled:Z

.field public historyEnabled:Z

.field public historyId:Ljava/lang/String;

.field public preferencesToIndex:Ljava/util/ArrayList;

.field public revealAnimationSetting:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

.field public searchBarEnabled:Z

.field public textClearHistory:Ljava/lang/String;

.field public textClearInput:Ljava/lang/String;

.field public textHint:Ljava/lang/String;

.field public textMore:Ljava/lang/String;

.field public textNoResults:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->filesToIndex:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->preferencesToIndex:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->bannedKeys:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyEnabled:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->breadcrumbsEnabled:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->fuzzySearchEnabled:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 37
    .line 38
    const v0, 0x1020002

    .line 39
    .line 40
    .line 41
    iput v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->containerResId:I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->revealAnimationSetting:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final showSearchFragment()Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "items"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->filesToIndex:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "individual_prefs"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->preferencesToIndex:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "history_enabled"

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyEnabled:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v1, "reveal_anim_setting"

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->revealAnimationSetting:Lcom/bytehamster/lib/preferencesearch/ui/RevealAnimationSetting;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "fuzzy"

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->fuzzySearchEnabled:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    const-string v1, "breadcrumbs_enabled"

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->breadcrumbsEnabled:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    const-string v1, "search_bar_enabled"

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->searchBarEnabled:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v1, "text_hint"

    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textHint:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "text_clear_history"

    .line 67
    .line 68
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearHistory:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "text_no_results"

    .line 74
    .line 75
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textNoResults:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "text_clear_input"

    .line 81
    .line 82
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textClearInput:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "text_more"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textMore:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "history_id"

    .line 95
    .line 96
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->historyId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 121
    .line 122
    .line 123
    iget p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->containerResId:I

    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    const-string v3, "SearchPreferenceFragment"

    .line 127
    .line 128
    invoke-virtual {v2, p0, v1, v3, v0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :cond_0
    const-string p0, "setActivity() not called"

    .line 139
    .line 140
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    return-object p0
.end method
