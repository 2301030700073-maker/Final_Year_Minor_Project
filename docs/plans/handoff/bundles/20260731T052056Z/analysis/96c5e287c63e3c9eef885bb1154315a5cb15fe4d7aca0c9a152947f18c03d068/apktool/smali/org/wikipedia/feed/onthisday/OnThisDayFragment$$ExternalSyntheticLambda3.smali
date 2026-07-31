.class public final synthetic Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

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
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerGamesHubContainer:Landroid/view/View;

    .line 14
    .line 15
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->_binding:Lorg/wikipedia/databinding/ViewMainDrawerBinding;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewMainDrawerBinding;->mainDrawerTalkContainer:Landroid/view/ViewGroup;

    .line 27
    .line 28
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onDatePicked(Ljava/util/Calendar;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onCalendarClicked()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/feed/onthisday/OnThisDayFragment;->onCalendarClicked()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
