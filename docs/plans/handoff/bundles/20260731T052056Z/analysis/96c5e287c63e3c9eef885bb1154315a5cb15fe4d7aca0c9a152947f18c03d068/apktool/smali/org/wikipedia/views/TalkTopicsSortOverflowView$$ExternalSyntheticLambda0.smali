.class public final synthetic Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/views/TalkTopicsSortOverflowView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/TalkTopicsSortOverflowView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/TalkTopicsSortOverflowView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/TalkTopicsSortOverflowView;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->currentSortMode:I

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    if-ne p1, v2, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    :cond_1
    iget-object p0, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->callback:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    :cond_2
    invoke-virtual {p0, v2}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->sortByClicked(I)V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void

    .line 37
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 45
    .line 46
    :cond_4
    iget p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->currentSortMode:I

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    if-ne p1, v2, :cond_5

    .line 50
    .line 51
    move v0, v1

    .line 52
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->callback:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    if-eqz p0, :cond_7

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    :cond_6
    invoke-virtual {p0, v2}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->sortByClicked(I)V

    .line 60
    .line 61
    .line 62
    :cond_7
    return-void

    .line 63
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 71
    .line 72
    :cond_8
    iget p1, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->currentSortMode:I

    .line 73
    .line 74
    if-ne p1, v1, :cond_9

    .line 75
    .line 76
    move v0, v1

    .line 77
    :cond_9
    iget-object p0, p0, Lorg/wikipedia/views/TalkTopicsSortOverflowView;->callback:Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    if-eqz p0, :cond_a

    .line 80
    .line 81
    xor-int/lit8 p1, v0, 0x1

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;->sortByClicked(I)V

    .line 84
    .line 85
    .line 86
    :cond_a
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
