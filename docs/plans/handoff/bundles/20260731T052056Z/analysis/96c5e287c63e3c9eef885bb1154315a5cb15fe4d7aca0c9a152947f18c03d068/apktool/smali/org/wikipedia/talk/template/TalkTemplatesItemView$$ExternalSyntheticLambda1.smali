.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesItemView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->callback:Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 9
    .line 10
    iget-object v1, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->setMultiSelectEnabled$1(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda1;->f$1:I

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->toggleSelectedItem(Lorg/wikipedia/talk/db/TalkTemplate;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->adapter:Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 62
    .line 63
    .line 64
    return v0

    .line 65
    :cond_2
    const-string p0, "adapter"

    .line 66
    .line 67
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_0
    return v0
.end method
