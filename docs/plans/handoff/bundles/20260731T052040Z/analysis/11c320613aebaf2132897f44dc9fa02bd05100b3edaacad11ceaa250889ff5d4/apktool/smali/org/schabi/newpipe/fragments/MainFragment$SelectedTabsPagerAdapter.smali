.class public final Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final context:Landroid/content/Context;

.field public final internalTabsList:Ljava/util/ArrayList;

.field public final localPlaylistFragments:Ljava/util/ArrayList;

.field public final mBehavior:I

.field public mCurTransaction:Landroidx/fragment/app/BackStackRecord;

.field public mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field public mExecutingFinishUpdate:Z

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final mFragments:Ljava/util/ArrayList;

.field public final mSavedState:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mBehavior:I

    .line 27
    .line 28
    new-instance p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->context:Landroid/content/Context;

    .line 36
    .line 37
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/ArrayList;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final destroyItem(ILjava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 18
    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-gt v2, p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v1, v3

    .line 44
    :goto_1
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final finishUpdate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mExecutingFinishUpdate:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mExecutingFinishUpdate:Z

    .line 12
    .line 13
    iget-boolean v3, v0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iput-boolean v2, v0, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mExecutingFinishUpdate:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "This transaction is already being added to the back stack"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mExecutingFinishUpdate:Z

    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public final instantiateItem(Landroidx/viewpager/widget/ViewPager;I)Landroidx/fragment/app/Fragment;
    .locals 11

    .line 1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le v0, p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 28
    .line 29
    invoke-direct {v2, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->internalTabsList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    :try_start_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/settings/tabs/Tab;->getFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    move-object v2, v0

    .line 49
    check-cast v2, Lorg/schabi/newpipe/BaseFragment;

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage(Z)V

    .line 52
    .line 53
    .line 54
    instance-of v2, v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->localPlaylistFragments:Ljava/util/ArrayList;

    .line 59
    .line 60
    move-object v4, v0

    .line 61
    check-cast v4, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v6, v0

    .line 69
    new-instance v0, Lorg/schabi/newpipe/fragments/BlankFragment;

    .line 70
    .line 71
    new-instance v5, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v7, "Tab "

    .line 76
    .line 77
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v7, ":"

    .line 92
    .line 93
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v7, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    const/4 v9, 0x0

    .line 110
    const/16 v10, 0x18

    .line 111
    .line 112
    sget-object v7, Lorg/schabi/newpipe/error/UserAction;->GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

    .line 113
    .line 114
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-le v4, p2, :cond_3

    .line 127
    .line 128
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    .line 133
    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    const/4 v4, 0x0

    .line 144
    if-gt v2, p2, :cond_4

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 152
    .line 153
    .line 154
    iget v5, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mBehavior:I

    .line 155
    .line 156
    if-nez v5, :cond_5

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p2, p1, v0, v4, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    if-ne v5, v3, :cond_6

    .line 174
    .line 175
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 176
    .line 177
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 178
    .line 179
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    check-cast p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    .line 7
    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v0, 0x22

    .line 11
    .line 12
    const-string/jumbo v1, "states"

    .line 13
    .line 14
    .line 15
    if-lt p2, v0, :cond_0

    .line 16
    .line 17
    const-class p2, Landroidx/fragment/app/Fragment$SavedState;

    .line 18
    .line 19
    invoke-static {p1, v1, p2}, Lorg/schabi/newpipe/util/ZipHelper;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    const-string v2, "f"

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const/4 v5, 0x0

    .line 90
    if-nez v4, :cond_3

    .line 91
    .line 92
    move-object v6, v5

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    iget-object v6, v3, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_6

    .line 101
    .line 102
    :goto_2
    if-eqz v6, :cond_5

    .line 103
    .line 104
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-gt v3, v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    const-string v3, "selected_fragment"

    .line 115
    .line 116
    const-string v4, ""

    .line 117
    .line 118
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {v6, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const-string v2, "Bad fragment at key "

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v2, "FragmentStatePagerAdapt"

    .line 140
    .line 141
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 146
    .line 147
    const-string p1, "Fragment no longer exists for key "

    .line 148
    .line 149
    const-string p2, ": unique id "

    .line 150
    .line 151
    invoke-static {p1, v0, p2, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, p0}, Landroidx/fragment/app/FragmentManager;->throwException(Ljava/lang/IllegalStateException;)V

    .line 159
    .line 160
    .line 161
    throw v5

    .line 162
    :cond_7
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "states"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v0, v3, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v3, "f"

    .line 53
    .line 54
    invoke-static {v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 59
    .line 60
    invoke-virtual {v4, v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    if-ne v2, v4, :cond_2

    .line 66
    .line 67
    const-string v2, "selected_fragment"

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    return-object v1
.end method

.method public final setPrimaryItem(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    if-eq p1, v0, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    iget v2, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mBehavior:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 16
    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 35
    .line 36
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 39
    .line 40
    invoke-virtual {v0, v4, v5}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 50
    .line 51
    .line 52
    if-ne v2, v3, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    .line 69
    .line 70
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 71
    .line 72
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/MainFragment$SelectedTabsPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 80
    .line 81
    :cond_5
    return-void
.end method

.method public final startUpdate(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p1, "ViewPager with adapter "

    .line 10
    .line 11
    const-string v0, " requires a view id"

    .line 12
    .line 13
    invoke-static {p0, v0, p1}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
