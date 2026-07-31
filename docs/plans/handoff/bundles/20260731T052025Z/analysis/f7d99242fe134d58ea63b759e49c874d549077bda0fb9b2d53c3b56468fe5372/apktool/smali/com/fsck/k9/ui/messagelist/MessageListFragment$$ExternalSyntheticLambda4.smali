.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lnet/thunderbird/feature/account/AccountId;

.field public final synthetic f$2:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$1:Lnet/thunderbird/feature/account/AccountId;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$2:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$2:Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$1:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;

    .line 20
    .line 21
    iget-object v2, v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->primary:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 22
    .line 23
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->DateSortTypeOnly:Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 29
    .line 30
    invoke-direct {v4, v2, p1}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v3, v4}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;

    .line 44
    .line 45
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->SecondaryNotRequiredForSortTypes:Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->DateDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 61
    .line 62
    invoke-direct {v2, p1, v4}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;-><init>(Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v3, v2}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;-><init>(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
