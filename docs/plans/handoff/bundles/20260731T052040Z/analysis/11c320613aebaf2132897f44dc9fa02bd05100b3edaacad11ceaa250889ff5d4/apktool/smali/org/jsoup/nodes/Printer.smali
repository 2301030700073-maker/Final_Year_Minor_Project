.class public Lorg/jsoup/nodes/Printer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final synthetic $r8$classId:I

.field public accum:Ljava/lang/Object;

.field public root:Ljava/lang/Object;

.field public settings:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    iput v0, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceFuzzySearchFunction;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v1, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "PreferenceCategory"

    .line 20
    .line 21
    aput-object v3, v1, v2

    .line 22
    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    aget-object v1, v1, v2

    .line 29
    .line 30
    invoke-static {v1, v4, v1, v4}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v3, v4, v2

    .line 40
    .line 41
    const-string v3, "PreferenceScreen"

    .line 42
    .line 43
    aput-object v3, v4, v0

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-ge v2, v1, :cond_0

    .line 51
    .line 52
    aget-object v5, v4, v2

    .line 53
    .line 54
    invoke-static {v5, v3, v5, v2, v0}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 64
    .line 65
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 68
    iput p1, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 66
    iput p1, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    iput-object p2, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    iput-object p3, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/jsoup/nodes/Printer;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroidx/viewbinding/ViewBinding;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 67
    iput p5, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    iput-object p3, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    iput-object p4, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 78
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 80
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/PlayerService;Lorg/schabi/newpipe/player/helper/PlayerDataSource;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/jsoup/nodes/Printer;
    .locals 4

    .line 1
    const v0, 0x7f0a03fd

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0401

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {v2}, Lorg/jsoup/nodes/Printer;->bind$1(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v2, Lorg/jsoup/nodes/Printer;

    .line 26
    .line 27
    check-cast p0, Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    invoke-direct {v2, v3, p0, v1, v0}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "Missing required view with ID: "

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static bind$1(Landroid/view/View;)Lorg/jsoup/nodes/Printer;
    .locals 4

    .line 1
    const v0, 0x7f0a03ff

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0400

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a0402

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance v0, Lorg/jsoup/nodes/Printer;

    .line 35
    .line 36
    check-cast p0, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    const/16 v3, 0xb

    .line 39
    .line 40
    invoke-direct {v0, v3, p0, v1, v2}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Missing required view with ID: "

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "http://schemas.android.com/apk/preferencesearch"

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    .line 11
    .line 12
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)Lorg/jsoup/nodes/Printer;
    .locals 3

    .line 1
    const v0, 0x7f0d006c

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const p1, 0x7f0a0257

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const p1, 0x7f0a0259

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lorg/jsoup/nodes/Printer;

    .line 32
    .line 33
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    invoke-direct {p1, v2, p0, v0, v1}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "Missing required view with ID: "

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method


