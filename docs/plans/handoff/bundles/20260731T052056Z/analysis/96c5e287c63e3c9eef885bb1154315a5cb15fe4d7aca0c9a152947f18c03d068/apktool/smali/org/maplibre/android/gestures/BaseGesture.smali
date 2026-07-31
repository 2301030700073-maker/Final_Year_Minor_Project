.class public abstract Lorg/maplibre/android/gestures/BaseGesture;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentEvent:Landroid/view/MotionEvent;

.field public gestureDuration:J

.field public final gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public isEnabled:Z

.field public listener:Ljava/lang/Object;

.field public previousEvent:Landroid/view/MotionEvent;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 8
    .line 9
    instance-of v0, p1, Landroid/app/Activity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string/jumbo v0, "window"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/WindowManager;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lorg/maplibre/android/gestures/BaseGesture;->windowManager:Landroid/view/WindowManager;

    .line 27
    .line 28
    :goto_0
    iput-object p2, p0, Lorg/maplibre/android/gestures/BaseGesture;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public abstract analyzeEvent(Landroid/view/MotionEvent;)Z
.end method

.method public canExecute(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->listener:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/maplibre/android/gestures/BaseGesture;->isEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/gestures/BaseGesture;->gesturesManager:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Lorg/maplibre/android/gestures/BaseGesture;

    .line 80
    .line 81
    instance-of v5, v4, Lorg/maplibre/android/gestures/ProgressiveGesture;

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    check-cast v4, Lorg/maplibre/android/gestures/ProgressiveGesture;

    .line 86
    .line 87
    iget-object v5, v4, Lorg/maplibre/android/gestures/ProgressiveGesture;->handledTypes:Ljava/util/Set;

    .line 88
    .line 89
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    iget-boolean v4, v4, Lorg/maplibre/android/gestures/ProgressiveGesture;->isInProgress:Z

    .line 96
    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    const/4 p0, 0x1

    .line 101
    return p0

    .line 102
    :cond_5
    :goto_0
    const/4 p0, 0x0

    .line 103
    return p0
.end method
