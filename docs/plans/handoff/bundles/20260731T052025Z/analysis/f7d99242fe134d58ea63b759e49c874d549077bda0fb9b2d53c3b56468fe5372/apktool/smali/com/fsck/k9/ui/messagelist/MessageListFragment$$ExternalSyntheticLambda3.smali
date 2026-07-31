.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;->f$0:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda3;->f$0:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 6
    .line 7
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->secondary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 29
    .line 30
    if-ne p0, p1, :cond_1

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
