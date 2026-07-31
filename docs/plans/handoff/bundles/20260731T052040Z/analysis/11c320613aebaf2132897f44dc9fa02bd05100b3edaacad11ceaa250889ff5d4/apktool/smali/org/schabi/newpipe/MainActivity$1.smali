.class public final Lorg/schabi/newpipe/MainActivity$1;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public lastService:I

.field public final synthetic this$0:Lorg/schabi/newpipe/MainActivity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 2
    .line 3
    iget-boolean v0, p1, Lorg/schabi/newpipe/MainActivity;->servicesShown:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/MainActivity;->toggleServices()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p0, p0, Lorg/schabi/newpipe/MainActivity$1;->lastService:I

    .line 11
    .line 12
    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lorg/schabi/newpipe/MainActivity$1;->lastService:I

    .line 8
    .line 9
    return-void
.end method
