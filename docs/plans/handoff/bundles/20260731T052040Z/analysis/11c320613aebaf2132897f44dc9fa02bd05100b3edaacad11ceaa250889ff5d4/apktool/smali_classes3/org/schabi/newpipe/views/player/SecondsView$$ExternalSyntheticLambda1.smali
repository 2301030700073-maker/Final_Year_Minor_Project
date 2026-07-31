.class public final synthetic Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/views/player/SecondsView;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/views/player/SecondsView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    sub-float/2addr v1, p1

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_2
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 44
    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    iget-object v3, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    sub-float/2addr v1, v3

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :pswitch_3
    iget-object p0, p0, Lorg/schabi/newpipe/views/player/SecondsView;->binding:Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;

    .line 64
    .line 65
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 66
    .line 67
    sub-float/2addr v1, p1

    .line 68
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
