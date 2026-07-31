.class public Lorg/schabi/newpipe/settings/HistorySettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cacheWipeKey:Ljava/lang/String;

.field public disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public playbackStatesClearKey:Ljava/lang/String;

.field public recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

.field public searchHistoryClearKey:Ljava/lang/String;

.field public viewsHistoryClearKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDeletePlaybackStatesDisposable(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;)Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;
    .locals 4

    .line 1
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 4
    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-direct {v0, p1, v1}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-direct {p1, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;

    .line 37
    .line 38
    invoke-direct {v3, p0, v1}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;I)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 42
    .line 43
    invoke-direct {p0, v2, v3}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 47
    .line 48
    invoke-direct {v1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    const-string p1, "subscribeActual failed"

    .line 57
    .line 58
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    throw p0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    throw p0
.end method

.method public static openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f1300f4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const v2, 0x7f130076

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, p2, p0, p1, v2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;I)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f1300eb

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final onCreatePreferences()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f1302d7

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->cacheWipeKey:Ljava/lang/String;

    .line 12
    .line 13
    const v0, 0x7f1300aa

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->viewsHistoryClearKey:Ljava/lang/String;

    .line 21
    .line 22
    const v0, 0x7f13009f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->playbackStatesClearKey:Ljava/lang/String;

    .line 30
    .line 31
    const v0, 0x7f1300a6

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->searchHistoryClearKey:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 50
    .line 51
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 57
    .line 58
    const v0, 0x7f13009b

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v2, 0x1c

    .line 68
    .line 69
    invoke-direct {v1, p0, v0, v2}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 73
    .line 74
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    const v2, 0x7f13040f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string v2, ""

    .line 84
    .line 85
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_0

    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->cacheWipeKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lorg/schabi/newpipe/util/InfoCache;->INSTANCE:Lorg/schabi/newpipe/util/InfoCache;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->clearCache()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const p1, 0x7f1302d6

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->viewsHistoryClearKey:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 50
    .line 51
    iget-object p0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 52
    .line 53
    invoke-static {p1, v0, p0}, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->openDeleteWatchHistoryDialog(Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->playbackStatesClearKey:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const v3, 0x7f1300eb

    .line 64
    .line 65
    .line 66
    const v4, 0x7f130076

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 76
    .line 77
    iget-object p0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 78
    .line 79
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const v5, 0x7f1300f1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 91
    .line 92
    const/4 v6, 0x5

    .line 93
    invoke-direct {v5, v6}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v4, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    invoke-direct {v4, p0, p1, v0, v2}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->searchHistoryClearKey:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->recordManager:Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 126
    .line 127
    iget-object p0, p0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 128
    .line 129
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 130
    .line 131
    invoke-direct {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    const v5, 0x7f1300f3

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    .line 141
    .line 142
    const/4 v6, 0x6

    .line 143
    invoke-direct {v5, v6}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v4, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;

    .line 151
    .line 152
    const/4 v5, 0x2

    .line 153
    invoke-direct {v4, p0, p1, v0, v5}, Lorg/schabi/newpipe/settings/HistorySettingsFragment$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Landroid/content/Context;Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 161
    .line 162
    .line 163
    :goto_0
    return v2

    .line 164
    :cond_3
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    return p0
.end method
