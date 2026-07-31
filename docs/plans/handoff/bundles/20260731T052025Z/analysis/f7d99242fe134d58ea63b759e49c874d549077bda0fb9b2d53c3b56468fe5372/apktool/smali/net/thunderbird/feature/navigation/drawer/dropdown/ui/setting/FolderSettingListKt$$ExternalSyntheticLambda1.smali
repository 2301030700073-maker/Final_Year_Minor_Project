.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroidx/compose/ui/Modifier;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-boolean p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 15
    .line 16
    iput-object p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/Modifier;

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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 11
    .line 12
    .line 13
    move-result v8

    .line 14
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iget-object v2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iget-object v3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    iget-boolean v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$4:Z

    .line 23
    .line 24
    iget-boolean v5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 25
    .line 26
    iget-object v6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/FolderSettingListKt$$ExternalSyntheticLambda1;->f$6:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    invoke-static/range {v0 .. v8}, Lokhttp3/CacheControl$Companion;->FolderSettingList(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method
