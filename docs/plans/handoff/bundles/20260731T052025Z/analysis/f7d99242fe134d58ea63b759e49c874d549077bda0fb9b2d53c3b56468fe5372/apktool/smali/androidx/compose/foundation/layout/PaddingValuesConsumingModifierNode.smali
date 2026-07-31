.class public final Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;
.super Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# virtual methods
.method public final calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/PaddingValuesConsumingModifierNode;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesInsets;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/PaddingValuesInsets;-><init>(Landroidx/compose/foundation/layout/PaddingValues;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/compose/foundation/layout/AddedInsets;

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/layout/AddedInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/PaddingValuesInsets;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
