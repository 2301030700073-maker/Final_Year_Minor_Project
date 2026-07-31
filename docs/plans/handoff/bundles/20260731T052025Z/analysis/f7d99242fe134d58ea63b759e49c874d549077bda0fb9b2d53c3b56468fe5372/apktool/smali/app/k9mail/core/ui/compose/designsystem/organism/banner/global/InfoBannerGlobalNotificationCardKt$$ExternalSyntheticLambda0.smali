.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    .line 14
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    iput p4, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iput-object p3, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iget-object v4, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p2, p1, v4, p0, v3}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->WarningBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_0
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-static {p2, p1, v4, p0, v3}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->ErrorBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :pswitch_1
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-static {p2, p1, v4, p0, v3}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->InfoBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
