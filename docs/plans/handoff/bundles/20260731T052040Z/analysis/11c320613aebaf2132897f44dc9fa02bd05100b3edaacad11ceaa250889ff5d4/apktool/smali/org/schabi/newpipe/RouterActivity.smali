.class public Lorg/schabi/newpipe/RouterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/RouterActivity$FetcherService;,
        Lorg/schabi/newpipe/RouterActivity$PersistentFragment;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

.field protected currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field public currentService:Lorg/schabi/newpipe/extractor/StreamingService;

.field protected currentServiceId:I

.field public currentUrl:Ljava/lang/String;

.field public dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field protected selectedRadioPosition:I

.field public selectionIsAddToPlaylist:Z

.field public selectionIsDownload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

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
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 13
    .line 14
    iput v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsDownload:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsAddToPlaylist:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 25
    .line 26
    return-void
.end method

.method public static handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->recaptchaUrl:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const p1, 0x7f130410

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v1, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    .line 19
    .line 20
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const/high16 v1, 0x10000000

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "recaptcha_url_extra"

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p1, Lorg/schabi/newpipe/error/ErrorInfo;->isReportable:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-static {p0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lorg/schabi/newpipe/error/ErrorInfo;->message:Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/error/ErrorInfo$Companion$ErrorMessage;->getText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 59
    .line 60
    .line 61
    :goto_0
    instance-of p1, p0, Lorg/schabi/newpipe/RouterActivity;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    check-cast p0, Lorg/schabi/newpipe/RouterActivity;

    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "PERSIST_FRAGMENT"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 16
    .line 17
    invoke-direct {v1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3, v1, v0, p0}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p0, v2, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    iput-boolean v3, v2, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 35
    .line 36
    iget-object p0, v2, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    const-string p0, "This transaction is already being added to the back stack"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_1
    return-object v1
.end method

.method public final getThemeWrapperContext()Landroid/view/ContextThemeWrapper;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-static {p0}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const v1, 0x7f14017b

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v1, 0x7f140149

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final handleChoice(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f030021

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v2, 0x7f1303f3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    :cond_0
    const v0, 0x7f1303e1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    const v0, 0x7f130114

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v2, 0x1

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/16 p1, 0x30a

    .line 87
    .line 88
    invoke-static {p0, p1}, Lus/shandian/giga/util/Utility;->checkStoragePermissions(Landroid/app/Activity;I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iput-boolean v2, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsDownload:Z

    .line 95
    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->openDownloadDialog$1()V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void

    .line 100
    :cond_3
    const v0, 0x7f130020

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x2

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    iput-boolean v2, p0, Lorg/schabi/newpipe/RouterActivity;->selectionIsAddToPlaylist:Z

    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 121
    .line 122
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v4, p1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 128
    .line 129
    invoke-static {v0, p0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget-object v5, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 134
    .line 135
    invoke-virtual {v0, v5}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 144
    .line 145
    invoke-direct {v6, v0, v5, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 146
    .line 147
    .line 148
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

    .line 149
    .line 150
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)V

    .line 151
    .line 152
    .line 153
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 154
    .line 155
    invoke-direct {v5, v0, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    new-array v0, v3, [Lio/reactivex/rxjava3/core/SingleSource;

    .line 159
    .line 160
    aput-object v6, v0, v1

    .line 161
    .line 162
    aput-object v5, v0, v2

    .line 163
    .line 164
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 165
    .line 166
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

    .line 170
    .line 171
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;

    .line 175
    .line 176
    invoke-direct {v1, p1, p0, v3}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 180
    .line 181
    invoke-direct {p0, v0, v1}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_4
    const v0, 0x7f13049c

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_9

    .line 203
    .line 204
    const v0, 0x7f130532

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_5

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/view/ContextThemeWrapper;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_6

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_6
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const v4, 0x7f130523

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_7

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_7
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    sget-object v4, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 262
    .line 263
    if-ne v0, v4, :cond_8

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_8
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 267
    .line 268
    const-class v1, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    .line 269
    .line 270
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .line 272
    .line 273
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 274
    .line 275
    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 276
    .line 277
    iget v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 278
    .line 279
    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity;->currentLinkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 280
    .line 281
    iget-object v4, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 282
    .line 283
    invoke-direct {v1, v2, v3, v4, p1}, Lorg/schabi/newpipe/RouterActivity$Choice;-><init>(ILorg/schabi/newpipe/extractor/StreamingService$LinkType;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string p1, "key_choice"

    .line 287
    .line 288
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_9
    :goto_1
    new-instance p1, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;

    .line 299
    .line 300
    invoke-direct {p1, p0, v3}, Lcoil3/decode/StaticImageDecoderKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;

    .line 304
    .line 305
    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 306
    .line 307
    .line 308
    sget-object p1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 309
    .line 310
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;

    .line 323
    .line 324
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/RouterActivity;I)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;

    .line 328
    .line 329
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/RouterActivity;I)V

    .line 330
    .line 331
    .line 332
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 333
    .line 334
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 341
    .line 342
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 343
    .line 344
    .line 345
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lokio/Options$Companion;->getSelectedThemeKey(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lokio/Options$Companion;->setDayNightMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const v0, 0x7f1401c9

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v0, 0x7f1401c8

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0x38

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$1;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/RouterActivity$1;-><init>(Lorg/schabi/newpipe/RouterActivity;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 73
    .line 74
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Cloneable;

    .line 83
    .line 84
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    .line 86
    new-instance v1, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-direct {v1, v0, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "android.intent.extra.TEXT"

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    sget-object v0, Lorg/schabi/newpipe/util/urlfinder/UrlFinder;->Companion:Lorg/schabi/newpipe/util/urlfinder/UrlFinder$Companion;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/util/urlfinder/UrlFinder;->WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    goto :goto_2

    .line 166
    :cond_4
    :goto_1
    move-object p1, v3

    .line 167
    :goto_2
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v1, "key_service_id"

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    new-instance v2, Landroid/content/Intent;

    .line 194
    .line 195
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/view/ContextThemeWrapper;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    const-class v4, Lorg/schabi/newpipe/MainActivity;

    .line 200
    .line 201
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .line 203
    .line 204
    const/high16 v3, 0x10000000

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/view/ContextThemeWrapper;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Landroid/content/Intent;

    .line 217
    .line 218
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    const-string v0, "key_search_string"

    .line 225
    .line 226
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    .line 228
    .line 229
    const-string p1, "key_open_search"

    .line 230
    .line 231
    const/4 v0, 0x1

    .line 232
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 239
    .line 240
    .line 241
    :cond_5
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity;->dismissListener:Lorg/schabi/newpipe/RouterActivity$1;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Cloneable;

    .line 23
    .line 24
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_0
    iget-object v3, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Cloneable;

    .line 28
    .line 29
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v3, :cond_1

    .line 37
    .line 38
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Cloneable;

    .line 39
    .line 40
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 47
    .line 48
    iget-object v5, v5, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->callback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 49
    .line 50
    if-ne v5, v1, :cond_0

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Ljava/lang/Cloneable;

    .line 53
    .line 54
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    monitor-exit v2

    .line 66
    goto :goto_3

    .line 67
    :goto_2
    monitor-exit v2

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_3
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 70
    .line 71
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    array-length p2, p3

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-ge v0, p2, :cond_1

    .line 7
    .line 8
    aget v1, p3, v0

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/16 p2, 0x30a

    .line 21
    .line 22
    if-ne p1, p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->openDownloadDialog$1()V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v2, p0, v0, v3}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-direct {v3, p0, v0, v4}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 59
    .line 60
    invoke-direct {v0, v2, v3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->alertDialogChoice:Landroidx/appcompat/app/AlertDialog;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final openDownloadDialog$1()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getPersistFragment()Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/schabi/newpipe/RouterActivity;->currentServiceId:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->inFlight(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/schabi/newpipe/download/LoadingDialog;

    .line 14
    .line 15
    invoke-direct {v3}, Lorg/schabi/newpipe/download/LoadingDialog;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "loadingDialog"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 28
    .line 29
    invoke-static {v1, p0, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v5, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-direct {v6, v1, v5, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;-><init>(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Scheduler;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 55
    .line 56
    invoke-direct {v5, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    new-array v1, v1, [Lio/reactivex/rxjava3/core/SingleSource;

    .line 61
    .line 62
    aput-object v6, v1, v7

    .line 63
    .line 64
    aput-object v5, v1, v2

    .line 65
    .line 66
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 67
    .line 68
    invoke-direct {v5, v1, v7}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v1, v0, v3, v2}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;

    .line 77
    .line 78
    invoke-direct {v6, v0, v3, p0, v2}, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda1;-><init>(Landroid/content/ComponentCallbacks;Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 82
    .line 83
    invoke-direct {p0, v1, v6}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, p0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final showUnsupportedUrlDialog(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->getThemeWrapperContext()Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f130515

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f130516

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f080152

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 26
    .line 27
    iput v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 28
    .line 29
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v0, p0, p1, v2}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const v3, 0x7f13039a

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v1, p0, p1, v3}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const p1, 0x7f13046f

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const v0, 0x7f130076

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;

    .line 63
    .line 64
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 68
    .line 69
    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