# virtual methods
.method public addHead(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/Element;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addNode(Lorg/jsoup/nodes/LeafNode;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addTail(Lorg/jsoup/nodes/Element;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    invoke-virtual {p1, p2, p0}, Lorg/jsoup/nodes/Element;->outerHtmlTail(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addText(Lorg/jsoup/nodes/TextNode;II)V
    .locals 1

    .line 1
    or-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    iget-object p3, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p3, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-static {p1, p3, v0, p0, p2}, Lorg/jsoup/nodes/Entities;->doEscape(Ljava/lang/String;Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/nio/charset/Charset;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/nodes/Printer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroid/widget/LinearLayout;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_4
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_5
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_6
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_7
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/jsoup/nodes/TextNode;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lorg/jsoup/nodes/Printer;->addText(Lorg/jsoup/nodes/TextNode;II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addHead(Lorg/jsoup/nodes/Element;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/LeafNode;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addNode(Lorg/jsoup/nodes/LeafNode;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public indent(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 14
    .line 15
    iget v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 16
    .line 17
    mul-int/2addr p1, v1

    .line 18
    iget p0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth:I

    .line 19
    .line 20
    sget-object v1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ltz p1, :cond_0

    .line 25
    .line 26
    move v3, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v1

    .line 29
    :goto_0
    const-string/jumbo v4, "width must be >= 0"

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v3}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    if-lt p0, v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :goto_1
    invoke-static {v2}, Landroidx/sqlite/SQLite;->isTrue(Z)V

    .line 41
    .line 42
    .line 43
    if-eq p0, v3, :cond_2

    .line 44
    .line 45
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    :cond_2
    sget-object p0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 50
    .line 51
    const/16 v2, 0x15

    .line 52
    .line 53
    if-ge p1, v2, :cond_3

    .line 54
    .line 55
    aget-object p0, p0, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    new-array p0, p1, [C

    .line 59
    .line 60
    :goto_2
    if-ge v1, p1, :cond_4

    .line 61
    .line 62
    const/16 v2, 0x20

    .line 63
    .line 64
    aput-char v2, p0, v1

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_3
    invoke-virtual {v0, p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public parseSearchResult(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;
    .locals 8

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/jsoup/nodes/Printer;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v0, "entries"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/jsoup/nodes/Printer;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Printer;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "entryValues"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lorg/jsoup/nodes/Printer;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Printer;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    new-instance v1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 33
    .line 34
    const-string/jumbo v4, "title"

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v4}, Lorg/jsoup/nodes/Printer;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0, v4}, Lorg/jsoup/nodes/Printer;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p0, v4, v3, v0, v2}, Lorg/jsoup/nodes/Printer;->tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string/jumbo v5, "summary"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v5}, Lorg/jsoup/nodes/Printer;->getAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Printer;->readString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, v3, v0, v2}, Lorg/jsoup/nodes/Printer;->tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const-string p0, ","

    .line 65
    .line 66
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    move-object v7, p2

    .line 71
    move v2, p3

    .line 72
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "@"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/content/Context;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "Unable to readString from \'"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "PreferenceParser"

    .line 53
    .line 54
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object p1
.end method

.method public readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const-string v1, "@"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Unable to readStringArray from \'"

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "\'"

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v1, "PreferenceParser"

    .line 58
    .line 59
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    .line 63
    .line 64
    return-object p0
.end method

.method public resolve(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/player/PlayerService;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/schabi/newpipe/player/helper/PlayerDataSource;

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/android/tools/r8/RecordTag;->maybeBuildLiveMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lcom/google/android/exoplayer2/source/MediaSource;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v2, p0}, Lorg/schabi/newpipe/util/ListHelper;->getAudioFormatIndex(Lorg/schabi/newpipe/player/PlayerService;Ljava/util/List;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-ltz p0, :cond_1

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ge p0, v0, :cond_1

    .line 46
    .line 47
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v0, v4

    .line 55
    :goto_0
    new-instance v3, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;

    .line 56
    .line 57
    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;-><init>(ILjava/util/List;)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    .line 61
    .line 62
    invoke-direct {p0, p1, v4, v3, v4}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 75
    .line 76
    iget v3, v3, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 77
    .line 78
    new-instance v5, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;

    .line 79
    .line 80
    invoke-direct {v5, v2, v3}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda21;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v5}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_6

    .line 92
    .line 93
    const v2, 0x7f1300e2

    .line 94
    .line 95
    .line 96
    const v3, 0x7f1300e4

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v2, v3}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v2, p0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ltz v0, :cond_3

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ge v0, v2, :cond_3

    .line 114
    .line 115
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 120
    .line 121
    move-object v0, p0

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object v0, v4

    .line 124
    :goto_1
    new-instance p0, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;

    .line 125
    .line 126
    invoke-direct {p0, p1, v4, v4, v4}, Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;Lorg/schabi/newpipe/player/mediasource/LoadedMediaSource;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    :try_start_0
    instance-of v2, v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    move-object v2, v0

    .line 134
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 135
    .line 136
    invoke-static {p1, v2}, Lcom/android/tools/r8/RecordTag;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    instance-of v2, v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 142
    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    move-object v2, v0

    .line 146
    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 147
    .line 148
    invoke-static {p1, v2}, Lcom/android/tools/r8/RecordTag;->cacheKeyOf(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :goto_3
    invoke-static {v1, v0, p1, v2, p0}, Lcom/android/tools/r8/RecordTag;->buildMediaSource(Lorg/schabi/newpipe/player/helper/PlayerDataSource;Lorg/schabi/newpipe/extractor/stream/Stream;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/String;Lorg/schabi/newpipe/player/mediaitem/StreamInfoTag;)Lcom/google/android/exoplayer2/source/BaseMediaSource;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :catch_0
    move-exception p0

    .line 158
    goto :goto_4

    .line 159
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    const-string p1, "no audio or video stream. That should never happen"

    .line 162
    .line 163
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0
    :try_end_0
    .catch Lorg/schabi/newpipe/player/resolver/PlaybackResolver$ResolverException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_4
    const-string p1, "AudioPlaybackResolver"

    .line 168
    .line 169
    const-string v0, "Unable to create audio source"

    .line 170
    .line 171
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :cond_6
    return-object v4
.end method

.method public resolveDefinition$koin_core(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/qualifier/Qualifier;)Lorg/koin/core/instance/InstanceFactory;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p1, 0x3a

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Lorg/koin/core/qualifier/Qualifier;->getValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    :cond_0
    const-string p2, ""

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lorg/koin/core/instance/InstanceFactory;

    .line 56
    .line 57
    return-object p0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/Printer;->addTail(Lorg/jsoup/nodes/Element;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public tryFillInPreferenceValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-object p1

    .line 20
    :cond_2
    array-length p2, p3

    .line 21
    if-lez p2, :cond_3

    .line 22
    .line 23
    array-length p2, p4

    .line 24
    array-length v0, p3

    .line 25
    if-ne p2, v0, :cond_3

    .line 26
    .line 27
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 p4, -0x1

    .line 36
    if-eq p2, p4, :cond_3

    .line 37
    .line 38
    aget-object p0, p3, p2

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p2, 0x1

    .line 45
    new-array p2, p2, [Ljava/lang/Object;

    .line 46
    .line 47
    const/4 p3, 0x0

    .line 48
    aput-object p0, p2, p3

    .line 49
    .line 50
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
