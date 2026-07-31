.class public Lcom/rnmaps/maps/MapCallout;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "MapCallout.java"


# instance fields
.field public height:I

.field private tooltip:Z

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/rnmaps/maps/MapCallout;->tooltip:Z

    return-void
.end method


# virtual methods
.method public getTooltip()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/rnmaps/maps/MapCallout;->tooltip:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 27
    iput p4, p0, Lcom/rnmaps/maps/MapCallout;->width:I

    sub-int/2addr p5, p3

    .line 28
    iput p5, p0, Lcom/rnmaps/maps/MapCallout;->height:I

    return-void
.end method

.method public setTooltip(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/rnmaps/maps/MapCallout;->tooltip:Z

    return-void
.end method
