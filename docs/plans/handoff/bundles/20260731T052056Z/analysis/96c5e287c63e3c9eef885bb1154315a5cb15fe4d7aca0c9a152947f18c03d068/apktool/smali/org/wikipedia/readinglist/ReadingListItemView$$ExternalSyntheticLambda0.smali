.class public final synthetic Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListItemView;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onNotification()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :pswitch_0
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onSaveToList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :pswitch_1
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void

    .line 36
    :pswitch_2
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-interface {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onShare(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void

    .line 48
    :pswitch_3
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-interface {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onChecked(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void

    .line 60
    :pswitch_4
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 61
    .line 62
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const/4 v5, 0x7

    .line 72
    const/4 v1, 0x0

    .line 73
    move-object v4, p1

    .line 74
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/readinglist/ReadingListItemView;->showOverflowMenu(ZLorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListMode;Landroid/view/View;I)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void

    .line 78
    :pswitch_5
    iget-object p0, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 79
    .line 80
    if-eqz p0, :cond_6

    .line 81
    .line 82
    iget-object p1, v1, Lorg/wikipedia/readinglist/ReadingListItemView;->callback:Lorg/wikipedia/readinglist/ReadingListItemView$Callback;

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    invoke-interface {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView$Callback;->onClick(Lorg/wikipedia/readinglist/database/ReadingList;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
