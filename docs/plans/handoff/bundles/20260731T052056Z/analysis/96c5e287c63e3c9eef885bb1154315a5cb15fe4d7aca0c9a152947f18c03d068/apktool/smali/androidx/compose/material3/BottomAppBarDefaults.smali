.class public abstract Landroidx/compose/material3/BottomAppBarDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/material3/AppBarKt;->LocalSingleRowTopAppBarOverride:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/high16 v1, 0x40800000    # 4.0f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v1, v1, v2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/compose/material3/BottomAppBarDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 13
    .line 14
    sget v0, Lkotlin/text/UStringsKt;->ContainerTrailingSpace:F

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    sget v3, Lkotlin/text/UStringsKt;->ContainerLeadingSpace:F

    .line 19
    .line 20
    invoke-static {v3, v2, v0, v2, v1}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 21
    .line 22
    .line 23
    return-void
.end method
