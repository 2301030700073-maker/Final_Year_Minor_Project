.class public final Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $onItemClick:Lkotlin/jvm/functions/Function2;

.field public final synthetic $setting:Lnet/thunderbird/core/ui/setting/Setting;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;ILnet/thunderbird/core/ui/setting/Setting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$onItemClick:Lkotlin/jvm/functions/Function2;

    .line 5
    .line 6
    iput p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$index:I

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$setting:Lnet/thunderbird/core/ui/setting/Setting;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$index:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$setting:Lnet/thunderbird/core/ui/setting/Setting;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$1$1$1$1$1;->$onItemClick:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method
