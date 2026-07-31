.class public final Lorg/wikipedia/LongPressHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final callback:Lorg/wikipedia/page/shareafact/ShareHandler;

.field public clickPositionX:F

.field public clickPositionY:F

.field public prevId:J

.field public referrer:Ljava/lang/String;

.field public title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/ObservableWebView;Lorg/wikipedia/page/shareafact/ShareHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/wikipedia/LongPressHandler;->callback:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/wikipedia/LongPressHandler;->prevId:J

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    instance-of p1, p2, Landroid/webkit/WebView;

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    move-object p1, p2

    .line 15
    check-cast p1, Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/4 v0, 0x7

    .line 29
    if-ne p3, v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string p1, ""

    .line 38
    .line 39
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lorg/wikipedia/util/UriUtil;->isValidPageLink(Landroid/net/Uri;)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    new-instance p3, Lorg/wikipedia/dataclient/WikiSite;

    .line 53
    .line 54
    invoke-direct {p3, p1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/wikipedia/LongPressHandler;->callback:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 58
    .line 59
    iget-object v1, v0, Lorg/wikipedia/page/shareafact/ShareHandler;->bridge:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p3}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    iget-object v2, p3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    .line 89
    move-object p3, v1

    .line 90
    :cond_1
    sget-object v1, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p3}, Lorg/wikipedia/page/PageTitle$Companion;->titleForInternalLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 104
    .line 105
    iget-object p1, v0, Lorg/wikipedia/page/shareafact/ShareHandler;->webViewActionMode:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    iput-object p1, p0, Lorg/wikipedia/LongPressHandler;->referrer:Ljava/lang/String;

    .line 110
    .line 111
    iget-object p1, v0, Lorg/wikipedia/page/shareafact/ShareHandler;->fragment:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lorg/wikipedia/page/PageFragment;

    .line 114
    .line 115
    iget-object p1, p1, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 116
    .line 117
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget-wide v0, p1, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const-wide/16 v0, -0x1

    .line 127
    .line 128
    :goto_0
    iput-wide v0, p0, Lorg/wikipedia/LongPressHandler;->prevId:J

    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/LongPressHandler;->showPopupMenu(Landroid/view/View;Z)V

    .line 132
    .line 133
    .line 134
    :cond_3
    return-void

    .line 135
    :cond_4
    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/LongPressHandler;->showPopupMenu(Landroid/view/View;Z)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lorg/wikipedia/LongPressHandler;->clickPositionX:F

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lorg/wikipedia/LongPressHandler;->clickPositionY:F

    .line 24
    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final showPopupMenu(Landroid/view/View;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/LongPressHandler;->title:Lorg/wikipedia/page/PageTitle;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "input_method"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    .line 39
    .line 40
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/wikipedia/LongPressHandler;->referrer:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v0, v1, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 49
    .line 50
    iget-wide v2, p0, Lorg/wikipedia/LongPressHandler;->prevId:J

    .line 51
    .line 52
    iput-wide v2, v1, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    new-instance p2, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lorg/wikipedia/LongPressHandler;->clickPositionX:F

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setX(F)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lorg/wikipedia/LongPressHandler;->clickPositionY:F

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    check-cast p1, Landroid/view/ViewGroup;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    move-object v3, p2

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object v3, p1

    .line 90
    :goto_0
    new-instance v2, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 91
    .line 92
    iget-object v6, p0, Lorg/wikipedia/LongPressHandler;->callback:Lorg/wikipedia/page/shareafact/ShareHandler;

    .line 93
    .line 94
    const/16 v7, 0x1e

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void
.end method
