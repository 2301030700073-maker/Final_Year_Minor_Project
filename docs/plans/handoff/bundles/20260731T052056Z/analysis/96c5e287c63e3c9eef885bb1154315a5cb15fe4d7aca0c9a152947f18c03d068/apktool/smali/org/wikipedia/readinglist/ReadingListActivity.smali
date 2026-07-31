.class public final Lorg/wikipedia/readinglist/ReadingListActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/activity/BaseActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/activity/BaseActivity$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/ReadingListActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/readinglist/ReadingListFragment;",
        "Lorg/wikipedia/activity/BaseActivity$Callback;",
        "<init>",
        "()V",
        "org/jsoup/nodes/NodeUtils",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 7
    .line 8
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "readingListMode"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListMode;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 16
    .line 17
    :cond_0
    iput-object v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 18
    .line 19
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "invokeSource"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v5, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 43
    .line 44
    invoke-direct {v5}, Lorg/wikipedia/readinglist/ReadingListFragment;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lkotlin/Pair;

    .line 48
    .line 49
    invoke-direct {v6, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Lkotlin/Pair;

    .line 53
    .line 54
    invoke-direct {p0, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [Lkotlin/Pair;

    .line 59
    .line 60
    aput-object v6, v0, v4

    .line 61
    .line 62
    aput-object p0, v0, v3

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v5, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-object v5

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    const-string v2, "readingListId"

    .line 79
    .line 80
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    new-instance p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 85
    .line 86
    invoke-direct {p0}, Lorg/wikipedia/readinglist/ReadingListFragment;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lkotlin/Pair;

    .line 94
    .line 95
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-array v0, v3, [Lkotlin/Pair;

    .line 99
    .line 100
    aput-object v1, v0, v4

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "readingListTitle"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object v0, v1, p1

    .line 22
    .line 23
    const p1, 0x7f120751

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 38
    .line 39
    invoke-virtual {p1, v0, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 40
    .line 41
    .line 42
    iput-object p0, p0, Lorg/wikipedia/activity/BaseActivity;->callback:Lorg/wikipedia/activity/BaseActivity$Callback;

    .line 43
    .line 44
    return-void
.end method

.method public final onPermissionResult(Lorg/wikipedia/activity/BaseActivity;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/activity/SingleFragmentActivity;->getFragment()Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 24
    .line 25
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
