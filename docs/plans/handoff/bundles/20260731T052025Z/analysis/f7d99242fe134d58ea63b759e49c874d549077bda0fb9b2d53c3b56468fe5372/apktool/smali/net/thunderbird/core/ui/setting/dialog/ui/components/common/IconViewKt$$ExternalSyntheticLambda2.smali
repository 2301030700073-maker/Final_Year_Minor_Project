.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Landroidx/compose/ui/Modifier;

.field public final synthetic f$4:Z

.field public final synthetic f$5:F

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 5
    .line 6
    iput-wide p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    iput-boolean p6, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$4:Z

    .line 13
    .line 14
    iput p7, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$5:F

    .line 15
    .line 16
    iput p8, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$6:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$0:Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;

    .line 18
    .line 19
    iget-wide v1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$1:J

    .line 20
    .line 21
    iget-object v3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iget-object v4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    iget-boolean v5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$4:Z

    .line 26
    .line 27
    iget v6, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/IconViewKt$$ExternalSyntheticLambda2;->f$5:F

    .line 28
    .line 29
    invoke-static/range {v0 .. v8}, Lorg/minidns/util/Hex;->IconView-l6Txn0U(Lnet/thunderbird/core/ui/setting/SettingValue$IconList$IconOption;JLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZFLandroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method
