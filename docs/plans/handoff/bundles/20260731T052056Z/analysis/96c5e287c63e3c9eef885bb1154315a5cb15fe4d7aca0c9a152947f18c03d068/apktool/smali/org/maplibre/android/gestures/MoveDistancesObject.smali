.class public final Lorg/maplibre/android/gestures/MoveDistancesObject;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public currX:F

.field public distanceXSinceStart:F

.field public distanceYSinceStart:F

.field public final initialX:F

.field public final initialY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialX:F

    .line 5
    .line 6
    iput p2, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialY:F

    .line 7
    .line 8
    return-void
.end method
