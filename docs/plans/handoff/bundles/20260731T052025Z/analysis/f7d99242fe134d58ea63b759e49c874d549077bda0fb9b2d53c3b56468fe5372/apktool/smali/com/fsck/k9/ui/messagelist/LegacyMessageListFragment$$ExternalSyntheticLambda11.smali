.class public final synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda11;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    check-cast p2, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->MOVE:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 22
    .line 23
    invoke-virtual {p0, p2, v2, v3, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    check-cast p2, Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;->COPY:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;

    .line 39
    .line 40
    invoke-virtual {p0, p2, v2, v3, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->copyOrMove(Ljava/util/List;JLcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$FolderOperation;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 45
    .line 46
    check-cast p2, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logger$delegate:Lkotlin/Lazy;

    .line 55
    .line 56
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->logTag:Ljava/lang/String;

    .line 63
    .line 64
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 65
    .line 66
    const/16 v4, 0x19

    .line 67
    .line 68
    invoke-direct {v3, v4, p1, p2}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x2

    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-static {v0, v2, p2, v3, p1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->loadMessageList(Z)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
