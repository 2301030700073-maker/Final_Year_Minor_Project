.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(ILandroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/databinding/ActivityTalkReplyBinding;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-wide/16 v0, 0xc8

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/ScrollView;

    .line 17
    .line 18
    new-instance p2, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {p2, v3, v2, p0}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;-><init>(ILandroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/databinding/ActivityTalkReplyBinding;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 31
    .line 32
    check-cast p1, Landroid/widget/ScrollView;

    .line 33
    .line 34
    new-instance p2, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {p2, v3, v2, p0}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda9;-><init>(ILandroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/databinding/ActivityTalkReplyBinding;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
