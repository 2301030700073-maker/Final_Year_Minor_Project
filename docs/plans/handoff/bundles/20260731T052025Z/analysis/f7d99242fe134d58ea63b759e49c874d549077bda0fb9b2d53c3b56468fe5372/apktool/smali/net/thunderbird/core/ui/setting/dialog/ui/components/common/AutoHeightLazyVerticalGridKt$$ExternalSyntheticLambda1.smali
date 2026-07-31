.class public final synthetic Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlinx/collections/immutable/ImmutableList;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/ui/Modifier;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$0:Lkotlinx/collections/immutable/ImmutableList;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput p3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$3:F

    .line 9
    .line 10
    iput p4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$4:F

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x30001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    iget-object v0, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$0:Lkotlinx/collections/immutable/ImmutableList;

    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    iget v2, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$3:F

    .line 21
    .line 22
    iget v3, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$4:F

    .line 23
    .line 24
    iget-object v4, p0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$$ExternalSyntheticLambda1;->f$5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 25
    .line 26
    invoke-static/range {v0 .. v6}, Lorg/minidns/util/Base64;->AutoHeightLazyVerticalGrid-Q2ewo60(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/ui/Modifier;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method
