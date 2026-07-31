.class public final Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

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
    iget v0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;->$this_observe:Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :pswitch_0
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_1
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_2
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_3
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_4
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :pswitch_5
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_6
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_7
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_8
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_9
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :pswitch_a
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_b
    invoke-interface {p0, p1}, Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;->event(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
