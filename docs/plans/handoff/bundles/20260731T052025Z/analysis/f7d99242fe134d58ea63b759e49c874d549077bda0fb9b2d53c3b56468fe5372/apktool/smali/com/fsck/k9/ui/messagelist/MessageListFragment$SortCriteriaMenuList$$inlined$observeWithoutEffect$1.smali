.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_observeWithoutEffect:Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;->$this_observeWithoutEffect:Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1;->$this_observeWithoutEffect:Lnet/thunderbird/feature/mail/message/list/ui/MessageListContract$ViewModel;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :pswitch_0
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/common/mvi/BaseStateMachineViewModel;->event(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
