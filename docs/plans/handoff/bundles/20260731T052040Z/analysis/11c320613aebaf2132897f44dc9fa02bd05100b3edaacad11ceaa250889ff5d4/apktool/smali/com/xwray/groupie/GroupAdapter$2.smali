.class public final Lcom/xwray/groupie/GroupAdapter$2;
.super Landroidx/core/app/NotificationCompat$Style;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/xwray/groupie/GroupAdapter$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/xwray/groupie/GroupAdapter$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Style;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xwray/groupie/GroupAdapter$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/xwray/groupie/GroupAdapter$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 9
    .line 10
    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->getItemViewType(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 p1, 0x2

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    if-eq p0, p1, :cond_0

    .line 21
    .line 22
    move p1, v0

    .line 23
    :cond_0
    return p1

    .line 24
    :pswitch_0
    check-cast p0, Lcom/xwray/groupie/GroupAdapter;

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->getItem(ILjava/util/Collection;)Lcom/xwray/groupie/Item;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v0, p0, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/xwray/groupie/Item;->getSpanSize(I)I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    iget p0, p0, Lcom/xwray/groupie/GroupAdapter;->spanCount:I

    .line 40
    .line 41
    :goto_0
    return p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
