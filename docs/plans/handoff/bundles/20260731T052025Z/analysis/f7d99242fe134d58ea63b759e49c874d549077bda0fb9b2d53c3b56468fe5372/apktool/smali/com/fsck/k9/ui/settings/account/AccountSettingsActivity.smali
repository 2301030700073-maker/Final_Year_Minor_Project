.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

.field public accountUuid:Ljava/lang/String;

.field public final accountViewModel$delegate:Lkotlin/Lazy;

.field public fragmentAdded:Z

.field public startScreenKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountViewModel$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0c0023

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->setLayout(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f090035

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    new-instance v2, Landroidx/appcompat/widget/SearchView$9;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    invoke-direct {v2, v3, p0}, Landroidx/appcompat/widget/SearchView$9;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountViewModel$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accounts:Landroidx/lifecycle/CoroutineLiveData;

    .line 60
    .line 61
    new-instance v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v4, p0, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p0, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->observeNotNull(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "accountUuid"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v4, 0x0

    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    const-string p1, "Invalid arguments"

    .line 83
    .line 84
    new-array v0, v4, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v5, "startScreen"

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->startScreenKey:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v2, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_1

    .line 127
    .line 128
    iput-object v0, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    new-instance v5, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 135
    .line 136
    const/16 v6, 0xb

    .line 137
    .line 138
    invoke-direct {v5, p1, v0, v1, v6}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v1, v1, v5, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;

    .line 147
    .line 148
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;I)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 152
    .line 153
    const/16 v2, 0x9

    .line 154
    .line 155
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v1

    .line 166
    :cond_3
    const-string p0, "accountSpinner"

    .line 167
    .line 168
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v1

    .line 172
    :cond_4
    const-string p0, "getSupportActionBar() == null"

    .line 173
    .line 174
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-void
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
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 14
    .line 15
    .line 16
    sget p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountUuid:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object p2, p2, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, p2}, Lcom/fsck/k9/sasl/OAuthBearer;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const p2, 0x7f090034

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2, p0, p1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p0, "accountUuid"

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->accountSpinner:Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/account/AccountSelectionSpinner;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "accountSpinner"

    .line 16
    .line 17
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
.end method
