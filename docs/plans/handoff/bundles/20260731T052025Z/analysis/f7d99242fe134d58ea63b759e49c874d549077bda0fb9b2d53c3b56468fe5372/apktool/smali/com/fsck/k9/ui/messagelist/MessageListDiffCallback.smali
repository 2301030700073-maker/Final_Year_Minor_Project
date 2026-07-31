.class public final Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final newMessageList:Ljava/util/List;

.field public final oldMessageList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->newMessageList:Ljava/util/List;

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->newMessageList:Ljava/util/List;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->areItemsTheSame(II)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->newMessageList:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(II)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->newMessageList:Ljava/util/List;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 17
    .line 18
    iget-wide p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 19
    .line 20
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 25
    .line 26
    iget-wide v3, p2, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 27
    .line 28
    cmp-long p0, p0, v3

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_0
    return v1

    .line 34
    :pswitch_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 39
    .line 40
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem;

    .line 45
    .line 46
    instance-of p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$InAppNotificationBannerList;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    instance-of p2, p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$InAppNotificationBannerList;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    :goto_0
    move v1, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    instance-of p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    instance-of p2, p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 67
    .line 68
    iget-wide v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 69
    .line 70
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;

    .line 71
    .line 72
    iget-object p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Message;->item:Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 73
    .line 74
    iget-wide p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListItem;->uniqueId:J

    .line 75
    .line 76
    cmp-long p0, v3, p0

    .line 77
    .line 78
    if-nez p0, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    instance-of p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;

    .line 82
    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    instance-of p0, p1, Lcom/fsck/k9/ui/messagelist/MessageListViewItem$Footer;

    .line 86
    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    :goto_1
    return v1

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getNewListSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->newMessageList:Ljava/util/List;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getOldListSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListDiffCallback;->oldMessageList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
