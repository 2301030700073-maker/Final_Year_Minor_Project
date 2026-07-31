.class public final synthetic Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda7;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    const/16 v3, 0xd

    .line 19
    .line 20
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->setSearchQuery$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragment;->update(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    sget v0, Lorg/wikipedia/main/MainActivity;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lorg/wikipedia/util/UriUtil;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "deleteReadingList"

    .line 47
    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
