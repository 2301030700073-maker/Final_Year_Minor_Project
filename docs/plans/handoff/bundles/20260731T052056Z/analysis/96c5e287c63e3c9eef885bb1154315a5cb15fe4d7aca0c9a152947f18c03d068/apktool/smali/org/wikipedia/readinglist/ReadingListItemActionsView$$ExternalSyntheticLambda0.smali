.class public final synthetic Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListItemActionsView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

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
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 32
    .line 33
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onDeleteItem(J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 61
    .line 62
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onSelectItem(J)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 67
    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 71
    .line 72
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 90
    .line 91
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onMoveItemToOther(J)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :pswitch_2
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 96
    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 100
    .line 101
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 119
    .line 120
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onAddItemToOther(J)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void

    .line 124
    :pswitch_3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 125
    .line 126
    if-eqz p0, :cond_4

    .line 127
    .line 128
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 129
    .line 130
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_4

    .line 146
    .line 147
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 148
    .line 149
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onShareItem(J)V

    .line 150
    .line 151
    .line 152
    :cond_4
    return-void

    .line 153
    :pswitch_4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->callback:Lorg/wikipedia/readinglist/ReadingListItemActionsView$Callback;

    .line 154
    .line 155
    if-eqz p0, :cond_5

    .line 156
    .line 157
    check-cast p0, Lorg/wikipedia/media/AvPlayer;

    .line 158
    .line 159
    iget-object p0, p0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 167
    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->callback()Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-eqz p0, :cond_5

    .line 175
    .line 176
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 177
    .line 178
    invoke-interface {p0, v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;->onToggleItemOffline(J)V

    .line 179
    .line 180
    .line 181
    :cond_5
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
