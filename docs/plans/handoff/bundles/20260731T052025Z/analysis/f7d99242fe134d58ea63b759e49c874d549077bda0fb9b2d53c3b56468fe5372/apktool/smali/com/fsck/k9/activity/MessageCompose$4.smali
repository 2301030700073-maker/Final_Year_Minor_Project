.class public final Lcom/fsck/k9/activity/MessageCompose$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageCompose;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/MessageCompose$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    const/4 v0, 0x1

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f120443

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->checkToSaveDraftAndSave()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->draftMessageId:Ljava/lang/Long;

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/fsck/k9/activity/MessageCompose;->navigateUp:Z

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->openDefaultFolder()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_3
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lcom/fsck/k9/activity/MessageCompose;->PREFIX:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fsck/k9/activity/MessageCompose;->onDiscard()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
