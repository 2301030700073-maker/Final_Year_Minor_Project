.class public final Lorg/wikipedia/databinding/ItemNotificationBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public notificationDescription:Ljava/lang/Object;

.field public notificationItemImage:Ljava/lang/Object;

.field public notificationItemSelectedImage:Ljava/lang/Object;

.field public notificationOverflowMenu:Ljava/lang/Object;

.field public notificationSource:Ljava/lang/Object;

.field public notificationSubtitle:Ljava/lang/Object;

.field public notificationTime:Ljava/lang/Object;

.field public notificationTitle:Ljava/lang/Object;

.field public notificationWikiCode:Ljava/lang/Object;

.field public notificationWikiCodeContainer:Ljava/lang/Object;

.field public notificationWikiCodeImage:Ljava/lang/Object;

.field public rootView:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 68
    .line 69
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 75
    .line 76
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 82
    .line 83
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcoil3/util/ContextsKt;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcoil3/util/ContextsKt;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcoil3/util/ContextsKt;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcoil3/util/ContextsKt;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lcoil3/util/ContextsKt;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcoil3/util/ContextsKt;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcoil3/util/ContextsKt;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcoil3/util/ContextsKt;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 47
    .line 48
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Landroidx/collection/internal/Lock;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Landroidx/collection/internal/Lock;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Landroidx/collection/internal/Lock;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Landroidx/collection/internal/Lock;

    .line 65
    .line 66
    iget-object v1, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroidx/collection/internal/Lock;

    .line 69
    .line 70
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Landroidx/collection/internal/Lock;

    .line 71
    .line 72
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Landroidx/collection/internal/Lock;

    .line 75
    .line 76
    iput-object p0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Landroidx/collection/internal/Lock;

    .line 77
    .line 78
    return-object v0
.end method

.method public setAllCornerSizes(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method
