.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;
.super Landroid/app/Dialog;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onBackPressed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
