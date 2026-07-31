.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/views/TextInputDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/TextInputDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/TextInputDialog;

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
    .locals 11

    .line 1
    iget p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/views/TextInputDialog;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 17
    .line 18
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    const-string p2, "publish_cancel"

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->showEditPreview()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/views/TextInputDialog;->callback:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lokio/internal/DefaultSocket;

    .line 34
    .line 35
    if-eqz p1, :cond_5

    .line 36
    .line 37
    iget-object p0, p0, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lokio/internal/DefaultSocket;

    .line 40
    .line 41
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p2, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 60
    .line 61
    iget-object v1, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Lorg/wikipedia/views/TextInputDialog;

    .line 64
    .line 65
    iget-object v1, v1, Lorg/wikipedia/views/TextInputDialog;->binding:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lokio/internal/DefaultSocket;

    .line 68
    .line 69
    iget-object v2, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Landroid/widget/RadioButton;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel;->saveTemplate(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Landroid/widget/RadioButton;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 102
    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v3, p0, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v2, v3, p1, p2, p0}, Lorg/wikipedia/talk/TalkReplyViewModel;->updateTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/talk/db/TalkTemplate;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    sget-object p0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->showEditPreview()V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    iget-object p0, v1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, Landroid/widget/RadioButton;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_4

    .line 133
    .line 134
    const-string p0, "new"

    .line 135
    .line 136
    :goto_1
    move-object v4, p0

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    const-string/jumbo p0, "updated"

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :goto_2
    const/4 v9, 0x0

    .line 143
    const/16 v10, 0x3f7

    .line 144
    .line 145
    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    const/4 v3, 0x0

    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v8, 0x0

    .line 152
    invoke-static/range {v1 .. v10}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 157
    .line 158
    const-string p1, "save_message_success"

    .line 159
    .line 160
    invoke-virtual {v0, p1, p0}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    return-void

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
