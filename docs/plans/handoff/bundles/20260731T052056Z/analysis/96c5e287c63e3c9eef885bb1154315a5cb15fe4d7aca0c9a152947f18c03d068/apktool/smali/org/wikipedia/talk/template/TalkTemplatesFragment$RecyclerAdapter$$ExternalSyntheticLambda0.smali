.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/Fragment;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "itemTouchHelper"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 16
    .line 17
    check-cast v5, Lorg/wikipedia/views/DefaultViewHolder;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-eq p2, v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return v3

    .line 40
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :pswitch_0
    check-cast p0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 45
    .line 46
    check-cast v5, Lorg/wikipedia/views/DefaultViewHolder;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    if-eq p2, v4, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 62
    .line 63
    if-eqz p0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return v3

    .line 69
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 74
    .line 75
    check-cast v5, Lorg/wikipedia/talk/template/TalkTemplatesFragment$TalkTemplatesItemViewHolder;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_7

    .line 82
    .line 83
    if-eq p2, v4, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 91
    .line 92
    if-eqz p0, :cond_8

    .line 93
    .line 94
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    return v3

    .line 98
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
