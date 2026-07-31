.class public final Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final dayCircleBackground:Landroid/widget/ImageView;

.field public final dayText:Landroid/widget/TextView;

.field public final rootView:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 13
    iput-object p3, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 14
    iput-object p4, p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    .line 4
    const v1, 0x7f09068c

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const v1, 0x7f09068d

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    new-instance p0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 27
    .line 28
    invoke-direct {p0, v0, v2, v3}, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Missing required view with ID: "

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method
