.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

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
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroid/widget/Spinner;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/widget/Spinner;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->onSelectPage()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    instance-of p1, p1, Landroid/graphics/drawable/Animatable;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .line 72
    .line 73
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 74
    .line 75
    .line 76
    :cond_0
    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->viewPagerListener:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-lez p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 109
    .line 110
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x1

    .line 124
    sub-int/2addr v0, v1

    .line 125
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
