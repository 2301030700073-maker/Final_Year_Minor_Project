.class public final Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $onClick:Lkotlin/jvm/functions/Function0;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/textfield/TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;

    .line 11
    .line 12
    sget-object p2, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Effect$DismissDialog;

    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$Effect$NavigateBack;

    .line 30
    .line 31
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$Effect$NavigateBack;

    .line 36
    .line 37
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_2
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect;

    .line 42
    .line 43
    instance-of p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/fetchingMail/FetchingMailSettingsContract$Effect$NavigateBack;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    return-object v0

    .line 51
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 52
    .line 53
    instance-of p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    return-object v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
