.class public final Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final itemBinding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 2
    .line 3
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->itemBinding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 5
    .line 6
    iget-object v0, p1, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->savedReadingListPages:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "savedReadingListPages"

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 14
    .line 15
    const-string v4, "readingListPage"

    .line 16
    .line 17
    if-eqz v3, :cond_5

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->savedReadingListPages:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_2
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->updateState()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public final updateState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->itemBinding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/CheckBox;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 8
    .line 9
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->savedReadingListPages:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->validateTitleAndList()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "readingListPage"

    .line 30
    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v3

    .line 35
    :cond_1
    const-string p0, "savedReadingListPages"

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method
