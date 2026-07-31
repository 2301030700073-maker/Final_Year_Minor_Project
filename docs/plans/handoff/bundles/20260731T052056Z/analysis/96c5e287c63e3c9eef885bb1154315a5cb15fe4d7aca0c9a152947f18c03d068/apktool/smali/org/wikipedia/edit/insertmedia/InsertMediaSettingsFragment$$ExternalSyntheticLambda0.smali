.class public final synthetic Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "android.speech.extra.RESULTS"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->currentVoiceInputParentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 34
    .line 35
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->currentVoiceInputParentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    .line 65
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "view_help"

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->openInCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
