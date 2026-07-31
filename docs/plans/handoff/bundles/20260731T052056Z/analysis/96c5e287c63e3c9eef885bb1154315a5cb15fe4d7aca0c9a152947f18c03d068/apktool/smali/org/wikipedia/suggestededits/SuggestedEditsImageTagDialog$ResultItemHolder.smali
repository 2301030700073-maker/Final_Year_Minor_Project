.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/suggestededits/ImageTag;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$ResultItemHolder;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->tagList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lorg/wikipedia/suggestededits/ImageTag;

    .line 39
    .line 40
    iget-object v5, v3, Lorg/wikipedia/suggestededits/ImageTag;->wikidataId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v6, p1, Lorg/wikipedia/suggestededits/ImageTag;->wikidataId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    iput-boolean v4, v3, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iput-boolean v4, p1, Lorg/wikipedia/suggestededits/ImageTag;->isSelected:Z

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
