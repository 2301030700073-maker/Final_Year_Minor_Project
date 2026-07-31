.class public final Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;->this$0:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;->this$0:Landroid/app/Activity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {p0}, Lokhttp3/Headers$Companion;->maybeShowTempAccountWelcome(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/Headers$Companion;->maybeShowTempAccountWelcome(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :pswitch_1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 35
    .line 36
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/Headers$Companion;->maybeShowTempAccountWelcome(Landroid/app/Activity;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :pswitch_2
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 49
    .line 50
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    invoke-static {p0}, Lokhttp3/Headers$Companion;->maybeShowTempAccountWelcome(Landroid/app/Activity;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
