.class public final Lcom/fsck/k9/activity/MessageCompose$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageCompose;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/MessageCompose$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/MessageCompose$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$1;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageCompose;->signatureChanged:Z

    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
