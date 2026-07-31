.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object v7, p1

    .line 10
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    iget-object v3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    iget-object v6, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    .line 28
    .line 29
    invoke-static/range {v3 .. v8}, Lkotlin/ranges/RangesKt;->SettingTopBar(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    and-int/lit8 v0, p2, 0x3

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v0, v3, :cond_0

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    and-int/2addr p2, v2

    .line 50
    move-object v6, p1

    .line 51
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v6, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    iget-object v2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    iget-object v5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/DialogSettingViewKt$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function3;

    .line 67
    .line 68
    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->SettingTopBar(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-object v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
