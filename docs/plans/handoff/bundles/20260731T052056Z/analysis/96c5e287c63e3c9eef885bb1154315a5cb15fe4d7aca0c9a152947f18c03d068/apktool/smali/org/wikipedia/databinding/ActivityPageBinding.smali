.class public final Lorg/wikipedia/databinding/ActivityPageBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final containerWithNavTrigger:Ljava/lang/Object;

.field public final navigationDrawer:Ljava/lang/Object;

.field public final pageFragment:Ljava/lang/Object;

.field public final pageProgressBar:Ljava/lang/Object;

.field public final pageScrollerButton:Ljava/lang/Object;

.field public final pageToolbar:Ljava/lang/Object;

.field public final pageToolbarButtonNotifications:Ljava/lang/Object;

.field public final pageToolbarButtonSearch:Ljava/lang/Object;

.field public final pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

.field public final pageToolbarButtonTabs:Ljava/lang/Object;

.field public final pageToolbarContainer:Ljava/lang/Object;

.field public final rootView:Ljava/lang/Object;

.field public final sidePanelContainer:Ljava/lang/Object;

.field public final tocList:Ljava/lang/Object;

.field public final wikiArticleCardView:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/FixedDrawerLayout;Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer;Landroidx/drawerlayout/widget/FixedDrawerLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lorg/wikipedia/views/PageScrollerView;Lcom/google/android/material/appbar/MaterialToolbar;Lorg/wikipedia/views/NotificationButtonView;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/ImageView;Lorg/wikipedia/views/TabCountsView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lorg/wikipedia/views/SwipeableListView;Lorg/wikipedia/views/WikiArticleCardView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 70
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 71
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 72
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 73
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 74
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 75
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 76
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 77
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 78
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 79
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 80
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 81
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 82
    iput-object p15, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lokio/ByteString$Companion;Lokhttp3/ConnectionPool;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 85
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 87
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 88
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 89
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 90
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 91
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 92
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 93
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 94
    iput-object p15, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    move-object/from16 p1, p16

    .line 95
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    move-object/from16 p1, p17

    .line 96
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    move-object/from16 p1, p18

    .line 97
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    move-object/from16 p1, p19

    .line 98
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/talk/TalkThreadItemView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->rootView:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonShowOverflowMenu:Ljava/lang/Object;

    .line 54
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->navigationDrawer:Ljava/lang/Object;

    .line 55
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->containerWithNavTrigger:Ljava/lang/Object;

    .line 56
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageFragment:Ljava/lang/Object;

    .line 57
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageProgressBar:Ljava/lang/Object;

    .line 58
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageScrollerButton:Ljava/lang/Object;

    .line 59
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbar:Ljava/lang/Object;

    .line 60
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonNotifications:Ljava/lang/Object;

    .line 61
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonSearch:Ljava/lang/Object;

    .line 62
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarButtonTabs:Ljava/lang/Object;

    .line 63
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->pageToolbarContainer:Ljava/lang/Object;

    .line 64
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->sidePanelContainer:Ljava/lang/Object;

    .line 65
    iput-object p15, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->tocList:Ljava/lang/Object;

    move-object/from16 p1, p16

    .line 66
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityPageBinding;->wikiArticleCardView:Ljava/lang/Object;

    return-void
.end method
