.class public final Lorg/wikipedia/views/TextInputDialog;
.super Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public binding:Ljava/lang/Object;

.field public callback:Ljava/lang/Object;

.field public dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/views/TextInputDialog;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create()Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/views/TextInputDialog;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 11
    .line 12
    new-instance v1, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lokio/internal/DefaultSocket;

    .line 24
    .line 25
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 28
    .line 29
    iget-object v1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lokio/internal/DefaultSocket;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_0
    invoke-super {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 55
    .line 56
    new-instance v1, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setPositiveButtonEnabled$1(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
