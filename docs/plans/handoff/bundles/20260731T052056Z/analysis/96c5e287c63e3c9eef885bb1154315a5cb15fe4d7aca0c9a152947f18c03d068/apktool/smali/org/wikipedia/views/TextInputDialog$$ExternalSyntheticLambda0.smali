.class public final synthetic Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .line 1
    iget p1, p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/views/TextInputDialog;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 27
    .line 28
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/widget/RadioButton;

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lokio/internal/DefaultSocket;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lokio/internal/DefaultSocket;

    .line 59
    .line 60
    iget-object v1, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    .line 64
    iget-object v2, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lorg/wikipedia/views/PlainPasteEditText;

    .line 67
    .line 68
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const v4, 0x7f120784

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 91
    .line 92
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const v3, 0x7f12076f

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 116
    .line 117
    .line 118
    iget-object p0, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Ljava/lang/String;

    .line 121
    .line 122
    if-nez p0, :cond_2

    .line 123
    .line 124
    const-string p0, ""

    .line 125
    .line 126
    :cond_2
    iget-object p1, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
