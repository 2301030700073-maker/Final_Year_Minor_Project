.class public final synthetic Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/login/ResetPasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/login/ResetPasswordActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/login/ResetPasswordActivity;

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
    .locals 0

    .line 1
    iget p1, p0, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/login/ResetPasswordActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/login/ResetPasswordActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/login/ResetPasswordActivity;->validateThenLogin$1()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/login/ResetPasswordActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "binding"

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    throw p0

    .line 35
    :pswitch_1
    sget p1, Lorg/wikipedia/login/ResetPasswordActivity;->$r8$clinit:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
