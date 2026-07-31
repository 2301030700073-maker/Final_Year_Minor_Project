.class public final Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public cancelable:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->$r8$classId:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/Style$Builder;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lorg/maplibre/android/maps/Style$Builder;

    .line 9
    .line 10
    iget-boolean p0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Landroid/graphics/PointF;

    .line 15
    .line 16
    iget-object v0, v1, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/maplibre/android/maps/UiSettings;

    .line 19
    .line 20
    iget-object v0, v0, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView$2;->getWidth()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v0, v2

    .line 29
    iget-object v3, v1, Lorg/maplibre/android/maps/Style$Builder;->layers:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lorg/maplibre/android/maps/UiSettings;

    .line 32
    .line 33
    iget-object v3, v3, Lorg/maplibre/android/maps/UiSettings;->projection:Lorg/maplibre/android/maps/MapView$2;

    .line 34
    .line 35
    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapView$2;->getHeight()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    div-float/2addr v3, v2

    .line 40
    invoke-direct {p0, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lorg/maplibre/android/maps/Style$Builder;->images:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v0, v3, p0, v2}, Lorg/maplibre/android/maps/MapGestureDetector;->zoomAnimated(ZLandroid/graphics/PointF;Z)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    iput-object p0, v1, Lorg/maplibre/android/maps/Style$Builder;->styleUri:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_0
    check-cast v1, Lokio/internal/DefaultSocket;

    .line 57
    .line 58
    iget-object v0, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Lorg/wikipedia/activity/BaseActivity;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Lcoil3/ImageLoader$Builder;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->getFragments()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    instance-of v3, v2, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 101
    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 123
    .line 124
    iget-boolean v2, p0, Lorg/wikipedia/captcha/HCaptchaHelper$MakeHCaptchaDialogCancelable;->cancelable:Z

    .line 125
    .line 126
    iput-boolean v2, v1, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 127
    .line 128
    iget-object v1, v1, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 129
    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
