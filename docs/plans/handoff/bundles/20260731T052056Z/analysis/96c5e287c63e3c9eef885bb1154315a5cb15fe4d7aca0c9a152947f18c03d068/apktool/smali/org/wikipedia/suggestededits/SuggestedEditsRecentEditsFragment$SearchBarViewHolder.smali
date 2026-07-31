.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterCount:Landroid/widget/TextView;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 4
    .line 5
    iget-object v1, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->rootView:Lorg/wikipedia/views/WikiCardView;

    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$SearchBarViewHolder;->binding:Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;

    .line 11
    .line 12
    const/16 p0, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const v3, 0x7f040520

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const v3, 0x7f04051a

    .line 34
    .line 35
    .line 36
    :goto_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move p0, v2

    .line 39
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$Companion;->filtersCount()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p2, Lorg/wikipedia/databinding/ViewWatchlistSearchBarBinding;->filterButton:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, v3}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
