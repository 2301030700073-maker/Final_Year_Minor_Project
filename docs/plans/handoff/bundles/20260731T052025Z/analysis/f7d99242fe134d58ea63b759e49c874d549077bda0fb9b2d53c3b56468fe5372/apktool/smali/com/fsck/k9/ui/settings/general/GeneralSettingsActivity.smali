.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;


# instance fields
.field public final featureFlagProvider$delegate:Lkotlin/Lazy;

.field public final fontPreferenceKeys:Ljava/util/List;

.field public searchEnabled:Z

.field public searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

.field public searchPreferenceMenuItem:Landroid/view/MenuItem;

.field public searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 7
    .line 8
    const/16 v2, 0xe

    .line 9
    .line 10
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    const-string v15, "message_compose_fonts"

    .line 22
    .line 23
    const-string v16, "message_compose_input_font"

    .line 24
    .line 25
    const-string v2, "font_size"

    .line 26
    .line 27
    const-string v3, "message_list_fonts"

    .line 28
    .line 29
    const-string v4, "message_list_subject_font"

    .line 30
    .line 31
    const-string v5, "message_list_sender_font"

    .line 32
    .line 33
    const-string v6, "message_list_date_font"

    .line 34
    .line 35
    const-string v7, "message_list_preview_font"

    .line 36
    .line 37
    const-string v8, "message_view_fonts"

    .line 38
    .line 39
    const-string v9, "message_view_account_name_font"

    .line 40
    .line 41
    const-string v10, "message_view_subject_font"

    .line 42
    .line 43
    const-string v11, "message_view_sender_font"

    .line 44
    .line 45
    const-string v12, "message_view_date_font"

    .line 46
    .line 47
    const-string v13, "message_view_recipients_font"

    .line 48
    .line 49
    const-string v14, "message_view_content_font_slider"

    .line 50
    .line 51
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->fontPreferenceKeys:Ljava/util/List;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c0178

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 32
    .line 33
    .line 34
    sget p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    invoke-static {p0}, Landroidx/room/util/SchemaInfoUtilKt;->create(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v2, 0x7f090206

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v0, p0, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string v0, "search_query"

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchQuery:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "search_enabled"

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-boolean p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchEnabled:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    const-string p0, "getSupportActionBar() == null"

    .line 75
    .line 76
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0e0006

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f090391

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceMenuItem:Landroid/view/MenuItem;

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->setActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->getSearchConfiguration()Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const v1, 0x7f090206

    .line 50
    .line 51
    .line 52
    iput v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->containerResId:I

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->breadcrumbsEnabled:Z

    .line 56
    .line 57
    iput-boolean v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->fuzzySearchEnabled:Z

    .line 58
    .line 59
    const v2, 0x7f120574

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textHint:Ljava/lang/String;

    .line 67
    .line 68
    const v2, 0x7f12053f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->textNoResults:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;

    .line 78
    .line 79
    invoke-direct {v2, p1}, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration$SearchIndexItem;-><init>(Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p1, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->filesToIndex:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 88
    .line 89
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 94
    .line 95
    const-string v3, "disable_font_size_config"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/16 v4, 0x1d

    .line 104
    .line 105
    invoke-direct {v3, v4, p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v2, v3}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->onEnabled(Lkotlin/jvm/functions/Function0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceMenuItem:Landroid/view/MenuItem;

    .line 112
    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity$onCreateOptionsMenu$2;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 122
    .line 123
    .line 124
    iget-boolean p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchEnabled:Z

    .line 125
    .line 126
    if-eqz p1, :cond_0

    .line 127
    .line 128
    new-instance p1, Landroid/os/Handler;

    .line 129
    .line 130
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v0, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/16 v3, 0xb

    .line 136
    .line 137
    invoke-direct {v0, v3, p0}, Landroidx/fragment/app/Fragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    iput-boolean v2, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchEnabled:Z

    .line 144
    .line 145
    :cond_0
    return v1

    .line 146
    :cond_1
    const-string p0, "searchPreferenceMenuItem"

    .line 147
    .line 148
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_2
    const-string p0, "searchPreferenceActionView"

    .line 153
    .line 154
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 14
    .line 15
    .line 16
    sget p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    iget-object p0, p2, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/room/util/SchemaInfoUtilKt;->create(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const p2, 0x7f090206

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p2, p0, v0}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "search_query"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-boolean v0, v0, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 26
    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    const-string v1, "search_enabled"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "searchPreferenceActionView"

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onSearchResultClicked(Lorg/jsoup/parser/ParseError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceActionView:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->cancelSearch()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->searchPreferenceMenuItem:Landroid/view/MenuItem;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    iget-object v0, p1, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/room/util/SchemaInfoUtilKt;->create(Ljava/lang/String;)Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "Search result"

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const p0, 0x7f090206

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroid/os/Handler;

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    const/16 v2, 0x9

    .line 58
    .line 59
    invoke-direct {v1, v2, p1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    const-string p0, "searchPreferenceMenuItem"

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_1
    const-string p0, "searchPreferenceActionView"

    .line 73
    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1
.end method
