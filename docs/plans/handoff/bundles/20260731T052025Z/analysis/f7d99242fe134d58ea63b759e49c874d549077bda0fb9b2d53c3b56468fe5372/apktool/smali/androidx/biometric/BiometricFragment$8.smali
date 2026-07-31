.class public final Landroidx/biometric/BiometricFragment$8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/biometric/BiometricFragment;

.field public final synthetic val$errorString:Ljava/lang/CharSequence;

.field public final synthetic val$knownErrorCode:I


# direct methods
.method public synthetic constructor <init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/biometric/BiometricFragment$8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/biometric/BiometricFragment$8;->this$0:Landroidx/biometric/BiometricFragment;

    .line 4
    .line 5
    iput p2, p0, Landroidx/biometric/BiometricFragment$8;->val$knownErrorCode:I

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/biometric/BiometricFragment$8;->val$errorString:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/biometric/BiometricFragment$8;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/biometric/BiometricFragment$8;->val$errorString:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v2, p0, Landroidx/biometric/BiometricFragment$8;->val$knownErrorCode:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/biometric/BiometricFragment$8;->this$0:Landroidx/biometric/BiometricFragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/biometric/BiometricViewModel$1;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->mClientCallback:Landroidx/compose/ui/unit/IntRectKt;

    .line 26
    .line 27
    invoke-virtual {p0, v2, v1}, Landroidx/compose/ui/unit/IntRectKt;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Landroidx/biometric/BiometricFragment;->sendErrorAndDismiss(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
