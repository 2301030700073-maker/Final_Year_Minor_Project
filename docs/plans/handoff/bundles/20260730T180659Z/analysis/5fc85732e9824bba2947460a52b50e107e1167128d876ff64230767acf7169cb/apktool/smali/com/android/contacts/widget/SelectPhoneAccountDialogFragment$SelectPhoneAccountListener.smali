.class public Lcom/android/contacts/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.super Landroid/os/ResultReceiver;
.source "SelectPhoneAccountDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 0

    return-void
.end method

.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "extra_selected_account_handle"

    .line 130
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    const-string v0, "extra_set_default"

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onDialogDismissed()V

    :cond_1
    :goto_0
    return-void
.end method
