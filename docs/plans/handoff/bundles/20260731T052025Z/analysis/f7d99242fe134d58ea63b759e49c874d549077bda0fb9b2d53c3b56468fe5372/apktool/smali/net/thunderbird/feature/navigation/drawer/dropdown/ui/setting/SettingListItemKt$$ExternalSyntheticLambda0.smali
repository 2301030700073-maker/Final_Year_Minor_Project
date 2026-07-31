.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 5
    .line 6
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v2

    .line 19
    move-object v4, p1

    .line 20
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    invoke-virtual {v4, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iget p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;->f$1:F

    .line 30
    .line 31
    cmpg-float p1, p2, p1

    .line 32
    .line 33
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    :goto_1
    move-object v2, v0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-static {v0, p2}, Landroidx/compose/ui/draw/ClipKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :goto_2
    const/16 v5, 0x180

    .line 45
    .line 46
    const/16 v6, 0x8

    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/setting/SettingListItemKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 56
    .line 57
    .line 58
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method
