.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$1:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;


# direct methods
.method public synthetic constructor <init>(ILandroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/databinding/ActivityTalkReplyBinding;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->f$1:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

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
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x82

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->f$1:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;->f$0:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    iget-object p0, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 19
    .line 20
    check-cast p0, Landroid/widget/ScrollView;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    iget-object p0, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 33
    .line 34
    check-cast p0, Landroid/widget/ScrollView;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
