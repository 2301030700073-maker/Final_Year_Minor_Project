.class public final synthetic Landroidx/compose/material3/ListItemDefaults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/Alignment$Vertical;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/unit/Density;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/ListItemDefaults$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/unit/Density;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final align(II)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/material3/ListItemDefaults$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    sget v0, Landroidx/compose/material3/ListItemKt;->InteractiveListVerticalAlignmentBreakpoint:F

    .line 4
    .line 5
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ge p2, p0, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
