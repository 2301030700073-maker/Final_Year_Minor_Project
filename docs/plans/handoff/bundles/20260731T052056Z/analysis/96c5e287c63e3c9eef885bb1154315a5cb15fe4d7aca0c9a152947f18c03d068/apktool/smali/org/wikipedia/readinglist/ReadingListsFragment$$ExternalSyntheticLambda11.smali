.class public final synthetic Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/database/ReadingList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

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
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

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
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeleteListUndoSnackbar(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->updateLists()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
