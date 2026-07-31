.class public final synthetic Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/views/player/SecondsView;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    return-object v3

    .line 31
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->secondAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    .line 35
    .line 36
    return-object v3

    .line 37
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->firstAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 40
    .line 41
    .line 42
    return-object v3

    .line 43
    :pswitch_2
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 44
    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    return-object v3

    .line 61
    :pswitch_3
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fifthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    .line 65
    .line 66
    return-object v3

    .line 67
    :pswitch_4
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 68
    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :pswitch_5
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->fourthAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :pswitch_6
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 92
    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 106
    .line 107
    .line 108
    return-object v3

    .line 109
    :pswitch_7
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->thirdAnimator:Lorg/schabi/newpipe/views/player/SecondsView$CustomValueAnimator;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 112
    .line 113
    .line 114
    return-object v3

    .line 115
    :pswitch_8
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 116
    .line 117
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 128
    .line 129
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
