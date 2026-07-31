.class public final Landroidx/activity/SystemBarStyle;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final darkScrim:I

.field public final detectDarkMode:Lkotlin/jvm/functions/Function1;

.field public final lightScrim:I


# direct methods
.method public constructor <init>(IILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/activity/SystemBarStyle;->lightScrim:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/activity/SystemBarStyle;->darkScrim:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/activity/SystemBarStyle;->detectDarkMode:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method
