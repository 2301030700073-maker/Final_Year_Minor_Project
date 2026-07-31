.class public final Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public loader:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

.field public notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public streamsNotificationsPreference:Landroidx/preference/SwitchPreference;


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


# virtual methods
.method public final onCreatePreferences()V
    .locals 3

    .line 1
    const v0, 0x7f16000c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f130144

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->streamsNotificationsPreference:Landroidx/preference/SwitchPreference;

    .line 17
    .line 18
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x21

    .line 37
    .line 38
    if-lt v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->streamsNotificationsPreference:Landroidx/preference/SwitchPreference;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroidx/preference/PreferenceScreen;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 20
    .line 21
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNotificationsEnabledOnDevice(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    if-lt v1, v2, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->streamsNotificationsPreference:Landroidx/preference/SwitchPreference;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 35
    .line 36
    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroidx/preference/PreferenceScreen;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    sget-object v3, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const v4, 0x7f130395

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, -0x2

    .line 67
    invoke-static {v0, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 77
    .line 78
    const v5, 0x7f130458

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v0, v4, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const/16 v4, -0x100

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;

    .line 106
    .line 107
    invoke-direct {v3, p0}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$1$2;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 111
    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    new-instance v4, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 120
    .line 121
    :cond_2
    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->notificationWarningSnackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 130
    .line 131
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 132
    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/AppDatabase;->subscriptionDAO()Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v4, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;

    .line 154
    .line 155
    invoke-direct {v4, v0}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll()Lio/reactivex/rxjava3/core/Flowable;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v0, v3}, Lio/reactivex/rxjava3/core/Flowable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    new-instance v3, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;

    .line 171
    .line 172
    invoke-direct {v3, p0, v1}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;I)V

    .line 173
    .line 174
    .line 175
    new-instance v1, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;

    .line 176
    .line 177
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment$onResume$2;-><init>(Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;I)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 181
    .line 182
    invoke-direct {v2, v3, v1}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 186
    .line 187
    .line 188
    iput-object v2, p0, Lorg/schabi/newpipe/settings/NotificationsSettingsFragment;->loader:Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 189
    .line 190
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const v0, 0x7f1304d2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 20
    .line 21
    const v0, 0x7f1304d6

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const v0, 0x7f130144

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    sget-object p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    sget-object p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object p0, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-static {p1, p0, p2}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->cancel(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void

    .line 87
    :cond_4
    :goto_1
    sget-object p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;

    .line 88
    .line 89
    sget-object p2, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;->Companion:Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions$Companion;->from(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x1

    .line 102
    invoke-static {p1, p2, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationWorker$Companion;->schedule(Landroid/content/Context;Lorg/schabi/newpipe/local/feed/notifications/ScheduleOptions;Z)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
