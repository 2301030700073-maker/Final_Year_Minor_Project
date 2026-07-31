.class public final Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_0
    new-instance p0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    new-instance p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    new-instance p0, Lorg/schabi/newpipe/fragments/BlankFragment;

    .line 25
    .line 26
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_3
    new-instance p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p0, 0x7f08015e

    .line 7
    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f080116

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    :pswitch_1
    const p0, 0x7f0800ea

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_2
    const p0, 0x7f080102

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_3
    const p0, 0x7f080158

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTabId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x4

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x2

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p0, 0x7f1304ed

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    const p0, 0x7f1304f8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    const p0, 0x7f1304e9

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_2
    const-string p0, "NewPipe"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_3
    const p0, 0x7f1301f2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
