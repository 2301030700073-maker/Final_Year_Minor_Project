.class public final Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public activeMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

.field public fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

.field public messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

.field public showAccountIndicator:Z

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->showAccountIndicator:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getMessageViewFragment()Lcom/fsck/k9/ui/messageview/MessageViewFragment;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lt v0, v1, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4, v1}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    iget-wide v0, v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, "f"

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    .line 74
    .line 75
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_2
    const-string p0, "messageReference"

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2

    .line 85
    :cond_3
    const-string p0, "adapter"

    .line 86
    .line 87
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :cond_4
    const-string p0, "Check failed."

    .line 92
    .line 93
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v2
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    check-cast p1, Lcom/fsck/k9/activity/MessageHomeActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 13
    .line 14
    const-string p1, "This fragment must be attached to a MessageViewContainerListener"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "reference"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string p0, "Missing argument reference"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const-string v0, "messageReference"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/math/MathKt;->parse(Ljava/lang/String;)Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    :goto_1
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const-string v0, "showAccountIndicator"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->showAccountIndicator:Z

    .line 57
    .line 58
    :goto_2
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->showAccountIndicator:Z

    .line 59
    .line 60
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 61
    .line 62
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;-><init>(Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;Z)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    const-string p0, "Missing state messageReference"

    .line 69
    .line 70
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c02df

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const v0, 0x7f0703c1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    const v0, 0x7f0902b6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 47
    .line 48
    const-string/jumbo v2, "viewPager"

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    const/4 v4, -0x1

    .line 55
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    new-instance v4, Lnet/openid/appauth/internal/Logger;

    .line 63
    .line 64
    invoke-direct {v4, p1}, Lnet/openid/appauth/internal/Logger;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    new-instance v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    invoke-direct {v0, v4, p0}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 81
    .line 82
    iget-object p1, p1, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    move-object p1, v3

    .line 105
    :goto_0
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 108
    .line 109
    if-eqz p0, :cond_1

    .line 110
    .line 111
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 112
    .line 113
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragmentKt$reduceHorizontalDragSensitivity$itemTouchHelper$1;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragmentKt$reduceHorizontalDragSensitivity$itemTouchHelper$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    .line 123
    .line 124
    return-object p2

    .line 125
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v3

    .line 129
    :cond_2
    return-object p2

    .line 130
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v3

    .line 134
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v3

    .line 138
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v3

    .line 142
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v3
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 2
    .line 3
    const-string v0, "messageReference"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public final setActiveMessage(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->adapter:Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment$MessageViewContainerAdapter;->messageList:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messagelist/MessageListItem;->getMessageReference()Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v1

    .line 22
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->activeMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lapp/k9mail/legacy/message/controller/MessageReference;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :goto_1
    return-void

    .line 34
    :cond_2
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->activeMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewContainerFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 39
    .line 40
    if-eqz p0, :cond_4

    .line 41
    .line 42
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageHomeActivity;->messageListFragment:Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    invoke-interface {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentBridgeContract;->setActiveMessage(Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const-string p0, "Required value was null."

    .line 51
    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    const-string p0, "fragmentListener"

    .line 57
    .line 58
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_5
    const-string p0, "adapter"

    .line 63
    .line 64
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method
