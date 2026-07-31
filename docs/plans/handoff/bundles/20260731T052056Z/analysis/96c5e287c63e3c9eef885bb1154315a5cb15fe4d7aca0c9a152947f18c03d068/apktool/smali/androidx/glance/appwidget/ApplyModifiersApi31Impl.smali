.class public final Landroidx/glance/appwidget/ApplyModifiersApi31Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/ApplyModifiersApi31Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/ApplyModifiersApi31Impl;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/ApplyModifiersApi31Impl;->INSTANCE:Landroidx/glance/appwidget/ApplyModifiersApi31Impl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyRoundedCorners(Landroid/widget/RemoteViews;ILandroidx/glance/unit/Dimension;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x1f

    .line 7
    .line 8
    if-lt p0, v0, :cond_2

    .line 9
    .line 10
    const-string p0, "setClipToOutline"

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Dp;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    check-cast p3, Landroidx/glance/unit/Dimension$Dp;

    .line 21
    .line 22
    iget p0, p3, Landroidx/glance/unit/Dimension$Dp;->dp:F

    .line 23
    .line 24
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewOutlinePreferredRadius(IFI)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Resource;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const p0, 0x7f0700a3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewOutlinePreferredRadiusDimen(II)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Rounded corners should not be "

    .line 48
    .line 49
    invoke-static {p1, p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p0, "setClipToOutline is only available on SDK 31 and higher"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final setViewHeight(Landroid/widget/RemoteViews;ILandroidx/glance/unit/Dimension;)V
    .locals 1

    .line 1
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Wrap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/high16 p0, -0x40000000    # -2.0f

    .line 7
    .line 8
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Expand;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Dp;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    check-cast p3, Landroidx/glance/unit/Dimension$Dp;

    .line 26
    .line 27
    iget p0, p3, Landroidx/glance/unit/Dimension$Dp;->dp:F

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-virtual {p1, p2, p0, p3}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Resource;

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    const p0, 0x7f0700a3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    sget-object p0, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 46
    .line 47
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    const/high16 p0, -0x40800000    # -1.0f

    .line 54
    .line 55
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setViewWidth(Landroid/widget/RemoteViews;ILandroidx/glance/unit/Dimension;)V
    .locals 1

    .line 1
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Wrap;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/high16 p0, -0x40000000    # -2.0f

    .line 7
    .line 8
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Expand;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Dp;

    .line 22
    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    check-cast p3, Landroidx/glance/unit/Dimension$Dp;

    .line 26
    .line 27
    iget p0, p3, Landroidx/glance/unit/Dimension$Dp;->dp:F

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    invoke-virtual {p1, p2, p0, p3}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    instance-of p0, p3, Landroidx/glance/unit/Dimension$Resource;

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    const p0, 0x7f0700a3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    sget-object p0, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 46
    .line 47
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    const/high16 p0, -0x40800000    # -1.0f

    .line 54
    .line 55
    invoke-virtual {p1, p2, p0, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
