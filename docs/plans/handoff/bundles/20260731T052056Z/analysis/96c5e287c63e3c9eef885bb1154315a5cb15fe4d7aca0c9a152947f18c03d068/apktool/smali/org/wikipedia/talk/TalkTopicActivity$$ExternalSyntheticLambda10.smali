.class public final synthetic Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->f$1:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/views/LanguageScrollView;

    .line 12
    .line 13
    sget v0, Lorg/wikipedia/views/LanguageScrollView;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView;->binding:Lokhttp3/ConnectionPool;

    .line 22
    .line 23
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    if-eq v2, v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->getViewModel()Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v1, v1, Lorg/wikipedia/feed/onthisday/OnThisDayViewModel;->year:I

    .line 53
    .line 54
    if-eq v1, v0, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 62
    .line 63
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_1
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 70
    .line 71
    sget v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->$r8$clinit:I

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 87
    .line 88
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :pswitch_2
    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v1, v0

    .line 103
    check-cast v1, Landroid/view/View;

    .line 104
    .line 105
    :cond_3
    if-eqz v1, :cond_4

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling$1(Landroid/view/View;IZ)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void

    .line 112
    :pswitch_3
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 113
    .line 114
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButton;->setIconSize(I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_4
    check-cast p0, Landroidx/core/content/res/CamUtils;

    .line 121
    .line 122
    invoke-virtual {p0, v2}, Landroidx/core/content/res/CamUtils;->onFontRetrievalFailed(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_5
    check-cast p0, Ljava/util/function/IntConsumer;

    .line 127
    .line 128
    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_6
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 133
    .line 134
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    new-instance v3, Lorg/wikipedia/views/ViewUtil$jumpToPositionWithoutAnimation$1;

    .line 155
    .line 156
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/views/ViewUtil$jumpToPositionWithoutAnimation$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 163
    .line 164
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    const-string p0, "binding"

    .line 169
    .line 170
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_6
    :goto_0
    return-void

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
