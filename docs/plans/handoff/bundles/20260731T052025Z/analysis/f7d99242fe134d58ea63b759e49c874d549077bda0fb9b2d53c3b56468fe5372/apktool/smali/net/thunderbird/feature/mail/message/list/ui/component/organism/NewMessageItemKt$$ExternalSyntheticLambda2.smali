.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 8
    .line 9
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 26
    .line 27
    iget-boolean p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;->favourite:Z

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v1

    .line 37
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 49
    .line 50
    iget-boolean p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;->favourite:Z

    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v1

    .line 60
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 68
    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 72
    .line 73
    iget-boolean p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;->favourite:Z

    .line 74
    .line 75
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object v1

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
