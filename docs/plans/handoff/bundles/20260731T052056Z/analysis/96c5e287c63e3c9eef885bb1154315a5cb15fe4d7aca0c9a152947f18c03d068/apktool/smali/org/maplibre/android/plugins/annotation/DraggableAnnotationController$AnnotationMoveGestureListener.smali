.class public final Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;


# instance fields
.field public final synthetic this$0:Lokio/internal/DefaultSocket;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;->this$0:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/plugins/annotation/DraggableAnnotationController$AnnotationMoveGestureListener;->this$0:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/maplibre/android/plugins/annotation/SymbolManager;

    .line 22
    .line 23
    iget-object v1, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;->pointerIdList:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v1, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;->focalPoint:Landroid/graphics/PointF;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/maplibre/android/plugins/annotation/SymbolManager;->queryMapForFeatures(Landroid/graphics/PointF;)Lorg/maplibre/android/plugins/annotation/Symbol;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;)V
    .locals 0

    .line 1
    return-void
.end method
