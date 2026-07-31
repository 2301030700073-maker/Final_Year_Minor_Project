.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static newInstance(J)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lkotlin/Pair;

    .line 11
    .line 12
    const-string v1, "KEY_GROUP_ID"

    .line 13
    .line 14
    invoke-direct {p1, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    new-array p0, p0, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object p1, p0, v1

    .line 22
    .line 23
    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
