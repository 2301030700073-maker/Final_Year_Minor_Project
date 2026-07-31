.class public final synthetic Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/onboarding/OnboardingFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/onboarding/OnboardingFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/onboarding/OnboardingFragment;

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
    iget p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/onboarding/OnboardingFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;->onSkip()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;->onComplete()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->atLastPage()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_5

    .line 45
    .line 46
    invoke-interface {p0}, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;->onComplete()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v0, 0x1

    .line 64
    add-int/2addr p1, v0

    .line 65
    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    sub-int/2addr v1, v0

    .line 86
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 94
    .line 95
    if-le p1, v1, :cond_4

    .line 96
    .line 97
    move p1, v1

    .line 98
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_0
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
