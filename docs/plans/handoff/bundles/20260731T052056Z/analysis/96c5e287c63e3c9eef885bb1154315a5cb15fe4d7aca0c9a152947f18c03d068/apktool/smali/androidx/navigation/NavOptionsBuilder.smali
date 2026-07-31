.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final builder:Landroidx/navigation/NavOptions$Builder;

.field public popUpToId:I

.field public saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 11
    .line 12
    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 15
    .line 16
    iput v1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 17
    .line 18
    return-void
.end method
