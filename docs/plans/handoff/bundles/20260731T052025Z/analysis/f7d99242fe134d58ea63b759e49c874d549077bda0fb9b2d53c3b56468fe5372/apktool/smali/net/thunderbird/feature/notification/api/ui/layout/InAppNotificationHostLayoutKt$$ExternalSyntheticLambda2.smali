.class public final synthetic Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f$2:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/foundation/layout/PaddingValues;Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/foundation/layout/PaddingValues;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$2:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput p6, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 21
    .line 22
    invoke-static {p1, v4, v2, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    invoke-interface {v0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    mul-float/2addr v1, v0

    .line 39
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$2:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 40
    .line 41
    invoke-virtual {v0}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->isBannerListOffScreen()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    move v5, v2

    .line 54
    :goto_1
    if-ge v5, v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 61
    .line 62
    iget v7, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$5:I

    .line 63
    .line 64
    int-to-float v7, v7

    .line 65
    add-float/2addr v7, v1

    .line 66
    iget-object v8, v0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->bannerInlineListHeightOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 67
    .line 68
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    add-float/2addr v8, v7

    .line 73
    invoke-static {v8}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-static {p1, v6, v2, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/InAppNotificationHostLayoutKt$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    move v3, v2

    .line 90
    :goto_2
    if-ge v3, v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {p1, v4, v2, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0
.end method
