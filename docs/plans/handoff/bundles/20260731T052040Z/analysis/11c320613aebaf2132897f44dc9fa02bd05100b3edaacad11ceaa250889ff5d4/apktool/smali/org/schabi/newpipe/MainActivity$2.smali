.class public final Lorg/schabi/newpipe/MainActivity$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/MainActivity;

.field public final synthetic val$instances:Ljava/util/List;

.field public final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/MainActivity;Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/MainActivity$2;->val$instances:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/MainActivity$2;->val$menuItem:Landroid/view/MenuItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->val$instances:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 8
    .line 9
    iget-object p2, p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 10
    .line 11
    sget-object p3, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 12
    .line 13
    iget-object p3, p3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->instance:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p3, p3, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-static {p1, p3}, Landroidx/room/Room;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 37
    .line 38
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->val$menuItem:Landroid/view/MenuItem;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/MainActivity;->changeService(Landroid/view/MenuItem;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p2, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 44
    .line 45
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/16 p3, 0x16

    .line 65
    .line 66
    invoke-direct {p2, p0, p3}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    const-wide/16 p3, 0x12c

    .line 70
    .line 71
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
